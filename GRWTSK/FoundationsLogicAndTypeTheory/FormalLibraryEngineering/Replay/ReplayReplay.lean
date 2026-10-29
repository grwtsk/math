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
