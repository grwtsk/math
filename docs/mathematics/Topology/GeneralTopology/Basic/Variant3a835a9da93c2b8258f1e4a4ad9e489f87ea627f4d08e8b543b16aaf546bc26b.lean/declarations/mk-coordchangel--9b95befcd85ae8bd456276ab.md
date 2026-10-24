# mk_coordChangeL

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bdcce71ab4bd64bf7c87dfd0cffc8624d418e43c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 290,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3a/3a835a9da93c2b8258f1e4a4ad9e489f87ea627f4d08e8b543b16aaf546bc26b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c7e22b8f-4253-196f-e8f1-1efa8713044e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:03256521-51af-6cd1-7801-ef90ecda03c4",
  "kind": "theorem",
  "lexical_name": "mk_coordChangeL",
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
  "slug": "mk-coordchangel--9b95befcd85ae8bd456276ab",
  "source": {
    "blob": "bdcce71ab4bd64bf7c87dfd0cffc8624d418e43c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 298,
    "line": 290,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant3a835a9da93c2b8258f1e4a4ad9e489f87ea627f4d08e8b543b16aaf546bc26b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b95befcd85ae8bd456276ab6338d01150b25ded62c26a3e58437d637dcaa358",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant3a835a9da93c2b8258f1e4a4ad9e489f87ea627f4d08e8b543b16aaf546bc26b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03256521-51af-6cd1-7801-ef90ecda03c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 290–298.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mk_coordChangeL (e e' : Trivialization F (π F E)) [e.IsLinear R] [e'.IsLinear R] {b : B}
    (hb : b ∈ e.baseSet ∩ e'.baseSet) (y : F) :
    (b, coordChangeL R e e' b y) = e' ⟨b, e.symm b y⟩ := by
  ext
  · rw [e.mk_symm hb.1 y, e'.coe_fst', e.proj_symm_apply' hb.1]
    rw [e.proj_symm_apply' hb.1]
    exact hb.2
  · exact e.coordChangeL_apply e' hb y

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant3a835a9da93c2b8258f1e4a4ad9e489f87ea627f4d08e8b543b16aaf546bc26b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant3a835a9da93c2b8258f1e4a4ad9e489f87ea627f4d08e8b543b16aaf546bc26b.lean#L290).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdcce71ab4bd64bf7c87dfd0cffc8624d418e43c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
