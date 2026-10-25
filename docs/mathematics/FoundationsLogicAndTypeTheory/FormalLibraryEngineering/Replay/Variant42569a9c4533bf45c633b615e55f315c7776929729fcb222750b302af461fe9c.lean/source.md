# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Replay.Variant42569a9c4533bf45c633b615e55f315c7776929729fcb222750b302af461fe9c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7604a980ecf75d8ce5f1092094766932dc9d9505` · SHA-256 `d63a56755971176105e4939761d549e2593a2fece4a0fbfb25820891db0156e7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReplayReceipt.Variant6968f568b821290515a297a01a6606cfe1682994d49f35b19791e2e0d67b4d01","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6968f568b821290515a297a01a6606cfe1682994d49f35b19791e2e0d67b4d01","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ReplayReceipt.Variant6968f568b821290515a297a01a6606cfe1682994d49f35b19791e2e0d67b4d01","mathematical_subject":"Foundations.Unclassified","original_sha256":"6968f568b821290515a297a01a6606cfe1682994d49f35b19791e2e0d67b4d01","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SemanticTokenization/Replay.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemanticTokenization.Resolver

/-! # Snapshot-bound deterministic replay -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReplayReceipt.Variant6968f568b821290515a297a01a6606cfe1682994d49f35b19791e2e0d67b4d01

namespace Mathematics.SemanticTokenization

def replay
    (cut : CommittedSemanticCut) :
    SemanticTokenResolution cut :=
  resolveMetaOverlapSemantics cut

structure ReplayReceipt (cut : CommittedSemanticCut) where
  first :
    SemanticTokenResolution cut
  second :
    SemanticTokenResolution cut
  first_exact :
    first = resolveMetaOverlapSemantics cut
  second_exact :
    second = resolveMetaOverlapSemantics cut
  cutDigest : Digest
  cut_digest_exact :
    cutDigest = cut.cutDigest

theorem deterministic_replay
    (cut : CommittedSemanticCut) :
    replay cut = resolveMetaOverlapSemantics cut :=
  rfl

theorem ReplayReceipt.results_equal
    {cut : CommittedSemanticCut}
    (receipt : ReplayReceipt cut) :
    receipt.first = receipt.second :=
  receipt.first_exact.trans receipt.second_exact.symm

theorem ReplayReceipt.snapshot_digest_exact
    {cut : CommittedSemanticCut}
    (receipt : ReplayReceipt cut) :
    receipt.cutDigest = cut.cutDigest :=
  receipt.cut_digest_exact

end Mathematics.SemanticTokenization
```
