# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.AnalyticDispersion.Variantdf0f1c261c0529048255817e0cd860b406c31cc94d1dc0f1815e13aec39ef4dc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `19d79f7ca70c6e4359a7d854e872bc6586b0b11c` · SHA-256 `a782fe0a161d50cd0a29cd6b4aa498a6df45207414390154be3311344931ef71`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.AnalyticDispersionReconstruction.Variantd159f73600c8e73b714a7bbd97611e106794fd15009954a6af17fa5193101af8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d159f73600c8e73b714a7bbd97611e106794fd15009954a6af17fa5193101af8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.AnalyticDispersionReconstruction.Variantd159f73600c8e73b714a7bbd97611e106794fd15009954a6af17fa5193101af8","mathematical_subject":"Analysis.Calculus","original_sha256":"d159f73600c8e73b714a7bbd97611e106794fd15009954a6af17fa5193101af8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/rh-target-sufficiency/FormalResearch/PositiveAtlas/AnalyticDispersion.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.FourPhaseConvolution
import Mathlib.Analysis.Analytic.Basic
import Mathlib.Analysis.Calculus.FDeriv.Basic

/-!
# Analytic Phase-I dispersion reconstruction

This module strengthens the Phase-I entry point of the Positive Atlas.

An analytic dispersion reconstruction consists of

* an analytic potential Psi;
* an analytic gradient field;
* a continuous Hessian operator;
* a positive symmetric dispersion form;

together with explicit Frechet-derivative certificates

  D Psi = gradient,
  D gradient = Hessian,

and a pointwise identification of the Hessian with the positive dispersion form.

This is an abstract analytic reconstruction interface.  It does not yet assert
that a concrete probability model realizes the dispersion as a covariance, nor
does it construct a log-affine exponential family from first principles.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.AnalyticDispersionReconstruction.Variantd159f73600c8e73b714a7bbd97611e106794fd15009954a6af17fa5193101af8

namespace FormalResearch.PositiveAtlas

universe u

variable {E : Type u}
variable [NormedAddCommGroup E] [NormedSpace ℝ E]

/-- Analytic Phase-I reconstruction data.

The second derivative is represented as a continuous linear map into the
continuous dual.  The final field identifies that analytic Hessian with the
algebraic PositiveForm used throughout the rest of the atlas. -/
structure AnalyticDispersionReconstruction (E : Type u)
    [NormedAddCommGroup E] [NormedSpace ℝ E] where
  potential : E → ℝ
  gradient : E → (E →L[ℝ] ℝ)
  hessian : E → (E →L[ℝ] (E →L[ℝ] ℝ))
  dispersion : E → PositiveForm E
  potential_analytic : ∀ x, AnalyticAt ℝ potential x
  gradient_analytic : ∀ x, AnalyticAt ℝ gradient x
  potential_hasFDeriv : ∀ x, HasFDerivAt potential (gradient x) x
  gradient_hasFDeriv : ∀ x, HasFDerivAt gradient (hessian x) x
  hessian_eq_dispersion :
    ∀ x u v, hessian x u v = (dispersion x).form u v

namespace AnalyticDispersionReconstruction

variable (D : AnalyticDispersionReconstruction E)

/-- The Frechet derivative of the potential is the stored gradient. -/
theorem fderiv_potential_eq (x : E) :
    fderiv ℝ D.potential x = D.gradient x :=
  (D.potential_hasFDeriv x).fderiv

/-- The Frechet derivative of the gradient field is the stored Hessian. -/
theorem fderiv_gradient_eq (x : E) :
    fderiv ℝ D.gradient x = D.hessian x :=
  (D.gradient_hasFDeriv x).fderiv

/-- The Hessian is the positive dispersion form pointwise. -/
theorem hessian_apply_eq_dispersion
    (x u v : E) :
    D.hessian x u v = (D.dispersion x).form u v :=
  D.hessian_eq_dispersion x u v

/-- The analytic Hessian is symmetric because it is identified with a
symmetric PositiveForm. -/
theorem hessian_symmetric
    (x u v : E) :
    D.hessian x u v = D.hessian x v u := by
  rw [D.hessian_apply_eq_dispersion, D.hessian_apply_eq_dispersion]
  exact (D.dispersion x).symmetric u v

