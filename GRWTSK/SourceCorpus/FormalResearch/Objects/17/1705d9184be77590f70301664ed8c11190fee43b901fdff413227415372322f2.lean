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
