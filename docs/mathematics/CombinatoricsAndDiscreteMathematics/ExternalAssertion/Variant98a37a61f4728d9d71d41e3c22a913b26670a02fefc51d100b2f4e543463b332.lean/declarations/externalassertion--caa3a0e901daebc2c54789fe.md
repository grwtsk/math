# ExternalAssertion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:09228e82b642da278d3029cc3419f53d99b661296866a79828fbe79d16551afc",
  "kind": "structure",
  "lexical_name": "ExternalAssertion",
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
  "slug": "externalassertion--caa3a0e901daebc2c54789fe",
  "source": {
    "blob": "641720457d061d4cda62fdc9e9c1403911e06ea8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 24,
    "line": 10,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ExternalAssertion/Variant98a37a61f4728d9d71d41e3c22a913b26670a02fefc51d100b2f4e543463b332.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:caa3a0e901daebc2c54789fe58d734c508ac0ae01460f94f1075e63c9ffd17e4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ExternalAssertion/Variant98a37a61f4728d9d71d41e3c22a913b26670a02fefc51d100b2f4e543463b332.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:09228e82b642da278d3029cc3419f53d99b661296866a79828fbe79d16551afc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 10–24.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ExternalAssertion
    (text : TextCarrier)
    (metadataType : MetadataType) where
  id : AssertionId
  source : Finset (Span text)
  source_nonempty : source.Nonempty
  value : MetadataValue metadataType
  context : ContextId
  dependency : ContextDependency
  evidence : Finset EvidenceId
  evidence_nonempty : evidence.Nonempty
  authority : AuthorityClass
  intendedUse : AssertionUse
  snapshot : SnapshotId

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ExternalAssertion/Variant98a37a61f4728d9d71d41e3c22a913b26670a02fefc51d100b2f4e543463b332.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ExternalAssertion/Variant98a37a61f4728d9d71d41e3c22a913b26670a02fefc51d100b2f4e543463b332.lean#L10).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `641720457d061d4cda62fdc9e9c1403911e06ea8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
