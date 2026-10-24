# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b40a48ff8ad92f8d6bf75293550eb8d16a28957ef5f05b1d679d57593573113f",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--8fe0a70e66d403e370e7dd3b",
  "source": {
    "blob": "02ff56e1bbd12b4113503553480f6178b41fae92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 753,
    "line": 750,
    "path": "GRWTSK/Topology/GeneralTopology/Closeds/Variant4f1514ae9343264ab854273121a323cbb0f0d2241c0f398d7c4317e2adeb27aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8fe0a70e66d403e370e7dd3b8b75609b4a55969d9ea4cbdbbceeb32df460ddbc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Closeds/Variant4f1514ae9343264ab854273121a323cbb0f0d2241c0f398d7c4317e2adeb27aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b40a48ff8ad92f8d6bf75293550eb8d16a28957ef5f05b1d679d57593573113f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 750–753.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [CompleteSpace α] : CompleteSpace (NonemptyCompacts α) :=
  isUniformEmbedding_toCompacts.completeSpace isClosedEmbedding_toCompacts.isClosed_range.isComplete

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Closeds/Variant4f1514ae9343264ab854273121a323cbb0f0d2241c0f398d7c4317e2adeb27aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Closeds/Variant4f1514ae9343264ab854273121a323cbb0f0d2241c0f398d7c4317e2adeb27aa.lean#L750).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02ff56e1bbd12b4113503553480f6178b41fae92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
