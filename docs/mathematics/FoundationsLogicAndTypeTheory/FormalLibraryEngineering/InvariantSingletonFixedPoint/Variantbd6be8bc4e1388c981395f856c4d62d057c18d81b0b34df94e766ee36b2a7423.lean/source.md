# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InvariantSingletonFixedPoint.Variantbd6be8bc4e1388c981395f856c4d62d057c18d81b0b34df94e766ee36b2a7423

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0c615b7405fb9609bc73480bbe28cd5b9b03abc9` · SHA-256 `bd6be8bc4e1388c981395f856c4d62d057c18d81b0b34df94e766ee36b2a7423`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Operational.FixedPointAuthority
import Mathematics.Operational.Singleton

/-!
# Invariant-singleton fixed-point adapter

The existing invariant-singleton theorem supplies an exact fixed point for
one explicit time operator.  The adapter intentionally supplies no metric
stability, attraction, basin, or persistence certificate.
-/

namespace Mathematics.Operational

universe u v

variable {State : Type u}

/-- One time slice of a flow as a versioned full-domain operator. -/
def flowTimeOperator
    {Time : Type v}
    (flow : Time → State → State)
    (time : Time)
    (operatorId : StableId)
    (snapshot : Projection.ProjectionSnapshot)
    (operatorDigest : Digest) :
    VersionedOperator State :=
  VersionedOperator.onUniverse
    operatorId snapshot (flow time) operatorDigest

/-- A certified invariant singleton gives exact operator-relative fixedness. -/
def CertifiedInvariantSingleton.toCertifiedFixedPoint
    {Time : Type v}
    {intrinsic : Setoid State}
    {action : Automorphism → State → State}
    {flow : Time → State → State}
    {beacon : State}
    (certificate :
      CertifiedInvariantSingleton intrinsic action flow beacon)
    (time : Time)
    (operatorId : StableId)
    (snapshot : Projection.ProjectionSnapshot)
    (operatorDigest : Digest) :
    CertifiedFixedPoint
      (flowTimeOperator flow time operatorId snapshot operatorDigest) where
  point := ⟨beacon, Set.mem_univ beacon⟩
  fixed := by
    apply Subtype.ext
    exact certificate.flow_fixed time

end Mathematics.Operational
```
