-- corpus-organization-transform:v1
-- Mathematical subject: Geometry.AlgebraicGeometry
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Geometry.AlgebraicGeometry.Spec.Variant2d9c55d175aad95c3ac015bc32e24bc6220e1c62be7890edd5aaa738f7d7310f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2d9c55d175aad95c3ac015bc32e24bc6220e1c62be7890edd5aaa738f7d7310f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Geometry.AlgebraicGeometry.SourceCorpus.Spec.Variant2d9c55d175aad95c3ac015bc32e24bc6220e1c62be7890edd5aaa738f7d7310f","mathematical_subject":"Geometry.AlgebraicGeometry","original_sha256":"2d9c55d175aad95c3ac015bc32e24bc6220e1c62be7890edd5aaa738f7d7310f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Comparison/Core.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Typed comparison maps

A `Spec` contains only a function.  Construction provenance, logical status,
coefficients, scope, and determinant transport are deliberately owned by
separate modules.  In particular, metadata attached elsewhere cannot turn a
map into an injection, surjection, or equivalence.
-/


namespace GRWTSK.Geometry.AlgebraicGeometry.Spec.Variant2d9c55d175aad95c3ac015bc32e24bc6220e1c62be7890edd5aaa738f7d7310f

namespace DAF.Comparison

universe u v w x

/-- A typed comparison map, without any claim about that map. -/
structure Spec (A : Sort u) (B : Sort v) where
  map : A → B

namespace Spec

/-- The identity comparison. -/
def id (A : Sort u) : Spec A A :=
  ⟨_root_.id⟩

/-- Composition, written as `g` after `f`. -/
def comp (g : Spec B C) (f : Spec A B) : Spec A C :=
  ⟨fun a ↦ g.map (f.map a)⟩

@[simp]
theorem id_apply (a : A) : (id A).map a = a :=
  rfl

@[simp]
theorem comp_apply (g : Spec B C) (f : Spec A B) (a : A) :
    (g.comp f).map a = g.map (f.map a) :=
  rfl

@[ext]
theorem ext {f g : Spec A B} (h : f.map = g.map) : f = g := by
  cases f
  cases g
  cases h
  rfl

theorem comp_assoc (h : Spec C D) (g : Spec B C) (f : Spec A B) :
    (h.comp g).comp f = h.comp (g.comp f) :=
  rfl

@[simp]
theorem id_comp (f : Spec A B) : (id B).comp f = f :=
  rfl

@[simp]
theorem comp_id (f : Spec A B) : f.comp (id A) = f :=
  rfl

end Spec

end DAF.Comparison
