# circumcenter_eq_centroid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2d032e43-d8af-bc7b-809a-802167e4cbef",
  "kind": "theorem",
  "lexical_name": "circumcenter_eq_centroid",
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
  "slug": "circumcenter-eq-centroid--16de14f973add03d624022ab",
  "source": {
    "blob": "a90181c1c9463a6040d112e20d5d79aff5530ae3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 307,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Circumcenter/Variant76b251d29eccd6c4a983f7da5549bf9c4df0b534d2d50ac859b7b10db17880b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16de14f973add03d624022ab27c6a3d03ad133295c910fd5a655d25b21a15cac",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Circumcenter/Variant76b251d29eccd6c4a983f7da5549bf9c4df0b534d2d50ac859b7b10db17880b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d032e43-d8af-bc7b-809a-802167e4cbef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 307–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem circumcenter_eq_centroid (s : Simplex ℝ P 1) :
    s.circumcenter = Finset.univ.centroid ℝ s.points := by
  have hr :
    Set.Pairwise Set.univ fun i j : Fin 2 =>
      dist (s.points i) (Finset.univ.centroid ℝ s.points) =
        dist (s.points j) (Finset.univ.centroid ℝ s.points) := by
    intro i hi j hj hij
    rw [Finset.centroid_pair_fin, dist_eq_norm_vsub V (s.points i),
      dist_eq_norm_vsub V (s.points j), vsub_vadd_eq_vsub_sub, vsub_vadd_eq_vsub_sub, ←
      one_smul ℝ (s.points i -ᵥ s.points 0), ← one_smul ℝ (s.points j -ᵥ s.points 0)]
    fin_cases i <;> fin_cases j <;> simp [-one_smul, ← sub_smul] <;> norm_num
  rw [Set.pairwise_eq_iff_exists_eq] at hr
  obtain ⟨r, hr⟩ := hr
  exact
    (s.eq_circumcenter_of_dist_eq
        (centroid_mem_affineSpan_of_card_eq_add_one ℝ _ (Finset.card_fin 2)) fun i =>
        hr i (Set.mem_univ _)).symm

/-- Reindexing a simplex along an `Equiv` of index types does not change the circumsphere. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Circumcenter/Variant76b251d29eccd6c4a983f7da5549bf9c4df0b534d2d50ac859b7b10db17880b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Circumcenter/Variant76b251d29eccd6c4a983f7da5549bf9c4df0b534d2d50ac859b7b10db17880b4.lean#L307).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a90181c1c9463a6040d112e20d5d79aff5530ae3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
