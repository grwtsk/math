import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateTypeTwoBlockStrength

set_option autoImplicit false

open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateSourceEdgeProfile EstimateSourceEdgeCorrelation EstimateTypeTwoLogBlocks
open EstimateTypeTwoBlockStrength EstimateMertensResidual EstimateVaughanSource
open EstimateVaughanTranslationGate
open FormalResearch.RiemannHypothesis.SourcePairing

example (A z : ℝ) (hA : 1 ≤ A) (hz : 0 ≤ z) (hzA : z ≤ 2*A) :
    sourceCorrelation Realization.explicitSecondDerivative A (2*A-z) =
      1 / (A^9 * sourceNormalization A) *
        ∫ r in (0 : ℝ)..z, endpointPolynomial A r * endpointPolynomial A (z-r) :=
  sourceCorrelation_upper_edge A z hA hz hzA

example (A : ℝ) (hA : 1 ≤ A) :
    (∫ r in (0 : ℝ)..2*A, endpointPolynomial A r * endpointPolynomial A (2*A-r)) =
      A^9 * sourceNormalization A := endpointPolynomial_full_overlap_integral A hA

example (A : ℝ) (hA : 1 ≤ A) :
    typeTwoOffDiagonal A = ∑ c ∈ logCells A, logBlockSum A c :=
  typeTwoOffDiagonal_eq_logBlocks A hA

example (A : ℝ) (hA : 1 ≤ A) :
    32*A^2 ≤ edgeBlockBudget A ∧ edgeBlockBudget A ≤ 398721024*A^2 :=
  ⟨edgeBlockBudget_ge A hA, edgeBlockBudget_le A hA⟩

example (K R A : ℝ) (p : ℕ) (hR : 1 ≤ R)
    (hB : SquareRootLogBlockEstimate K p R) (hRA : R ≤ A) :
    mertensResidual A ≤ typeTwoDiagonal A + shortMangoldtSource A + shortLogSource A -
      shortPlainSource A + K * (1+2*A)^p * densityBlockBudget A :=
  mertensResidual_le_of_blocks K R A p hR hB hRA

example (K R A : ℝ) (p : ℕ) (hK : 0 ≤ K) (hR : 1 ≤ R)
    (hB : SquareRootLogBlockEstimate K p R) (hRA : R ≤ A) :
    mertensResidual A ≤ typeTwoDiagonal A + shortMangoldtSource A + shortLogSource A -
      shortPlainSource A + 398721024 * Real.exp 1 * K * 3^p * A^(p+2) :=
  mertensResidual_le_coarse_block_budget K R A p hK hR hB hRA
