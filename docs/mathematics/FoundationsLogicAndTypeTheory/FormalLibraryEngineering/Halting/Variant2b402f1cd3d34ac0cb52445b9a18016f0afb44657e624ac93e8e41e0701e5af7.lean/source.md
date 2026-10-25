# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Halting.Variant2b402f1cd3d34ac0cb52445b9a18016f0afb44657e624ac93e8e41e0701e5af7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fdb9f355f1a6d272108455a318aa93e7edcc470a` · SHA-256 `7e8bff27b36edbc41c2bb7dd682dc647bf85a8f6358f4285f6ebccc10319ed77`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HaltingOracleDescriptor.Variant728ced72a484bd776c484f34dc4e819755a5d349999978d5be72fcefe67e39da","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"728ced72a484bd776c484f34dc4e819755a5d349999978d5be72fcefe67e39da","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.HaltingOracleDescriptor.Variant728ced72a484bd776c484f34dc4e819755a5d349999978d5be72fcefe67e39da","mathematical_subject":"Foundations.Unclassified","original_sha256":"728ced72a484bd776c484f34dc4e819755a5d349999978d5be72fcefe67e39da","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/Oracle/Halting.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Legacy.Oracle.TuringModel

/-!
Legacy module.

This file is retained only for historical continuity of the Surface development
record. It is not part of the canonical Annals-level namespace, is not imported
by major proof cones, and must not be used to discharge mathematical claims.

Canonical replacements must live outside `Surface.Legacy`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HaltingOracleDescriptor.Variant728ced72a484bd776c484f34dc4e819755a5d349999978d5be72fcefe67e39da

namespace Surface
namespace Legacy

structure HaltingOracleDescriptor where
  oracle : Oracle String Bool
  relativeOnly : Prop

theorem haltingPredicate_marked_oracle_relative
    (H : HaltingOracleDescriptor) :
    H.relativeOnly -> H.relativeOnly := by
  intro h
  exact h

end Legacy
end Surface
```
