/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimitiveRealTwoShift
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.WeilSignedRealMixedPolarization

/-!
# The paired real H1 estimate on the original primitive arithmetic value
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

open OddRootProjection LowSchur
open NativeMixedGammaH1 PhysicalSineNegativeReturn SignedRealMixedPolarization

/-- The native complex lift and the paired real physical expression agree
at the same character and window, with the original signed prime weights. -/
theorem primitiveArithmeticValue_liftReal_eq_pairedPhysical
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (T : ℝ) (f : ℝ → ℝ) :
    primitiveArithmeticValue χ hp hn T (liftReal f) =
      primitivePairedOddPhysicalValue χ hp hn T f := by
  rw [primitiveArithmeticValue_liftReal_eq_real_two_shift]
  rfl

/-- The quantitative paired estimate on the literal arithmetic value of
two real lifts. The original classical H1 records supply the derivatives. -/
theorem primitiveArithmeticValue_liftReal_difference_sq_H1
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (T : ℝ) {f g : ℝ → ℝ}
    (hf : ClassicalRealH1 f) (hg : ClassicalRealH1 g) :
    (primitiveArithmeticValue χ hp hn T (liftReal f) -
      primitiveArithmeticValue χ hp hn T (liftReal g)) ^ 2 ≤
      physicalWeightedBudget
        (|gammaConstant q (gammaParity χ)| + primeMass T +
          2 * ExactGammaTail.tailUpper (gammaParity χ) 1) (7 / 12 : ℝ)
        (f + g) (hf.first + hg.first) *
      physicalWeightedBudget
        (|gammaConstant q (gammaParity χ)| + primeMass T +
          2 * ExactGammaTail.tailUpper (gammaParity χ) 1) (7 / 12 : ℝ)
        (f - g) (hf.first - hg.first) := by
  rw [primitiveArithmeticValue_liftReal_eq_pairedPhysical,
    primitiveArithmeticValue_liftReal_eq_pairedPhysical]
  exact primitiveRealPhysical_difference_sq_H1_continuity χ hp hn T hf hg

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
