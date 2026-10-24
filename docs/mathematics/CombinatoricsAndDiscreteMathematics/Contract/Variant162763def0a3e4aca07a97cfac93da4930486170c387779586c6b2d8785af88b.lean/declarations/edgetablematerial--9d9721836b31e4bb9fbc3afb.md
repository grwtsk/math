# edgeTableMaterial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4b3b4fe6288946fbfa4118e38694a20c1ab7bf2082352871dc1c9a223fb5cc31",
  "kind": "def",
  "lexical_name": "edgeTableMaterial",
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
  "slug": "edgetablematerial--9d9721836b31e4bb9fbc3afb",
  "source": {
    "blob": "5117dbdaf270c56e520714e54b1bc68dffd54545",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 57,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Contract/Variant162763def0a3e4aca07a97cfac93da4930486170c387779586c6b2d8785af88b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9d9721836b31e4bb9fbc3afbf3b45b668ade30b546d1a06c7c302996c9ca8328",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Contract/Variant162763def0a3e4aca07a97cfac93da4930486170c387779586c6b2d8785af88b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4b3b4fe6288946fbfa4118e38694a20c1ab7bf2082352871dc1c9a223fb5cc31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[expose] def edgeTableMaterial
    (contract : TransportContract Host EdgeId) : CanonicalBytes :=
  contract.routing.sortedCanonicalEdges.flatMap (fun edge ↦
    encodeU32LE (contract.routing.edgeCode.code edge.edgeId) ++
    encodeU32LE (contract.routing.hostCode.code edge.source) ++
    encodeU32LE (contract.routing.hostCode.code edge.target) ++
    encodeI32LE edge.tension ++
    encodeU32LE edge.tieBreak)

/-- Version-one canonical material. It contains no source bytes, revisions,
paths, timestamps, DOM identifiers, or process-local metadata. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Contract/Variant162763def0a3e4aca07a97cfac93da4930486170c387779586c6b2d8785af88b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Contract/Variant162763def0a3e4aca07a97cfac93da4930486170c387779586c6b2d8785af88b.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5117dbdaf270c56e520714e54b1bc68dffd54545` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
