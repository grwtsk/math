/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.Riemann95WindowHandoff

/-!
# Permanent retry tails in the certified window controller

Fairness fails exactly when the run has a suffix consisting only of retries.
Such a suffix can change implementation observations while preserving all
arithmetic evidence and the full reference configuration.
-/

namespace GRWTSK.HS95.WindowHandoff.Run

variable {observations : Observations}

/-- A tail of live, inconclusive implementation events. -/
def RetryTail (r : Run observations) (t : ℕ) : Prop :=
  ∀ u ≥ t, Step (r.state u) .retry (r.state (u + 1))

theorem RetryTail.invariants {r : Run observations} {t : ℕ}
    (tail : r.RetryTail t) (live : (r.state t).Live) {u : ℕ} (htu : t ≤ u) :
    (r.state u).config = (r.state t).config ∧
    (r.state u).stage = (r.state t).stage ∧
    (r.state u).address = (r.state t).address ∧
    (r.state u).sourceSteps = (r.state t).sourceSteps ∧
    (r.state u).sourceRevision = (r.state t).sourceRevision ∧
    (r.state u).certificates = (r.state t).certificates ∧ (r.state u).Live := by
  obtain ⟨d, rfl⟩ := Nat.exists_eq_add_of_le htu
  clear htu
  induction d with
  | zero => exact ⟨rfl, rfl, rfl, rfl, rfl, rfl, live⟩
  | succ d ih =>
    obtain ⟨hc, hs, ha, hn, hp, hr, _⟩ := ih
    obtain ⟨hc', hs', ha', hn', hp', hr', live'⟩ :=
      (tail (t + d) (Nat.le_add_right _ _)).retry_preserves
    exact ⟨hc'.trans hc, hs'.trans hs, ha'.trans ha, hn'.trans hn,
      hp'.trans hp, hr'.trans hr, live'⟩

/-- The obstruction to fairness is a live point followed exclusively by retries. -/
theorem not_fair_iff_live_retryTail (r : Run observations) :
    ¬ r.Fair ↔ ∃ t, (r.state t).Live ∧ r.RetryTail t := by
  classical
  constructor
  · intro unfair
    have h : ∃ t, (r.state t).Live ∧
        ∀ u ≥ t, ¬ Exits (r.state t) (r.state u) := by
      by_contra missing
      apply unfair
      intro t live
      by_contra hex
      exact missing ⟨t, live, fun u hu ex => hex ⟨u, hu, ex⟩⟩
    obtain ⟨t, live, stuck⟩ := h
    refine ⟨t, live, fun u hu => (r.tick u).retry_of_no_exit ?_ ?_⟩
    · exact Classical.byContradiction fun done => stuck u hu (Or.inr done)
    · intro ex
      apply stuck (u + 1) (hu.trans (Nat.le_succ u))
      exact ex.imp (fun grow => lt_of_le_of_lt (r.stage_mono hu) grow) id
  · rintro ⟨t, live, tail⟩ fair
    obtain ⟨u, hu, ex⟩ := fair t live
    obtain ⟨_, same, _, _, _, _, stillLive⟩ := tail.invariants live hu
    rcases ex with grow | stopped
    · exact (Nat.ne_of_lt grow) same.symm
    · exact stopped stillLive

/-- The controller may remain live indefinitely with no new certificates. -/
theorem retryForever_has_retryTail (observations : Observations) :
    (retryForever observations).RetryTail 0 := by
  intro u _
  exact Step.retry (s := State.initial observations) rfl observations

private def risingHeat (time : ℕ) : Observations :=
  ⟨fun _ => (time : ℚ), []⟩

/-- A strictly rising observed heat ledger alone allows no inference of
arithmetic progress. Every tick in this concrete run is a retry. -/
theorem exists_retryTail_with_strictly_rising_heat :
    ∃ (o : Observations) (r : Run o), r.RetryTail 0 ∧
      StrictMono (fun t => (r.state t).observations.heat 0) := by
  let r : Run (risingHeat 0) :=
    ⟨fun t => State.initial (risingHeat t), rfl,
      fun t => Tick.act (Step.retry (s := State.initial (risingHeat t)) rfl
        (risingHeat (t + 1)))⟩
  refine ⟨risingHeat 0, r, fun t _ => Step.retry (s := State.initial (risingHeat t)) rfl
    (risingHeat (t + 1)), ?_⟩
  intro s t h
  change (s : ℚ) < (t : ℚ)
  exact_mod_cast h

end GRWTSK.HS95.WindowHandoff.Run
