# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FiniteLogAffineFirstDerivative.Variant698352a18420ec7d6de910da1881c217cf4ab8d9adce07878fc9ce722eb77076

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6dfefe0903495023081ab88c6731e34e3c9145be` · SHA-256 `40e95f682dc7b6743bad73f5068963acd8a865da65cf408bc67061a18040b0d9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.WeightDerivative.Variant1e4eb1d88194854e1d34eb55a3b987ae1cad3d734cfd54a5205c2d6d49c836ec","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1e4eb1d88194854e1d34eb55a3b987ae1cad3d734cfd54a5205c2d6d49c836ec","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.WeightDerivative.Variant1e4eb1d88194854e1d34eb55a3b987ae1cad3d734cfd54a5205c2d6d49c836ec","mathematical_subject":"Analysis.Calculus","original_sha256":"1e4eb1d88194854e1d34eb55a3b987ae1cad3d734cfd54a5205c2d6d49c836ec","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/pr151-repair-20260921T175258Z/candidate-snapshots/c2165bf58cfe7079ba78bd7f98623fb758d0d84525c0918f1eba27105e3dba85/FormalResearch/PositiveAtlas/FiniteLogAffineFirstDerivative.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.FiniteLogAffineCovariance
import Mathlib.Analysis.Analytic.Constructions
import Mathlib.Analysis.Analytic.Linear
import Mathlib.Analysis.Calculus.FDeriv.Add
import Mathlib.Analysis.Calculus.FDeriv.Analytic
import Mathlib.Analysis.Calculus.FDeriv.Linear
import Mathlib.Analysis.Calculus.FDeriv.Mul
import Mathlib.Analysis.SpecialFunctions.Complex.Analytic
import Mathlib.Analysis.SpecialFunctions.ExpDeriv
import Mathlib.Analysis.SpecialFunctions.Log.Deriv

/-!
# First derivative of the finite log-affine potential

This module discharges the first analytic obligations of the finite
log-affine Phase-I model.

It proves that each unnormalized weight and the partition function are analytic,
computes the Frechet derivative of the partition function, proves the
log-partition is analytic, and establishes the exact first-derivative identity

  D log Z = centroid.

Consequently the centroid field is analytic as the Frechet derivative of the
analytic log-partition potential.

The second derivative / covariance identity is intentionally left to the next
layer so that the quotient differentiation and continuous rank-one operator
algebra are built on this compiled first-moment API.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.WeightDerivative.Variant1e4eb1d88194854e1d34eb55a3b987ae1cad3d734cfd54a5205c2d6d49c836ec

namespace FormalResearch.PositiveAtlas

universe u v

variable {I : Type u} [Fintype I] [Nonempty I]
variable {E : Type v} [NormedAddCommGroup E] [NormedSpace ℝ E]

namespace FiniteLogAffineFamily

variable (F : FiniteLogAffineFamily I E)

/-- Frechet derivative of one unnormalized log-affine weight. -/
noncomputable def weightDerivative (theta : E) (i : I) : E →L[ℝ] ℝ :=
  (F.unnormalizedWeight theta i) • F.statistic i

@[simp]
theorem weightDerivative_apply
    (theta : E) (i : I) (u : E) :
    F.weightDerivative theta i u =
      F.unnormalizedWeight theta i * F.statistic i u := by
  simp [weightDerivative, smul_eq_mul]

/-- Each unnormalized log-affine weight is analytic. -/
theorem analyticAt_unnormalizedWeight
    (theta : E) (i : I) :
    AnalyticAt ℝ (fun x => F.unnormalizedWeight x i) theta := by
  have hexp :
      AnalyticAt ℝ (fun x : E => Real.exp (F.statistic i x)) theta :=
    analyticAt_rexp.comp ((F.statistic i).analyticAt theta)
  exact analyticAt_const.mul hexp

/-- Exact Frechet derivative of one unnormalized weight. -/
theorem hasFDerivAt_unnormalizedWeight
    (theta : E) (i : I) :
    HasFDerivAt
      (fun x => F.unnormalizedWeight x i)
      (F.weightDerivative theta i)
      theta := by
  have h :=
    ((F.statistic i).hasFDerivAt (x := theta)).exp.const_mul (F.baseWeight i)
  simpa [unnormalizedWeight, weightDerivative, smul_smul] using h

/-- Frechet derivative of the finite partition function. -/
noncomputable def partitionDerivative (theta : E) : E →L[ℝ] ℝ :=
  ∑ i : I, F.weightDerivative theta i

