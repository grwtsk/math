# map_midpoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "97a64fda4f043f8ec8c4bd8ac7a6a93224653c16",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 88,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/24c5e989c66ec03bc221e2347e29c0ff6efba8a2f8e78e8108400a99c0758f5a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:377299fa-9979-bc71-5842-0ef0cd927b20",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d8f979eb-d888-2ba9-58ac-806d90b44886",
  "kind": "theorem",
  "lexical_name": "map_midpoint",
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
  "slug": "map-midpoint--1b50d2a0a8e7b7e580234f39",
  "source": {
    "blob": "97a64fda4f043f8ec8c4bd8ac7a6a93224653c16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 88,
    "path": "GRWTSK/Topology/MetricTopology/MazurUlam/Variant24c5e989c66ec03bc221e2347e29c0ff6efba8a2f8e78e8108400a99c0758f5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b50d2a0a8e7b7e580234f39b357f20212a19031535c0ec90fe80298cc3d8b9a",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/MazurUlam/Variant24c5e989c66ec03bc221e2347e29c0ff6efba8a2f8e78e8108400a99c0758f5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8f979eb-d888-2ba9-58ac-806d90b44886`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_midpoint (f : PE ≃ᵢ PF) (x y : PE) : f (midpoint ℝ x y) = midpoint ℝ (f x) (f y) := by
  set e : PE ≃ᵢ PE :=
    ((f.trans <| (pointReflection ℝ <| midpoint ℝ (f x) (f y)).toIsometryEquiv).trans f.symm).trans
      (pointReflection ℝ <| midpoint ℝ x y).toIsometryEquiv
  have hx : e x = x := by simp [e]
  have hy : e y = y := by simp [e]
  have hm := e.midpoint_fixed hx hy
  simp only [e, trans_apply] at hm
  rwa [← eq_symm_apply, ← toIsometryEquiv_symm, pointReflection_symm, coe_toIsometryEquiv,
    coe_toIsometryEquiv, pointReflection_self, symm_apply_eq, @pointReflection_fixed_iff] at hm

/-!
Since `f : PE ≃ᵢ PF` sends midpoints to midpoints, it is an affine map.
We define a conversion to a `ContinuousLinearEquiv` first, then a conversion to an `AffineMap`.
-/


/-- **Mazur-Ulam Theorem**: if `f` is an isometric bijection between two normed vector spaces
over `ℝ` and `f 0 = 0`, then `f` is a linear isometry equivalence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/MazurUlam/Variant24c5e989c66ec03bc221e2347e29c0ff6efba8a2f8e78e8108400a99c0758f5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/MazurUlam/Variant24c5e989c66ec03bc221e2347e29c0ff6efba8a2f8e78e8108400a99c0758f5a.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97a64fda4f043f8ec8c4bd8ac7a6a93224653c16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
