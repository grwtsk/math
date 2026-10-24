# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FiniteLogAffineSecondDerivative.Variantfde9e32d8b5cba4f4440af785eeb099abe6e9bc73f28451405c826e2733ef8a3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1e648ccaf800078b13254842bc562d628f8c30ee` · SHA-256 `ca9ee03c6061398ea811d3c4ec72fd9bea58a7312da3b6b1618372acc8a6eda7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.LogProbability.Variant34adddff2427b1c12a5d450429e34829ac1737dc8a1b4e8c207491041cc467f8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"34adddff2427b1c12a5d450429e34829ac1737dc8a1b4e8c207491041cc467f8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.LogProbability.Variant34adddff2427b1c12a5d450429e34829ac1737dc8a1b4e8c207491041cc467f8","mathematical_subject":"Analysis.Calculus","original_sha256":"34adddff2427b1c12a5d450429e34829ac1737dc8a1b4e8c207491041cc467f8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/rh-target-sufficiency/FormalResearch/PositiveAtlas/FiniteLogAffineSecondDerivative.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.FiniteLogAffineFirstDerivative
import Mathlib.Analysis.Normed.Operator.Bilinear

/-!
# Second derivative of the finite log-affine potential

This module closes the finite-model Phase-I identity

  Hessian(log Z) = covariance.

Each normalized weight is rewritten in exponential form. Its derivative is the
weight times the centered sufficient statistic. Differentiating the centroid
then gives a finite sum of rank-one operators. The weighted centered statistic
has mean zero, so that raw derivative is exactly the symmetric covariance
operator.

The module finally constructs an AnalyticDispersionReconstruction canonically
from every finite log-affine family, with no realization obligations left.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.LogProbability.Variant34adddff2427b1c12a5d450429e34829ac1737dc8a1b4e8c207491041cc467f8

namespace FormalResearch.PositiveAtlas

universe u v

variable {I : Type u} [Fintype I] [Nonempty I]
variable {E : Type v} [NormedAddCommGroup E] [NormedSpace ℝ E]

namespace FiniteLogAffineFamily

variable (F : FiniteLogAffineFamily I E)

/-- Logarithm of one normalized probability, written in the affine coordinates
of the finite exponential family. -/
def logProbability (theta : E) (i : I) : ℝ :=
  Real.log (F.baseWeight i) + F.statistic i theta - F.logPartition theta

/-- The exponential-coordinate representation of a normalized probability. -/
@[simp]
theorem probability_eq_exp_logProbability
    (theta : E) (i : I) :
    F.probability theta i = Real.exp (F.logProbability theta i) := by
  rw [logProbability, Real.exp_sub, Real.exp_add,
    Real.exp_log (F.baseWeight_pos i), F.exp_logPartition]
  rfl

/-- The derivative of the log probability is the centered sufficient
statistic. -/
theorem hasFDerivAt_logProbability
    (theta : E) (i : I) :
    HasFDerivAt
      (fun x => F.logProbability x i)
      (F.centeredStatistic theta i)
      theta := by
  have hconst :
      HasFDerivAt
        (fun _ : E => Real.log (F.baseWeight i))
        (0 : E →L[ℝ] ℝ)
        theta :=
    hasFDerivAt_const _ _
  have h :=
    (hconst.add (F.statistic i).hasFDerivAt).sub
      (F.hasFDerivAt_logPartition theta)
  simpa [logProbability, centeredStatistic] using h

/-- Derivative covector of one normalized probability. -/
def probabilityDerivative (theta : E) (i : I) : E →L[ℝ] ℝ :=
  (F.probability theta i) • F.centeredStatistic theta i

@[simp]
theorem probabilityDerivative_apply
    (theta : E) (i : I) (u : E) :
    F.probabilityDerivative theta i u =
      F.probability theta i * F.centeredStatistic theta i u := by
  simp [probabilityDerivative, smul_eq_mul]

/-- Exact derivative of one normalized probability. -/
theorem hasFDerivAt_probability
    (theta : E) (i : I) :
    HasFDerivAt
      (fun x => F.probability x i)
      (F.probabilityDerivative theta i)
      theta := by
  have h := (F.hasFDerivAt_logProbability theta i).exp
  simpa [probabilityDerivative] using h

