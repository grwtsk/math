import SourceRationalCompensation
import SourceResidualBudget
import SourceLeadingCesaroPropagation

/-!
Apply the exact rational source return directly at the receiving source/leading
radius. The signed arithmetic witness remains an ordinary explicit premise.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceRationalExplicitConsumers
open SourceRationalCompensation SourceNativeDirichlet SourceNativeDirichletMoments
open SourceLeadingCesaroPropagation SourceLeadingTailBudget RH16ResumeBudget
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual Realization
noncomputable section

theorem all_real_lower_of_rational (K R : ℝ) (hR : 1 ≤ R)
    (hrem : ∀ A : ℝ, R ≤ A → (rationalRemainderContour A).re ≤ K) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower R)
        (archimedeanMultiplier 0 - 2 * (rightLineMajorant 2 + dirichletMoment 1 + K)) ≤
          sourceQuadraticValue explicitSecondDerivative A := by
  apply all_real_source_lower_of_residual_tail _ R hR
  intro A hA
  exact mertensResidual_upper_of_rational hR hrem A hA

theorem leading_of_rational (K R : ℝ) (hR : 1 ≤ R)
    (hrem : ∀ A : ℝ, R ≤ A → (rationalRemainderContour A).re ≤ K) :
    ∀ A : ℝ, max 25600 R ≤ A →
      actualLeadingRenormalizedTail A ≤ rightLineMajorant 2 + dirichletMoment 1 + K -
        (riemannZeta (1 / 2)).re + 3103 / 50 := by
  intro A hA
  apply actual_leading_upper_of_residual_upper A _ ((le_max_left _ _).trans hA)
  exact mertensResidual_upper_of_rational hR hrem A ((le_max_right _ _).trans hA)

end
end FormalResearch.RiemannHypothesis.SourceRationalExplicitConsumers
