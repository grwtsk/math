# disjoint_path_image_Ioc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bbe3b0b7b766aa8eab8ed5552fe35d2be9688f76",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 265,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d6/d63cf63b6eea1b5fe73a314d61f18056d7b3fcaa419b298a28e6a8ebc614214a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:42a75d83-0b8a-cdbd-8a9e-378a8de02773",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4cf48e1b-e005-5752-6162-7dffca009683",
  "kind": "lemma",
  "lexical_name": "disjoint_path_image_Ioc",
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
  "slug": "disjoint-path-image-ioc--adf9f55f98ba666194eba7d2",
  "source": {
    "blob": "bbe3b0b7b766aa8eab8ed5552fe35d2be9688f76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 265,
    "path": "GRWTSK/Topology/GeneralTopology/Circle/Variantd63cf63b6eea1b5fe73a314d61f18056d7b3fcaa419b298a28e6a8ebc614214a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:adf9f55f98ba666194eba7d24f2a8c6f3b5051349e2ff49892787736f17e27d8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Circle/Variantd63cf63b6eea1b5fe73a314d61f18056d7b3fcaa419b298a28e6a8ebc614214a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4cf48e1b-e005-5752-6162-7dffca009683`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma disjoint_path_image_Ioc (h : x ≠ y) :
    Disjoint (path x y '' Ioc 0 1) (path y x '' Ioc 0 1) := by
  have hdisj : Disjoint (Ioc x.val.arg (angleDiff x y + x.val.arg))
      (Ioc y.val.arg (angleDiff y x + y.val.arg)) := by grind [angleDiff]
  rw [path_image_Ioc_of_ne h, path_image_Ioc_of_ne h.symm]
  refine Set.disjoint_image_image fun a ha b hb ↦ ?_
  refine exp_injOn_Ioc (a := min x.val.arg y.val.arg) (b := min x.val.arg y.val.arg + 2 * π)
    (by simp) |>.ne ?_ ?_ <| hdisj.ne_of_mem ha hb
  all_goals
    rw [← Ioc_union_Ioc_angleDiff_add_arg h]
    tauto

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Circle/Variantd63cf63b6eea1b5fe73a314d61f18056d7b3fcaa419b298a28e6a8ebc614214a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Circle/Variantd63cf63b6eea1b5fe73a314d61f18056d7b3fcaa419b298a28e6a8ebc614214a.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbe3b0b7b766aa8eab8ed5552fe35d2be9688f76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
