# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.Relation.Variant87e0d727e16c738e64a07f1b4d79bf9d7b3ee367bd8ffd6eb4aa778980fc7ce4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4c5945c7a33a8a27bccdfef128a1c2a2dfc23c63` · SHA-256 `87e0d727e16c738e64a07f1b4d79bf9d7b3ee367bd8ffd6eb4aa778980fc7ce4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import MathDiscovery.Concept.Boundary

/-!
# Typed concept relations

Identity, logical, constructive, representational, dynamic, and rhetorical
relations are separate constructors.  In particular, similarity is never a
constructor for semantic sameness or theorem implication.
-/

namespace MathDiscovery.Concept

inductive RelationFamily
  | identity
  | taxonomic
  | logical
  | constructive
  | representational
  | structural
  | dynamic
  | rhetorical
  deriving DecidableEq, Inhabited

inductive EndpointSignature
  | concept
  | theorem
  | construction
  | representation
  | runtimeRealization
  deriving DecidableEq, Inhabited

inductive Variance
  | directed
  | symmetric
  | inversePaired
  deriving DecidableEq, Inhabited

inductive RelationKind
  -- identity and lifecycle
  | sameConcept
  | aliasOf
  | supersedes
  | deprecatedBy
  -- taxonomic
  | instanceOf
  | specializes
  | generalizes
  | substructureOf
  | memberOfFamily
  -- logical
  | assumes
  | implies
  | equivalentTo
  | contradicts
  | refutes
  | proves
  | discharges
  -- constructive
  | constructs
  | induces
  | restricts
  | extends
  | completes
  | quotients
  | dualizes
  | generatedUnder
  -- representational
  | formalizes
  | implements
  | represents
  | encodes
  | decodes
  | renders
  | approximates
  | reconstructs
  -- structural
  | contains
  | incidentTo
  | boundaryOf
  | fiberOf
  | sectionOf
  | projectionOf
  -- dynamic
  | transports
  | preserves
  | evolvesTo
  | foldsTo
  | surgeriesTo
  | refines
  -- rhetorical/navigation
  | similarTo
  | analogousTo
  | opposedTo
  | contrastsWith
  | explains
  | motivates
  deriving DecidableEq, Inhabited

/-- Governed relation metadata. Projection profiles store `RelationKindId`
rather than independently spelling relation names. -/
structure RelationKindSpec where
  id : RelationKindId
  family : RelationFamily
  sourceSignature : EndpointSignature
  targetSignature : EndpointSignature
  variance : Variance
  deriving DecidableEq

namespace RelationKind

def id : RelationKind → RelationKindId
  | .sameConcept => ⟨"relation-kind:sameConcept"⟩
  | .aliasOf => ⟨"relation-kind:aliasOf"⟩
  | .supersedes => ⟨"relation-kind:supersedes"⟩
  | .deprecatedBy => ⟨"relation-kind:deprecatedBy"⟩
  | .instanceOf => ⟨"relation-kind:instanceOf"⟩
  | .specializes => ⟨"relation-kind:specializes"⟩
  | .generalizes => ⟨"relation-kind:generalizes"⟩
  | .substructureOf => ⟨"relation-kind:substructureOf"⟩
  | .memberOfFamily => ⟨"relation-kind:memberOfFamily"⟩
  | .assumes => ⟨"relation-kind:assumes"⟩
  | .implies => ⟨"relation-kind:implies"⟩
  | .equivalentTo => ⟨"relation-kind:equivalentTo"⟩
  | .contradicts => ⟨"relation-kind:contradicts"⟩
  | .refutes => ⟨"relation-kind:refutes"⟩
  | .proves => ⟨"relation-kind:proves"⟩
  | .discharges => ⟨"relation-kind:discharges"⟩
  | .constructs => ⟨"relation-kind:constructs"⟩
  | .induces => ⟨"relation-kind:induces"⟩
  | .restricts => ⟨"relation-kind:restricts"⟩
  | .extends => ⟨"relation-kind:extends"⟩
  | .completes => ⟨"relation-kind:completes"⟩
  | .quotients => ⟨"relation-kind:quotients"⟩
  | .dualizes => ⟨"relation-kind:dualizes"⟩
  | .generatedUnder => ⟨"relation-kind:generatedUnder"⟩
  | .formalizes => ⟨"relation-kind:formalizes"⟩
  | .implements => ⟨"relation-kind:implements"⟩
  | .represents => ⟨"relation-kind:represents"⟩
  | .encodes => ⟨"relation-kind:encodes"⟩
  | .decodes => ⟨"relation-kind:decodes"⟩
  | .renders => ⟨"relation-kind:renders"⟩
  | .approximates => ⟨"relation-kind:approximates"⟩
  | .reconstructs => ⟨"relation-kind:reconstructs"⟩
  | .contains => ⟨"relation-kind:contains"⟩
  | .incidentTo => ⟨"relation-kind:incidentTo"⟩
  | .boundaryOf => ⟨"relation-kind:boundaryOf"⟩
  | .fiberOf => ⟨"relation-kind:fiberOf"⟩
  | .sectionOf => ⟨"relation-kind:sectionOf"⟩
  | .projectionOf => ⟨"relation-kind:projectionOf"⟩
  | .transports => ⟨"relation-kind:transports"⟩
  | .preserves => ⟨"relation-kind:preserves"⟩
  | .evolvesTo => ⟨"relation-kind:evolvesTo"⟩
  | .foldsTo => ⟨"relation-kind:foldsTo"⟩
  | .surgeriesTo => ⟨"relation-kind:surgeriesTo"⟩
  | .refines => ⟨"relation-kind:refines"⟩
  | .similarTo => ⟨"relation-kind:similarTo"⟩
  | .analogousTo => ⟨"relation-kind:analogousTo"⟩
  | .opposedTo => ⟨"relation-kind:opposedTo"⟩
  | .contrastsWith => ⟨"relation-kind:contrastsWith"⟩
  | .explains => ⟨"relation-kind:explains"⟩
  | .motivates => ⟨"relation-kind:motivates"⟩

