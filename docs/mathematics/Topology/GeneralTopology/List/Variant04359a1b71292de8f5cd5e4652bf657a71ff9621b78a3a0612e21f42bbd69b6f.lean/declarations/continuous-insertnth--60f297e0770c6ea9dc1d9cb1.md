# continuous_insertNth

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1e734d9d3ec954e8fcb3d2e2b43775abeb5ce791",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 144,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/04/04359a1b71292de8f5cd5e4652bf657a71ff9621b78a3a0612e21f42bbd69b6f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cb45f44b-56b2-ce45-a839-933071509a2a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3fbaf4fa-a5ac-4bad-bf7d-7c685080fea7",
  "kind": "theorem",
  "lexical_name": "continuous_insertNth",
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
  "slug": "continuous-insertnth--60f297e0770c6ea9dc1d9cb1",
  "source": {
    "blob": "1e734d9d3ec954e8fcb3d2e2b43775abeb5ce791",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 144,
    "path": "GRWTSK/Topology/GeneralTopology/List/Variant04359a1b71292de8f5cd5e4652bf657a71ff9621b78a3a0612e21f42bbd69b6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60f297e0770c6ea9dc1d9cb1a4716c64f767b74c3aaeff4896ad8fc3b8b1a37e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/List/Variant04359a1b71292de8f5cd5e4652bf657a71ff9621b78a3a0612e21f42bbd69b6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3fbaf4fa-a5ac-4bad-bf7d-7c685080fea7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_insertNth {n : ℕ} : Continuous fun p : α × List α => insertNth n p.1 p.2 :=
  continuous_iff_continuousAt.mpr fun ⟨a, l⟩ => by
    rw [ContinuousAt, nhds_prod_eq]; exact tendsto_insertNth'
#align list.continuous_insert_nth List.continuous_insertNth

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/List/Variant04359a1b71292de8f5cd5e4652bf657a71ff9621b78a3a0612e21f42bbd69b6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/List/Variant04359a1b71292de8f5cd5e4652bf657a71ff9621b78a3a0612e21f42bbd69b6f.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e734d9d3ec954e8fcb3d2e2b43775abeb5ce791` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
