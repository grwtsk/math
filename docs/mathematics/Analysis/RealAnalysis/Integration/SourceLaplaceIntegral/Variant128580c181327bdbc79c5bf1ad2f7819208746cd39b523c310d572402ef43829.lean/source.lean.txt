import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceLaplaceReduction
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceLaplaceKernel

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace SourceLaplacePrincipalPart
open Polynomial SourceLaplaceKernel SourceLaplaceExpansion
noncomputable def polynomialKernel (p : ℂ[X]) (w : ℂ) : ℂ :=
  ∑ k ∈ Finset.range 9, p.coeff k * laplaceKernel k w
noncomputable def sourceKernel (z s : ℂ) : ℂ :=
  sourceWeight z * (polynomialKernel (positivePolynomial z) (s - 2 * z) +
    polynomialKernel (positivePolynomial (-z)) (s + 2 * z) -
    2 * polynomialKernel (mixedPolynomial z) s)
end SourceLaplacePrincipalPart

namespace SourceLaplaceIntegral
open MeasureTheory Set Polynomial
open SourceLaplaceExpansion SourceLaplaceReduction SourceLaplaceKernel SourceLaplacePrincipalPart
noncomputable section

def weightedPolynomial (p : ℂ[X]) (w : ℂ) (A : ℝ) : ℂ :=
  Complex.exp (-w * A) * p.eval (A : ℂ)

