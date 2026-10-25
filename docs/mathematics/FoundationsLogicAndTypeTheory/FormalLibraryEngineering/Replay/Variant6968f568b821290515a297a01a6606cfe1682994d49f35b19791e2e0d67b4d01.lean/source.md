# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Replay.Variant6968f568b821290515a297a01a6606cfe1682994d49f35b19791e2e0d67b4d01

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `569d367f96e36289e903ff7df2fe2f284ccd59e3` · SHA-256 `6968f568b821290515a297a01a6606cfe1682994d49f35b19791e2e0d67b4d01`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemanticTokenization.Resolver

/-! # Snapshot-bound deterministic replay -/

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
