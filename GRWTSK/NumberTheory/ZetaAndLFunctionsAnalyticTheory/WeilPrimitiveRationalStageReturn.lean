/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimitiveRationalStageCertificates
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimitiveWitnessNormalization

/-! # Return from normalized rational certificates to the original stage bounds -/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

open SourcePrimeCorrelation
open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Inference
open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Inference.ApproximateCertificates

/-- Accepted dyadic code coverage gives the original energy-relative lower
bound for every admitted test at the same stage, without a unit-mass premise. -/
theorem primitiveStageLower_of_dyadic_rational_code_coverage
    {q : ℕ} [NeZero q] {Certificate : Type*} (j : ℕ)
    (source : {χ : DirichletCharacter ℂ q // χ.IsPrimitive ∧ χ ≠ 1})
    (checker : CertificateChecker
      {χ : DirichletCharacter ℂ q // χ.IsPrimitive ∧ χ ≠ 1} Certificate (List ℚ × ℕ)
      (lowerBoundMeaning (primitiveStageCodeDefect j) (fun k => (1 / 2 : ℝ) ^ k)))
    (covered : ∀ (cs : List ℚ) (k : ℕ), ∃ c : Certificate,
      checker.Accepts source c (cs, k)) :
    PrimitiveStageLower source.val source.property.1 source.property.2 j := by
  apply (primitiveStageLower_iff_mass_le_one source.val source.property.1 source.property.2 j).mpr
  intro f hf hmass
  have h := primitiveStageDefect_nonneg_of_dyadic_code_coverage j source checker covered
    ⟨f, hf, hmass⟩
  change 0 ≤ primitiveArithmeticValue source.val source.property.1 source.property.2
    ((j : ℝ) + 1) (liftReal f) + ((1 / 2 : ℝ) ^ j) * energy (liftReal f) at h
  rw [neg_mul]
  linarith

/-- Coverage is required only at stages below the original conductor
frontier, with the inequality for the same character and stage. -/
theorem smallConductorStages_of_dyadic_rational_code_coverage
    {q : ℕ} [NeZero q] {Certificate : Type*}
    (source : {χ : DirichletCharacter ℂ q // χ.IsPrimitive ∧ χ ≠ 1})
    (checker : ∀ j : ℕ, CertificateChecker
      {χ : DirichletCharacter ℂ q // χ.IsPrimitive ∧ χ ≠ 1} Certificate (List ℚ × ℕ)
      (lowerBoundMeaning (primitiveStageCodeDefect j) (fun k => (1 / 2 : ℝ) ^ k)))
    (covered : ∀ j : ℕ, source.val.conductor < conductorFrontier (j + 1) →
      ∀ (cs : List ℚ) (k : ℕ), ∃ c : Certificate, (checker j).Accepts source c (cs, k)) :
    SmallConductorStages source.val source.property.1 source.property.2 := by
  intro j hfrontier
  exact primitiveStageLower_of_dyadic_rational_code_coverage j source (checker j)
    (covered j hfrontier)

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
