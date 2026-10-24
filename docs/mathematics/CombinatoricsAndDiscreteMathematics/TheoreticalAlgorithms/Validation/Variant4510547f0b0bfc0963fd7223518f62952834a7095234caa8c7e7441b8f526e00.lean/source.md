# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Validation.Variant4510547f0b0bfc0963fd7223518f62952834a7095234caa8c7e7441b8f526e00

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `afc8bbaf6bcf41da93f3f815e2a63da3f2c42f2b` · SHA-256 `4510547f0b0bfc0963fd7223518f62952834a7095234caa8c7e7441b8f526e00`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.ProofStrategy.Registry

/-! # Proof-motif and strategy validation -/

namespace Mathematics.ProofStrategy

structure Ledger where
  motifs : List MotifObservation
  strategies : List StrategyEvidence

namespace Ledger

def Valid (ledger : Ledger) : Prop :=
  (ledger.motifs.map (·.id)).Nodup ∧
  (ledger.strategies.map (·.id)).Nodup ∧
  (∀ motif ∈ ledger.motifs, motif.Valid) ∧
  (∀ strategy ∈ ledger.strategies,
    strategy.Valid ∧
    ∀ motifId ∈ strategy.motifObservationIds,
      ∃ motif ∈ ledger.motifs,
        motif.id = motifId ∧ motif.theoremId = strategy.theoremId)

end Ledger

end Mathematics.ProofStrategy
```
