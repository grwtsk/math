# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.PositiveAtlas.Variant482ded516265799361854aaee72d2df0ff3b4e43151e9b8d86b1a4cc5822ba23

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `123a2ff5561a5500a266a67c58563fba1d4b00ea` · SHA-256 `19c7ada59fce1b3685534ea652b15683918692fbf9cdbd1d4476d31d14871c0f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ProbabilityFibre.Variantc0b11133b49fb3bda95b01f8b002c50153786abf916fcfc86f346dcb19bfdfec","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c0b11133b49fb3bda95b01f8b002c50153786abf916fcfc86f346dcb19bfdfec","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.ProbabilityFibre.Variantc0b11133b49fb3bda95b01f8b002c50153786abf916fcfc86f346dcb19bfdfec","mathematical_subject":"Analysis.Calculus","original_sha256":"c0b11133b49fb3bda95b01f8b002c50153786abf916fcfc86f346dcb19bfdfec","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/c0b11133b49fb3bda95b01f8b002c50153786abf916fcfc86f346dcb19bfdfec.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.FiniteConditionalExpectation
import FormalResearch.PositiveAtlas.FiniteLogAffineSecondDerivative

/-!
# The log-affine Hessian as finite projection residual energy

This bridge uses the already proved finite log-affine derivative theorems.
The new averaging construction realizes centering as an orthogonal residual.
Consequently covariance and the actual iterated derivative of log Z are the
pullback of that residual pairing. No extra derivative or covariance hypothesis
is introduced.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ProbabilityFibre.Variantc0b11133b49fb3bda95b01f8b002c50153786abf916fcfc86f346dcb19bfdfec

namespace FormalResearch.PositiveAtlas

universe u v

namespace FiniteLogAffineFamily

variable {I : Type u} [Fintype I] [Nonempty I]
variable {E : Type v} [NormedAddCommGroup E] [NormedSpace ℝ E]
variable (F : FiniteLogAffineFamily I E)

noncomputable section

/-- Normalized log-affine probabilities as one finite averaging fibre. -/
def probabilityFibre (theta : E) : FiniteFibreWeights Unit (fun _ => I) where
  weight _ i := F.probability theta i
  positive _ i := F.probability_pos theta i

/-- Realization of parameter directions as sample observables. -/
def statisticObservable : E →ₗ[ℝ] (Unit → I → ℝ) where
  toFun u _ i := F.statistic i u
  map_add' x y := by ext b i; exact map_add (F.statistic i) x y
  map_smul' a x := by ext b i; exact map_smul (F.statistic i) a x

theorem probabilityFibre_mass (theta : E) (b : Unit) :
    (F.probabilityFibre theta).mass b = 1 :=
  F.probability_sum theta

/-- The constructed average agrees with the previously defined centroid. -/
theorem averaging_statisticObservable (theta u : E) :
    (F.probabilityFibre theta).averaging (F.statisticObservable u) =
      fun _ _ => F.centroid theta u := by
  funext b i
  change (∑ i, F.probability theta i * F.statistic i u) /
    (F.probabilityFibre theta).mass b = F.centroid theta u
  rw [F.probabilityFibre_mass, div_one, F.centroid_apply]

/-- The centered statistic is the actual residual of the constructed projector. -/
def centeredObservable (theta : E) : E →ₗ[ℝ] (Unit → I → ℝ) :=
  (F.probabilityFibre theta).projector.residualMap.comp F.statisticObservable

@[simp]
theorem centeredObservable_apply (theta u : E) (b : Unit) (i : I) :
    F.centeredObservable theta u b i = F.centeredStatistic theta i u := by
  change F.statistic i u -
    (F.probabilityFibre theta).averaging (F.statisticObservable u) b i = _
  rw [F.averaging_statisticObservable]
  rfl

/-- Covariance is the weighted Gram pairing of the constructed centered observables. -/
theorem covariance_eq_residual_pairing (theta u v : E) :
    (F.covarianceForm theta).form u v =
      (F.probabilityFibre theta).positiveForm.form
        (F.centeredObservable theta u) (F.centeredObservable theta v) := by
  simp only [FiniteFibreWeights.positiveForm, probabilityFibre,
    F.centeredObservable_apply, Fintype.sum_unique, F.covarianceForm_apply]
  apply Finset.sum_congr rfl
  intro i _
  ring

/-- Literal second derivative of log Z equals the finite residual pairing. -/
theorem iterated_fderiv_logPartition_eq_residual_pairing (theta u v : E) :
    fderiv ℝ (fderiv ℝ F.logPartition) theta u v =
      (F.probabilityFibre theta).positiveForm.form
        (F.centeredObservable theta u) (F.centeredObservable theta v) := by
  rw [F.iterated_fderiv_logPartition_eq_covariance, F.covariance_eq_residual_pairing]

/-- A covariance-null direction has constant statistics, and conversely.
Strict positivity of all normalized sample weights is essential. -/
theorem covariance_null_iff_constant_statistics (theta u : E) :
    (F.covarianceForm theta).IsNull u ↔
      ∀ i j, F.statistic i u = F.statistic j u := by
  change (F.covarianceForm theta).form u u = 0 ↔ _
  rw [F.covariance_eq_residual_pairing]
  change (F.probabilityFibre theta).positiveForm.form
    (F.statisticObservable u - (F.probabilityFibre theta).averaging (F.statisticObservable u))
    (F.statisticObservable u - (F.probabilityFibre theta).averaging (F.statisticObservable u))
      = 0 ↔ _
  rw [FiniteFibreWeights.residual_zero_iff]
  simp [FiniteFibreWeights.FibreConstant, statisticObservable]

/-- The null directions of the finite log-affine covariance do not depend on the parameter. -/
theorem covariance_null_parameter_independent (theta eta u : E) :
    (F.covarianceForm theta).IsNull u ↔ (F.covarianceForm eta).IsNull u := by
  rw [F.covariance_null_iff_constant_statistics, F.covariance_null_iff_constant_statistics]

end

end FiniteLogAffineFamily

end FormalResearch.PositiveAtlas
```
