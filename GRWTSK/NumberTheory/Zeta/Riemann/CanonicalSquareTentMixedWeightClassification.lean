/-
Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. No public root import.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentMixedCoordinateExactness
import Mathlib.Tactic

/-!
# Classification of exceptional mixed-coordinate weights

The source already proves that recovery succeeds exactly when
cofactorTwo + weight * cofactorZero is nonzero. Since cofactorTwo
is nonzero, if cofactorZero vanishes every weight succeeds; otherwise
the sole exceptional weight is -cofactorTwo / cofactorZero.

These are source-level algebraic alternatives, not an analytic
measurement, Weil transport, spectral positivity or RH.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentMixedWeightClassification

open GRWTSK.RiemannHypothesis
open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.InformationLoss
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentCorrectedArithmeticGram
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentMixedCoordinateRepair
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentMixedCoordinateExactness
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentInformationLoss

/-- If the first cofactor vanishes, no mixed weight destroys injectivity. -/
theorem all_weights_work_of_cofactorZero_zero
    (hz : cofactorZero = 0) (weight : ℂ) :
    Function.Injective
      (augmentedProfile bombieriMomentProfile (mixedCoordinate weight)) := by
  apply (mixedCoordinate_injective_iff weight).2
  simpa [hz] using cofactorTwo_ne_zero

/-- If the first cofactor is nonzero, the entire exceptional locus
is a single explicitly specified complex weight. -/
theorem exceptional_weight_iff
    (hz : cofactorZero ≠ 0) (weight : ℂ) :
    (¬ Function.Injective
      (augmentedProfile bombieriMomentProfile (mixedCoordinate weight))) ↔
      weight = -cofactorTwo / cofactorZero := by
  rw [mixedCoordinate_injective_iff]
  push_neg
  constructor
  · intro h
    apply (eq_div_iff hz).2
    linear_combination h
  · intro h
    rw [h]
    field_simp [hz]
    ring

end GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentMixedWeightClassification
