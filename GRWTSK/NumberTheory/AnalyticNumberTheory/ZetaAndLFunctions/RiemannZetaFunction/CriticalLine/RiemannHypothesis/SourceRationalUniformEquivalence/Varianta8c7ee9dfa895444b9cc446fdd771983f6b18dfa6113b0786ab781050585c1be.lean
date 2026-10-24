import SourceRationalExactBaseline

/-!
The actual rational jet compensator changes the complete signed contour by an
explicit bounded source term. Matching the jet does not construct an eventual
arithmetic witness. The two literal uniform propositions are connected exactly.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceRationalUniformEquivalence
open SourceRationalCompensation SourceRationalExactBaseline SourceRationalContinuousHalf
open SourceNativeConstantCompensation SourceNativeDirichlet SourceNativeDirichletMoments
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual
noncomputable section

theorem rational_remainder_eq_constant_remainder (A : ℝ) (hA : 1 ≤ A) :
    (rationalRemainderContour A).re = (compensatedAngularContour A).re +
      (1 + halfEnergyValue A) * dirichletMoment 1 := by
  have hr := mertensResidual_eq_rational A hA
  have hc := mertensResidual_eq_constant_add_compensated A hA
  rw [rationalBaseline_eq_exact A hA] at hr
  linarith

theorem remainder_shift_bounds_at_radius {R A : ℝ} (hR : 1 ≤ R) (hRA : R ≤ A) :
    (1 + halfEnergyValue R) * dirichletMoment 1 ≤
        (rationalRemainderContour A).re - (compensatedAngularContour A).re ∧
      (rationalRemainderContour A).re - (compensatedAngularContour A).re <
        3 * dirichletMoment 1 := by
  rw [rational_remainder_eq_constant_remainder A (hR.trans hRA)]
  have hlo := mul_le_mul_of_nonneg_right (halfEnergyValue_mono hR hRA)
    (dirichletMoment_nonneg 1)
  have hhi := mul_lt_mul_of_pos_right (halfEnergyValue_lt_two A)
    dirichletMoment_one_pos
  constructor <;> nlinarith

theorem constant_remainder_upper_of_rational {K R : ℝ} (hR : 1 ≤ R)
    (hrem : ∀ A : ℝ, R ≤ A → (rationalRemainderContour A).re ≤ K) :
    ∀ A : ℝ, R ≤ A →
      (compensatedAngularContour A).re ≤
        K - (1 + halfEnergyValue R) * dirichletMoment 1 := by
  intro A hA
  have hs := (remainder_shift_bounds_at_radius hR hA).1
  linarith [hrem A hA]

theorem rational_remainder_upper_of_constant {K R : ℝ} (hR : 1 ≤ R)
    (hcomp : ∀ A : ℝ, R ≤ A → (compensatedAngularContour A).re ≤ K) :
    ∀ A : ℝ, R ≤ A → (rationalRemainderContour A).re ≤ K + 3 * dirichletMoment 1 := by
  intro A hA
  have hs := (remainder_shift_bounds_at_radius hR hA).2
  linarith [hcomp A hA]

theorem rational_uniform_bound_iff_constant_uniform_bound :
    RationalRemainderTailUpperBound ↔ CompensatedNativeTailUpperBound := by
  constructor
  · rintro ⟨K, R, hR, hrem⟩
    exact ⟨K - (1 + halfEnergyValue R) * dirichletMoment 1, R, hR,
      constant_remainder_upper_of_rational hR hrem⟩
  · rintro ⟨K, R, hR, hcomp⟩
    exact ⟨K + 3 * dirichletMoment 1, R, hR,
      rational_remainder_upper_of_constant hR hcomp⟩

end
end FormalResearch.RiemannHypothesis.SourceRationalUniformEquivalence
