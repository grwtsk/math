import Folder.Rebuild.NumberTheory.MultiplicativeFunction
import Mathlib.Analysis.PSeries
import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.Normed.Group.InfiniteSum
import Mathlib.Analysis.SpecialFunctions.Pow.Real

/-!
# Folder.Rebuild.AnalyticNumberTheory.SummabilityWeights

Positive-index real weights for the first checked half-plane layer.
-/

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

noncomputable def posWeightReal
    (σ : Real)
    (n : Nat) : Real :=
  if n = 0 then 0 else (n : Real) ^ (-σ)

theorem posWeightReal_zero
    (σ : Real) :
    posWeightReal σ 0 = 0 := by
  simp [posWeightReal]

theorem posWeightReal_one
    (σ : Real) :
    posWeightReal σ 1 = 1 := by
  simp [posWeightReal]

theorem posWeightReal_nonneg
    (σ : Real)
    (n : Nat) :
    0 ≤ posWeightReal σ n := by
  by_cases hn : n = 0
  · simp [posWeightReal, hn]
  · simp [posWeightReal, hn, Real.rpow_nonneg]

theorem summable_posWeightReal_of_one_lt
    {σ : Real}
    (hσ : 1 < σ) :
    Summable fun n : Nat => posWeightReal σ n := by
  have hne : (-σ) ≠ 0 := by linarith
  have hfun :
      (fun n : Nat => posWeightReal σ n) =
        fun n : Nat => (n : Real) ^ (-σ) := by
    funext n
    by_cases hn : n = 0
    · subst n
      simp [posWeightReal, Real.zero_rpow hne]
    · simp [posWeightReal, hn]
  rw [hfun]
  exact Real.summable_nat_rpow.mpr (by linarith)

theorem summable_real_of_abs_bound_by_posWeight
    (a : Nat → Real)
    {σ C : Real}
    (hσ : 1 < σ)
    (_hC : 0 ≤ C)
    (hbound : ∀ n, |a n| ≤ C * posWeightReal σ n) :
    Summable a := by
  have hmajor :
      Summable fun n : Nat => C * posWeightReal σ n :=
    (summable_posWeightReal_of_one_lt hσ).mul_left C
  exact Summable.of_norm_bounded hmajor (by simpa [Real.norm_eq_abs] using hbound)

theorem summable_complex_of_norm_bound_by_posWeight
    (a : Nat → ℂ)
    {σ C : Real}
    (hσ : 1 < σ)
    (_hC : 0 ≤ C)
    (hbound : ∀ n, ‖a n‖ ≤ C * posWeightReal σ n) :
    Summable a := by
  have hmajor :
      Summable fun n : Nat => C * posWeightReal σ n :=
    (summable_posWeightReal_of_one_lt hσ).mul_left C
  exact Summable.of_norm_bounded hmajor hbound

end AnalyticNumberTheory
end Rebuild
end Folder
