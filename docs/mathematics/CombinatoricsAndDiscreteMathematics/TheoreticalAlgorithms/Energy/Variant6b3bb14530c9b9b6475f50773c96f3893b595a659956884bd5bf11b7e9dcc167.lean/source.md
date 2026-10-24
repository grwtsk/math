# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Energy.Variant6b3bb14530c9b9b6475f50773c96f3893b595a659956884bd5bf11b7e9dcc167

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bfe811957c453b56631185e2a97f8678a639fb48` · SHA-256 `6b3bb14530c9b9b6475f50773c96f3893b595a659956884bd5bf11b7e9dcc167`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Relaxation.HardConstraint

/-! # Discrete relaxation energy -/

namespace Mathematics.Relaxation

/--
Natural-valued energy is an operational termination measure.  It is not
theorem authority and need not represent a physical energy.
-/
structure Energy where
  energyId : StableId
  measure : State → Nat
  componentMeasures : List (State → Nat)
  energyDigest : Digest

end Mathematics.Relaxation
```
