# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.ActualNegativeCostAttempt04.Variant2e5aab9e9d4a8da8299645da4695b224bc5399b3f877ff1b457c9d04b5e3d938

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `634e559a8b45b4677003d7de3811352de542bf18` · SHA-256 `e4bf73e2947919c01bfdc616b9aa3d14ec4fb1a5e2c87022e152ede1e6592c2b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.ActualNegativeDensity.Variant31dd926d184a17c5ab5dbdb66e8f50e5afbb54ece35c15e60316fbb643b93190","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"31dd926d184a17c5ab5dbdb66e8f50e5afbb54ece35c15e60316fbb643b93190","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.ActualNegativeDensity.Variant31dd926d184a17c5ab5dbdb66e8f50e5afbb54ece35c15e60316fbb643b93190","mathematical_subject":"Analysis.Integration","original_sha256":"31dd926d184a17c5ab5dbdb66e8f50e5afbb54ece35c15e60316fbb643b93190","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass23/negative_cost/ActualNegativeCost-attempt04.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import NegativeCostFatou
import ActualCumulativeIntercept
import FixedCurvatureLimit
import ActualSecondAbel

/-! Actual obstruction to the optional uncentered negative-curvature budget.
Only the genuine unweighted centered-Mangoldt positive-axis L1 hypothesis is supplied.
This is not a failure of the original signed bound, and no RH consumer is applied.
Research direction grwtsk contributors; scratch construction OpenAI Codex. -/

namespace GRWTSK.Analysis.RealAnalysis.Integration.ActualNegativeDensity.Variant31dd926d184a17c5ab5dbdb66e8f50e5afbb54ece35c15e60316fbb643b93190

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ActualNegativeCost
open MeasureTheory Set Filter
open scoped Topology Interval
open ContinuousResearch.NegativeCostFatou ContinuousResearch.ActualCumulativeIntercept
open ContinuousResearch.ActualPrimeIntercept ContinuousResearch.SourceRemainderLaplace
open ContinuousResearch.ProperPowerMoments ContinuousResearch.ActualSecondAbel
open ContinuousResearch.FixedCurvatureLimit
open FormalResearch.RiemannHypothesis.SourceCriticalCumulativeDiscrepancy

/-- The literal finite-source negative part, zero outside its actual source interval. -/
def actualNegativeDensity (A : ℝ) : ℝ → ℝ :=
  (Ioc (0:ℝ) (2*A)).indicator (fun u =>
    max (-(criticalDiscrepancyBridge A u*pairedTailCurvature A u)) 0)

/-- Independent fixed-position limit profile; its positive axis is not truncated. -/
def actualNegativeLimit : ℝ → ℝ := (Ioi (0:ℝ)).indicator (fun u =>
  max ((criticalDiscrepancyPrimitive u-actualAffineSlope*u)*(Real.exp (u/2)/4)) 0)

theorem actual_negative_density_nonneg (A u : ℝ) : 0 ≤ actualNegativeDensity A u := by
  unfold actualNegativeDensity
  by_cases h : u ∈ Ioc (0:ℝ) (2*A)
  · rw [indicator_of_mem h]
    exact le_max_right _ _
  · rw [indicator_of_notMem h]

theorem actual_negative_density_integrable {A : ℝ} (hA : 1 ≤ A) :
    Integrable (actualNegativeDensity A) := by
  have hi := (intervalIntegrable_iff_integrableOn_Ioc_of_le (by linarith : 0 ≤ 2*A)).mp
    (negativeCurvatureWork_integrand_intervalIntegrable hA)
  exact hi.integrable_indicator measurableSet_Ioc

theorem actual_negative_density_integral {A : ℝ} (hA : 1 ≤ A) :
    (∫ u, actualNegativeDensity A u) = negativeCurvatureWork A := by
  rw [actualNegativeDensity,integral_indicator measurableSet_Ioc,negativeCurvatureWork,
    intervalIntegral.integral_of_le (by linarith : 0 ≤ 2*A)]

theorem actual_negative_density_fixed_tendsto
    (hI : IntegrableOn actualRemainder (Ioi (0:ℝ))) (u : ℝ) :
    Tendsto (fun A : ℝ => actualNegativeDensity A u) atTop (𝓝 (actualNegativeLimit u)) := by
  by_cases hu : 0 < u
  · have he : (fun A : ℝ => actualNegativeDensity A u) =ᶠ[atTop]
        (fun A => max (-(criticalDiscrepancyBridge A u*pairedTailCurvature A u)) 0) := by
      filter_upwards [eventually_ge_atTop (u/2)] with A hA
      exact indicator_of_mem (show u ∈ Ioc (0:ℝ) (2*A) from ⟨hu,by linarith⟩) _
    have h := (((actual_bridge_fixed_coordinate_tendsto hI u).mul
      (paired_curvature_fixed_tendsto u)).neg).max (tendsto_const_nhds (x:=(0:ℝ)))
    unfold actualNegativeLimit
    rw [indicator_of_mem (show u ∈ Ioi (0:ℝ) from hu)]
    convert h.congr' he.symm using 1
    simp only [mul_neg,neg_neg]
  · have he : (fun A : ℝ => actualNegativeDensity A u) = fun _ => (0:ℝ) := by
      funext A
      exact indicator_of_notMem (fun h => hu h.1) _
    rw [he,actualNegativeLimit,indicator_of_notMem (show u ∉ Ioi (0:ℝ) from hu)]
    exact tendsto_const_nhds

/-- Its independent actual intercept is strictly positive under the same sole actual L1 premise. -/
theorem actual_prime_intercept_pos
    (hI : IntegrableOn actualRemainder (Ioi (0:ℝ))) : 0 < actualPrimeIntercept := by
  rw [actual_prime_intercept_eq hI]
  linarith [arithmeticConstant_gt_one_five_hundred]

theorem actual_negative_limit_not_integrable
    (hI : IntegrableOn actualRemainder (Ioi (0:ℝ))) : ¬ Integrable actualNegativeLimit := by
  have hc := actual_prime_intercept_pos hI
  have htail := (actual_primitive_affine_intercept hI).eventually
    (eventually_gt_nhds (by linarith : actualPrimeIntercept/2 < actualPrimeIntercept))
  obtain ⟨R,hR⟩ := eventually_atTop.mp htail
  have hnot : ¬ IntegrableOn actualNegativeLimit (Ioi (0:ℝ)) := by
    apply not_integrableOn_of_positive_tail
      (d:=actualPrimeIntercept/8) (R:=max 0 R) (by positivity) (le_max_left _ _)
    intro u hu
    have hu0 : 0 < u := lt_of_le_of_lt (le_max_left _ _) hu
    have hj := hR u ((le_max_right _ _).trans hu.le)
    have he : 1 ≤ Real.exp (u/2) := Real.one_le_exp_iff.mpr (by linarith)
    rw [actualNegativeLimit,indicator_of_mem (show u ∈ Ioi (0:ℝ) from hu0)]
    have hm := le_max_left
      ((criticalDiscrepancyPrimitive u-actualAffineSlope*u)*(Real.exp (u/2)/4)) (0:ℝ)
    nlinarith
  exact fun hi => hnot hi.integrableOn

/-- The older sufficient negative-part certificate is too strong for this actual source,
under only genuine arithmetic L1. This leaves the original signed target unresolved. -/
theorem actual_negative_curvature_budget_false
    (hI : IntegrableOn actualRemainder (Ioi (0:ℝ))) : ¬ NegativeCurvatureTailBudget := by
  rintro ⟨B,_hB,R,hR,hcost⟩
  let G : ℕ → ℝ → ℝ := fun n => actualNegativeDensity (R+(n:ℝ))
  have hA (n : ℕ) : 1 ≤ R+(n:ℝ) := by
    have hn : 0 ≤ (n:ℝ) := Nat.cast_nonneg n
    linarith
  have hs : Tendsto (fun n : ℕ => R+(n:ℝ)) atTop atTop :=
    tendsto_atTop_add_const_left atTop R
      (tendsto_natCast_atTop_atTop : Tendsto (fun n : ℕ => (n:ℝ)) atTop atTop)
  apply no_uniform_nonnegative_integrals_of_nonintegrable_limit
    (G:=G) (f:=actualNegativeLimit)
    (fun n => actual_negative_density_integrable (hA n))
    (fun n => ae_of_all volume (actual_negative_density_nonneg _))
    (ae_of_all volume (fun u => (actual_negative_density_fixed_tendsto hI u).comp hs))
    (actual_negative_limit_not_integrable hI)
  refine ⟨B,fun n => ?_⟩
  change (∫ u, actualNegativeDensity (R+(n:ℝ)) u) ≤ B
  rw [actual_negative_density_integral (hA n)]
  exact hcost _ (le_add_of_nonneg_right (Nat.cast_nonneg n))

/-- Every actual radius tail contains costs exceeding any prescribed real bound. -/
theorem actual_negative_curvature_cost_arbitrarily_large
    (hI : IntegrableOn actualRemainder (Ioi (0:ℝ))) (B R : ℝ) (hR : 1 ≤ R) :
    ∃ A : ℝ, R ≤ A ∧ B < negativeCurvatureWork A := by
  by_contra! h
  by_cases hB : 0 ≤ B
  · exact actual_negative_curvature_budget_false hI ⟨B,hB,R,hR,h⟩
  · have hc := h R le_rfl
    have hn := negativeCurvatureWork_nonneg hR
    linarith

end ContinuousResearch.ActualNegativeCost

/- Full public types, proof terms and transitive trusted dependencies. -/

#print ContinuousResearch.ActualNegativeCost.actualNegativeDensity
#print axioms ContinuousResearch.ActualNegativeCost.actualNegativeDensity

#print ContinuousResearch.ActualNegativeCost.actualNegativeLimit
#print axioms ContinuousResearch.ActualNegativeCost.actualNegativeLimit

#print ContinuousResearch.ActualNegativeCost.actual_negative_density_nonneg
#print axioms ContinuousResearch.ActualNegativeCost.actual_negative_density_nonneg

#print ContinuousResearch.ActualNegativeCost.actual_negative_density_integrable
#print axioms ContinuousResearch.ActualNegativeCost.actual_negative_density_integrable

#print ContinuousResearch.ActualNegativeCost.actual_negative_density_integral
#print axioms ContinuousResearch.ActualNegativeCost.actual_negative_density_integral

#print ContinuousResearch.ActualNegativeCost.actual_negative_density_fixed_tendsto
#print axioms ContinuousResearch.ActualNegativeCost.actual_negative_density_fixed_tendsto

#print ContinuousResearch.ActualNegativeCost.actual_prime_intercept_pos
#print axioms ContinuousResearch.ActualNegativeCost.actual_prime_intercept_pos

#print ContinuousResearch.ActualNegativeCost.actual_negative_limit_not_integrable
#print axioms ContinuousResearch.ActualNegativeCost.actual_negative_limit_not_integrable

#print ContinuousResearch.ActualNegativeCost.actual_negative_curvature_budget_false
#print axioms ContinuousResearch.ActualNegativeCost.actual_negative_curvature_budget_false

#print ContinuousResearch.ActualNegativeCost.actual_negative_curvature_cost_arbitrarily_large
#print axioms ContinuousResearch.ActualNegativeCost.actual_negative_curvature_cost_arbitrarily_large
```
