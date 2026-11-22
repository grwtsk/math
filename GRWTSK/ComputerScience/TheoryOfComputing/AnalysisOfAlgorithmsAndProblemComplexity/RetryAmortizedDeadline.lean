/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.ComputerScience.TheoryOfComputing.AnalysisOfAlgorithmsAndProblemComplexity.RetryCountdown

/-!
# Retry deadlines with intermittent progress

A budget may remain unchanged on individual retries. A strict drop after
each complete retry block still yields a deadline independent of how
the progress is distributed inside the block.
-/

set_option autoImplicit false

namespace GRWTSK.ComputerScience.RetryCountdown

/-- If every all-retry block of positive length k strictly decreases its
entry budget, a non-retry tick occurs before the stated deadline. -/
theorem resolves_before_block_deadline {retry : ℕ → Prop}
    (budget : ℕ → ℕ) {k : ℕ} (_positive : 0 < k)
    (drop : ∀ t, (∀ i < k, retry (t + i)) → budget (t + k) < budget t)
    (t : ℕ) : ∃ d < (budget t + 1) * k, ¬ retry (t + d) := by
  classical
  by_contra! all
  have depletion (n : ℕ) (hn : n ≤ budget t + 1) :
      budget (t + n * k) + n ≤ budget t := by
    induction n with
    | zero => simp
    | succ n ih =>
      have hb := ih (by omega)
      have hdrop := drop (t + n * k) (fun i hi => by
        rw [Nat.add_assoc]
        apply all
        have hmul := Nat.mul_le_mul_right k hn
        rw [Nat.succ_mul] at hmul
        omega)
      rw [Nat.succ_mul, show t + (n * k + k) = t + n * k + k by omega]
      omega
  have impossible := depletion (budget t + 1) le_rfl
  omega

theorem fair_of_block_budget (stage : ℕ → ℕ) (live : ℕ → Prop)
    (mono : Monotone stage) (budget : ℕ → ℕ) {k : ℕ} (positive : 0 < k)
    (drop : ∀ t, (∀ i < k, stagedRetry stage live (t + i)) →
      budget (t + k) < budget t) :
    ∀ t, live t → ∃ u ≥ t, stage t < stage u ∨ ¬ live u := by
  apply (resolves_stagedRetry_iff stage live mono).mp
  intro t
  obtain ⟨d, _, hd⟩ := resolves_before_block_deadline budget positive drop t
  exact ⟨d, hd⟩

/-- The deadline is sharp. Each block spends one unit, with no exit
until its final block's last tick. -/
theorem block_deadline_sharp (B k : ℕ) (positive : 0 < k) :
    ∃ (retry : ℕ → Prop) (budget : ℕ → ℕ), budget 0 = B ∧
      (∀ t, (∀ i < k, retry (t + i)) → budget (t + k) < budget t) ∧
      (∀ d < (B + 1) * k - 1, retry d) ∧ ¬ retry ((B + 1) * k - 1) := by
  let stop := (B + 1) * k - 1
  let budget (t : ℕ) := B - t / k
  refine ⟨fun t => t < stop, budget, by simp [budget], ?_, fun _ h => h, lt_irrefl _⟩
  intro t h
  have last := h (k - 1) (by omega)
  have ht : t < B * k := by
    change t + (k - 1) < (B + 1) * k - 1 at last
    rw [Nat.add_mul, one_mul] at last
    omega
  have hB : t / k < B := (Nat.div_lt_iff_lt_mul positive).mpr ht
  have counted : (t + k) / k = t / k + 1 := by
    simpa using Nat.add_mul_div_left t 1 positive
  simp only [budget, counted]
  omega

end GRWTSK.ComputerScience.RetryCountdown
