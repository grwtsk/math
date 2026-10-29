-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.CoreAxis.Variant6bca679617ca12c74fe9d71e65966e2ce2288df50e922e11e5410f7ed634657e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6bca679617ca12c74fe9d71e65966e2ce2288df50e922e11e5410f7ed634657e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.CoreAxis.Variant6bca679617ca12c74fe9d71e65966e2ce2288df50e922e11e5410f7ed634657e","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"6bca679617ca12c74fe9d71e65966e2ce2288df50e922e11e5410f7ed634657e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Concept/Cell.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Concept.Assignment
import Mathematics.Taxonomy.Core
import Mathlib.Tactic.DeriveFintype

/-!
# Generalized concept cells

A concept cell is an obligation cube surrounding an immutable semantic concept.
The concept is not one of the bits.  A theorem cell specializes this structure
by carrying an actual proof term and closed evidence.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.CoreAxis.Variant6bca679617ca12c74fe9d71e65966e2ce2288df50e922e11e5410f7ed634657e

namespace Mathematics.Concept

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

end Mathematics.Concept
