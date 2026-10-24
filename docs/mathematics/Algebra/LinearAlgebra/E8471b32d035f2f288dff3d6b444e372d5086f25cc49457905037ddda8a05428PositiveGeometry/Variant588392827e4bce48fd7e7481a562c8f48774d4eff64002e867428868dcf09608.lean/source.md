# Complete source: GRWTSK.Algebra.LinearAlgebra.E8471b32d035f2f288dff3d6b444e372d5086f25cc49457905037ddda8a05428PositiveGeometry.Variant588392827e4bce48fd7e7481a562c8f48774d4eff64002e867428868dcf09608

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cb9b1b416e7617cda433a8f00784cb09aabf3430` · SHA-256 `a344ce3b716b36a6303bb631df161b96667bc70297f742ef4cfd03e44622bd50`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.PositiveForm.Variante8471b32d035f2f288dff3d6b444e372d5086f25cc49457905037ddda8a05428","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e8471b32d035f2f288dff3d6b444e372d5086f25cc49457905037ddda8a05428","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.PositiveForm.Variante8471b32d035f2f288dff3d6b444e372d5086f25cc49457905037ddda8a05428","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"e8471b32d035f2f288dff3d6b444e372d5086f25cc49457905037ddda8a05428","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/e8/e8471b32d035f2f288dff3d6b444e372d5086f25cc49457905037ddda8a05428--PositiveGeometry.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.Certification

/-!
# Positive atlas geometry

This module introduces the first positive-geometric layer of the atlas.

The primitive object is a symmetric positive semidefinite real bilinear form.
Pullback along a linear transport preserves positivity.  Phase-II provenance
reduction is represented abstractly by a certified residual map; its residual
geometry is the pullback of the ambient positive form.

This file does not assert that a particular residual map is the Moore--Penrose
Schur-complement residual.  A later finite-dimensional module must construct that
map and prove the corresponding Schur formula.
-/


namespace GRWTSK.Algebra.LinearAlgebra.PositiveForm.Variante8471b32d035f2f288dff3d6b444e372d5086f25cc49457905037ddda8a05428

namespace FormalResearch.PositiveAtlas

universe u v

/-- A symmetric positive semidefinite real bilinear form.

The bilinearity laws are fields rather than an imported matrix representation so
that atlas transports can use the same interface in finite- and infinite-
dimensional settings. -/
structure PositiveForm (V : Type u) [AddCommGroup V] [Module ℝ V] where
  form : V → V → ℝ
  add_left : ∀ x y z, form (x + y) z = form x z + form y z
  smul_left : ∀ (a : ℝ) x y, form (a • x) y = a * form x y
  add_right : ∀ x y z, form x (y + z) = form x y + form x z
  smul_right : ∀ (a : ℝ) x y, form x (a • y) = a * form x y
  symmetric : ∀ x y, form x y = form y x
  nonnegative : ∀ x, 0 ≤ form x x

namespace PositiveForm

variable {V : Type u} [AddCommGroup V] [Module ℝ V]
variable {W : Type v} [AddCommGroup W] [Module ℝ W]

/-- A direction is projectively visible when its positive quadratic value is
strictly positive. -/
def Visible (G : PositiveForm V) (x : V) : Prop :=
  0 < G.form x x

/-- A direction is null when its quadratic value vanishes. -/
def IsNull (G : PositiveForm V) (x : V) : Prop :=
  G.form x x = 0

/-- Pull a positive geometry back along a linear transport. -/
def pullback (G : PositiveForm V) (f : W →ₗ[ℝ] V) : PositiveForm W where
  form x y := G.form (f x) (f y)
  add_left x y z := by
    rw [f.map_add, G.add_left]
  smul_left a x y := by
    rw [f.map_smul, G.smul_left]
  add_right x y z := by
    rw [f.map_add, G.add_right]
  smul_right a x y := by
    rw [f.map_smul, G.smul_right]
  symmetric x y := G.symmetric (f x) (f y)
  nonnegative x := G.nonnegative (f x)

/-- Positivity is preserved by every linear pullback. -/
theorem pullback_nonnegative (G : PositiveForm V) (f : W →ₗ[ℝ] V) (x : W) :
    0 ≤ (G.pullback f).form x x :=
  (G.pullback f).nonnegative x

/-- Pullback visibility is exactly visibility of the transported direction. -/
theorem pullback_visible_iff (G : PositiveForm V) (f : W →ₗ[ℝ] V) (x : W) :
    (G.pullback f).Visible x ↔ G.Visible (f x) :=
  Iff.rfl

/-- Pullback nullity is exactly nullity of the transported direction. -/
theorem pullback_isNull_iff (G : PositiveForm V) (f : W →ₗ[ℝ] V) (x : W) :
    (G.pullback f).IsNull x ↔ G.IsNull (f x) :=
  Iff.rfl

/-- Sum two positive geometries on the same carrier. -/
def add (G H : PositiveForm V) : PositiveForm V where
  form x y := G.form x y + H.form x y
  add_left x y z := by
    rw [G.add_left, H.add_left]
    ring
  smul_left a x y := by
    rw [G.smul_left, H.smul_left]
    ring
  add_right x y z := by
    rw [G.add_right, H.add_right]
    ring
  smul_right a x y := by
    rw [G.smul_right, H.smul_right]
    ring
  symmetric x y := by
    rw [G.symmetric x y, H.symmetric x y]
  nonnegative x := add_nonneg (G.nonnegative x) (H.nonnegative x)

/-- The sum of positive geometries remains positive. -/
theorem add_nonnegative (G H : PositiveForm V) (x : V) :
    0 ≤ (G.add H).form x x :=
  (G.add H).nonnegative x

end PositiveForm

/-- A Phase-II provenance reduction is represented by the residual linear
transport from autonomous coordinates into the ambient positive geometry.

The canonical Schur-complement residual is intended to instantiate this
structure once its finite-dimensional construction has been proved. -/
structure ProvenanceResidualization
    (Ambient : Type u) (Residual : Type v)
    [AddCommGroup Ambient] [Module ℝ Ambient]
    [AddCommGroup Residual] [Module ℝ Residual] where
  residualMap : Residual →ₗ[ℝ] Ambient

namespace ProvenanceResidualization

variable {Ambient : Type u} {Residual : Type v}
variable [AddCommGroup Ambient] [Module ℝ Ambient]
variable [AddCommGroup Residual] [Module ℝ Residual]

/-- The autonomous residual geometry is the ambient positive form pulled back
through the certified residual map. -/
def residualForm (R : ProvenanceResidualization Ambient Residual)
    (G : PositiveForm Ambient) : PositiveForm Residual :=
  G.pullback R.residualMap

/-- Every certified residualization inherits a positive semidefinite geometry. -/
theorem residual_nonnegative (R : ProvenanceResidualization Ambient Residual)
    (G : PositiveForm Ambient) (u : Residual) :
    0 ≤ (R.residualForm G).form u u :=
  (R.residualForm G).nonnegative u

/-- A residual coordinate remains visible exactly when its residual image is
visible in the ambient positive geometry. -/
theorem residual_visible_iff (R : ProvenanceResidualization Ambient Residual)
    (G : PositiveForm Ambient) (u : Residual) :
    (R.residualForm G).Visible u ↔ G.Visible (R.residualMap u) :=
  Iff.rfl

/-- A residual coordinate is invisible exactly when its residual image is null
in the ambient positive geometry. -/
theorem residual_isNull_iff (R : ProvenanceResidualization Ambient Residual)
    (G : PositiveForm Ambient) (u : Residual) :
    (R.residualForm G).IsNull u ↔ G.IsNull (R.residualMap u) :=
  Iff.rfl

end ProvenanceResidualization

end FormalResearch.PositiveAtlas
```
