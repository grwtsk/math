# tendsto_iff_norm_div_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "12b3d01f92ad1e110ce222fe1c8031eb3331ef8f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 307,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b3/b398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c6454c49-55c9-940e-d5dd-659c1c507838",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:74a71368-0de4-90b2-2751-81fe0543076e",
  "kind": "theorem",
  "lexical_name": "tendsto_iff_norm_div_tendsto_zero",
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
  "slug": "tendsto-iff-norm-div-tendsto-zero--5e08922b8453f388251fa631",
  "source": {
    "blob": "12b3d01f92ad1e110ce222fe1c8031eb3331ef8f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 311,
    "line": 307,
    "path": "GRWTSK/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e08922b8453f388251fa6315f00374beb222c7dadb9e2a777a281aec207dfd5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:74a71368-0de4-90b2-2751-81fe0543076e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 307–311.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_iff_norm_div_tendsto_zero {f : α → E} {a : Filter α} {b : E} :
    Tendsto f a (𝓝 b) ↔ Tendsto (fun e => ‖f e / b‖) a (𝓝 0) := by
  simp only [← dist_eq_norm_div, ← tendsto_iff_dist_tendsto_zero]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean#L307).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12b3d01f92ad1e110ce222fe1c8031eb3331ef8f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
