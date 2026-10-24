# AcceptedExternalAssertion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8e1690e4dabe1ec73e22d3fa90bb68b79ef1e001148da21862268664d76e17fc",
  "kind": "structure",
  "lexical_name": "AcceptedExternalAssertion",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "acceptedexternalassertion--3bb6029d1fdc2263d26f731c",
  "source": {
    "blob": "de2153b5805c808ac051443a9b7fcd3a381b2688",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 99,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EvidenceCut/Variantb7689e88e9f8b2e8988ddf669cbec8523ceb11ac38bccfd4143b0f858f594402.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3bb6029d1fdc2263d26f731c11733627ab5411eea216e4e8507048e0e50a24ce",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EvidenceCut/Variantb7689e88e9f8b2e8988ddf669cbec8523ceb11ac38bccfd4143b0f858f594402.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8e1690e4dabe1ec73e22d3fa90bb68b79ef1e001148da21862268664d76e17fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure AcceptedExternalAssertion
    {text : TextCarrier}
    (frame : SemanticCutFrame text) where
  packed : SomeExternalAssertion text
  acceptedCutId : StableId
  accepted_cut_exact :
    acceptedCutId = frame.cutId
  acceptanceReceiptId : StableId
  acceptance_receipt_id_valid :
    acceptanceReceiptId.Valid
  assertion_snapshot_exact :
    packed.assertion.snapshot = frame.snapshot
  assertion_authority_in_policy :
    packed.assertion.authority ∈
      frame.evidencePolicy.authorityPrecedence
  assertion_authority_eligible :
    SemanticCompletionAuthorityEligible
      packed.assertion.authority
  evidence_authority_in_policy :
    ∀ evidence ∈ packed.assertion.evidence.refs,
      evidence.authority ∈
        frame.evidencePolicy.authorityPrecedence
  evidence_authority_eligible :
    ∀ evidence ∈ packed.assertion.evidence.refs,
      SemanticCompletionAuthorityEligible
        evidence.authority
  evidence_source_authority_compatible :
    ∀ evidence ∈ packed.assertion.evidence.refs,
      evidence.sourceAuthorityCompatible
  evidence_scope_in_policy :
    ∀ evidence ∈ packed.assertion.evidence.refs,
      evidence.scope ∈
        frame.evidencePolicy.scopePrecedence
  provenance_supports_evidence :
    ∀ evidence ∈ packed.assertion.evidence.refs,
      ∃ path ∈ packed.assertion.provenance,
        path.assertionId =
            packed.assertion.metadata.assertionId ∧
          path.SupportsEvidence evidence
  policy_keeps_model_outputs_proposal_only :
    frame.evidencePolicy.modelOutputsProposalOnly = true

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EvidenceCut/Variantb7689e88e9f8b2e8988ddf669cbec8523ceb11ac38bccfd4143b0f858f594402.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EvidenceCut/Variantb7689e88e9f8b2e8988ddf669cbec8523ceb11ac38bccfd4143b0f858f594402.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de2153b5805c808ac051443a9b7fcd3a381b2688` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
