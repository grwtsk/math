# NonemptyCompacts.compactSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:883ccba7473a6645e23f6fd40d2263012a07d56081b30d4b6ab8ec73d859b737",
  "kind": "instance",
  "lexical_name": "NonemptyCompacts.compactSpace",
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
  "slug": "nonemptycompacts-compactspace--4f6a4694b9f30674db32e4c4",
  "source": {
    "blob": "7994cce4e7da61c05119b1266e0fd9ed6f629fcb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 325,
    "line": 318,
    "path": "GRWTSK/Topology/GeneralTopology/Closeds/Variant6b7d3d4f10a56271205b9e3b81eee244b91b59e0287cba00412db5934dae9ca7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4f6a4694b9f30674db32e4c442c076ecad4087ca6a8a19c6a24d6ca8cf57848c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Closeds/Variant6b7d3d4f10a56271205b9e3b81eee244b91b59e0287cba00412db5934dae9ca7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:883ccba7473a6645e23f6fd40d2263012a07d56081b30d4b6ab8ec73d859b737`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 318–325.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance NonemptyCompacts.compactSpace [CompactSpace α] : CompactSpace (NonemptyCompacts α) :=
  ⟨by
    rw [NonemptyCompacts.ToCloseds.uniformEmbedding.embedding.isCompact_iff_isCompact_image]
    rw [image_univ]
    exact NonemptyCompacts.isClosed_in_closeds.isCompact⟩
#align emetric.nonempty_compacts.compact_space EMetric.NonemptyCompacts.compactSpace

/-- In a second countable space, the type of nonempty compact subsets is second countable -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Closeds/Variant6b7d3d4f10a56271205b9e3b81eee244b91b59e0287cba00412db5934dae9ca7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Closeds/Variant6b7d3d4f10a56271205b9e3b81eee244b91b59e0287cba00412db5934dae9ca7.lean#L318).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7994cce4e7da61c05119b1266e0fd9ed6f629fcb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