/-- The weighted centered sufficient statistic has zero mean in every
direction. -/
theorem centered_weighted_sum_eq_zero
    (theta u : E) :
    ∑ i : I,
      F.probability theta i * F.centeredStatistic theta i u = 0 := by
  classical
  simp_rw [F.centeredStatistic_apply, mul_sub]
  rw [Finset.sum_sub_distrib, ← Finset.sum_mul,
    F.centroid_apply, F.probability_sum]
  ring

/-- Raw derivative of the centroid before centering the output statistic. -/
def rawCentroidDerivative
    (theta : E) : E →L[ℝ] (E →L[ℝ] ℝ) :=
  ∑ i : I,
    (F.probabilityDerivative theta i).smulRight (F.statistic i)

@[simp]
theorem rawCentroidDerivative_apply
    (theta u v : E) :
    F.rawCentroidDerivative theta u v =
      ∑ i : I,
        F.probability theta i *
          F.centeredStatistic theta i u *
          F.statistic i v := by
  classical
  simp [rawCentroidDerivative, probabilityDerivative,
    ContinuousLinearMap.smulRight_apply, smul_eq_mul]

/-- Continuous rank-one covariance/Hessian operator. -/
def covarianceOperator
    (theta : E) : E →L[ℝ] (E →L[ℝ] ℝ) :=
  ∑ i : I,
    (F.probability theta i) •
      (F.centeredStatistic theta i).smulRight
        (F.centeredStatistic theta i)

@[simp]
theorem covarianceOperator_apply
    (theta u v : E) :
    F.covarianceOperator theta u v =
      ∑ i : I,
        F.probability theta i *
          F.centeredStatistic theta i u *
          F.centeredStatistic theta i v := by
  classical
  simp [covarianceOperator, ContinuousLinearMap.smulRight_apply, smul_eq_mul]

/-- The continuous covariance operator evaluates to the covariance PositiveForm. -/
theorem covarianceOperator_eq_covarianceForm
    (theta u v : E) :
    F.covarianceOperator theta u v =
      (F.covarianceForm theta).form u v := by
  rw [F.covarianceOperator_apply, F.covarianceForm_apply]

/-- Centering the second statistic does not change the raw centroid derivative,
because the first centered statistic has weighted mean zero. -/
theorem rawCentroidDerivative_eq_covarianceOperator
    (theta : E) :
    F.rawCentroidDerivative theta = F.covarianceOperator theta := by
  apply ContinuousLinearMap.ext
  intro u
  apply ContinuousLinearMap.ext
  intro v
  rw [F.rawCentroidDerivative_apply, F.covarianceOperator_apply]
  have hz := F.centered_weighted_sum_eq_zero theta u
  calc
    (∑ i : I,
        F.probability theta i *
          F.centeredStatistic theta i u *
          F.statistic i v)
        =
      (∑ i : I,
          (F.probability theta i *
            F.centeredStatistic theta i u *
            F.centeredStatistic theta i v) +
          (F.probability theta i *
            F.centeredStatistic theta i u) *
            F.centroid theta v) := by
        apply Finset.sum_congr rfl
        intro i hi
        rw [F.centeredStatistic_apply]
        ring
    _ =
      (∑ i : I,
          F.probability theta i *
            F.centeredStatistic theta i u *
            F.centeredStatistic theta i v) +
        (∑ i : I,
          F.probability theta i *
            F.centeredStatistic theta i u) *
          F.centroid theta v := by
        rw [Finset.sum_add_distrib, Finset.sum_mul]
    _ =
      ∑ i : I,
        F.probability theta i *
          F.centeredStatistic theta i u *
          F.centeredStatistic theta i v := by
        rw [hz, zero_mul, add_zero]

