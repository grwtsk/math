# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Agreement.Variantfd7f847705f820bbd26b6c1baacf1f1cd40719fc04bde5b7039451e3f243b3ee

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ce239b2414eb8fc8feadba54c7765b05b985313e` · SHA-256 `2aa29a8f228b5f8ed3f82b5ea41c69cdb763ba1e1326ec7cbe5816e4ffcfda97`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AgreementDimension.Variant08b94b3e5fe4a652d75812a151143380d372e4e891e9e0cd48692e0a6b007586","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"08b94b3e5fe4a652d75812a151143380d372e4e891e9e0cd48692e0a6b007586","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.AgreementDimension.Variant08b94b3e5fe4a652d75812a151143380d372e4e891e9e0cd48692e0a6b007586","mathematical_subject":"Computation.DataStructures","original_sha256":"08b94b3e5fe4a652d75812a151143380d372e4e891e9e0cd48692e0a6b007586","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Oracle/Agreement.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Oracle.Jurisdiction
import Mathematics.Projection.PolyHierarchy

/-!
# Dimensioned oracle agreement

Agreement is recorded by dimension.  Consensus is a proposal-level
observation and cannot construct an intrinsic or kernel-certified fact.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AgreementDimension.Variant08b94b3e5fe4a652d75812a151143380d372e4e891e9e0cd48692e0a6b007586

namespace Mathematics.Oracle

inductive AgreementDimension
  | identity
  | type_
  | meaning
  | denotation
  | boundary
  | relation
  | relationKind
  | dependency
  | representation
  | authority
  | proofRoute
  | transportability
  | residue
  | prohibition
  | audience
  deriving DecidableEq, Repr, Inhabited

inductive AgreementStatus
  | exact
  | compatible
  | disagrees
  | unresolved
  deriving DecidableEq, Repr, Inhabited

structure AgreementFinding where
  findingId : StableId
  dimension : AgreementDimension
  status : AgreementStatus
  oracleIds : List OracleId
  subjectPointIds : List ElementId
  evidenceIds : List EvidenceId
  findingDigest : Digest
  deriving DecidableEq, Repr

structure AgreementLedger where
  pointUniverseId : StableId
  findings : List AgreementFinding
  dimensionsCovered :
    ∀ dimension,
      ∃ finding ∈ findings,
        finding.dimension = dimension
  ledgerDigest : Digest

/-- Even complete exact agreement remains proposal authority. -/
def AgreementLedger.authority
    (_ledger : AgreementLedger) :
    Projection.ProposalAuthority :=
  .modelOracleAgreement

@[simp] theorem agreement_is_not_fact_authority
    (ledger : AgreementLedger) :
    ¬ ∃ authority : Projection.FactAuthority,
      Sum.inl ledger.authority =
        (Sum.inr authority :
          Projection.ProposalAuthority ⊕ Projection.FactAuthority) :=
  Projection.proposal_is_not_fact_authority ledger.authority

end Mathematics.Oracle
```
