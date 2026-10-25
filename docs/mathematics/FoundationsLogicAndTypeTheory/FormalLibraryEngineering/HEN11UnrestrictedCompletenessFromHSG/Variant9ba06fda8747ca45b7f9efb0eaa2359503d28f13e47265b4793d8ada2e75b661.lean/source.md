# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HEN11UnrestrictedCompletenessFromHSG.Variant9ba06fda8747ca45b7f9efb0eaa2359503d28f13e47265b4793d8ada2e75b661

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d9027b0e6c7ead1841e48b3ee81316a21c7887ae` · SHA-256 `1581409a7298527817b4c0eddc459a2495a72637e88fae7099aff331762fbbab`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Hen11UnrestrictedCompletenessFromHSG.Variant537d07b2969d285159c0bbba88a5442cb933dc294797e75cb623751aba214c2b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"537d07b2969d285159c0bbba88a5442cb933dc294797e75cb623751aba214c2b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Hen11UnrestrictedCompletenessFromHSG.Variant537d07b2969d285159c0bbba88a5442cb933dc294797e75cb623751aba214c2b","mathematical_subject":"Foundations.Unclassified","original_sha256":"537d07b2969d285159c0bbba88a5442cb933dc294797e75cb623751aba214c2b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/Algebraization/Theorems/HEN11_UnrestrictedCompletenessFromHSG.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.Algebraization.Theorems.HEN01_ExactFullyFaithful
import FCRS.Algebraization.Theorems.HEN05_HSGCriterion


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Hen11UnrestrictedCompletenessFromHSG.Variant537d07b2969d285159c0bbba88a5442cb933dc294797e75cb623751aba214c2b

namespace FCRS.Algebraization.Theorems

/--
If Henselian Serre generation is supplied, the unrestricted coherent
Henselian pullback becomes an equivalence.
-/
theorem hen11_unrestrictedCompletenessFromHSG
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S)
    (hProfile : S.P.henselianProfile)
    (hSource : SourceGenerated S.generators S.cohAlgEpi)
    (hHSG :
      HenselianSerreGeneration
        S.generators
        S.cohHenEpi) :
    EquivalenceWitness S.functors.HenPullback := by
  have hExact :=
    (hen01_exactFullyFaithful S registry) hProfile
  have hEssential :=
    (hen05_hsgCriterion
      S registry hProfile hSource).mpr hHSG
  exact {
    full := hExact.full
    faithful := hExact.faithful
    essentiallySurjective := hEssential
  }

end FCRS.Algebraization.Theorems
```
