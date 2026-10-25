# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TAN01EffectiveTannaka.Variantf21ad465e636b0525f4a5765ca7c69588f6876eadb812c1ac4e644af548dd51d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `544ceb5d19cc5c723c33b4eaf488a3ba1678ebda` · SHA-256 `e0261aa7fc43de7f3f76569a03a337e0684774279ec812bbf66ef2ca9d151f94`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tan01EffectiveTannaka.Variantf8192aa34b6999c697b07260a34d84d630f34ebcbf6e0ae8dfea9ad6540f4eb2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f8192aa34b6999c697b07260a34d84d630f34ebcbf6e0ae8dfea9ad6540f4eb2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Tan01EffectiveTannaka.Variantf8192aa34b6999c697b07260a34d84d630f34ebcbf6e0ae8dfea9ad6540f4eb2","mathematical_subject":"Foundations.Unclassified","original_sha256":"f8192aa34b6999c697b07260a34d84d630f34ebcbf6e0ae8dfea9ad6540f4eb2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/Algebraization/Theorems/TAN01_EffectiveTannaka.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.Algebraization.Foundations


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tan01EffectiveTannaka.Variantf8192aa34b6999c697b07260a34d84d630f34ebcbf6e0ae8dfea9ad6540f4eb2

namespace FCRS.Algebraization.Theorems

/-- Tannakian reconstruction with values in effective Henselian semantics. -/
theorem tan01_effectiveTannaka
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S) :
    TAN01Claim S :=
  registry.tan01

end FCRS.Algebraization.Theorems
```
