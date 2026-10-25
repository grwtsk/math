# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rotation.Variant529efba500c76b66c54d921de724ca98e9511898e7c25e51f13b25e02a3009a3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a1cdc7cf77b26866d5d081dc6dcb5f904851a777` · SHA-256 `cc6d35d781cbed44e11df12083f78b06be962af94c4186b50cb41c2a5c877715`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RotationCommutesBoundary.Variant9deb5b80ab4f8c672c2086655d4d77ae096ef129812e7025f1661cbafa6c6cc0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9deb5b80ab4f8c672c2086655d4d77ae096ef129812e7025f1661cbafa6c6cc0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.RotationCommutesBoundary.Variant9deb5b80ab4f8c672c2086655d4d77ae096ef129812e7025f1661cbafa6c6cc0","mathematical_subject":"Foundations.Unclassified","original_sha256":"9deb5b80ab4f8c672c2086655d4d77ae096ef129812e7025f1661cbafa6c6cc0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Cubical/Rotation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Cubical.Complex
import Mathematics.Oracle.Naming.CyclicCubical

/-! # Rotation-equivariant cubical boundary -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RotationCommutesBoundary.Variant9deb5b80ab4f8c672c2086655d4d77ae096ef129812e7025f1661cbafa6c6cc0

namespace Mathematics.Cubical

open Mathematics.Oracle.Naming

theorem rotation_commutes_boundary
    {n : Nat} [NeZero n]
    (turn : ZMod n)
    (chain : CubicalChain n) :
    cubicalBoundary (rotate_chainMap turn chain) =
      rotate_chainMap turn (cubicalBoundary chain) :=
  boundary_rotate turn chain

end Mathematics.Cubical
```