@[simp]
theorem partitionDerivative_apply
    (theta u : E) :
    F.partitionDerivative theta u =
      ∑ i : I,
        F.unnormalizedWeight theta i * F.statistic i u := by
  classical
  simp [partitionDerivative, weightDerivative, smul_eq_mul]

/-- The partition function is analytic. -/
theorem analyticAt_partition (theta : E) :
    AnalyticAt ℝ F.partition theta := by
  classical
  change
    AnalyticAt ℝ
      (fun x : E => ∑ i : I, F.unnormalizedWeight x i) theta
  exact Finset.univ.analyticAt_fun_sum
    (fun i _ => F.analyticAt_unnormalizedWeight theta i)

/-- Exact Frechet derivative of the partition function. -/
theorem hasFDerivAt_partition (theta : E) :
    HasFDerivAt F.partition (F.partitionDerivative theta) theta := by
  classical
  change
    HasFDerivAt
      (fun x : E => ∑ i : I, F.unnormalizedWeight x i)
      (F.partitionDerivative theta)
      theta
  simpa [partitionDerivative] using
    (HasFDerivAt.fun_sum (u := Finset.univ)
      (fun i _ => F.hasFDerivAt_unnormalizedWeight theta i))

/-- The unnormalized weight is the partition times its normalized probability. -/
theorem partition_mul_probability
    (theta : E) (i : I) :
    F.partition theta * F.probability theta i =
      F.unnormalizedWeight theta i := by
  rw [probability]
  field_simp [ne_of_gt (F.partition_pos theta)]

/-- The partition derivative is the partition scalar times the centroid. -/
theorem partitionDerivative_eq_partition_smul_centroid
    (theta : E) :
    F.partitionDerivative theta =
      F.partition theta • F.centroid theta := by
  classical
  rw [partitionDerivative, centroid, Finset.smul_sum]
  apply Finset.sum_congr rfl
  intro i hi
  rw [weightDerivative, smul_smul,
    F.partition_mul_probability theta i]

/-- Dividing the partition derivative by the partition recovers the centroid. -/
theorem inv_smul_partitionDerivative_eq_centroid
    (theta : E) :
    (F.partition theta)⁻¹ • F.partitionDerivative theta =
      F.centroid theta := by
  rw [F.partitionDerivative_eq_partition_smul_centroid]
  rw [smul_smul]
  rw [inv_mul_cancel₀ (ne_of_gt (F.partition_pos theta))]
  simp

/-- The finite log-partition potential is analytic. -/
theorem analyticAt_logPartition (theta : E) :
    AnalyticAt ℝ F.logPartition theta := by
  exact (analyticAt_log (F.partition_pos theta)).comp (F.analyticAt_partition theta)

/-- Exact first derivative of the finite log-partition:
the gradient is the sufficient-statistic centroid. -/
theorem hasFDerivAt_logPartition
    (theta : E) :
    HasFDerivAt F.logPartition (F.centroid theta) theta := by
  have h :=
    (F.hasFDerivAt_partition theta).log
      (ne_of_gt (F.partition_pos theta))
  convert h using 1
  · rfl
  · exact (F.inv_smul_partitionDerivative_eq_centroid theta).symm

/-- Pointwise formula for the Frechet derivative of the log-partition. -/
theorem fderiv_logPartition_eq_centroid
    (theta : E) :
    fderiv ℝ F.logPartition theta = F.centroid theta :=
  (F.hasFDerivAt_logPartition theta).fderiv

/-- The centroid field is analytic because it is the Frechet derivative of the
analytic log-partition potential. -/
theorem analyticAt_centroid
    (theta : E) :
    AnalyticAt ℝ F.centroid theta := by
  have h :
      AnalyticAt ℝ (fderiv ℝ F.logPartition) theta :=
    (F.analyticAt_logPartition theta).fderiv
  have heq :
      fderiv ℝ F.logPartition = F.centroid := by
    funext x
    exact F.fderiv_logPartition_eq_centroid x
  simpa [heq] using h

/-- The first finite log-affine reconstruction identity in evaluation form. -/
theorem directional_derivative_logPartition
    (theta u : E) :
    fderiv ℝ F.logPartition theta u =
      ∑ i : I,
        F.probability theta i * F.statistic i u := by
  rw [F.fderiv_logPartition_eq_centroid, F.centroid_apply]

end FiniteLogAffineFamily

end FormalResearch.PositiveAtlas
```
