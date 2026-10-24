# dist_convexCombPair_convexCombPair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b22f646d1821791679b7ea52cad2aff5e09b7af5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 129,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4f/4ff82e257969f74a654b74b0d592ff3f48f07bf9c2a3b21a5075a6a6485b8d1d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c7730e95-f3e2-1636-a85f-4f004acbc1c8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ec131741-f664-2a6c-b4d8-50d426dea1aa",
  "kind": "lemma",
  "lexical_name": "dist_convexCombPair_convexCombPair",
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
  "slug": "dist-convexcombpair-convexcombpair--4c853c6cf3a691ffa535e055",
  "source": {
    "blob": "b22f646d1821791679b7ea52cad2aff5e09b7af5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 129,
    "path": "GRWTSK/Topology/MetricTopology/MetricSpace/Variant4ff82e257969f74a654b74b0d592ff3f48f07bf9c2a3b21a5075a6a6485b8d1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c853c6cf3a691ffa535e0555f00ab50d7de20caf50c274b2112193f6208ab23",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/MetricSpace/Variant4ff82e257969f74a654b74b0d592ff3f48f07bf9c2a3b21a5075a6a6485b8d1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec131741-f664-2a6c-b4d8-50d426dea1aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma dist_convexCombPair_convexCombPair
    {s t s' t' : ℝ} (hs : 0 ≤ s) (ht : 0 ≤ t) (h : s + t = 1)
    (hs' : 0 ≤ s') (ht' : 0 ≤ t') (h' : s' + t' = 1) (x y : X) :
    dist (convexCombPair s t hs ht h x y) (convexCombPair s' t' hs' ht' h' x y) =
      |s - s'| * dist x y := by
  wlog hss' : s' ≤ s generalizing s t s' t'
  · rw [dist_comm, this, abs_sub_comm]; exact le_of_not_ge hss'
  suffices dist (convexCombPair s t hs ht h x y) (convexCombPair s' t' hs' ht' h' x y) ≤
      |s - s'| * dist x y by
    refine this.antisymm ?_
    nth_grw 2 [← abs_dist_sub_le (z := x)]
    have : |t - t'| = |s - s'| := by
      rw [eq_sub_iff_add_eq.mpr h, eq_sub_iff_add_eq.mpr h']; simp [abs_sub_comm t t']
    simp [← sub_mul, this]
  let f : StdSimplex ℝ (Fin 3) :=
  { weights := Finsupp.equivFunOnFinite.symm ![s', s - s', t]
    nonneg i := by fin_cases i <;> simp [*]
    total := by simp [Finsupp.sum_fintype, Fin.sum_univ_succ, ← add_assoc, h] }
  convert dist_iConvexComb_le f ![x, x, y] ![x, y, y] using 1
  swap; · simp [Finsupp.sum_fintype, Fin.sum_univ_succ, f, hss', iConvexComb_eq_sum]
  congr 1
  · delta convexCombPair
    congr 1
    ext a
    simp [StdSimplex.duple, StdSimplex.map, Finsupp.mapDomain,
      Finsupp.sum_fintype, Fin.sum_univ_succ, f, ← add_assoc]
  · delta convexCombPair
    congr 1
    ext a
    simp [StdSimplex.duple, StdSimplex.map, Finsupp.mapDomain,
      Finsupp.sum_fintype, Fin.sum_univ_succ, f, show t' = s - s' + t by grind]

/-- `dist(sx + (1-s)y, sx' + (1-s)y') ≤ s dist(x, x') + (1-s) dist(y, y')`.

See `dist_convexCombPair_convexCombPair`
for the version where the points are fixed and the weights change. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/MetricSpace/Variant4ff82e257969f74a654b74b0d592ff3f48f07bf9c2a3b21a5075a6a6485b8d1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/MetricSpace/Variant4ff82e257969f74a654b74b0d592ff3f48f07bf9c2a3b21a5075a6a6485b8d1d.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b22f646d1821791679b7ea52cad2aff5e09b7af5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
