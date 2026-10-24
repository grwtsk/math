# le_card_edgeFinset_between_verts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e39e32cb-05c1-d868-c54c-2556c3c31c3c",
  "kind": "lemma",
  "lexical_name": "le_card_edgeFinset_between_verts",
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
  "slug": "le-card-edgefinset-between-verts--189f23fa100d03757419bb68",
  "source": {
    "blob": "d4efa3a7530675c9f7dfa48abd4c17d4d45e8950",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 61,
    "path": "GRWTSK/Topology/GeneralTopology/ErdosStoneSimonovits/Variantd8c7c3a86bd0a01f7fd2d1a1ace3c42c099f1dfd119507a914245483ceab5c0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:189f23fa100d03757419bb6884a46a2ecd52e52e3ab5fe56f19eb70621152a97",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ErdosStoneSimonovits/Variantd8c7c3a86bd0a01f7fd2d1a1ace3c42c099f1dfd119507a914245483ceab5c0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e39e32cb-05c1-d868-c54c-2556c3c31c3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma le_card_edgeFinset_between_verts :
    (#K.verts * (G.minDegree - #K.verts) : ℝ) ≤ #(G.between K.verts K.vertsᶜ).edgeFinset := by
  rw [← isBipartiteWith_sum_degrees_eq_card_edges (between_verts_isBipartiteWith K),
    ← nsmul_eq_mul, ← sum_const, Nat.cast_sum]
  exact sum_le_sum (fun v hv ↦ sub_le_iff_le_add.mpr <|
    mod_cast (G.minDegree_le_degree v).trans (degree_le_between_add hv))

set_option backward.isDefEq.respectTransparency.types false in
/-- For `v ∈ K.vertsᶜ \ ErdosStone.filter`, since `v` is adjacent to fewer than `t`
vertices in at least one part of the complete equipartite subgraph, it follows that `v` is
adjacent to fewer than `#K.verts - (t' - t)` vertices in `K.verts`.

This is an auxiliary lemma for the Erdős-Stone theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ErdosStoneSimonovits/Variantd8c7c3a86bd0a01f7fd2d1a1ace3c42c099f1dfd119507a914245483ceab5c0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ErdosStoneSimonovits/Variantd8c7c3a86bd0a01f7fd2d1a1ace3c42c099f1dfd119507a914245483ceab5c0f.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4efa3a7530675c9f7dfa48abd4c17d4d45e8950` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
