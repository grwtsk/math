import SourceRationalCompensation
import SourceContinuousHalfEnergy
import SourceResidualBudget
import SourceLeadingCesaroPropagation

/-!
Apply the actual causal-energy evaluation to the complete rational source.
Every receiving radius is fixed before the scale quantifier; the signed
arithmetic witness remains explicit. No endpoint or ledger roundtrip is used.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceRationalExactBaseline
open SourceRationalCompensation SourceRationalContinuousHalf
open SourceNativeDirichlet SourceNativeDirichletMoments SourceContinuousHalfEnergy
open SourceLeadingCesaroPropagation SourceLeadingTailBudget RH16ResumeBudget SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual Realization
noncomputable section

def halfEnergyValue (A : ℝ) : ℝ :=
  (14 * A ^ 4 + 272 * A ^ 2) / (7 * A ^ 4 + 272 * A ^ 2 + 7344)

theorem halfEnergyValue_pos {A : ℝ} (hA : 0 < A) : 0 < halfEnergyValue A := by
  unfold halfEnergyValue
  positivity

theorem halfEnergyValue_lt_two (A : ℝ) : halfEnergyValue A < 2 := by
  have hd : 0 < 7 * A ^ 4 + 272 * A ^ 2 + 7344 := by positivity
  unfold halfEnergyValue
  apply (div_lt_iff₀ hd).mpr
  nlinarith [sq_nonneg A]

theorem halfEnergyValue_mono {R A : ℝ} (hR : 1 ≤ R) (hRA : R ≤ A) :
    halfEnergyValue R ≤ halfEnergyValue A := by
  have hx : R ^ 2 ≤ A ^ 2 := by nlinarith
  have hdR : 0 < 7 * R ^ 4 + 272 * R ^ 2 + 7344 := by positivity
  have hdA : 0 < 7 * A ^ 4 + 272 * A ^ 2 + 7344 := by positivity
  have hp : 0 ≤ (A ^ 2 - R ^ 2) *
      (1904 * A ^ 2 * R ^ 2 + 102816 * (A ^ 2 + R ^ 2) + 1997568) := by
    apply mul_nonneg (sub_nonneg.mpr hx)
    positivity
  unfold halfEnergyValue
  apply (div_le_div_iff₀ hdR hdA).mpr
  have he : (14 * A ^ 4 + 272 * A ^ 2) * (7 * R ^ 4 + 272 * R ^ 2 + 7344) -
      (14 * R ^ 4 + 272 * R ^ 2) * (7 * A ^ 4 + 272 * A ^ 2 + 7344) =
      (A ^ 2 - R ^ 2) *
        (1904 * A ^ 2 * R ^ 2 + 102816 * (A ^ 2 + R ^ 2) + 1997568) := by ring
  linarith

theorem continuousPoleHalf_eq_exact (A : ℝ) (hA : 1 ≤ A) :
    continuousPoleHalf A = -halfEnergyValue A := by
  rw [continuousPoleHalf_eq_neg_negative A hA,
    negativeSmoothMoment_eq_rational (by linarith : 0 < A)]
  rfl

theorem continuousPoleHalf_lt_zero (A : ℝ) (hA : 1 ≤ A) :
    continuousPoleHalf A < 0 := by
  rw [continuousPoleHalf_eq_exact A hA]
  exact neg_neg_of_pos (halfEnergyValue_pos (by linarith))

theorem rationalBaseline_eq_exact (A : ℝ) (hA : 1 ≤ A) :
    rationalBaseline A =
      rightLineMajorant 2 - (1 + halfEnergyValue A) * dirichletMoment 1 := by
  unfold rationalBaseline
  rw [continuousPoleHalf_eq_exact A hA]
  ring

theorem rationalBaseline_upper_at_radius {R A : ℝ} (hR : 1 ≤ R) (hRA : R ≤ A) :
    rationalBaseline A ≤
      rightLineMajorant 2 - (1 + halfEnergyValue R) * dirichletMoment 1 := by
  rw [rationalBaseline_eq_exact A (hR.trans hRA)]
  have h := mul_le_mul_of_nonneg_right (halfEnergyValue_mono hR hRA)
    (dirichletMoment_nonneg 1)
  nlinarith

theorem rationalBaseline_strict_improvement (R : ℝ) (hR : 1 ≤ R) :
    rightLineMajorant 2 - (1 + halfEnergyValue R) * dirichletMoment 1 <
      rightLineMajorant 2 + dirichletMoment 1 := by
  have hn := halfEnergyValue_pos (by linarith : 0 < R)
  have hm := dirichletMoment_one_pos
  nlinarith

theorem residual_upper_at_radius (K R : ℝ) (hR : 1 ≤ R)
    (hrem : ∀ A : ℝ, R ≤ A → (rationalRemainderContour A).re ≤ K)
    (A : ℝ) (hRA : R ≤ A) :
    mertensResidual A ≤
      rightLineMajorant 2 - (1 + halfEnergyValue R) * dirichletMoment 1 + K := by
  rw [mertensResidual_eq_rational A (hR.trans hRA)]
  exact add_le_add (rationalBaseline_upper_at_radius hR hRA) (hrem A hRA)

theorem all_real_lower_at_radius (K R : ℝ) (hR : 1 ≤ R)
    (hrem : ∀ A : ℝ, R ≤ A → (rationalRemainderContour A).re ≤ K) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower R)
        (archimedeanMultiplier 0 - 2 *
          (rightLineMajorant 2 - (1 + halfEnergyValue R) * dirichletMoment 1 + K)) ≤
        sourceQuadraticValue explicitSecondDerivative A := by
  apply all_real_source_lower_of_residual_tail _ R hR
  exact residual_upper_at_radius K R hR hrem

theorem leading_upper_at_receiving_radius (K R : ℝ) (hR : 1 ≤ R)
    (hrem : ∀ A : ℝ, R ≤ A → (rationalRemainderContour A).re ≤ K) :
    ∀ A : ℝ, max 25600 R ≤ A →
      actualLeadingRenormalizedTail A ≤
        rightLineMajorant 2 - (1 + halfEnergyValue (max 25600 R)) * dirichletMoment 1 +
          K - (riemannZeta (1 / 2)).re + 3103 / 50 := by
  intro A hA
  apply actual_leading_upper_of_residual_upper A _ ((le_max_left _ _).trans hA)
  have hL : 1 ≤ max (25600 : ℝ) R := hR.trans (le_max_right _ _)
  apply residual_upper_at_radius K (max 25600 R) hL _ A hA
  intro B hB
  exact hrem B ((le_max_right _ _).trans hB)

theorem estimate_of_exact_rational_bound (h : RationalRemainderTailUpperBound) :
    CorrelationAssembly.EstimateObligation := by
  obtain ⟨K, R, hR, hrem⟩ := h
  refine estimate_of_mertens_residual_tail
    ⟨max 0 (rightLineMajorant 2 - (1 + halfEnergyValue R) * dirichletMoment 1 + K),
      le_max_left _ _, R, hR, ?_⟩
  intro A hA
  exact (residual_upper_at_radius K R hR hrem A hA).trans (le_max_right _ _)

end
end FormalResearch.RiemannHypothesis.SourceRationalExactBaseline
