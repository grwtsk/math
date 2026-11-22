/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Data.Nat.Find
import Mathlib.Tactic

/-!
# Remaining retries along a tick trace

A run that eventually leaves every retry suffix has a canonical countdown
at each time. This is a trace-level rank. It may depend on future ticks;
an implementation can instead supply any decreasing natural budget.
-/

set_option autoImplicit false

namespace GRWTSK.ComputerScience.RetryCountdown

def Resolves (retry : ℕ → Prop) : Prop :=
  ∀ t, ∃ d : ℕ, ¬ retry (t + d)

/-- The index of the first tick at or after t that is not a retry,
relative to t. -/
noncomputable def remaining {retry : ℕ → Prop} (h : Resolves retry) (t : ℕ) : ℕ :=
  haveI : DecidablePred (fun d : ℕ => ¬ retry (t + d)) := Classical.decPred _
  Nat.find (h t)

theorem remaining_not_retry {retry : ℕ → Prop} (h : Resolves retry) (t : ℕ) :
    ¬ retry (t + remaining h t) := by
  classical
  exact @Nat.find_spec _ (Classical.decPred _) (h t)

theorem retry_before_remaining {retry : ℕ → Prop} (h : Resolves retry) {t d : ℕ}
    (hd : d < remaining h t) : retry (t + d) := by
  classical
  exact not_not.mp (@Nat.find_min _ (Classical.decPred _) (h t) d hd)

theorem remaining_le {retry : ℕ → Prop} (h : Resolves retry) {t d : ℕ}
    (done : ¬ retry (t + d)) : remaining h t ≤ d := by
  classical
  exact @Nat.find_min' _ (Classical.decPred _) (h t) d done

theorem remaining_eq_zero_iff {retry : ℕ → Prop} (h : Resolves retry) (t : ℕ) :
    remaining h t = 0 ↔ ¬ retry t := by
  constructor
  · intro hz
    simpa [hz] using remaining_not_retry h t
  · intro done
    exact Nat.eq_zero_of_le_zero (remaining_le h (t := t) (d := 0) (by simpa using done))

theorem remaining_step {retry : ℕ → Prop} (h : Resolves retry) {t : ℕ} (hr : retry t) :
    remaining h t = remaining h (t + 1) + 1 := by
  have hpos : 0 < remaining h t :=
    Nat.pos_of_ne_zero fun hz => ((remaining_eq_zero_iff h t).mp hz) hr
  have h1 : remaining h t ≤ remaining h (t + 1) + 1 := by
    apply remaining_le h
    simpa [Nat.add_assoc, Nat.add_comm 1] using remaining_not_retry h (t + 1)
  have h2 : remaining h (t + 1) ≤ remaining h t - 1 := by
    apply remaining_le h
    have he : t + 1 + (remaining h t - 1) = t + remaining h t := by omega
    rw [he]
    exact remaining_not_retry h t
  omega

/-- A decreasing natural budget gives a deadline from each starting tick.
A non-retry tick may reset the budget. -/
theorem resolves_by_budget {retry : ℕ → Prop} (budget : ℕ → ℕ)
    (decreases : ∀ t, retry t → budget (t + 1) < budget t) (t : ℕ) :
    ∃ d ≤ budget t, ¬ retry (t + d) := by
  classical
  by_contra! stalled
  have bound (d : ℕ) (hd : d ≤ budget t + 1) : budget (t + d) + d ≤ budget t := by
    induction d with
    | zero => simp
    | succ d ih =>
        have hsmall : d ≤ budget t := by omega
        have hb := ih (by omega)
        have hdec := decreases (t + d) (stalled d hsmall)
        change budget (t + (d + 1)) + (d + 1) ≤ budget t
        rw [show t + (d + 1) = t + d + 1 by omega]
        omega
  have impossible := bound (budget t + 1) le_rfl
  omega

/-- Existence of a trace-level natural retry budget is equivalent to
eventual resolution, and the remaining retry count is one such budget. -/
theorem resolves_iff_budget (retry : ℕ → Prop) :
    Resolves retry ↔ ∃ budget : ℕ → ℕ, ∀ t, retry t → budget (t + 1) < budget t := by
  constructor
  · intro h
    exact ⟨remaining h, fun t hr => by rw [remaining_step h hr]; omega⟩
  · rintro ⟨budget, decreases⟩ t
    obtain ⟨d, _, hd⟩ := resolves_by_budget budget decreases t
    exact ⟨d, hd⟩

/-- A live tick is a retry exactly when the next tick is live at the same
stage. Terminal idle ticks do not count as retries. -/
def stagedRetry (stage : ℕ → ℕ) (live : ℕ → Prop) (t : ℕ) : Prop :=
  live t ∧ live (t + 1) ∧ stage (t + 1) = stage t

private theorem stage_of_retry_prefix {stage : ℕ → ℕ} {live : ℕ → Prop} {t d : ℕ}
    (start : live t) (prefixRetries : ∀ i < d, stagedRetry stage live (t + i)) :
    live (t + d) ∧ stage (t + d) = stage t := by
  induction d with
  | zero => simpa using start
  | succ d ih =>
      have prev := ih (fun i hi => prefixRetries i (by omega))
      have next := prefixRetries d (by omega)
      simpa only [← Nat.add_assoc] using And.intro next.2.1 (next.2.2.trans prev.2)

/-- The handoff fairness formula, expressed entirely in stage and liveness
observations, is equivalent to a trace-level countdown. -/
theorem resolves_stagedRetry_iff (stage : ℕ → ℕ) (live : ℕ → Prop)
    (mono : Monotone stage) :
    Resolves (stagedRetry stage live) ↔
      ∀ t, live t → ∃ u ≥ t, stage t < stage u ∨ ¬ live u := by
  classical
  constructor
  · intro h t start
    let d := remaining h t
    have prefixState := stage_of_retry_prefix start
      (fun i hi => retry_before_remaining h (t := t) hi :
        ∀ i < d, stagedRetry stage live (t + i))
    refine ⟨t + d + 1, by omega, ?_⟩
    by_cases done : live (t + d + 1)
    · left
      have hle : stage (t + d) ≤ stage (t + d + 1) := mono (Nat.le_succ _)
      by_contra! hlt
      apply remaining_not_retry h t
      refine ⟨prefixState.1, done, ?_⟩
      change stage (t + d + 1) = stage (t + d)
      exact le_antisymm (hlt.trans_eq prefixState.2.symm) hle
    · exact Or.inr done
  · intro fair t
    by_cases start : live t
    · obtain ⟨u, hu, exit⟩ := fair t start
      obtain ⟨d, rfl⟩ := Nat.exists_eq_add_of_le hu
      by_contra! allRetry
      have endState := stage_of_retry_prefix (d := d) start (fun i _ => allRetry i)
      rcases exit with higher | done
      · omega
      · exact done endState.1
    · exact ⟨0, fun h => start (by simpa using h.1)⟩

/-- A fair trace can sustain any specified finite initial retry block,
so fairness alone gives no uniform deadline across traces. -/
theorem arbitrary_fair_initial_delay (n : ℕ) :
    ∃ retry : ℕ → Prop, ∃ h : Resolves retry, remaining h 0 = n := by
  let retry : ℕ → Prop := fun t => t < n
  have h : Resolves retry := fun t => ⟨n, by dsimp [retry]; omega⟩
  refine ⟨retry, h, le_antisymm (remaining_le h (t := 0) (d := n) (by simp [retry])) ?_⟩
  have done := remaining_not_retry h 0
  simpa [retry] using done

end GRWTSK.ComputerScience.RetryCountdown
