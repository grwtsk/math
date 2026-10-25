# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MOD01BoundedAlgebraicModuli.Variant78eef6e5ca16d2566b8fe629c273113cd400fefc1a36cca268ccedfaa48e70f3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a2823a552347c1ac3703925664a34a25a4875e25` · SHA-256 `78eb2a901ad6f46d997696dc182046e1d07147f63017d17b1d16a436132cfa27`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Mod01BoundedAlgebraicModuli.Variant087bf7af25b6dd0c43363b6e4e7ee7b9afcdf27bde4cf82526330b8de19d5c47","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"087bf7af25b6dd0c43363b6e4e7ee7b9afcdf27bde4cf82526330b8de19d5c47","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Mod01BoundedAlgebraicModuli.Variant087bf7af25b6dd0c43363b6e4e7ee7b9afcdf27bde4cf82526330b8de19d5c47","mathematical_subject":"Foundations.Unclassified","original_sha256":"087bf7af25b6dd0c43363b6e4e7ee7b9afcdf27bde4cf82526330b8de19d5c47","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/Algebraization/Theorems/MOD01_BoundedAlgebraicModuli.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.Algebraization.Foundations


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Mod01BoundedAlgebraicModuli.Variant087bf7af25b6dd0c43363b6e4e7ee7b9afcdf27bde4cf82526330b8de19d5c47

namespace FCRS.Algebraization.Theorems

/-- ME1--ME3: excellent Henselian base, proper source, and bounded algebraic moduli. -/
theorem mod01_boundedAlgebraicModuli
    (S : AlgebraizationSystem)
    {Y : S.categories.SemanticHen.Obj}
    (certificate : ModuliEffectivityCertificate S.moduli Y) :
    S.moduli.excellentHenselianBase ∧
    S.moduli.properPolarizedSource ∧
    S.moduli.boundedAlgebraicModuli Y :=
  ⟨certificate.me1_excellentHenselianBase,
   certificate.me2_properPolarizedSource,
   certificate.me3_boundedAlgebraicModuli⟩

end FCRS.Algebraization.Theorems
```
