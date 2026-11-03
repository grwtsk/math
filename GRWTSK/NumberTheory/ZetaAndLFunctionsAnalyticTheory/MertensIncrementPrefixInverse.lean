/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.ActualPrefixMatchedVector

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Explicit inverse of the actual weighted prefix transform, retaining the
initial coordinate. Finite invertibility supplies no uniform conditioning
or arithmetic signed bound. SOURCE_PROOF_CANDIDATES / NOT_RUN. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.MertensIncrementPrefixInverse
open GRWTSK.NumberTheory.Moebius.CriticalEndpointDefect

def prefixDifference (a : ℕ → ℝ) : ℕ → ℝ
  | 0 => a 0
  | n+1 => a (n+1)-a n

theorem prefixDifference_telescope (a : ℕ → ℝ) (L : ℕ) :
    (∑ n ∈ Finset.range (L+1), prefixDifference a n)=a L := by
  induction L with
  | zero => simp [prefixDifference]
  | succ L ih =>
    rw [Finset.sum_range_succ,ih]
    simp [prefixDifference]

def inverseIncrementCoefficients (g x : ℕ → ℝ) : ℕ → ℝ :=
  prefixDifference (fun n => x n/g (n+1))

theorem forward_inverse_prefix (g x : ℕ → ℝ) (L : ℕ) (hg : g (L+1) ≠ 0) :
    g (L+1)*(∑ n ∈ Finset.range (L+1), inverseIncrementCoefficients g x n)=x L := by
  rw [inverseIncrementCoefficients,prefixDifference_telescope]
  exact mul_div_cancel₀ _ hg

theorem actual_gap_pos (n : ℕ) (hn : 1 ≤ n) : 0 < criticalEndpointGap n := by
  have hp : (0 : ℝ) < n := by exact_mod_cast (by omega : 0<n)
  have hs : Real.sqrt (n : ℝ) < Real.sqrt ((n+1 : ℕ) : ℝ) :=
    Real.sqrt_lt_sqrt (by positivity) (by exact_mod_cast Nat.lt_succ_self n)
  unfold criticalEndpointGap
  apply sub_pos.mpr
  simpa only [one_div] using one_div_lt_one_div_of_lt (Real.sqrt_pos.mpr hp) hs

theorem actual_gap_forward_inverse (x : ℕ → ℝ) (L : ℕ) :
    criticalEndpointGap (L+1)*
      (∑ n ∈ Finset.range (L+1), inverseIncrementCoefficients criticalEndpointGap x n)=x L :=
  forward_inverse_prefix _ _ _ (ne_of_gt (actual_gap_pos _ (by omega)))

end GRWTSK.NumberTheory.Zeta.Riemann.MertensIncrementPrefixInverse
