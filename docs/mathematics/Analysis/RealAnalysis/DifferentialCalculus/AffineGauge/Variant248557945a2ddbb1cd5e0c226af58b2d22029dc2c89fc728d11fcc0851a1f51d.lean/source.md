# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.AffineGauge.Variant248557945a2ddbb1cd5e0c226af58b2d22029dc2c89fc728d11fcc0851a1f51d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ec4ebfee10bcc9b5421ffc3844da996c1ed8bf9c` · SHA-256 `7a230a46f02e346d6246565dc5a1b1bf78a90b97814c915a08ec609775b1572f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.AffineGauge.Variant7413216080e939c6be7173fb5351b576a4adbd9fb653492c7457556ff1bb92d5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7413216080e939c6be7173fb5351b576a4adbd9fb653492c7457556ff1bb92d5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.AffineGauge.Variant7413216080e939c6be7173fb5351b576a4adbd9fb653492c7457556ff1bb92d5","mathematical_subject":"Analysis.Calculus","original_sha256":"7413216080e939c6be7173fb5351b576a4adbd9fb653492c7457556ff1bb92d5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/pr151-repair-20260921T175258Z/candidate-snapshots/c2165bf58cfe7079ba78bd7f98623fb758d0d84525c0918f1eba27105e3dba85/FormalResearch/PositiveAtlas/AffineGauge.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.AnalyticDispersion
import Mathlib.Analysis.Analytic.Constructions
import Mathlib.Analysis.Analytic.Linear
import Mathlib.Analysis.Calculus.FDeriv.Add
import Mathlib.Analysis.Calculus.FDeriv.Const
import Mathlib.Analysis.Calculus.FDeriv.Linear

/-!
# Affine gauge invariance of analytic dispersion

This module formalizes the intrinsic affine gauge of Phase I.

For an analytic dispersion reconstruction D, a continuous covector ell, and a
constant c, define

  Psi'(x) = Psi(x) + ell(x) + c,
  grad Psi'(x) = grad Psi(x) + ell.

The Hessian and dispersion geometry are unchanged.  The transformed object is
again an AnalyticDispersionReconstruction, so all downstream Positive Atlas
phases depend only on the Hessian/dispersion geometry and not on this affine
choice of potential representative.

This is the affine component of the project's affine/projective gauge language.
No quotient by non-affine transformations is asserted here.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.AffineGauge.Variant7413216080e939c6be7173fb5351b576a4adbd9fb653492c7457556ff1bb92d5

namespace FormalResearch.PositiveAtlas

universe u

variable {E : Type u}
variable [NormedAddCommGroup E] [NormedSpace ℝ E]

namespace AnalyticDispersionReconstruction

variable (D : AnalyticDispersionReconstruction E)

/-- Apply an affine gauge shift to the analytic potential.

The potential changes by ell(x) + c, the gradient changes by the constant
covector ell, and the Hessian/dispersion geometry is retained exactly. -/
def affineGauge
    (ell : E →L[ℝ] ℝ) (c : ℝ) :
    AnalyticDispersionReconstruction E where
  potential := fun x => D.potential x + ell x + c
  gradient := fun x => D.gradient x + ell
  hessian := D.hessian
  dispersion := D.dispersion
  potential_analytic := by
    intro x
    exact ((D.potential_analytic x).add (ell.analyticAt x)).add analyticAt_const
  gradient_analytic := by
    intro x
    exact (D.gradient_analytic x).add analyticAt_const
  potential_hasFDeriv := by
    intro x
    exact ((D.potential_hasFDeriv x).add ell.hasFDerivAt).add_const c
  gradient_hasFDeriv := by
    intro x
    exact (D.gradient_hasFDeriv x).add_const ell
  hessian_eq_dispersion := D.hessian_eq_dispersion

@[simp]
theorem affineGauge_potential
    (ell : E →L[ℝ] ℝ) (c : ℝ) (x : E) :
    (D.affineGauge ell c).potential x =
      D.potential x + ell x + c :=
  rfl

@[simp]
theorem affineGauge_gradient
    (ell : E →L[ℝ] ℝ) (c : ℝ) (x : E) :
    (D.affineGauge ell c).gradient x =
      D.gradient x + ell :=
  rfl

@[simp]
theorem affineGauge_hessian
    (ell : E →L[ℝ] ℝ) (c : ℝ) (x : E) :
    (D.affineGauge ell c).hessian x = D.hessian x :=
  rfl

@[simp]
theorem affineGauge_dispersion
    (ell : E →L[ℝ] ℝ) (c : ℝ) (x : E) :
    (D.affineGauge ell c).dispersion x = D.dispersion x :=
  rfl

/-- The potential changes by exactly an affine functional. -/
theorem affineGauge_potential_sub
    (ell : E →L[ℝ] ℝ) (c : ℝ) (x : E) :
    (D.affineGauge ell c).potential x - D.potential x =
      ell x + c := by
  rw [D.affineGauge_potential]
  ring

/-- The gradient changes by exactly the constant covector ell. -/
theorem affineGauge_gradient_sub
    (ell : E →L[ℝ] ℝ) (c : ℝ) (x : E) :
    (D.affineGauge ell c).gradient x - D.gradient x = ell := by
  rw [D.affineGauge_gradient]
  abel

/-- The first Frechet derivative of the gauged potential is the shifted
gradient. -/
theorem fderiv_affineGauge_potential_eq
    (ell : E →L[ℝ] ℝ) (c : ℝ) (x : E) :
    fderiv ℝ (D.affineGauge ell c).potential x =
      D.gradient x + ell := by
  rw [(D.affineGauge ell c).fderiv_potential_eq]
  rfl

