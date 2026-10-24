# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.Relation.Variant472639fe5b7f2c078de676e6e784eee88a07894c612cdd6d9fa7a70390cb1680

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fa0c1febd8739e339d7b2b509aa75498b86f97ef` · SHA-256 `94d4a72dd111651f5f83b17ed3ba964ef4c0242b7ae3e3739da2038b236ce4be`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.RelationFamily.Variant443e69bd0ef8470c103b2a1b2e21f3f98c58685dc6cd98f1fa308782b5193a7f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"443e69bd0ef8470c103b2a1b2e21f3f98c58685dc6cd98f1fa308782b5193a7f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Probability.MomentsAndRandomVariables.SourceCorpus.RelationFamily.Variant443e69bd0ef8470c103b2a1b2e21f3f98c58685dc6cd98f1fa308782b5193a7f","mathematical_subject":"Probability.MomentsAndRandomVariables","original_sha256":"443e69bd0ef8470c103b2a1b2e21f3f98c58685dc6cd98f1fa308782b5193a7f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Concept/Relation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Concept.Boundary

/-!
# Typed concept relations

Identity, logical, constructive, representational, dynamic, and rhetorical
relations are separate constructors.  In particular, similarity is never a
constructor for semantic sameness or theorem implication.
-/


namespace GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.RelationFamily.Variant443e69bd0ef8470c103b2a1b2e21f3f98c58685dc6cd98f1fa308782b5193a7f

namespace Mathematics.Concept

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

end Mathematics.Concept
```
