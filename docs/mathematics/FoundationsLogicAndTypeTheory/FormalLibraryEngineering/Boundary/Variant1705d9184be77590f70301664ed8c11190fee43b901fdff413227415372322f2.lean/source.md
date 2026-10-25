# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Boundary.Variant1705d9184be77590f70301664ed8c11190fee43b901fdff413227415372322f2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `547bf58439d71d5796c117cebb0e0edb7d105ed8` · SHA-256 `1705d9184be77590f70301664ed8c11190fee43b901fdff413227415372322f2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemanticTokenization.Overlap

/-! # Rule-relative boundary and stability certificates -/

namespace Mathematics.SemanticTokenization

inductive TieHandling
  | boundary
  | noBoundary
  | ambiguous
  deriving DecidableEq, Repr

inductive MissingFieldHandling
  | reject
  | unknown
  | ignoreDeclared
  deriving DecidableEq, Repr

structure BoundaryRule where
  ruleId : StableId
  threshold : Int
  tieHandling : TieHandling
  missingFieldHandling : MissingFieldHandling
  uncertaintyBound : Nat
  calibrationScope : StableId

inductive BoundaryDecision
  | boundary
  | noBoundary
  | ambiguous
  deriving DecidableEq, Repr

structure BoundaryCertificate (text : TextCarrier) where
  left : Span text
  right : Span text
  adjacent : left.stop ≤ right.start
  overlap : TypedOverlap text
  rule : BoundaryRule
  decision : BoundaryDecision
  snapshot : SnapshotId
  evidence : EvidenceBundle text

structure BoundaryStabilityCertificate
    (text : TextCarrier)
    (baseline perturbed : BoundaryCertificate text) where
  admittedVariationBound : Nat
  observedVariation : Nat
  variation_within :
    observedVariation ≤ admittedVariationBound
  decision_stable :
    baseline.decision = perturbed.decision

structure BoundaryFalsificationWitness (text : TextCarrier) where
  proposed : BoundaryCertificate text
  contradictoryEvidence : EvidenceBundle text
  contradictionId : StableId

theorem BoundaryStabilityCertificate.preserves_decision
    {text : TextCarrier}
    {baseline perturbed : BoundaryCertificate text}
    (certificate :
      BoundaryStabilityCertificate text baseline perturbed) :
    baseline.decision = perturbed.decision :=
  certificate.decision_stable

end Mathematics.SemanticTokenization
```