/-- The second Frechet derivative is gauge-invariant. -/
theorem fderiv_affineGauge_gradient_eq
    (ell : E →L[ℝ] ℝ) (c : ℝ) (x : E) :
    fderiv ℝ (D.affineGauge ell c).gradient x =
      D.hessian x := by
  rw [(D.affineGauge ell c).fderiv_gradient_eq]
  rfl

/-- The local positive Phase-I geometry is exactly affine-gauge invariant. -/
theorem affineGauge_geometryAt
    (ell : E →L[ℝ] ℝ) (c : ℝ) (x : E) :
    (D.affineGauge ell c).geometryAt x = D.geometryAt x :=
  rfl

/-- Every Hessian quadratic value is affine-gauge invariant. -/
theorem affineGauge_hessian_quadratic
    (ell : E →L[ℝ] ℝ) (c : ℝ) (x u : E) :
    (D.affineGauge ell c).hessian x u u =
      D.hessian x u u :=
  rfl

/-- Phase-I visibility is invariant under affine gauge. -/
theorem affineGauge_visible_iff
    (ell : E →L[ℝ] ℝ) (c : ℝ) (x u : E) :
    ((D.affineGauge ell c).geometryAt x).Visible u ↔
      (D.geometryAt x).Visible u := by
  rw [D.affineGauge_geometryAt]

/-- Phase-I nullity is invariant under affine gauge. -/
theorem affineGauge_isNull_iff
    (ell : E →L[ℝ] ℝ) (c : ℝ) (x u : E) :
    ((D.affineGauge ell c).geometryAt x).IsNull u ↔
      (D.geometryAt x).IsNull u := by
  rw [D.affineGauge_geometryAt]

/-- Two analytic dispersion reconstructions have the same Phase-I geometry when
their positive forms agree pointwise. -/
def SameDispersionGeometry
    (D₁ D₂ : AnalyticDispersionReconstruction E) : Prop :=
  ∀ x, D₁.geometryAt x = D₂.geometryAt x

theorem SameDispersionGeometry.refl
    (D : AnalyticDispersionReconstruction E) :
    SameDispersionGeometry D D := by
  intro x
  rfl

theorem SameDispersionGeometry.symm
    {D₁ D₂ : AnalyticDispersionReconstruction E}
    (h : SameDispersionGeometry D₁ D₂) :
    SameDispersionGeometry D₂ D₁ := by
  intro x
  exact (h x).symm

theorem SameDispersionGeometry.trans
    {D₁ D₂ D₃ : AnalyticDispersionReconstruction E}
    (h₁₂ : SameDispersionGeometry D₁ D₂)
    (h₂₃ : SameDispersionGeometry D₂ D₃) :
    SameDispersionGeometry D₁ D₃ := by
  intro x
  exact (h₁₂ x).trans (h₂₃ x)

/-- Every affine gauge representative has the same dispersion geometry. -/
theorem affineGauge_sameDispersionGeometry
    (ell : E →L[ℝ] ℝ) (c : ℝ) :
    SameDispersionGeometry (D.affineGauge ell c) D := by
  intro x
  exact D.affineGauge_geometryAt ell c x

end AnalyticDispersionReconstruction

universe v w

variable {P : Type u} [NormedAddCommGroup P] [NormedSpace ℝ P]
variable {U : Type v} [NormedAddCommGroup U] [NormedSpace ℝ U]
variable {X : Type w} [AddCommGroup X] [Module ℝ X]

namespace ThreePhaseCore

/-- Instantiating the three-phase core from an affine-gauged Phase-I
representative gives exactly the same core when the downstream Phase-II and
Phase-III data are held fixed. -/
theorem ofAffineGauge_eq
    (D : AnalyticDispersionReconstruction (P × U))
    (ell : (P × U) →L[ℝ] ℝ) (c : ℝ)
    (theta : P × U)
    (phaseII : PhaseIIResidualQuotient (D.geometryAt theta))
    (phaseIII : PositiveCommutingInvolutions phaseII.geometry)
    (intervention : LinearIntervention X U) :
    ofAnalyticDispersionAt (D.affineGauge ell c) theta
        phaseII phaseIII intervention =
      ofAnalyticDispersionAt D theta
        phaseII phaseIII intervention :=
  rfl

/-- Consequently the full three-phase energy chain is affine-gauge invariant. -/
theorem affineGauge_three_phase_energy_chain
    (D : AnalyticDispersionReconstruction (P × U))
    (ell : (P × U) →L[ℝ] ℝ) (c : ℝ)
    (theta : P × U)
    (phaseII : PhaseIIResidualQuotient (D.geometryAt theta))
    (phaseIII : PositiveCommutingInvolutions phaseII.geometry)
    (intervention : LinearIntervention X U)
    (x : X) :
    let C :=
      ofAnalyticDispersionAt (D.affineGauge ell c) theta
        phaseII phaseIII intervention
    0 ≤ C.phaseIIISensitivity x ∧
      C.phaseIIISensitivity x ≤
        C.phaseIIEnergy (C.intervention.differential x) ∧
      C.phaseIIEnergy (C.intervention.differential x) ≤
        C.phaseIEnergy
          (autonomousInclusion (C.intervention.differential x)) := by
  dsimp
  exact
    (ofAnalyticDispersionAt (D.affineGauge ell c) theta
      phaseII phaseIII intervention).three_phase_energy_chain x

end ThreePhaseCore

end FormalResearch.PositiveAtlas
```
