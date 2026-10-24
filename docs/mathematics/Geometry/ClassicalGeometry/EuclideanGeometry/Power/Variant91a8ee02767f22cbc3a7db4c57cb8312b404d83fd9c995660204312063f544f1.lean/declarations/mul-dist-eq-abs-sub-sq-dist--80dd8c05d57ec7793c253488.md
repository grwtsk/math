# mul_dist_eq_abs_sub_sq_dist

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c387900a-e0fe-dfbf-b50d-8d6005d29677",
  "kind": "theorem",
  "lexical_name": "mul_dist_eq_abs_sub_sq_dist",
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
  "slug": "mul-dist-eq-abs-sub-sq-dist--80dd8c05d57ec7793c253488",
  "source": {
    "blob": "7c1075bf15e3e0bfe98d8cd97bd080ba9ca8b7df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 94,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant91a8ee02767f22cbc3a7db4c57cb8312b404d83fd9c995660204312063f544f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80dd8c05d57ec7793c2534880dfb99d25d592a76ba3deb5773ae0798428bc912",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant91a8ee02767f22cbc3a7db4c57cb8312b404d83fd9c995660204312063f544f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c387900a-e0fe-dfbf-b50d-8d6005d29677`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_dist_eq_abs_sub_sq_dist {a b p q : P} (hp : p ∈ line[ℝ, a, b])
    (hq : dist a q = dist b q) : dist a p * dist b p = |dist b q ^ 2 - dist p q ^ 2| := by
  let m : P := midpoint ℝ a b
  have h1 := vsub_sub_vsub_cancel_left a p m
  have h1' := vsub_sub_vsub_cancel_left p a m
  have h2 := vsub_sub_vsub_cancel_left p q m
  have h3 := vsub_sub_vsub_cancel_left a q m
  have h : ∀ r, b -ᵥ r = m -ᵥ r + (m -ᵥ a) := fun r => by
    rw [midpoint_vsub_left, ← right_vsub_midpoint, add_comm, vsub_add_vsub_cancel]
  iterate 4 rw [dist_eq_norm_vsub V]
  rw [← h1, ← h2, h, h]
  rw [dist_eq_norm_vsub V a q, dist_eq_norm_vsub V b q, ← h3, h] at hq
  refine mul_norm_eq_abs_sub_sq_norm ?_ hq
  -- TODO: factor this out as a separate lemma?
  · rw [← vsub_vadd p a, vadd_left_mem_affineSpan_pair] at hp
    rcases hp with ⟨r, hr⟩
    rw [h, ← h1', eq_sub_iff_add_eq, ← eq_sub_iff_add_eq'] at hr
    rw [hr]
    use 1 - r * 2
    match_scalars
    ring

/-- If `A`, `B`, `C`, `D` are cospherical and `P` is on both lines `AB` and `CD`, then
`AP * BP = CP * DP`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant91a8ee02767f22cbc3a7db4c57cb8312b404d83fd9c995660204312063f544f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant91a8ee02767f22cbc3a7db4c57cb8312b404d83fd9c995660204312063f544f1.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c1075bf15e3e0bfe98d8cd97bd080ba9ca8b7df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
