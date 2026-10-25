# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HEN04GeneratorCompleteness.Variant40735336a994dc66010bdc6dc126d946acc12f6c12f0f560df99f9cb26aa696f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f2cbe524028787c17adfe7dbf1266a2d95466413` · SHA-256 `9fe853e417824efcdd6fb0079772be68f26e432802a47f05cae7770165f6907e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Hen04GeneratorCompleteness.Variant11462c8b041e8d26b0c1c449108f7f94e3e9554181247783da6289f13e477441","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"11462c8b041e8d26b0c1c449108f7f94e3e9554181247783da6289f13e477441","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Hen04GeneratorCompleteness.Variant11462c8b041e8d26b0c1c449108f7f94e3e9554181247783da6289f13e477441","mathematical_subject":"Foundations.Unclassified","original_sha256":"11462c8b041e8d26b0c1c449108f7f94e3e9554181247783da6289f13e477441","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/Algebraization/Theorems/HEN04_GeneratorCompleteness.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.Algebraization.Theorems.HEN03_EssentialImageCharacterization


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Hen04GeneratorCompleteness.Variant11462c8b041e8d26b0c1c449108f7f94e3e9554181247783da6289f13e477441

namespace FCRS.Algebraization.Theorems

/--
Henselian generator completeness: pullback is an equivalence onto the full
subcategory selected by the finite ample-generator quotient predicate.
-/
theorem hen04_generatorCompleteness
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S)
    (hProfile : S.P.henselianProfile)
    (hSource : SourceGenerated S.generators S.cohAlgEpi) :
    ∃ hObj :
        ∀ X : S.categories.CohAlg.Obj,
          AlgebraicallyGenerated
            S.generators
            S.cohHenEpi
            (S.functors.HenPullback.obj X),
      EquivalenceWitness
        (restrictCodomain
          S.functors.HenPullback
          (AlgebraicallyGenerated
            S.generators
            S.cohHenEpi)
          hObj) := by
  have hExact :=
    (registry.hen01) hProfile
  have hClosed :=
    (registry.hen02) hProfile
  let hObj :=
    imageObjectsGenerated
      S.functors.HenPullback
      S.cohAlgEpi
      S.cohHenEpi
      S.generators
      hSource
      hExact.preservesEpis
  refine ⟨hObj, ?_⟩
  exact equivalenceRestrictCodomain
    S.functors.HenPullback
    (AlgebraicallyGenerated S.generators S.cohHenEpi)
    hObj
    hExact.full
    hExact.faithful
    (generatedIsEssentialImage
      S.functors.HenPullback
      S.cohHenEpi
      S.generators
      hClosed.quotientClosed)

end FCRS.Algebraization.Theorems
```
