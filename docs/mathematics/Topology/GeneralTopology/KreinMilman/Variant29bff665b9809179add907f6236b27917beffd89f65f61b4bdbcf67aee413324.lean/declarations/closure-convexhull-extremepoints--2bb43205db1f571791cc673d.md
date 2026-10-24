# closure_convexHull_extremePoints

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a05f563cf5369ecd56c37949532172fd4ab34dc1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 95,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/29/29bff665b9809179add907f6236b27917beffd89f65f61b4bdbcf67aee413324.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4029dbc3-2f63-e5cf-760b-505778b64587",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:da236ae3-3426-f6b8-fe90-ef319941fc2c",
  "kind": "theorem",
  "lexical_name": "closure_convexHull_extremePoints",
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
  "slug": "closure-convexhull-extremepoints--2bb43205db1f571791cc673d",
  "source": {
    "blob": "a05f563cf5369ecd56c37949532172fd4ab34dc1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 95,
    "path": "GRWTSK/Topology/GeneralTopology/KreinMilman/Variant29bff665b9809179add907f6236b27917beffd89f65f61b4bdbcf67aee413324.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2bb43205db1f571791cc673dd47297ca302000e645509b133757d9a39c13e8cf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/KreinMilman/Variant29bff665b9809179add907f6236b27917beffd89f65f61b4bdbcf67aee413324.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da236ae3-3426-f6b8-fe90-ef319941fc2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closure_convexHull_extremePoints (hscomp : IsCompact s) (hAconv : Convex ℝ s) :
    closure (convexHull ℝ <| s.extremePoints ℝ) = s := by
  apply (closure_minimal (convexHull_min extremePoints_subset hAconv) hscomp.isClosed).antisymm
  by_contra hs
  obtain ⟨x, hxA, hxt⟩ := not_subset.1 hs
  obtain ⟨l, r, hlr, hrx⟩ :=
    geometric_hahn_banach_closed_point (convex_convexHull _ _).closure isClosed_closure hxt
  have h : IsExposed ℝ s ({ y ∈ s | ∀ z ∈ s, l z ≤ l y }) := fun _ => ⟨l, rfl⟩
  obtain ⟨z, hzA, hz⟩ := hscomp.exists_forall_ge ⟨x, hxA⟩ l.continuous.continuousOn
  obtain ⟨y, hy⟩ := (h.isCompact hscomp).has_extreme_point ⟨z, hzA, hz⟩
  linarith [hlr _ (subset_closure <| subset_convexHull _ _ <|
    h.isExtreme.extremePoints_subset_extremePoints hy), hy.1.2 x hxA]
#align closure_convex_hull_extreme_points closure_convexHull_extremePoints
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/KreinMilman/Variant29bff665b9809179add907f6236b27917beffd89f65f61b4bdbcf67aee413324.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/KreinMilman/Variant29bff665b9809179add907f6236b27917beffd89f65f61b4bdbcf67aee413324.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a05f563cf5369ecd56c37949532172fd4ab34dc1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
