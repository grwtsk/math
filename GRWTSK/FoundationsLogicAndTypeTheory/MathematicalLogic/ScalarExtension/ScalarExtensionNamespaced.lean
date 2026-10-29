-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ScalarExtension.Variantaf7a35d0a25ae8d3c6bde9e109c24c3e6e32fce5199032d17fa59499e553fdba","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"af7a35d0a25ae8d3c6bde9e109c24c3e6e32fce5199032d17fa59499e553fdba","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.ScalarExtension.Variantaf7a35d0a25ae8d3c6bde9e109c24c3e6e32fce5199032d17fa59499e553fdba","mathematical_subject":"Logic.Foundations","original_sha256":"af7a35d0a25ae8d3c6bde9e109c24c3e6e32fce5199032d17fa59499e553fdba","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Determinant/ScalarExtension.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Determinant.Transport

/-!
# Explicit scalar extension for determinant transport

Changing coefficients is typed data.  A `ScalarExtension` connects two
perfect-complex models along an explicit ring map and proves preservation of
identity, composition, supported isomorphisms, and quasi-isomorphisms.

Accordingly, determinant transport after localization or completion belongs
to the determinant theory over the target coefficient context.  This module
does not identify that target line with the original integral line.  Any map
between those lines is separate compatibility data.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ScalarExtension.Variantaf7a35d0a25ae8d3c6bde9e109c24c3e6e32fce5199032d17fa59499e553fdba

namespace DAF.Determinant

open DAF.Comparison
open DAF.PerfectComplex

universe uObj uHom uIso uR uS uLineR uLineS

/--
Functorial scalar extension between supported perfect-complex models along an
explicit coefficient change.
-/
structure ScalarExtension
    (M₀ M₁ : PerfectComplex.Model.{uObj, uHom, uIso})
    (R : CoefficientContext.{uR})
    (S : CoefficientContext.{uS})
    (phi : CoefficientChange R S) where
  extendObject : M₀.Object → M₁.Object
  extendHom :
    {C D : M₀.Object} →
      M₀.Hom C D →
      M₁.Hom (extendObject C) (extendObject D)
  extendIso :
    {C D : M₀.Object} →
      M₀.Iso C D →
      M₁.Iso (extendObject C) (extendObject D)

  extend_id :
    ∀ (C : M₀.Object),
      extendHom (M₀.id (C := C)) =
        M₁.id (C := extendObject C)
  extend_comp :
    ∀ {C D E : M₀.Object}
      (f : M₀.Hom C D) (g : M₀.Hom D E),
      extendHom (M₀.comp f g) =
        M₁.comp (extendHom f) (extendHom g)
  extendIso_refl :
    ∀ (C : M₀.Object),
      extendIso (M₀.isoRefl C) =
        M₁.isoRefl (extendObject C)
  extendIso_trans :
    ∀ {C D E : M₀.Object}
      (f : M₀.Iso C D) (g : M₀.Iso D E),
      extendIso (M₀.isoTrans f g) =
        M₁.isoTrans (extendIso f) (extendIso g)
  preservesQuasiIso :
    ∀ {C D : M₀.Object} {f : M₀.Hom C D},
      M₀.isQuasiIso f → M₁.isQuasiIso (extendHom f)

namespace ScalarExtension

variable
    {M₀ M₁ : PerfectComplex.Model.{uObj, uHom, uIso}}
    {R : CoefficientContext.{uR}}
    {S : CoefficientContext.{uS}}
    {phi : CoefficientChange R S}
    (E : ScalarExtension M₀ M₁ R S phi)

/-- Scalar extension preserves a supplied quasi-isomorphism certificate. -/
def extendCertifiedQuasiIso
    {C D : M₀.Object}
    (f : PerfectComplex.CertifiedQuasiIso M₀ C D) :
    PerfectComplex.CertifiedQuasiIso M₁
      (E.extendObject C) (E.extendObject D) where
  hom := E.extendHom f.hom
  proof := E.preservesQuasiIso f.proof

@[simp]
theorem extendCertifiedQuasiIso_hom
    {C D : M₀.Object}
    (f : PerfectComplex.CertifiedQuasiIso M₀ C D) :
    (E.extendCertifiedQuasiIso f).hom = E.extendHom f.hom :=
  rfl

@[simp]
theorem extendCertifiedQuasiIso_id (C : M₀.Object) :
    E.extendCertifiedQuasiIso (PerfectComplex.CertifiedQuasiIso.id M₀ C) =
      PerfectComplex.CertifiedQuasiIso.id M₁ (E.extendObject C) := by
  ext
  exact E.extend_id C

theorem extendCertifiedQuasiIso_comp
    {B C D : M₀.Object}
    (f : PerfectComplex.CertifiedQuasiIso M₀ B C)
    (g : PerfectComplex.CertifiedQuasiIso M₀ C D) :
    E.extendCertifiedQuasiIso (f.comp g) =
      (E.extendCertifiedQuasiIso f).comp
        (E.extendCertifiedQuasiIso g) := by
  ext
  exact E.extend_comp f.hom g.hom

