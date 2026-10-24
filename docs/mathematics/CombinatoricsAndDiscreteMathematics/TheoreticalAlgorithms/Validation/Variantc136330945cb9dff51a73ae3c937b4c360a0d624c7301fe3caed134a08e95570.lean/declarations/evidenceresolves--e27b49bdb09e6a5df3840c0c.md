# EvidenceResolves

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fa909dcf913bf2e2343a75e4fd359148c8d62af313b74786cdd1f14a9d62f019",
  "kind": "def",
  "lexical_name": "EvidenceResolves",
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
  "slug": "evidenceresolves--e27b49bdb09e6a5df3840c0c",
  "source": {
    "blob": "2652f2af3ba59ed718e6781e35c0f0309e552635",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 43,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Validation/Variantc136330945cb9dff51a73ae3c937b4c360a0d624c7301fe3caed134a08e95570.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e27b49bdb09e6a5df3840c0cc65dc99126f9e4548926c413f6424589755b32f7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Validation/Variantc136330945cb9dff51a73ae3c937b4c360a0d624c7301fe3caed134a08e95570.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fa909dcf913bf2e2343a75e4fd359148c8d62af313b74786cdd1f14a9d62f019`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def EvidenceResolves (registry : Registry) : Prop :=
  ∀ taxon ∈ registry.taxa,
    ∃ evidence ∈ registry.evidence,
      evidence.id = taxon.evidenceId ∧
      evidence.conceptId = taxon.conceptId ∧
      evidence.primaryRole.role = taxon.primaryRole ∧
      evidence.primaryRole.witnesses.Nonempty ∧
      registry.WitnessesResolveAs evidence.primaryRole.witnesses .roleReview ∧
      evidence.principalDomain.domain = taxon.principalDomain ∧
      evidence.principalDomain.criteria.Nonempty ∧
      evidence.principalDomain.witnesses.Nonempty ∧
      registry.WitnessesResolveAs evidence.principalDomain.witnesses .domainReview ∧
      evidence.status.status = taxon.status ∧
      evidence.status.witnesses.Nonempty ∧
      registry.WitnessesResolveAs evidence.status.witnesses .statusReview ∧
      evidence.id.Valid ∧
      evidence.reviewer.Valid ∧
      evidence.digest.Valid ∧
      evidence.sourceHistorySubordinate = true ∧
      (∀ role ∈ taxon.secondaryRoles,
        ∃ item ∈ evidence.secondaryRoles,
          item.role = role ∧ item.witnesses.Nonempty ∧
            registry.WitnessesResolveAs item.witnesses .roleReview) ∧
      (∀ path ∈ taxon.secondaryDomains,
        ∃ item ∈ evidence.secondaryDomains,
          item.domain = path ∧ item.criteria.Nonempty ∧ item.witnesses.Nonempty ∧
            registry.WitnessesResolveAs item.witnesses .domainReview) ∧
      (∀ facetId ∈ taxon.facets,
        ∃ item ∈ evidence.facets,
          item.facetId = facetId ∧ item.witnesses.Nonempty ∧
            registry.WitnessesResolveAs item.witnesses .facetReview)

/-- Typed relation endpoints resolve in the semantic concept ledger. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Validation/Variantc136330945cb9dff51a73ae3c937b4c360a0d624c7301fe3caed134a08e95570.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Validation/Variantc136330945cb9dff51a73ae3c937b4c360a0d624c7301fe3caed134a08e95570.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2652f2af3ba59ed718e6781e35c0f0309e552635` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
