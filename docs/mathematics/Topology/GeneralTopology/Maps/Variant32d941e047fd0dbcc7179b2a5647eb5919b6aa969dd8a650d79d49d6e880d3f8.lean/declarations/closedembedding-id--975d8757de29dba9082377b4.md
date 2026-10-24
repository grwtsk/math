# closedEmbedding_id

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d20e0e75335b8d80b4c7a09094162a61ab6aa544",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 717,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/32d941e047fd0dbcc7179b2a5647eb5919b6aa969dd8a650d79d49d6e880d3f8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:61ca3a7f-deed-7ad3-cba8-b9d6f8eda460",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c637083e-ffc1-0340-9c53-c778eef7c8a5",
  "kind": "theorem",
  "lexical_name": "closedEmbedding_id",
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
  "slug": "closedembedding-id--975d8757de29dba9082377b4",
  "source": {
    "blob": "d20e0e75335b8d80b4c7a09094162a61ab6aa544",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 720,
    "line": 717,
    "path": "GRWTSK/Topology/GeneralTopology/Maps/Variant32d941e047fd0dbcc7179b2a5647eb5919b6aa969dd8a650d79d49d6e880d3f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:975d8757de29dba9082377b4c8110d1ea2bd6b78c680fb2da8a10aef24bff407",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Maps/Variant32d941e047fd0dbcc7179b2a5647eb5919b6aa969dd8a650d79d49d6e880d3f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c637083e-ffc1-0340-9c53-c778eef7c8a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 717–720.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closedEmbedding_id : ClosedEmbedding (@id α) :=
  ⟨embedding_id, IsClosedMap.id.closed_range⟩
#align closed_embedding_id closedEmbedding_id

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Maps/Variant32d941e047fd0dbcc7179b2a5647eb5919b6aa969dd8a650d79d49d6e880d3f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Maps/Variant32d941e047fd0dbcc7179b2a5647eb5919b6aa969dd8a650d79d49d6e880d3f8.lean#L717).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d20e0e75335b8d80b4c7a09094162a61ab6aa544` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
