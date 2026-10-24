# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Factor.Variant1606379a2e956b90a14e6952a4a9d1ddf074815338571fd0692b305fdc2e3a8a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1e6b372aa8c8a4fd16ee8c6e7a737e4b589cb33f` · SHA-256 `1606379a2e956b90a14e6952a4a9d1ddf074815338571fd0692b305fdc2e3a8a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import MathDiscovery.Embedding.Receipt

/-! # Exact finite factors imported from frozen embedding snapshots -/

namespace MathDiscovery.Embedding

open MathDiscovery

structure FactorRow where
  entityId : EntityId
  numerators : List Int
  deriving DecidableEq

namespace FactorRow

def ValidFor (dimension : Nat) (row : FactorRow) : Prop :=
  row.entityId.Valid ∧ row.numerators.length = dimension

end FactorRow

/-- A learned factor is advisory and is identified independently of the
intrinsic kernel profile. Its exact Gram contribution is obtained from the
integer rows and the shared dyadic denominator. -/
structure Factor where
  profileId : KernelProfileId
  intrinsicProfileId : KernelProfileId
  snapshotDigest : Digest
  dimension : Nat
  denominatorBits : Nat
  rows : List FactorRow
  factorDigest : Digest
  advisoryOnly : Bool := true
  deriving DecidableEq

namespace Factor

def Valid (factor : Factor) : Prop :=
  factor.profileId.Valid ∧
  factor.intrinsicProfileId.Valid ∧
  factor.snapshotDigest.Valid ∧
  factor.dimension > 0 ∧
  factor.denominatorBits > 0 ∧
  factor.rows ≠ [] ∧
  (factor.rows.map (·.entityId)).Nodup ∧
  (∀ row ∈ factor.rows, row.ValidFor factor.dimension) ∧
  factor.factorDigest.Valid ∧
  factor.advisoryOnly = true

end Factor


end MathDiscovery.Embedding
```