/-- Differentiating the centroid term-by-term gives the raw centroid derivative. -/
theorem hasFDerivAt_centroid_raw
    (theta : E) :
    HasFDerivAt F.centroid (F.rawCentroidDerivative theta) theta := by
  classical
  change
    HasFDerivAt
      (fun x : E =>
        ∑ i : I, (F.probability x i) • F.statistic i)
      (F.rawCentroidDerivative theta)
      theta
  simpa [rawCentroidDerivative] using
    (HasFDerivAt.fun_sum (u := Finset.univ)
      (fun i _ =>
        (F.hasFDerivAt_probability theta i).smul_const
          (F.statistic i)))

/-- Exact second derivative identity: derivative of the centroid is covariance. -/
theorem hasFDerivAt_centroid
    (theta : E) :
    HasFDerivAt F.centroid (F.covarianceOperator theta) theta := by
  rw [← F.rawCentroidDerivative_eq_covarianceOperator theta]
  exact F.hasFDerivAt_centroid_raw theta

/-- Pointwise Fréchet derivative of the centroid field. -/
theorem fderiv_centroid_eq_covarianceOperator
    (theta : E) :
    fderiv ℝ F.centroid theta = F.covarianceOperator theta :=
  (F.hasFDerivAt_centroid theta).fderiv

/-- Canonical analytic dispersion reconstruction of a finite log-affine family. -/
def analyticDispersionReconstruction :
    AnalyticDispersionReconstruction E where
  potential := F.logPartition
  gradient := F.centroid
  hessian := F.covarianceOperator
  dispersion := F.covarianceForm
  potential_analytic := F.analyticAt_logPartition
  gradient_analytic := F.analyticAt_centroid
  potential_hasFDeriv := F.hasFDerivAt_logPartition
  gradient_hasFDeriv := F.hasFDerivAt_centroid
  hessian_eq_dispersion := by
    intro theta u v
    exact F.covarianceOperator_eq_covarianceForm theta u v

@[simp]
theorem analyticDispersionReconstruction_potential
    (theta : E) :
    F.analyticDispersionReconstruction.potential theta =
      F.logPartition theta :=
  rfl

@[simp]
theorem analyticDispersionReconstruction_gradient
    (theta : E) :
    F.analyticDispersionReconstruction.gradient theta =
      F.centroid theta :=
  rfl

@[simp]
theorem analyticDispersionReconstruction_hessian
    (theta : E) :
    F.analyticDispersionReconstruction.hessian theta =
      F.covarianceOperator theta :=
  rfl

@[simp]
theorem analyticDispersionReconstruction_dispersion
    (theta : E) :
    F.analyticDispersionReconstruction.dispersion theta =
      F.covarianceForm theta :=
  rfl

/-- The realization certificate from PR #71 is now canonically discharged. -/
def canonicalCovarianceRealization :
    FiniteLogAffineCovarianceRealization
      F F.analyticDispersionReconstruction where
  potential_eq_logPartition := fun _ => rfl
  gradient_eq_centroid := fun _ => rfl
  dispersion_eq_covariance := fun _ => rfl

/-- Closed finite-model Positive Dispersion Reconstruction identity. -/
theorem hessian_eq_covariance
    (theta u v : E) :
    F.analyticDispersionReconstruction.hessian theta u v =
      (F.covarianceForm theta).form u v :=
  F.covarianceOperator_eq_covarianceForm theta u v

/-- Closed finite-model identity in derivative notation:
D² log Z = covariance. -/
theorem second_derivative_logPartition_eq_covariance
    (theta u v : E) :
    fderiv ℝ F.centroid theta u v =
      (F.covarianceForm theta).form u v := by
  rw [F.fderiv_centroid_eq_covarianceOperator]
  exact F.covarianceOperator_eq_covarianceForm theta u v

/-- Literal iterated-Fréchet-derivative form of the finite covariance theorem. -/
theorem iterated_fderiv_logPartition_eq_covariance
    (theta u v : E) :
    fderiv ℝ (fderiv ℝ F.logPartition) theta u v =
      (F.covarianceForm theta).form u v := by
  have heq : fderiv ℝ F.logPartition = F.centroid := by
    funext x
    exact F.fderiv_logPartition_eq_centroid x
  rw [heq, F.fderiv_centroid_eq_covarianceOperator]
  exact F.covarianceOperator_eq_covarianceForm theta u v

end FiniteLogAffineFamily

end FormalResearch.PositiveAtlas
```
