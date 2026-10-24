# convexOn_of_slope_mono_adjacent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cf6531db836e76d8710fba52d1423a64361929f5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 89,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7ee5ffee31ccec5b48dda8f3fcdf63470b9fcf052e515a30c81075e20d76ef8e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ca9c7bdf-08ed-dcd7-69e5-a346ad09d1c7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:add28ba9-b99b-f555-9e12-3a206b77e647",
  "kind": "theorem",
  "lexical_name": "convexOn_of_slope_mono_adjacent",
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
  "slug": "convexon-of-slope-mono-adjacent--cb7e1b761c91f11f19e31f0c",
  "source": {
    "blob": "cf6531db836e76d8710fba52d1423a64361929f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 89,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Slope/Variant7ee5ffee31ccec5b48dda8f3fcdf63470b9fcf052e515a30c81075e20d76ef8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb7e1b761c91f11f19e31f0c3c7fce622af006aa00597f9fbd671ee9d4b1d194",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Slope/Variant7ee5ffee31ccec5b48dda8f3fcdf63470b9fcf052e515a30c81075e20d76ef8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:add28ba9-b99b-f555-9e12-3a206b77e647`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem convexOn_of_slope_mono_adjacent (hs : Convex 𝕜 s)
    (hf :
      ∀ {x y z : 𝕜},
        x ∈ s → z ∈ s → x < y → y < z → (f y - f x) / (y - x) ≤ (f z - f y) / (z - y)) :
    ConvexOn 𝕜 s f :=
  LinearOrder.convexOn_of_lt hs fun x hx z hz hxz a b ha hb hab => by
    let y := a * x + b * z
    have hxy : x < y := by
      rw [← one_mul x, ← hab, add_mul]
      exact add_lt_add_left ((mul_lt_mul_left hb).2 hxz) _
    have hyz : y < z := by
      rw [← one_mul z, ← hab, add_mul]
      exact add_lt_add_right ((mul_lt_mul_left ha).2 hxz) _
    have : (f y - f x) * (z - y) ≤ (f z - f y) * (y - x) :=
      (div_le_div_iff₀ (sub_pos.2 hxy) (sub_pos.2 hyz)).1 (hf hx hz hxy hyz)
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
    rwa [sub_mul, sub_mul, sub_le_iff_le_add', ← add_sub_assoc, le_sub_iff_add_le, ← mul_add,
      sub_add_sub_cancel, ← le_div_iff₀ hxz, add_div, mul_div_assoc, mul_div_assoc, mul_comm (f x),
      mul_comm (f z), ha, hb] at this

/-- If for any three points `x < y < z`, the slope of the secant line of `f : 𝕜 → 𝕜` on `[x, y]` is
greater than the slope of the secant line of `f` on `[y, z]`, then `f` is concave. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Slope/Variant7ee5ffee31ccec5b48dda8f3fcdf63470b9fcf052e515a30c81075e20d76ef8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Slope/Variant7ee5ffee31ccec5b48dda8f3fcdf63470b9fcf052e515a30c81075e20d76ef8e.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf6531db836e76d8710fba52d1423a64361929f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
