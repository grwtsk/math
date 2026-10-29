/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.PickupGcdGrowingCutoff
import Mathlib.Algebra.Order.Floor.Semiring
import Mathlib.Analysis.SpecialFunctions.Pow.Real

/-!
# A three-quarter-power cutoff for the actual endpoint gcd tail

The cutoff is the natural ceiling of M^(3/4), M=2^j. Its square is large
enough to pay the proved proper tail with 4*sqrt(M). This changes only the
location of the exact signed head/tail split. No bound on that growing signed
head or any RH or physical mass-gap conclusion is supplied.

SOURCE_PROOF_CANDIDATE / compilation, fresh replay, transitive axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Moebius.PickupGcdTailCutoff

open GRWTSK.NumberTheory.Moebius.PickupGcdGrowingCutoff
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature

/-- The exact proposed growing common-divisor cutoff. -/
def threeQuarterGcdCutoff (j : ℕ) : ℕ :=
  ⌈(((2 ^ j : ℕ) : ℝ) ^ ((3 : ℝ) / 4))⌉₊

/-- This cutoff is positive even at j=0. -/
theorem one_le_threeQuarterGcdCutoff (j : ℕ) :
    1 ≤ threeQuarterGcdCutoff j := by
  unfold threeQuarterGcdCutoff
  apply Nat.one_le_ceil_iff.mpr
  exact Real.rpow_pos_of_pos (by positivity) _

/-- The all-D proper-tail allowance specializes to at most 4*sqrt(M). -/
theorem threeQuarterGcdCutoff_budget (j : ℕ) :
    4 * (((2 ^ j : ℕ) : ℝ) ^ 2) / (threeQuarterGcdCutoff j : ℝ) ^ 2 ≤
      4 * Real.sqrt ((2 ^ j : ℕ) : ℝ) := by
  let M : ℝ := ((2 ^ j : ℕ) : ℝ)
  have hM : 0 < M := by dsimp [M]; positivity
  have hceil : M ^ ((3 : ℝ) / 4) ≤ (threeQuarterGcdCutoff j : ℝ) := by
    exact Nat.le_ceil _
  have hrpow : 0 ≤ M ^ ((3 : ℝ) / 4) := Real.rpow_nonneg hM.le _
  have hcut : 0 ≤ (threeQuarterGcdCutoff j : ℝ) := Nat.cast_nonneg _
  have hsquare : (M ^ ((3 : ℝ) / 4)) ^ 2 ≤
      (threeQuarterGcdCutoff j : ℝ) ^ 2 := by
    simpa only [pow_two] using mul_le_mul hceil hceil hrpow hcut
  have hproduct : Real.sqrt M * (M ^ ((3 : ℝ) / 4)) ^ 2 = M ^ 2 := by
    calc
      Real.sqrt M * (M ^ ((3 : ℝ) / 4)) ^ 2 =
          M ^ ((1 : ℝ) / 2) * M ^ (((3 : ℝ) / 4) * (2 : ℝ)) := by
        rw [Real.sqrt_eq_rpow, Real.rpow_mul_natCast hM.le]
      _ = M ^ (((1 : ℝ) / 2) + ((3 : ℝ) / 4) * (2 : ℝ)) :=
        (Real.rpow_add hM _ _).symm
      _ = M ^ 2 := by norm_num
  have hbudget : M ^ 2 ≤
      Real.sqrt M * (threeQuarterGcdCutoff j : ℝ) ^ 2 := by
    rw [← hproduct]
    exact mul_le_mul_of_nonneg_left hsquare (Real.sqrt_nonneg M)
  have hcutpos : 0 < (threeQuarterGcdCutoff j : ℝ) := by
    exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one (one_le_threeQuarterGcdCutoff j))
  change 4 * M ^ 2 / (threeQuarterGcdCutoff j : ℝ) ^ 2 ≤ 4 * Real.sqrt M
  apply (div_le_iff₀ (pow_pos hcutpos 2)).mpr
  nlinarith

/-- The exact proposed cutoff pays the actual endpoint truncation error with
4*sqrt(M). The retained head is still the original signed source sum. -/
theorem abs_endpoint_increment_sub_threeQuarter_head_le (j : ℕ) :
    |(endpointSum (dyadicTime (j + 1)) - endpointSum (dyadicTime j)) -
      gcdOctaveHead j (threeQuarterGcdCutoff j)| ≤
      4 * Real.sqrt ((2 ^ j : ℕ) : ℝ) :=
  (abs_endpoint_increment_sub_head_le j (one_le_threeQuarterGcdCutoff j)).trans
    (threeQuarterGcdCutoff_budget j)

end GRWTSK.NumberTheory.Moebius.PickupGcdTailCutoff
