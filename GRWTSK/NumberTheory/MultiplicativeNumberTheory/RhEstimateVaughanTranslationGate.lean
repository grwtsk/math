import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanTranslationGate
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateLogFrequencySpacing
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateDirichletDiagonalScale

/-! Exact signed gate consumers. Every final analytic premise remains explicit. -/

open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual EstimateVaughanSource EstimateVaughanTranslationGate

example (h : ∃ D : ℝ, 0 ≤ D ∧ ∃ R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
    typeTwoSource A ≤ D - shortMangoldtSource A - shortLogSource A + shortPlainSource A) :
    CorrelationAssembly.EstimateObligation :=
  estimate_of_mertens_residual_tail
    (mertens_residual_tail_iff_signed_typeTwo_tail.mpr h)

example (h : ∃ D : ℝ, 0 ≤ D ∧ ∃ R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
    typeTwoOffDiagonal A ≤ D - typeTwoDiagonal A - shortMangoldtSource A -
      shortLogSource A + shortPlainSource A) : CorrelationAssembly.EstimateObligation :=
  estimate_of_mertens_residual_tail
    (mertens_residual_tail_iff_coupled_offDiagonal_tail.mpr h)

example (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A = coupledOffDiagonalRemainder A :=
  mertensResidual_eq_coupledOffDiagonalRemainder A hA

example : ¬ ∃ δ : ℝ, 0 < δ ∧ ∀ n : ℕ, 1 ≤ n →
    δ ≤ Real.log ((n : ℝ) + 1) - Real.log n :=
  EstimateLogFrequencySpacing.no_uniform_positive_log_spacing

example : ¬ ∃ D R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
    EstimateDirichletDiagonalScale.mobiusDiagonal
        (EstimateSourceMobiusKernel.sourceKernelCutoff A) *
      EstimateDirichletDiagonalScale.logDiagonal
        (EstimateSourceMobiusKernel.sourceKernelCutoff A) ≤ D :=
  EstimateDirichletDiagonalScale.no_diagonal_budget_tail_upper_bound
