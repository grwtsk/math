# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Core.Variant1f6b6b42c71d77d8145ee1be487aa2de13a72f0fb594ac7b2351a95ff80ce4b0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a9aa77e62cbe62c922e0741a84c1063faeb66c65` · SHA-256 `20358fed3f8efefa374121794c622d556fadd66e63dea56145dcdd55ed2b97b0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Model.Variantebae814d86ea8fc26b7f686776ea098189905dc237f5745321bbb9cf3c8f8992","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ebae814d86ea8fc26b7f686776ea098189905dc237f5745321bbb9cf3c8f8992","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Model.Variantebae814d86ea8fc26b7f686776ea098189905dc237f5745321bbb9cf3c8f8992","mathematical_subject":"Foundations.Unclassified","original_sha256":"ebae814d86ea8fc26b7f686776ea098189905dc237f5745321bbb9cf3c8f8992","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/PerfectComplex/Core.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Abstract perfect-complex models

This module records only the categorical operations needed by the determinant
transport layer.  In particular, `isQuasiIso` is a supplied chain-level
predicate; it is not defined as bijectivity of an underlying state function.
Consequently a state equivalence does not automatically produce a
`CertifiedQuasiIso`.

The interface is intentionally abstract.  It does not assert that every
complex in Mathlib is perfect, nor that every perfect complex carries a
determinant theory.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Model.Variantebae814d86ea8fc26b7f686776ea098189905dc237f5745321bbb9cf3c8f8992

namespace DAF.PerfectComplex

universe uObj uHom uIso

/--
A composition-closed model of the portion of a perfect-complex category used
by determinant transport.

`Iso` and `isQuasiIso` are model data.  This prevents the framework from
silently replacing chain-level notions with equivalence of arbitrary state
types.
-/
structure Model where
  Object : Type uObj
  Hom : Object → Object → Type uHom
  id : {C : Object} → Hom C C
  /-- Composition, written as `g` after `f`. -/
  comp : {C D E : Object} → Hom C D → Hom D E → Hom C E
  id_comp :
    ∀ {C D : Object} (f : Hom C D),
      comp id f = f
  comp_id :
    ∀ {C D : Object} (f : Hom C D),
      comp f id = f
  comp_assoc :
    ∀ {B C D E : Object}
      (f : Hom B C) (g : Hom C D) (h : Hom D E),
      comp (comp f g) h = comp f (comp g h)

  /-- The model's supported chain-level isomorphisms. -/
  Iso : Object → Object → Type uIso
  isoRefl : (C : Object) → Iso C C
  /-- Composition of supported isomorphisms, again in execution order. -/
  isoTrans : {C D E : Object} → Iso C D → Iso D E → Iso C E
  isoTrans_refl_left :
    ∀ {C D : Object} (e : Iso C D),
      isoTrans (isoRefl C) e = e
  isoTrans_refl_right :
    ∀ {C D : Object} (e : Iso C D),
      isoTrans e (isoRefl D) = e
  isoTrans_assoc :
    ∀ {B C D E : Object}
      (e : Iso B C) (f : Iso C D) (g : Iso D E),
      isoTrans (isoTrans e f) g = isoTrans e (isoTrans f g)

  /-- A model-specific chain-level quasi-isomorphism predicate. -/
  isQuasiIso : {C D : Object} → Hom C D → Prop
  isQuasiIso_id : ∀ (C : Object), isQuasiIso (id (C := C))
  isQuasiIso_comp :
    ∀ {C D E : Object} {f : Hom C D} {g : Hom D E},
      isQuasiIso f → isQuasiIso g → isQuasiIso (comp f g)

namespace Model

variable (M : Model)

@[simp]
theorem id_comp_apply
    {C D : M.Object}
    (f : M.Hom C D) :
    M.comp M.id f = f :=
  M.id_comp f

@[simp]
theorem comp_id_apply
    {C D : M.Object}
    (f : M.Hom C D) :
    M.comp f M.id = f :=
  M.comp_id f

end Model

/-- A chain map accompanied by the model's actual quasi-isomorphism proof. -/
structure CertifiedQuasiIso
    (M : Model)
    (C D : M.Object) where
  hom : M.Hom C D
  proof : M.isQuasiIso hom

namespace CertifiedQuasiIso

variable {M : Model} {B C D E : M.Object}

@[ext]
theorem ext
    {f g : CertifiedQuasiIso M C D}
    (h : f.hom = g.hom) :
    f = g := by
  cases f
  cases g
  simp_all

/-- The certified identity quasi-isomorphism. -/
def id (M : Model) (C : M.Object) :
    CertifiedQuasiIso M C C where
  hom := M.id
  proof := M.isQuasiIso_id C

/-- Composition of certified quasi-isomorphisms. -/
def comp
    (f : CertifiedQuasiIso M B C)
    (g : CertifiedQuasiIso M C D) :
    CertifiedQuasiIso M B D where
  hom := M.comp f.hom g.hom
  proof := M.isQuasiIso_comp f.proof g.proof

@[simp]
theorem id_hom (M : Model) (C : M.Object) :
    (id M C).hom = M.id :=
  rfl

@[simp]
theorem comp_hom
    (f : CertifiedQuasiIso M B C)
    (g : CertifiedQuasiIso M C D) :
    (f.comp g).hom = M.comp f.hom g.hom :=
  rfl

@[simp]
theorem id_comp
    (f : CertifiedQuasiIso M C D) :
    (id M C).comp f = f := by
  ext
  exact M.id_comp f.hom

@[simp]
theorem comp_id
    (f : CertifiedQuasiIso M C D) :
    f.comp (id M D) = f := by
  ext
  exact M.comp_id f.hom

theorem comp_assoc
    (f : CertifiedQuasiIso M B C)
    (g : CertifiedQuasiIso M C D)
    (h : CertifiedQuasiIso M D E) :
    (f.comp g).comp h = f.comp (g.comp h) := by
  ext
  exact M.comp_assoc f.hom g.hom h.hom

end CertifiedQuasiIso

end DAF.PerfectComplex
```
