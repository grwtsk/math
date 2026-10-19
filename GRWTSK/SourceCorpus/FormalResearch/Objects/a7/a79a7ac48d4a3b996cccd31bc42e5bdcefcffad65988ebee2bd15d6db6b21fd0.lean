import FormalResearch.RiemannHypothesis.SourcePrimitiveCorrelationCurvature

#check FormalResearch.RiemannHypothesis.SourcePrimitiveCorrelationCurvature.primitiveCorrelationZero_second_deriv_eq_neg_one
#print axioms FormalResearch.RiemannHypothesis.SourcePrimitiveCorrelationCurvature.primitiveCorrelationZero_second_deriv_eq_neg_one
#check FormalResearch.RiemannHypothesis.SourcePrimitiveCorrelationCurvature.primitiveCorrelationOne_second_deriv_eq_neg_two
#print axioms FormalResearch.RiemannHypothesis.SourcePrimitiveCorrelationCurvature.primitiveCorrelationOne_second_deriv_eq_neg_two
#check FormalResearch.RiemannHypothesis.SourcePrimitiveCorrelationCurvature.primitiveCorrelationZero_contDiff_two
#print axioms FormalResearch.RiemannHypothesis.SourcePrimitiveCorrelationCurvature.primitiveCorrelationZero_contDiff_two
#check FormalResearch.RiemannHypothesis.SourcePrimitiveCorrelationCurvature.primitiveCorrelationOne_contDiff_two
#print axioms FormalResearch.RiemannHypothesis.SourcePrimitiveCorrelationCurvature.primitiveCorrelationOne_contDiff_two
#check FormalResearch.RiemannHypothesis.SourcePrimitiveCorrelationCurvature.primitiveCorrelationZero_contDiff_four
#print axioms FormalResearch.RiemannHypothesis.SourcePrimitiveCorrelationCurvature.primitiveCorrelationZero_contDiff_four

noncomputable section
namespace FormalResearch.RiemannHypothesis.PrimitiveCurvatureWorkerAudit
open MeasureTheory SourcePrimitiveCorrelationCurvature SourcePrimitivePrimeInteraction
open SourceCausalEnergy SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization

example {A : ℝ} (hA : 0 < A) :
    deriv (deriv (primitiveCorrelationZero A)) 0 < 0 := by
  rw [primitiveCorrelationZero_second_deriv_eq_neg_one hA]
  unfold primitiveCorrelationOne
  simp only [sub_zero, ← pow_two]
  rw [normalizedPrimitiveBump_deriv_square_integral hA]
  have hZ : 0 < sourceNormalization A := by unfold sourceNormalization; positivity
  exact neg_neg_of_pos (div_pos (by norm_num) (mul_pos (sq_pos_of_pos hA) hZ))

private theorem fourth {A : ℝ} (hA : 0 < A) (t : ℝ) :
    deriv (deriv (deriv (deriv (primitiveCorrelationZero A)))) t =
      primitiveCorrelationTwo A t := by
  have he : deriv (deriv (primitiveCorrelationZero A)) = -(primitiveCorrelationOne A) :=
    funext (primitiveCorrelationZero_second_deriv_eq_neg_one hA)
  rw [he, deriv.neg']
  change deriv (-deriv (primitiveCorrelationOne A)) t = primitiveCorrelationTwo A t
  rw [deriv.neg, primitiveCorrelationOne_second_deriv_eq_neg_two hA, neg_neg]

example {A : ℝ} (hA : 0 < A) (t : ℝ) :
    sourceCorrelation explicitSecondDerivative A t =
      deriv (deriv (deriv (deriv (primitiveCorrelationZero A)))) t -
        deriv (deriv (primitiveCorrelationZero A)) t / 2 + primitiveCorrelationZero A t / 16 := by
  rw [sourceCorrelation_eq_primitive_filter hA, fourth hA,
    primitiveCorrelationZero_second_deriv_eq_neg_one hA]
  ring

end FormalResearch.RiemannHypothesis.PrimitiveCurvatureWorkerAudit
