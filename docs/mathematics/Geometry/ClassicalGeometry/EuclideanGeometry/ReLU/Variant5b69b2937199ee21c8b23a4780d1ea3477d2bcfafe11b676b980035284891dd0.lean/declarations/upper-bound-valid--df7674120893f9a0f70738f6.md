# upper_bound_valid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c39feccad70d53e3f42359df6c9fa7d5771bb6fc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 83,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5b/5b69b2937199ee21c8b23a4780d1ea3477d2bcfafe11b676b980035284891dd0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0e92d80a-ee19-09d5-abd4-2e8eab86ff85",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b500b3ec-cbd8-b7a4-fd6e-bc7164f0793b",
  "kind": "theorem",
  "lexical_name": "upper_bound_valid",
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
  "slug": "upper-bound-valid--df7674120893f9a0f70738f6",
  "source": {
    "blob": "c39feccad70d53e3f42359df6c9fa7d5771bb6fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 83,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant5b69b2937199ee21c8b23a4780d1ea3477d2bcfafe11b676b980035284891dd0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df7674120893f9a0f70738f6b734e5db1cd1a968292485b66eade88e3c3dc7ca",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant5b69b2937199ee21c8b23a4780d1ea3477d2bcfafe11b676b980035284891dd0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b500b3ec-cbd8-b7a4-fd6e-bc7164f0793b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem upper_bound_valid (l u : ℚ) (x : ℝ)
    (hl : l < 0) (hu : 0 < u) (hx_mem : (l : ℝ) ≤ x ∧ x ≤ u) :
    max 0 x ≤ (crossingUpperBound l u).eval x := by
  -- Key facts
  have h_diff_pos : (0 : ℚ) < u - l := sub_pos.mpr (lt_trans hl hu)
  have h_diff_ne : u - l ≠ 0 := ne_of_gt h_diff_pos
  have h_diff_pos' : (0 : ℝ) < (u : ℝ) - l := by exact_mod_cast h_diff_pos
  have h_slope_pos : (0 : ℝ) < (u : ℝ) / ((u : ℝ) - l) := div_pos (by exact_mod_cast hu) h_diff_pos'

  rw [crossingUpperBound_eval l u x h_diff_ne]

  -- Case split on whether x ≤ 0
  rcases le_or_gt x 0 with hx_neg | hx_pos

  · -- Case 1: x ≤ 0, so max(0, x) = 0
    rw [max_eq_left hx_neg]
    -- Need: 0 ≤ (u/(u-l)) · (x - l)
    -- Since u/(u-l) > 0 and x - l ≥ 0 (as x ≥ l), product is ≥ 0
    apply mul_nonneg (le_of_lt h_slope_pos)
    linarith [hx_mem.1]

  · -- Case 2: x > 0, so max(0, x) = x
    rw [max_eq_right (le_of_lt hx_pos)]
    -- Need: x ≤ (u/(u-l)) · (x - l)
    -- Algebra: x · (u - l) ≤ u · (x - l)
    --          x·u - x·l ≤ u·x - u·l
    --          -x·l ≤ -u·l
    --          u·l ≤ x·l
    --          l·(u - x) ≤ 0  ✓ (since l < 0 and u ≥ x)
    rw [div_mul_eq_mul_div, le_div_iff₀ h_diff_pos']
    have hl' : (l : ℝ) < 0 := by exact_mod_cast hl
    have hu' : (0 : ℝ) < u := by exact_mod_cast hu
    -- Key: x(u-l) ≤ u(x-l) ⟺ l(u-x) ≤ 0
    have key : x * ((u : ℝ) - l) - (u : ℝ) * (x - l) = (l : ℝ) * ((u : ℝ) - x) := by ring
    have h_factor_nonpos : (l : ℝ) * ((u : ℝ) - x) ≤ 0 := by
      apply mul_nonpos_of_nonpos_of_nonneg (le_of_lt hl')
      linarith [hx_mem.2]
    linarith

/-- The Symbolic Bound structure for a single variable.
    Represents the constraint: lower.eval(x) ≤ y ≤ upper.eval(x) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant5b69b2937199ee21c8b23a4780d1ea3477d2bcfafe11b676b980035284891dd0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant5b69b2937199ee21c8b23a4780d1ea3477d2bcfafe11b676b980035284891dd0.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c39feccad70d53e3f42359df6c9fa7d5771bb6fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
