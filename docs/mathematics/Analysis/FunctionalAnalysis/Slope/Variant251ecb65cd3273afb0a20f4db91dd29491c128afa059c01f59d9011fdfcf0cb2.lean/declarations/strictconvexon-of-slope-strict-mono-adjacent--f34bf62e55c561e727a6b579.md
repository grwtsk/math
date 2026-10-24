# strictConvexOn_of_slope_strict_mono_adjacent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d975349f-ae60-e169-ea8e-95c83fcd1a82",
  "kind": "theorem",
  "lexical_name": "strictConvexOn_of_slope_strict_mono_adjacent",
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
  "slug": "strictconvexon-of-slope-strict-mono-adjacent--f34bf62e55c561e727a6b579",
  "source": {
    "blob": "7ed46b1a2f12438a1dd3dda4d80abb002aaf65b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 142,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Slope/Variant251ecb65cd3273afb0a20f4db91dd29491c128afa059c01f59d9011fdfcf0cb2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f34bf62e55c561e727a6b57914a35d29c2541fb9e23a03fa9f8f4dc40dcfdfc8",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Slope/Variant251ecb65cd3273afb0a20f4db91dd29491c128afa059c01f59d9011fdfcf0cb2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d975349f-ae60-e169-ea8e-95c83fcd1a82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem strictConvexOn_of_slope_strict_mono_adjacent (hs : Convex 𝕜 s)
    (hf :
      ∀ {x y z : 𝕜},
        x ∈ s → z ∈ s → x < y → y < z → (f y - f x) / (y - x) < (f z - f y) / (z - y)) :
    StrictConvexOn 𝕜 s f :=
  LinearOrder.strictConvexOn_of_lt hs fun x hx z hz hxz a b ha hb hab => by
    let y := a * x + b * z
    have hxy : x < y := by
      rw [← one_mul x, ← hab, add_mul]
      exact add_lt_add_left ((mul_lt_mul_left hb).2 hxz) _
    have hyz : y < z := by
      rw [← one_mul z, ← hab, add_mul]
      exact add_lt_add_right ((mul_lt_mul_left ha).2 hxz) _
    have : (f y - f x) * (z - y) < (f z - f y) * (y - x) :=
      (div_lt_div_iff₀ (sub_pos.2 hxy) (sub_pos.2 hyz)).1 (hf hx hz hxy hyz)
    have hxz : 0 < z - x := sub_pos.2 (hxy.trans hyz)
    have ha : (z - y) / (z - x) = a := by
      rw [eq_comm, ← sub_eq_iff_eq_add'] at hab
      dsimp [y]
      simp_rw [div_eq_iff hxz.ne', ← hab]
      ring
    have hb : (y - x) / (z - x) = b := by
      rw [eq_comm, ← sub_eq_iff_eq_add] at hab
      dsimp [y]
      simp_rw [div_eq_iff hxz.ne', ← hab]
      ring
    rwa [sub_mul, sub_mul, sub_lt_iff_lt_add', ← add_sub_assoc, lt_sub_iff_add_lt, ← mul_add,
      sub_add_sub_cancel, ← lt_div_iff₀ hxz, add_div, mul_div_assoc, mul_div_assoc, mul_comm (f x),
      mul_comm (f z), ha, hb] at this

/-- If for any three points `x < y < z`, the slope of the secant line of `f : 𝕜 → 𝕜` on `[x, y]` is
strictly greater than the slope of the secant line of `f` on `[y, z]`, then `f` is strictly concave.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Slope/Variant251ecb65cd3273afb0a20f4db91dd29491c128afa059c01f59d9011fdfcf0cb2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Slope/Variant251ecb65cd3273afb0a20f4db91dd29491c128afa059c01f59d9011fdfcf0cb2.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ed46b1a2f12438a1dd3dda4d80abb002aaf65b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
