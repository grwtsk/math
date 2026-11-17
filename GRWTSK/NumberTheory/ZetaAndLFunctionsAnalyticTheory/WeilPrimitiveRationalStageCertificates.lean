/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.MathematicalLogicAndFoundations.GeneralLogic.ApproximateCertificateCoverage
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimitiveRationalWindowDensity

/-! # Accepted lower certificates for normalized rational primitive stage tests -/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

open SourcePrimeCorrelation
open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Inference
open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Inference.ApproximateCertificates
open GRWTSK.FunctionalAnalysis.DenseNonnegativeApproximation

/-- The original energy-relative defect at stage j on its native mass ball. -/
noncomputable def primitiveStageDefect {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (hp : χ.IsPrimitive) (hn : χ ≠ 1)
    (j : ℕ) (f : PrimitiveStageMassTest χ j) : ℝ :=
  primitiveArithmeticValue χ hp hn ((j : ℝ) + 1) (liftReal f.val) +
    ((1 / 2 : ℝ) ^ j) * energy (liftReal f.val)

/-- The checked value binds the actual primitive nonprincipal character,
the fixed stage and the same normalized rational list as the dense family. -/
noncomputable def primitiveStageCodeDefect {q : ℕ} [NeZero q] (j : ℕ)
    (source : {χ : DirichletCharacter ℂ q // χ.IsPrimitive ∧ χ ≠ 1})
    (cs : List ℚ) : ℝ :=
  primitiveStageDefect source.val source.property.1 source.property.2 j
    (primitiveStageMassTestOfNormalizedCode source.val j cs)

/-- Accepted certificates for every list and dyadic accuracy at the given
source and stage imply the original defect is nonnegative on the mass ball. -/
theorem primitiveStageDefect_nonneg_of_dyadic_code_coverage
    {q : ℕ} [NeZero q] {Certificate : Type*} (j : ℕ)
    (source : {χ : DirichletCharacter ℂ q // χ.IsPrimitive ∧ χ ≠ 1})
    (checker : CertificateChecker
      {χ : DirichletCharacter ℂ q // χ.IsPrimitive ∧ χ ≠ 1} Certificate (List ℚ × ℕ)
      (lowerBoundMeaning (primitiveStageCodeDefect j) (fun k => (1 / 2 : ℝ) ^ k)))
    (covered : ∀ (cs : List ℚ) (k : ℕ), ∃ c : Certificate,
      checker.Accepts source c (cs, k)) :
    ∀ f : PrimitiveStageMassTest source.val j,
      0 ≤ primitiveStageDefect source.val source.property.1 source.property.2 j f := by
  let _ := primitiveStageH1Topology source.val j
  exact nonneg_of_dense_range
    (primitiveStageDefect source.val source.property.1 source.property.2 j)
    (primitiveStageMassTestOfNormalizedCode source.val j)
    (denseRange_primitiveStageMassTestOfNormalizedCode source.val j)
    (continuous_primitiveStageDefect_inducedH1 source.val source.property.1 source.property.2 j)
    (nonneg_of_dyadic_coverage (primitiveStageCodeDefect j) checker source covered)

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
