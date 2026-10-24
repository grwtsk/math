# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Cell.Variant1c21aa4e82db950d2e75767d642d0be62952bb2e60bfc3d1d571fe82137b7c7d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bf58ca2dc61c08bb0c58d03f806960596de27a6a` · SHA-256 `1c21aa4e82db950d2e75767d642d0be62952bb2e60bfc3d1d571fe82137b7c7d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import MathDiscovery.Concept.Assignment
import MathDiscovery.Taxonomy.Core
import Mathlib.Tactic.DeriveFintype

/-!
# Generalized concept cells

A concept cell is an obligation cube surrounding an immutable semantic concept.
The concept is not one of the bits.  A theorem cell specializes this structure
by carrying an actual proof term and closed evidence.
-/

namespace MathDiscovery.Concept

/-- Axes required for every admitted semantic concept. -/
inductive CoreAxis
  | identity
  | definition
  | boundary
  | kind
  | taxonomy
  | authority
  | provenance
  | incidence
  | representation
  | lifecycle
  deriving DecidableEq, Inhabited, Fintype

/-- Transport data for one concept-cell axis. Its indices bind it to the
concept and axis it is intended to discharge. -/
structure AxisEvidenceData
    (conceptId : ConceptId) (Axis : Type) (axis : Axis) where
  evidenceId : EvidenceId
  sourceDigest : Digest

/-- Fixed validity predicate for concept-cell evidence. -/
def AxisValid
    (concept : Record) (Axis : Type) (axis : Axis)
    (data : AxisEvidenceData concept.id Axis axis) : Prop :=
  data.evidenceId.Valid ∧ data.sourceDigest.Valid

/-- Proof-relevant evidence record for one concept-cell axis. -/
structure AxisEvidence
    (concept : Record) (Axis : Type) (axis : Axis) where
  data : AxisEvidenceData concept.id Axis axis
  valid : AxisValid concept Axis axis data

/-- Finite evidence cube attached to one immutable concept identity. -/
structure Cell (concept : Record) where
  Axis : Type
  instFintypeAxis : Fintype Axis
  instDecidableEqAxis : DecidableEq Axis

  /-- Embedding of the mandatory core axes into the concept-specific axis type. -/
  coreAxis : CoreAxis → Axis
  coreAxis_injective : Function.Injective coreAxis

  required : Finset Axis
  bits : Axis → Bool
  certificate : (axis : Axis) → AxisEvidence concept Axis axis

  definitionDigest : Digest
  boundaryDigest : Digest
  incidenceDigest : Digest
  authorityDigest : Digest
  provenanceDigest : Digest

  definitionDigest_eq : definitionDigest = concept.definitionDigest
  boundaryDigest_eq : boundaryDigest = concept.boundaryDigest
  incidenceDigest_eq : incidenceDigest = concept.incidenceDigest
  authorityDigest_eq : authorityDigest = concept.authorityDigest
  provenanceDigest_eq : provenanceDigest = concept.provenanceDigest

  core_required : ∀ axis, coreAxis axis ∈ required

attribute [instance] Cell.instFintypeAxis Cell.instDecidableEqAxis

namespace Cell

/-- Every required obligation has been discharged. -/
def Closed {concept : Record} (cell : Cell concept) : Prop :=
  ∀ axis ∈ cell.required, cell.bits axis = true

/-- Every core axis is required. -/
theorem coreAxis_mem_required
    {concept : Record} (cell : Cell concept) (axis : CoreAxis) :
    cell.coreAxis axis ∈ cell.required :=
  cell.core_required axis

/-- Closed cells discharge every mandatory core axis. -/
theorem coreAxis_discharged
    {concept : Record} (cell : Cell concept)
    (closed : cell.Closed) (axis : CoreAxis) :
    cell.bits (cell.coreAxis axis) = true :=
  closed _ (cell.coreAxis_mem_required axis)

/-- Every stored axis certificate proves the fixed validity predicate. -/
theorem evidence_valid
    {concept : Record} (cell : Cell concept) (axis : cell.Axis) :
    AxisValid concept cell.Axis axis (cell.certificate axis).data :=
  (cell.certificate axis).valid

/-- Face transitions may change evidence but not concept-defining digests. -/
structure FaceTransition {concept : Record}
    (source target : Cell concept) : Prop where
  definition_preserved : source.definitionDigest = target.definitionDigest
  boundary_preserved : source.boundaryDigest = target.boundaryDigest
  incidence_preserved : source.incidenceDigest = target.incidenceDigest
  authority_preserved : source.authorityDigest = target.authorityDigest
  provenance_preserved : source.provenanceDigest = target.provenanceDigest

end Cell

/-- Theorem concept cell: theorem statement and proof remain distinct from the
surrounding evidence bits. -/
structure TheoremCell
    (concept : Record) (taxon : Taxonomy.MathematicalTaxon) (statement : Prop)
    extends Cell concept where
  normalizedStatement : NormalizedSignature
  dependencyDigest : Digest
  sourceDigest : Digest
  taxon_concept : taxon.conceptId = concept.id
  legacy_kind_alignment : Taxonomy.KindRoleCompatible concept.kind taxon.primaryRole
  role_is_statement : taxon.primaryRole = .statement
  status_is_proved : taxon.status.IsProved
  authority_agrees : taxon.authority = concept.authority
  proof : statement
  closed : Cell.Closed toCell

end MathDiscovery.Concept
```
