# SemanticCutFrame

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:67df0cf073ae8ca08ecac30142411ae7ac5cae083c8eabcae0eb06cfa58a2c53",
  "kind": "structure",
  "lexical_name": "SemanticCutFrame",
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
  "slug": "semanticcutframe--cfd7035c54a2f92abd1ff6ec",
  "source": {
    "blob": "de2153b5805c808ac051443a9b7fcd3a381b2688",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 61,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EvidenceCut/Variantb7689e88e9f8b2e8988ddf669cbec8523ceb11ac38bccfd4143b0f858f594402.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cfd7035c54a2f92abd1ff6ec527f9e96da511633b02e63d8d3fde9d1fc4eaaa4",
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

Occurrence: `declaration:67df0cf073ae8ca08ecac30142411ae7ac5cae083c8eabcae0eb06cfa58a2c53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SemanticCutFrame
    (text : TextCarrier) where
  cutId : StableId
  cut_id_valid : cutId.Valid
  snapshot : SnapshotId
  evidencePolicy : EvidencePolicy
  policy_id_valid : evidencePolicy.policyId.Valid
  generatedObligations :
    GeneratedSemanticObligations text
  generated_snapshot_exact :
    generatedObligations.snapshot = snapshot
  unresolved : List SemanticTokenUnknownKind
  generated_sources_exact :
    generatedObligations.sourceUnknowns = unresolved

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EvidenceCut/Variantb7689e88e9f8b2e8988ddf669cbec8523ceb11ac38bccfd4143b0f858f594402.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EvidenceCut/Variantb7689e88e9f8b2e8988ddf669cbec8523ceb11ac38bccfd4143b0f858f594402.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de2153b5805c808ac051443a9b7fcd3a381b2688` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