lemma weightedPolynomial_eq_sum (p : ℂ[X]) (hp : p.natDegree ≤ 8) (w : ℂ) (A : ℝ) :
    weightedPolynomial p w A =
      ∑ k ∈ Finset.range 9, p.coeff k * kernelIntegrand k w A := by
  rw [weightedPolynomial, Polynomial.eval_eq_sum_range' (show p.natDegree < 9 by omega)]
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro k _
  unfold kernelIntegrand
  ring

lemma weightedPolynomial_integrable (p : ℂ[X]) (hp : p.natDegree ≤ 8)
    (w : ℂ) (hw : 0 < w.re) :
    IntegrableOn (weightedPolynomial p w) (Ioi 1) := by
  exact (finite_kernel_integrable p.coeff 8 w hw).congr
    (Filter.Eventually.of_forall (fun A ↦ (weightedPolynomial_eq_sum p hp w A).symm))

lemma integral_weightedPolynomial (p : ℂ[X]) (hp : p.natDegree ≤ 8)
    (w : ℂ) (hw : 0 < w.re) :
    (∫ A in Ioi (1 : ℝ), weightedPolynomial p w A) = polynomialKernel p w := by
  simp_rw [weightedPolynomial_eq_sum p hp]
  exact integral_finite_kernel p.coeff 8 w hw

lemma weighted_expandedSummand_eq (z s : ℂ) (A : ℝ) :
    Complex.exp (-s * A) * expandedSummand A z = sourceWeight z *
      (weightedPolynomial (positivePolynomial z) (s - 2 * z) A +
        weightedPolynomial (positivePolynomial (-z)) (s + 2 * z) A -
        2 * weightedPolynomial (mixedPolynomial z) s A) := by
  have hpos : Complex.exp (-(s - 2 * z) * (A : ℂ)) =
      Complex.exp (-s * A) * Complex.exp (2 * (A : ℂ) * z) := by
    rw [← Complex.exp_add]
    congr 1
    ring
  have hneg : Complex.exp (-(s + 2 * z) * (A : ℂ)) =
      Complex.exp (-s * A) * Complex.exp (-2 * (A : ℂ) * z) := by
    rw [← Complex.exp_add]
    congr 1
    ring
  simp only [expandedSummand, weightedPolynomial, mixedPolynomial, Polynomial.eval_mul]
  rw [hpos, hneg]
  ring

lemma expandedSummand_integrable (z s : ℂ)
    (hminus : 0 < (s - 2 * z).re) (hplus : 0 < (s + 2 * z).re) (hs : 0 < s.re) :
    IntegrableOn (fun A : ℝ ↦ Complex.exp (-s * A) * expandedSummand A z) (Ioi 1) := by
  simp_rw [weighted_expandedSummand_eq]
  exact (((weightedPolynomial_integrable _ (positivePolynomial_natDegree_le z) _ hminus).add
    (weightedPolynomial_integrable _ (positivePolynomial_natDegree_le (-z)) _ hplus)).sub
    ((weightedPolynomial_integrable _ (mixedPolynomial_natDegree_le z) _ hs).const_mul 2)).const_mul _

lemma integral_expandedSummand (z s : ℂ)
    (hminus : 0 < (s - 2 * z).re) (hplus : 0 < (s + 2 * z).re) (hs : 0 < s.re) :
    (∫ A in Ioi (1 : ℝ), Complex.exp (-s * A) * expandedSummand A z) = sourceKernel z s := by
  have hpos := weightedPolynomial_integrable _ (positivePolynomial_natDegree_le z) _ hminus
  have hneg := weightedPolynomial_integrable _ (positivePolynomial_natDegree_le (-z)) _ hplus
  have hmix := weightedPolynomial_integrable _ (mixedPolynomial_natDegree_le z) _ hs
  simp_rw [weighted_expandedSummand_eq]
  have hsum : IntegrableOn (fun A ↦
      weightedPolynomial (positivePolynomial z) (s - 2 * z) A +
      weightedPolynomial (positivePolynomial (-z)) (s + 2 * z) A) (Ioi 1) := hpos.add hneg
  rw [integral_const_mul, integral_sub hsum (hmix.const_mul 2),
    integral_add hpos hneg, integral_const_mul]
  rw [integral_weightedPolynomial _ (positivePolynomial_natDegree_le z) _ hminus,
    integral_weightedPolynomial _ (positivePolynomial_natDegree_le (-z)) _ hplus,
    integral_weightedPolynomial _ (mixedPolynomial_natDegree_le z) _ hs]
  rfl

lemma source_strip_integral (z s : ℂ)
    (hz : -(1 / 2 : ℝ) < z.re ∧ z.re < 1 / 2) (hs : 1 < s.re) :
    IntegrableOn (fun A : ℝ ↦ Complex.exp (-s * A) * expandedSummand A z) (Ioi 1) ∧
      (∫ A in Ioi (1 : ℝ), Complex.exp (-s * A) * expandedSummand A z) = sourceKernel z s := by
  have hminus : 0 < (s - 2 * z).re := by
    norm_num [Complex.mul_re]
    linarith [hz.2]
  have hplus : 0 < (s + 2 * z).re := by
    norm_num [Complex.mul_re]
    linarith [hz.1]
  have hs0 : 0 < s.re := by linarith
  exact ⟨expandedSummand_integrable z s hminus hplus hs0,
    integral_expandedSummand z s hminus hplus hs0⟩

lemma occurrence_integral (o : ZeroObject.ZeroOccurrence) (s : ℂ) (hs : 1 < s.re) :
    IntegrableOn (fun A : ℝ ↦ Complex.exp (-s * A) *
      expandedSummand A (ZeroObject.shiftedValue o)) (Ioi 1) ∧
      (∫ A in Ioi (1 : ℝ), Complex.exp (-s * A) *
        expandedSummand A (ZeroObject.shiftedValue o)) = sourceKernel (ZeroObject.shiftedValue o) s :=
  source_strip_integral _ s (ZeroObject.shiftedValue_strip o) hs

lemma actual_occurrence_integral (o : ZeroObject.ZeroOccurrence) (s : ℂ) (hs : 1 < s.re) :
    IntegrableOn (fun A : ℝ ↦ Complex.exp (-s * A) *
      ((A : ℂ) ^ 17 * ZeroSideTargets.bilateralTransform A (ZeroObject.shiftedValue o) ^ 2))
      (Ioi 1) ∧
    (∫ A in Ioi (1 : ℝ), Complex.exp (-s * A) *
      ((A : ℂ) ^ 17 * ZeroSideTargets.bilateralTransform A (ZeroObject.shiftedValue o) ^ 2)) =
      sourceKernel (ZeroObject.shiftedValue o) s := by
  obtain ⟨hi, he⟩ := occurrence_integral o s hs
  have hpoint (A : ℝ) (hA : A ∈ Ioi 1) :
      Complex.exp (-s * A) * expandedSummand A (ZeroObject.shiftedValue o) =
        Complex.exp (-s * A) *
          ((A : ℂ) ^ 17 * ZeroSideTargets.bilateralTransform A (ZeroObject.shiftedValue o) ^ 2) := by
    rw [expanded_summand_eq A hA.le o]
  exact ⟨hi.congr_fun hpoint measurableSet_Ioi,
    (setIntegral_congr_fun measurableSet_Ioi hpoint).symm.trans he⟩

/-- The continued transform of the actual normalization polynomial. -/
def normalizationKernel (s : ℂ) : ℂ :=
  (65536 / 109395 : ℂ) / 16 * laplaceKernel 17 s +
    (131072 / 45045 : ℂ) / 2 * laplaceKernel 15 s +
    (196608 / 5005 : ℂ) * laplaceKernel 13 s

lemma weighted_normalization_eq (s : ℂ) (A : ℝ) :
    Complex.exp (-s * A) * (normalizationPolynomial A : ℂ) =
      (65536 / 109395 : ℂ) / 16 * kernelIntegrand 17 s A +
        (131072 / 45045 : ℂ) / 2 * kernelIntegrand 15 s A +
        (196608 / 5005 : ℂ) * kernelIntegrand 13 s A := by
  unfold normalizationPolynomial kernelIntegrand
  push_cast
  ring

lemma normalization_integrable (s : ℂ) (hs : 0 < s.re) :
    IntegrableOn (fun A : ℝ ↦ Complex.exp (-s * A) * (normalizationPolynomial A : ℂ))
      (Ioi 1) := by
  simp_rw [weighted_normalization_eq]
  exact (((kernelIntegrand_integrable 17 s hs).const_mul _).add
    ((kernelIntegrand_integrable 15 s hs).const_mul _)).add
    ((kernelIntegrand_integrable 13 s hs).const_mul _)

lemma integral_normalization (s : ℂ) (hs : 0 < s.re) :
    (∫ A in Ioi (1 : ℝ), Complex.exp (-s * A) * (normalizationPolynomial A : ℂ)) =
      normalizationKernel s := by
  have h17 := (kernelIntegrand_integrable 17 s hs).const_mul ((65536 / 109395 : ℂ) / 16)
  have h15 := (kernelIntegrand_integrable 15 s hs).const_mul ((131072 / 45045 : ℂ) / 2)
  have h13 := (kernelIntegrand_integrable 13 s hs).const_mul (196608 / 5005 : ℂ)
  have hsum : IntegrableOn (fun A ↦
      (65536 / 109395 : ℂ) / 16 * kernelIntegrand 17 s A +
      (131072 / 45045 : ℂ) / 2 * kernelIntegrand 15 s A) (Ioi 1) := h17.add h15
  simp_rw [weighted_normalization_eq]
  rw [integral_add hsum h13, integral_add h17 h15]
  simp_rw [integral_const_mul, integral_eq_laplaceKernel _ s hs]
  rfl

lemma normalizationKernel_analytic (s : ℂ) (hs : s ≠ 0) :
    AnalyticAt ℂ normalizationKernel s := by
  exact ((analyticAt_const.mul (laplaceKernel_analytic 17 s hs)).add
    (analyticAt_const.mul (laplaceKernel_analytic 15 s hs))).add
    (analyticAt_const.mul (laplaceKernel_analytic 13 s hs))

end
end SourceLaplaceIntegral
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