/-- The analytic Hessian is positive semidefinite on the diagonal. -/
theorem hessian_nonnegative
    (x u : E) :
    0 ≤ D.hessian x u u := by
  rw [D.hessian_apply_eq_dispersion]
  exact (D.dispersion x).nonnegative u

/-- The local Phase-I positive geometry at parameter x. -/
def geometryAt (x : E) : PositiveForm E :=
  D.dispersion x

@[simp]
theorem geometryAt_form
    (x u v : E) :
    (D.geometryAt x).form u v = D.hessian x u v := by
  rw [geometryAt, D.hessian_apply_eq_dispersion]

/-- Visibility in Phase I is positivity of the analytic Hessian quadratic
direction. -/
theorem visible_iff_hessian_pos
    (x u : E) :
    (D.geometryAt x).Visible u ↔ 0 < D.hessian x u u := by
  unfold PositiveForm.Visible
  rw [D.geometryAt_form]

/-- Nullity in Phase I is vanishing of the analytic Hessian quadratic
direction. -/
theorem isNull_iff_hessian_eq_zero
    (x u : E) :
    (D.geometryAt x).IsNull u ↔ D.hessian x u u = 0 := by
  unfold PositiveForm.IsNull
  rw [D.geometryAt_form]

/-- The stored potential is analytic everywhere. -/
theorem analytic_potential :
    ∀ x : E, AnalyticAt ℝ D.potential x :=
  D.potential_analytic

/-- The stored gradient field is analytic everywhere. -/
theorem analytic_gradient :
    ∀ x : E, AnalyticAt ℝ D.gradient x :=
  D.gradient_analytic

end AnalyticDispersionReconstruction

universe v w

variable {P : Type u} [NormedAddCommGroup P] [NormedSpace ℝ P]
variable {U : Type v} [NormedAddCommGroup U] [NormedSpace ℝ U]
variable {X : Type w} [AddCommGroup X] [Module ℝ X]

namespace ThreePhaseCore

/-- Build the comparator-free three-phase core from an actual analytic
Phase-I dispersion reconstruction evaluated at one parameter point. -/
def ofAnalyticDispersionAt
    (D : AnalyticDispersionReconstruction (P × U))
    (theta : P × U)
    (phaseII : PhaseIIResidualQuotient (D.geometryAt theta))
    (phaseIII : PositiveCommutingInvolutions phaseII.geometry)
    (intervention : LinearIntervention X U) :
    ThreePhaseCore P U X where
  phaseI := D.geometryAt theta
  phaseII := phaseII
  phaseIII := phaseIII
  intervention := intervention

@[simp]
theorem ofAnalyticDispersionAt_phaseI
    (D : AnalyticDispersionReconstruction (P × U))
    (theta : P × U)
    (phaseII : PhaseIIResidualQuotient (D.geometryAt theta))
    (phaseIII : PositiveCommutingInvolutions phaseII.geometry)
    (intervention : LinearIntervention X U) :
    (ofAnalyticDispersionAt D theta phaseII phaseIII intervention).phaseI =
      D.geometryAt theta :=
  rfl

/-- In an analytically instantiated three-phase core, Phase-I energy is exactly
the Hessian/dispersion quadratic form at the chosen parameter point. -/
theorem ofAnalyticDispersionAt_phaseIEnergy
    (D : AnalyticDispersionReconstruction (P × U))
    (theta : P × U)
    (phaseII : PhaseIIResidualQuotient (D.geometryAt theta))
    (phaseIII : PositiveCommutingInvolutions phaseII.geometry)
    (intervention : LinearIntervention X U)
    (z : P × U) :
    (ofAnalyticDispersionAt D theta phaseII phaseIII intervention).phaseIEnergy z =
      D.hessian theta z z := by
  change (D.geometryAt theta).form z z = D.hessian theta z z
  exact D.geometryAt_form theta z z

end ThreePhaseCore

end FormalResearch.PositiveAtlas
```
