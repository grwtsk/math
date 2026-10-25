# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MOD04FiniteDeterminacy.Variant1fc6b3ba8f0e3fdcbdfd5b6a429a2eca290f38f8459d3ecc5b88c70910cdb356

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `da008b146c2d35c7ed063a427d6d76ab3742edc8` · SHA-256 `3ecfdd3b5ef30eaefb95e374d59714b07c025fbb31f06c58bf13eb2331f21b29`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Mod04FiniteDeterminacy.Variant2acc2cf86c0d4128cd8daaaeafbf43762463f8c95492da9823f34041d133bf32","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2acc2cf86c0d4128cd8daaaeafbf43762463f8c95492da9823f34041d133bf32","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Mod04FiniteDeterminacy.Variant2acc2cf86c0d4128cd8daaaeafbf43762463f8c95492da9823f34041d133bf32","mathematical_subject":"Foundations.Unclassified","original_sha256":"2acc2cf86c0d4128cd8daaaeafbf43762463f8c95492da9823f34041d133bf32","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/Algebraization/Theorems/MOD04_FiniteDeterminacy.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.Algebraization.Foundations


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Mod04FiniteDeterminacy.Variant2acc2cf86c0d4128cd8daaaeafbf43762463f8c95492da9823f34041d133bf32

namespace FCRS.Algebraization.Theorems

/-- ME7: exact finite determinacy, distinguished from finite-order approximation. -/
theorem mod04_finiteDeterminacy
    (S : AlgebraizationSystem)
    {Y : S.categories.SemanticHen.Obj}
    (certificate : ModuliEffectivityCertificate S.moduli Y) :
    S.moduli.finiteDeterminacy Y :=
  certificate.me7_finiteDeterminacy

end FCRS.Algebraization.Theorems
```
