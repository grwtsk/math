# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MOD03ApproximationAndLifting.Variant8d442b57abfa4b58197cd5488ef4b4fa73eded4e2e4f150cae7a976a7e0ef499

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `77b40e64ed703c0da51545e81d9a4a0deb6df9cc` · SHA-256 `5469b26f299ad85dff00e57394abc15e343c71c14552acc294ac6d2bceb788f6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Mod03ApproximationAndLifting.Variant8be198ad95f01c2906db22aa60b8d3b9567eefe659690171a1982fd1ba253080","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8be198ad95f01c2906db22aa60b8d3b9567eefe659690171a1982fd1ba253080","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Mod03ApproximationAndLifting.Variant8be198ad95f01c2906db22aa60b8d3b9567eefe659690171a1982fd1ba253080","mathematical_subject":"Foundations.Unclassified","original_sha256":"8be198ad95f01c2906db22aa60b8d3b9567eefe659690171a1982fd1ba253080","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/Algebraization/Theorems/MOD03_ApproximationAndLifting.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.Algebraization.Foundations


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Mod03ApproximationAndLifting.Variant8be198ad95f01c2906db22aa60b8d3b9567eefe659690171a1982fd1ba253080

namespace FCRS.Algebraization.Theorems

/-- ME5--ME6: Artin/Popescu/Elkik approximation and Henselian lifting. -/
theorem mod03_approximationAndLifting
    (S : AlgebraizationSystem)
    {Y : S.categories.SemanticHen.Obj}
    (certificate : ModuliEffectivityCertificate S.moduli Y) :
    S.moduli.approximation Y ∧
    S.moduli.henselianLifting Y :=
  ⟨certificate.me5_approximation,
   certificate.me6_henselianLifting⟩

end FCRS.Algebraization.Theorems
```
