# OpenEmbedding.continuous

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
      "line": 606,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/32d941e047fd0dbcc7179b2a5647eb5919b6aa969dd8a650d79d49d6e880d3f8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:305f7440-6529-1fe1-dd04-4d2572860cbd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d1828c8e-ff5c-5ab3-0c25-8a784b771b3d",
  "kind": "theorem",
  "lexical_name": "OpenEmbedding.continuous",
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
  "slug": "openembedding-continuous--538c423817796979b11216b2",
  "source": {
    "blob": "d20e0e75335b8d80b4c7a09094162a61ab6aa544",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 609,
    "line": 606,
    "path": "GRWTSK/Topology/GeneralTopology/Maps/Variant32d941e047fd0dbcc7179b2a5647eb5919b6aa969dd8a650d79d49d6e880d3f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:538c423817796979b11216b2630d2fa94ff74d5a5bf8e044c1c4972a43da8169",
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

Occurrence: `result:d1828c8e-ff5c-5ab3-0c25-8a784b771b3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 606–609.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem OpenEmbedding.continuous {f : α → β} (hf : OpenEmbedding f) : Continuous f :=
  hf.toEmbedding.continuous
#align open_embedding.continuous OpenEmbedding.continuous

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Maps/Variant32d941e047fd0dbcc7179b2a5647eb5919b6aa969dd8a650d79d49d6e880d3f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Maps/Variant32d941e047fd0dbcc7179b2a5647eb5919b6aa969dd8a650d79d49d6e880d3f8.lean#L606).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d20e0e75335b8d80b4c7a09094162a61ab6aa544` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
