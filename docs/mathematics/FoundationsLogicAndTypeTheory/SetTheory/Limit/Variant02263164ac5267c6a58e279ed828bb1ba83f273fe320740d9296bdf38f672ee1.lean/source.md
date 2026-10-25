# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Limit.Variant02263164ac5267c6a58e279ed828bb1ba83f273fe320740d9296bdf38f672ee1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eb2b1424f4dece477ce9cf5ef06d420e42c69bbd` · SHA-256 `02263164ac5267c6a58e279ed828bb1ba83f273fe320740d9296bdf38f672ee1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.StratifiedBoundary.OrdinalTally.FundamentalSequence

/-!
# Limit-stratum admission

The stage sequence consists only of executable normal forms.  Its supremum is
the target of a separate registered countable limit; the target is never
reinserted into executable syntax.
-/

namespace Mathematics.StratifiedBoundary.OrdinalTally

structure LimitIndexCertificate
    (registered : RegisteredCountableLimit) where
  stageIndex :
    Nat → ExecutableNormalForm
  stageMatchesFundamentalSequence :
    ∀ stage,
      (stageIndex stage).value =
        (registered.approximation stage).value
  monotone :
    Monotone
      (fun stage => (stageIndex stage).value)
  cofinal :
    ∀ {candidate},
      candidate < registered.target →
      ∃ stage,
        candidate ≤ (stageIndex stage).value

theorem limitIndex_has_declared_boundary
    {registered : RegisteredCountableLimit}
    (certificate :
      LimitIndexCertificate registered) :
    (⨆ stage : Nat,
      (certificate.stageIndex stage).value) =
        registered.target := by
  apply le_antisymm
  · apply Ordinal.iSup_le
    intro stage
    rw [certificate.stageMatchesFundamentalSequence]
    exact (registered.belowTarget stage).le
  · apply le_of_forall_lt
    intro candidate candidate_lt
    obtain ⟨stage, stage_ge⟩ :=
      certificate.cofinal candidate_lt
    exact stage_ge.trans
      (Ordinal.le_iSup
        (fun n : Nat =>
          (certificate.stageIndex n).value)
        stage)

end Mathematics.StratifiedBoundary.OrdinalTally
```
