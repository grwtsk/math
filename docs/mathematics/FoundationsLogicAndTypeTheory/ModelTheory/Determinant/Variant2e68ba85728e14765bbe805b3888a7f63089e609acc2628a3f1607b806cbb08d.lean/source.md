# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.Determinant.Variant2e68ba85728e14765bbe805b3888a7f63089e609acc2628a3f1607b806cbb08d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `58fa0b523e0cd9dbce2594e88285d951cad2ed00` · SHA-256 `0992d696f16388cd752a9ae0078c49134bfd6a2a6607d7b5f2597188ad8b0630`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.ModelTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.PerfectPrismaticTotalization.Variant30c7ad335fd6abdcbf898f8ba2404c097f4049da8581ae0ea87d417962e5c8f1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"30c7ad335fd6abdcbf898f8ba2404c097f4049da8581ae0ea87d417962e5c8f1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.ModelTheory.SourceCorpus.PerfectPrismaticTotalization.Variant30c7ad335fd6abdcbf898f8ba2404c097f4049da8581ae0ea87d417962e5c8f1","mathematical_subject":"Logic.ModelTheory","original_sha256":"30c7ad335fd6abdcbf898f8ba2404c097f4049da8581ae0ea87d417962e5c8f1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Prismatic/Determinant.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Determinant.Transport
import DAF.Prismatic.Totalization

/-!
# Determinant transport for certified prismatic comparisons

A simplicial source map, a fabric reaction, or an equivalence of state types
does not produce a determinant-line map.  This module requires a selected
perfect-complex model and an explicit certificate family whose interpretation
is an existing `DAF.PerfectComplex.CertifiedQuasiIso`.  Determinant transport
then delegates entirely to `DAF.Determinant.CertifiedQuasiIso.detEquiv`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.PerfectPrismaticTotalization.Variant30c7ad335fd6abdcbf898f8ba2404c097f4049da8581ae0ea87d417962e5c8f1

namespace DAF.Prismatic

open CategoryTheory
open DAF.Comparison
open DAF.PerfectComplex

universe uCert uObj uHom uIso uCoeff uLine

/--
A capability for representing certified totalized prismatic reactions by
chain-level quasi-isomorphisms.  The certificate family is explicit and is
closed under identity and composition.
-/
structure PerfectPrismaticTotalization
    (P : Theory)
    (T : TotalizationTheory P.Target) where
  model : DAF.PerfectComplex.Model.{uObj, uHom, uIso}
  encode : P.Target → model.Object

  ReactionCertificate :
    {X Y : SimplicialObject P.DerivedAlg} →
      (X ⟶ Y) → Type uCert

  identityCertificate :
    ∀ (X : SimplicialObject P.DerivedAlg),
      ReactionCertificate (𝟙 X)

  composeCertificate :
    ∀ {X Y Z : SimplicialObject P.DerivedAlg}
      {f : X ⟶ Y} {g : Y ⟶ Z},
      ReactionCertificate f →
        ReactionCertificate g →
        ReactionCertificate (f ≫ g)

  reactionQuasiIso :
    ∀ {X Y : SimplicialObject P.DerivedAlg}
      (f : X ⟶ Y),
      ReactionCertificate f →
        DAF.PerfectComplex.CertifiedQuasiIso model
          (encode (fabricPrismaticValue P T Y))
          (encode (fabricPrismaticValue P T X))

  reactionQuasiIso_id :
    ∀ (X : SimplicialObject P.DerivedAlg),
      reactionQuasiIso (𝟙 X) (identityCertificate X) =
        DAF.PerfectComplex.CertifiedQuasiIso.id model
          (encode (fabricPrismaticValue P T X))

  reactionQuasiIso_comp :
    ∀ {X Y Z : SimplicialObject P.DerivedAlg}
      {f : X ⟶ Y} {g : Y ⟶ Z}
      (hf : ReactionCertificate f)
      (hg : ReactionCertificate g),
      reactionQuasiIso (f ≫ g) (composeCertificate hf hg) =
        (reactionQuasiIso g hg).comp (reactionQuasiIso f hf)

/--
Determinant-line equivalence induced only through a certified chain-level
prismatic comparison.
-/
def certifiedPrismaticReactionDetEquiv
    {P : Theory}
    {T : TotalizationTheory P.Target}
    (Q : PerfectPrismaticTotalization.{uCert, uObj, uHom, uIso} P T)
    {R : CoefficientContext.{uCoeff}}
    (D : DAF.Determinant.Theory.{uObj, uHom, uIso, uCoeff, uLine}
      Q.model R)
    {X Y : SimplicialObject P.DerivedAlg}
    (f : X ⟶ Y)
    (certificate : Q.ReactionCertificate f) :
    D.Line (Q.encode (fabricPrismaticValue P T Y)) ≃
      D.Line (Q.encode (fabricPrismaticValue P T X)) :=
  DAF.Determinant.CertifiedQuasiIso.detEquiv D
    (Q.reactionQuasiIso f certificate)

@[simp]
theorem certifiedPrismaticReactionDetEquiv_id
    {P : Theory}
    {T : TotalizationTheory P.Target}
    (Q : PerfectPrismaticTotalization.{uCert, uObj, uHom, uIso} P T)
    {R : CoefficientContext.{uCoeff}}
    (D : DAF.Determinant.Theory.{uObj, uHom, uIso, uCoeff, uLine}
      Q.model R)
    (X : SimplicialObject P.DerivedAlg) :
    certifiedPrismaticReactionDetEquiv Q D (𝟙 X)
        (Q.identityCertificate X) =
      Equiv.refl (D.Line (Q.encode (fabricPrismaticValue P T X))) := by
  rw [certifiedPrismaticReactionDetEquiv, Q.reactionQuasiIso_id]
  exact DAF.Determinant.CertifiedQuasiIso.detEquiv_id D _

theorem certifiedPrismaticReactionDetEquiv_comp
    {P : Theory}
    {T : TotalizationTheory P.Target}
    (Q : PerfectPrismaticTotalization.{uCert, uObj, uHom, uIso} P T)
    {R : CoefficientContext.{uCoeff}}
    (D : DAF.Determinant.Theory.{uObj, uHom, uIso, uCoeff, uLine}
      Q.model R)
    {X Y Z : SimplicialObject P.DerivedAlg}
    {f : X ⟶ Y}
    {g : Y ⟶ Z}
    (hf : Q.ReactionCertificate f)
    (hg : Q.ReactionCertificate g) :
    certifiedPrismaticReactionDetEquiv Q D (f ≫ g)
        (Q.composeCertificate hf hg) =
      (certifiedPrismaticReactionDetEquiv Q D g hg).trans
        (certifiedPrismaticReactionDetEquiv Q D f hf) := by
  rw [certifiedPrismaticReactionDetEquiv, Q.reactionQuasiIso_comp]
  exact DAF.Determinant.CertifiedQuasiIso.detEquiv_comp D _ _

end DAF.Prismatic
```