/-- Extend every certified arrow in a typed chain. -/
def extendChain
    {C D : M₀.Object} :
    PerfectComplex.QuasiIsoChain M₀ C D →
      PerfectComplex.QuasiIsoChain M₁
        (E.extendObject C) (E.extendObject D)
  | .nil C => .nil (E.extendObject C)
  | .cons f rest =>
      .cons (E.extendCertifiedQuasiIso f) (extendChain rest)

@[simp]
theorem extendChain_nil (C : M₀.Object) :
    E.extendChain (PerfectComplex.QuasiIsoChain.nil C) =
      PerfectComplex.QuasiIsoChain.nil (E.extendObject C) :=
  rfl

@[simp]
theorem extendChain_cons
    {B C D : M₀.Object}
    (f : PerfectComplex.CertifiedQuasiIso M₀ B C)
    (rest : PerfectComplex.QuasiIsoChain M₀ C D) :
    E.extendChain (PerfectComplex.QuasiIsoChain.cons f rest) =
      PerfectComplex.QuasiIsoChain.cons
        (E.extendCertifiedQuasiIso f) (E.extendChain rest) :=
  rfl

/--
Determinant transport after scalar extension.  Its source and target are
lines in the `S`-coefficient theory, not lines in the original `R` theory.
-/
def detEquiv
    (D₁ : Theory.{uObj, uHom, uIso, uS, uLineS} M₁ S)
    {C D : M₀.Object}
    (f : PerfectComplex.CertifiedQuasiIso M₀ C D) :
    D₁.Line (E.extendObject C) ≃ D₁.Line (E.extendObject D) :=
  CertifiedQuasiIso.detEquiv D₁ (E.extendCertifiedQuasiIso f)

@[simp]
theorem detEquiv_id
    (D₁ : Theory.{uObj, uHom, uIso, uS, uLineS} M₁ S)
    (C : M₀.Object) :
    E.detEquiv D₁ (PerfectComplex.CertifiedQuasiIso.id M₀ C) =
      Equiv.refl (D₁.Line (E.extendObject C)) := by
  rw [detEquiv, E.extendCertifiedQuasiIso_id]
  exact CertifiedQuasiIso.detEquiv_id D₁ (E.extendObject C)

theorem detEquiv_comp
    (D₁ : Theory.{uObj, uHom, uIso, uS, uLineS} M₁ S)
    {B C D : M₀.Object}
    (f : PerfectComplex.CertifiedQuasiIso M₀ B C)
    (g : PerfectComplex.CertifiedQuasiIso M₀ C D) :
    E.detEquiv D₁ (f.comp g) =
      (E.detEquiv D₁ f).trans (E.detEquiv D₁ g) := by
  rw [detEquiv, E.extendCertifiedQuasiIso_comp]
  exact CertifiedQuasiIso.detEquiv_comp D₁
    (E.extendCertifiedQuasiIso f) (E.extendCertifiedQuasiIso g)

end ScalarExtension

/--
Compatibility between determinant theories across a supplied scalar
extension.  `lineChange` is data, not an implicit coercion or an asserted
equivalence.
-/
structure DeterminantScalarExtensionCompatibility
    {M₀ M₁ : PerfectComplex.Model.{uObj, uHom, uIso}}
    {R : CoefficientContext.{uR}}
    {S : CoefficientContext.{uS}}
    {phi : CoefficientChange R S}
    (E : ScalarExtension M₀ M₁ R S phi)
    (D₀ : Theory.{uObj, uHom, uIso, uR, uLineR} M₀ R)
    (D₁ : Theory.{uObj, uHom, uIso, uS, uLineS} M₁ S) where
  lineChange :
    (C : M₀.Object) →
      D₀.Line C → D₁.Line (E.extendObject C)
  quasiIso_natural :
    ∀ {C D : M₀.Object}
      (f : PerfectComplex.CertifiedQuasiIso M₀ C D)
      (x : D₀.Line C),
      lineChange D (CertifiedQuasiIso.detEquiv D₀ f x) =
        E.detEquiv D₁ f (lineChange C x)

namespace DeterminantScalarExtensionCompatibility

variable
    {M₀ M₁ : PerfectComplex.Model.{uObj, uHom, uIso}}
    {R : CoefficientContext.{uR}}
    {S : CoefficientContext.{uS}}
    {phi : CoefficientChange R S}
    {E : ScalarExtension M₀ M₁ R S phi}
    {D₀ : Theory.{uObj, uHom, uIso, uR, uLineR} M₀ R}
    {D₁ : Theory.{uObj, uHom, uIso, uS, uLineS} M₁ S}

/-- The determinant transport square commutes after explicit line change. -/
theorem lineChange_detEquiv
    (K : DeterminantScalarExtensionCompatibility E D₀ D₁)
    {C D : M₀.Object}
    (f : PerfectComplex.CertifiedQuasiIso M₀ C D)
    (x : D₀.Line C) :
    K.lineChange D (CertifiedQuasiIso.detEquiv D₀ f x) =
      E.detEquiv D₁ f (K.lineChange C x) :=
  K.quasiIso_natural f x

end DeterminantScalarExtensionCompatibility

end DAF.Determinant
