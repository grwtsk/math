# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MOD02FormalEffectivity.Variantc75b7fecbeaeea9df3d607f60be42a3ab23689439be4ec98e1d2491e58757ce5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `62c4358f69557ebbd4eb5b8c1aecbee5d3136eb1` · SHA-256 `d6870db4bf78b61b423ff01ba24431ed57cce99105b1b1bf96c8ab194247cdff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Mod02FormalEffectivity.Variant2d12e669dd72fecf7a20e058ad0e1f4c7bbf3b912a53443482055a8aaf2418a7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2d12e669dd72fecf7a20e058ad0e1f4c7bbf3b912a53443482055a8aaf2418a7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Mod02FormalEffectivity.Variant2d12e669dd72fecf7a20e058ad0e1f4c7bbf3b912a53443482055a8aaf2418a7","mathematical_subject":"Foundations.Unclassified","original_sha256":"2d12e669dd72fecf7a20e058ad0e1f4c7bbf3b912a53443482055a8aaf2418a7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/Algebraization/Theorems/MOD02_FormalEffectivity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.Algebraization.Foundations


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Mod02FormalEffectivity.Variant2d12e669dd72fecf7a20e058ad0e1f4c7bbf3b912a53443482055a8aaf2418a7

namespace FCRS.Algebraization.Theorems

/-- ME4: formal effectivity for the selected bounded semantic object. -/
theorem mod02_formalEffectivity
    (S : AlgebraizationSystem)
    {Y : S.categories.SemanticHen.Obj}
    (certificate : ModuliEffectivityCertificate S.moduli Y) :
    S.moduli.formalEffectivity Y :=
  certificate.me4_formalEffectivity

end FCRS.Algebraization.Theorems
```
