# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.Core.Variantd693caf9922e58ce1048d9abeb15b45e08b6b22d0fa4842f328ae19d44653b36

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0e787d8359004de95a9de0ef1b508209a514a465` · SHA-256 `d4be14d37e2925c130b500e151fc5f7282f764c3c24ab2c8851fbc5ef319a419`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.ModelTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.Theory.Variant16233d524f75fbe2533c207eb185e2d618b5ce2c8da1fb3c925f9dce96f477dd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"16233d524f75fbe2533c207eb185e2d618b5ce2c8da1fb3c925f9dce96f477dd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.ModelTheory.SourceCorpus.Theory.Variant16233d524f75fbe2533c207eb185e2d618b5ce2c8da1fb3c925f9dce96f477dd","mathematical_subject":"Logic.ModelTheory","original_sha256":"16233d524f75fbe2533c207eb185e2d618b5ce2c8da1fb3c925f9dce96f477dd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Determinant/Core.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Comparison.Coefficients
import DAF.PerfectComplex.Comparison
import Mathlib.LinearAlgebra.Determinant

/-!
# Composition-preserving determinant theories

A determinant theory is separate data over a selected perfect-complex model
and a selected coefficient context.  It can transport determinant lines only
along the model's supported isomorphisms and certified quasi-isomorphisms.
Nothing here assigns determinant transport to an arbitrary state map.

The concrete `FiniteFreeRankOne` model below is deliberately small: it models
the complex consisting of one rank-one finite free module in degree zero and
uses its linear automorphisms.  In rank one the top exterior power is the
module itself, so its determinant line is represented by the coefficient
carrier.  This witnesses that the abstract interface is nonempty without
claiming a determinant functor for all perfect complexes.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.Theory.Variant16233d524f75fbe2533c207eb185e2d618b5ce2c8da1fb3c925f9dce96f477dd

namespace DAF.Determinant

open DAF.Comparison
open DAF.PerfectComplex

universe uObj uHom uIso uCoeff uLine

/--
A determinant-line transport theory for one supported perfect-complex model
over one coefficient context.
-/
structure Theory
    (M : PerfectComplex.Model.{uObj, uHom, uIso})
    (R : CoefficientContext.{uCoeff}) where
  Line : M.Object → Type uLine

  lineEquiv :
    {C D : M.Object} → M.Iso C D → Line C ≃ Line D
  lineEquiv_refl :
    ∀ (C : M.Object),
      lineEquiv (M.isoRefl C) = Equiv.refl (Line C)
  lineEquiv_trans :
    ∀ {C D E : M.Object} (e : M.Iso C D) (f : M.Iso D E),
      lineEquiv (M.isoTrans e f) =
        (lineEquiv e).trans (lineEquiv f)

  quasiIsoEquiv :
    {C D : M.Object} →
      CertifiedQuasiIso M C D → Line C ≃ Line D
  quasiIsoEquiv_id :
    ∀ (C : M.Object),
      quasiIsoEquiv (CertifiedQuasiIso.id M C) =
        Equiv.refl (Line C)
  quasiIsoEquiv_comp :
    ∀ {C D E : M.Object}
      (f : CertifiedQuasiIso M C D)
      (g : CertifiedQuasiIso M D E),
      quasiIsoEquiv (f.comp g) =
        (quasiIsoEquiv f).trans (quasiIsoEquiv g)

namespace Theory

variable
    {M : PerfectComplex.Model.{uObj, uHom, uIso}}
    {R : CoefficientContext.{uCoeff}}
    (D : Theory.{uObj, uHom, uIso, uCoeff, uLine} M R)

@[simp]
theorem lineEquiv_refl_apply
    (C : M.Object)
    (x : D.Line C) :
    D.lineEquiv (M.isoRefl C) x = x := by
  rw [D.lineEquiv_refl]
  rfl

@[simp]
theorem quasiIsoEquiv_id_apply
    (C : M.Object)
    (x : D.Line C) :
    D.quasiIsoEquiv (CertifiedQuasiIso.id M C) x = x := by
  rw [D.quasiIsoEquiv_id]
  rfl

end Theory

/-! ## A concrete rank-one finite-free model -/

namespace FiniteFreeRankOne

/--
The model of one finite-free rank-one module, viewed as a complex concentrated
in degree zero.  Morphisms and supported isomorphisms are linear
automorphisms; hence every represented morphism is a quasi-isomorphism in this
small model.
-/
def model (R : CoefficientContext.{uCoeff}) :
    PerfectComplex.Model where
  Object := Unit
  Hom := fun _ _ ↦ R.Carrier ≃ₗ[R.Carrier] R.Carrier
  id := LinearEquiv.refl R.Carrier R.Carrier
  comp := fun f g ↦ f.trans g
  id_comp := by
    intro _ _ f
    ext x
    rfl
  comp_id := by
    intro _ _ f
    ext x
    rfl
  comp_assoc := by
    intro _ _ _ _ f g h
    ext x
    rfl
  Iso := fun _ _ ↦ R.Carrier ≃ₗ[R.Carrier] R.Carrier
  isoRefl := fun _ ↦ LinearEquiv.refl R.Carrier R.Carrier
  isoTrans := fun f g ↦ f.trans g
  isoTrans_refl_left := by
    intro _ _ f
    ext x
    rfl
  isoTrans_refl_right := by
    intro _ _ f
    ext x
    rfl
  isoTrans_assoc := by
    intro _ _ _ _ f g h
    ext x
    rfl
  isQuasiIso := fun _ ↦ True
  isQuasiIso_id := by
    intro
    trivial
  isQuasiIso_comp := by
    intros
    trivial

/--
The determinant theory of the supported rank-one finite-free model.  The
determinant line is the rank-one carrier itself.
-/
def theory (R : CoefficientContext.{uCoeff}) :
    Theory (model R) R where
  Line := fun _ ↦ R.Carrier
  lineEquiv := fun e ↦ e.toEquiv
  lineEquiv_refl := by
    intro
    rfl
  lineEquiv_trans := by
    intro _ _ _ e f
    rfl
  quasiIsoEquiv := fun f ↦ f.hom.toEquiv
  quasiIsoEquiv_id := by
    intro
    rfl
  quasiIsoEquiv_comp := by
    intro _ _ _ f g
    rfl

/-- A concrete, generally nonidentity, certified rank-one automorphism. -/
def negQuasiIso (R : CoefficientContext.{uCoeff}) :
    CertifiedQuasiIso (model R) () () where
  hom := LinearEquiv.neg R.Carrier
  proof := trivial

@[simp]
theorem negQuasiIso_apply
    (R : CoefficientContext.{uCoeff})
    (x : R.Carrier) :
    (theory R).quasiIsoEquiv (negQuasiIso R) x = -x :=
  rfl

end FiniteFreeRankOne

end DAF.Determinant
```
