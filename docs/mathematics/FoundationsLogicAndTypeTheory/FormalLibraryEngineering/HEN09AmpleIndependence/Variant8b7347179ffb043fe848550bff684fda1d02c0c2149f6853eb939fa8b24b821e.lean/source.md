# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HEN09AmpleIndependence.Variant8b7347179ffb043fe848550bff684fda1d02c0c2149f6853eb939fa8b24b821e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6a46878aa1767a694691e836ec4833ef0cf21460` · SHA-256 `d5e034dc0003a6c4e92a535cc4e388b51a7cf6652a7aeef1f338d36b5f379b6f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Hen09AmpleIndependence.Variante90abd6990d2e3a12ce70557d719e09d8eb69897aaddb22d7487e3a51d908eb2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e90abd6990d2e3a12ce70557d719e09d8eb69897aaddb22d7487e3a51d908eb2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Hen09AmpleIndependence.Variante90abd6990d2e3a12ce70557d719e09d8eb69897aaddb22d7487e3a51d908eb2","mathematical_subject":"Foundations.Unclassified","original_sha256":"e90abd6990d2e3a12ce70557d719e09d8eb69897aaddb22d7487e3a51d908eb2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/Algebraization/Theorems/HEN09_AmpleIndependence.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.Algebraization.Foundations


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Hen09AmpleIndependence.Variante90abd6990d2e3a12ce70557d719e09d8eb69897aaddb22d7487e3a51d908eb2

universe uObj uHom

namespace FCRS.Algebraization.Theorems

/--
Any two designated ample-generator families define the same effective target
when each is independently characterized by the same essential image.
-/
theorem hen09_ampleIndependence
    {C D : CategoryLike.{uObj, uHom}}
    (F : FunctorLike C D)
    (epiD : EpiClass D)
    (B₁ B₂ : GeneratorBridge F)
    (h₁ :
      ∀ Y : D.Obj,
        AlgebraicallyGenerated B₁ epiD Y ↔
        EssentialImage F Y)
    (h₂ :
      ∀ Y : D.Obj,
        AlgebraicallyGenerated B₂ epiD Y ↔
        EssentialImage F Y) :
    ∀ Y : D.Obj,
      AlgebraicallyGenerated B₁ epiD Y ↔
      AlgebraicallyGenerated B₂ epiD Y := by
  intro Y
  exact (h₁ Y).trans (h₂ Y).symm

end FCRS.Algebraization.Theorems
```