def family : RelationKind → RelationFamily
  | .sameConcept | .aliasOf | .supersedes | .deprecatedBy => .identity
  | .instanceOf | .specializes | .generalizes | .substructureOf | .memberOfFamily => .taxonomic
  | .assumes | .implies | .equivalentTo | .contradicts | .refutes | .proves | .discharges => .logical
  | .constructs | .induces | .restricts | .extends | .completes | .quotients | .dualizes |
      .generatedUnder => .constructive
  | .formalizes | .implements | .represents | .encodes | .decodes | .renders | .approximates | .reconstructs => .representational
  | .contains | .incidentTo | .boundaryOf | .fiberOf | .sectionOf | .projectionOf => .structural
  | .transports | .preserves | .evolvesTo | .foldsTo | .surgeriesTo | .refines => .dynamic
  | .similarTo | .analogousTo | .opposedTo | .contrastsWith | .explains | .motivates => .rhetorical

def variance : RelationKind → Variance
  | .sameConcept | .equivalentTo | .contradicts | .incidentTo | .similarTo |
      .analogousTo | .opposedTo | .contrastsWith => .symmetric
  | .specializes | .generalizes | .encodes | .decodes => .inversePaired
  | _ => .directed

def spec (kind : RelationKind) : RelationKindSpec where
  id := kind.id
  family := kind.family
  sourceSignature := .concept
  targetSignature := .concept
  variance := kind.variance

end RelationKind

/-- Authority of a relation assertion, independent of endpoint authority. -/
inductive RelationAuthority
  | navigationOnly
  | imported
  | executable
  | conditional
  | kernelChecked
  deriving DecidableEq, Inhabited

/-- One typed, directed terrain edge. -/
structure RelationRecord where
  id : RelationId
  source : ConceptId
  target : ConceptId
  kind : RelationKind
  authority : RelationAuthority
  provenance : Finset StableId
  sourceDigest : Digest
  targetDigest : Digest
  deriving DecidableEq

/-- Evidence data observed for one concrete relation record. -/
structure RelationEvidence (relation : RelationRecord) where
  evidenceId : EvidenceId
  observedSourceDigest : Digest
  observedTargetDigest : Digest

/-- Fixed relation semantics checked by a relation certificate. Identity-like
relations require kernel authority and equal semantic endpoints; every
mathematical relation requires current endpoint digests and provenance. -/
def RelationHolds
    (relation : RelationRecord) (evidence : RelationEvidence relation) : Prop :=
  evidence.evidenceId.Valid ∧
  evidence.observedSourceDigest = relation.sourceDigest ∧
  evidence.observedTargetDigest = relation.targetDigest ∧
  relation.provenance.Nonempty ∧
  (relation.kind = .sameConcept →
    relation.source = relation.target ∧ relation.authority = .kernelChecked)

/-- Proof-relevant certificate for a concrete relation record. -/
structure RelationCertificate (relation : RelationRecord) where
  evidence : RelationEvidence relation
  certified : RelationHolds relation evidence

/-- Similarity is definitionally different from implication. -/
theorem similarTo_ne_implies :
    RelationKind.similarTo ≠ RelationKind.implies := by decide

/-- Rendering is definitionally different from implementation. -/
theorem renders_ne_implements :
    RelationKind.renders ≠ RelationKind.implements := by decide

/-- Approximation is not identity. -/
theorem approximates_ne_sameConcept :
    RelationKind.approximates ≠ RelationKind.sameConcept := by decide

end MathDiscovery.Concept
```
