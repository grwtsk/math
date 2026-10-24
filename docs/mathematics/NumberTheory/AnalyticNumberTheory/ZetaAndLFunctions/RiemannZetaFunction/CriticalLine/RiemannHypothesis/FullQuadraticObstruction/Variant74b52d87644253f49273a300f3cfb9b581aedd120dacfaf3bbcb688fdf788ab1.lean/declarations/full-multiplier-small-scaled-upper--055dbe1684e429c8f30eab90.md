# full_multiplier_small_scaled_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "36018f03848dedab38ef57a3563230130bff9cbf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 310,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/74/74b52d87644253f49273a300f3cfb9b581aedd120dacfaf3bbcb688fdf788ab1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6e317c4c-93a7-85fb-0383-4736f0351729",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0c2679e8-970d-27ff-2c3e-93e190722203",
  "kind": "theorem",
  "lexical_name": "full_multiplier_small_scaled_upper",
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
  "slug": "full-multiplier-small-scaled-upper--055dbe1684e429c8f30eab90",
  "source": {
    "blob": "36018f03848dedab38ef57a3563230130bff9cbf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 341,
    "line": 310,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullQuadraticObstruction/Variant74b52d87644253f49273a300f3cfb9b581aedd120dacfaf3bbcb688fdf788ab1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:055dbe1684e429c8f30eab9049e626d6f92179bec41e24342316fcfe0e0c2087",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullQuadraticObstruction/Variant74b52d87644253f49273a300f3cfb9b581aedd120dacfaf3bbcb688fdf788ab1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c2679e8-970d-27ff-2c3e-93e190722203`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 310–341.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem full_multiplier_small_scaled_upper (A u : ℝ) (hA : 1 ≤ A) (hu : |u| ≤ 1 / 4) :
    spectralMultiplier A (u / A) ≤ archimedeanMultiplier 0 + 6 - totalWeight A := by
  have hpos : 0 < A := by linarith
  have hcos (n : ℕ) (hn : n ∈ primeIndices A) :
      (1 / 2 : ℝ) ≤ Real.cos ((u / A) * Real.log n) := by
    obtain ⟨hl0, hl2⟩ := JointPhaseScaling.scaled_log_mem_range A hA n hn
    have he : (u / A) * Real.log n = u * (Real.log n / A) := by ring
    have habs : |(u / A) * Real.log n| ≤ 1 / 2 := by
      rw [he, abs_mul, abs_of_nonneg hl0]
      nlinarith [mul_le_mul_of_nonneg_left hl2.le (abs_nonneg u)]
    have hsq : ((u / A) * Real.log n) ^ 2 ≤ 1 / 4 := by
      nlinarith [sq_abs ((u / A) * Real.log n), abs_nonneg ((u / A) * Real.log n), sq_nonneg
        (|(u / A) * Real.log n| - 1 / 2)]
    nlinarith [Real.one_sub_sq_div_two_le_cos (x := (u / A) * Real.log n)]
  have hsum : totalWeight A / 2 ≤
      ∑ n ∈ primeIndices A, primeWeight n * Real.cos ((u / A) * Real.log n) := by
    unfold totalWeight
    rw [Finset.sum_div]
    apply Finset.sum_le_sum
    intro n hn
    nlinarith [mul_le_mul_of_nonneg_left (hcos n hn) (primeWeight_nonneg n)]
  have hfreq : |u / A| ≤ 1 := by
    rw [abs_div, abs_of_pos hpos]
    apply (div_le_iff₀ hpos).mpr
    linarith
  have hsquare : (u / A) ^ 2 ≤ 1 := by
    nlinarith [sq_abs (u / A), abs_nonneg (u / A), sq_nonneg (|u / A| - 1)]
  have hgamma := FullQuadraticAudit.archimedean_multiplier_upper (u / A)
  unfold spectralMultiplier cosineMultiplier
  linarith

/-- The unchanged normalization decreases from its radius-one value on admitted radii. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullQuadraticObstruction/Variant74b52d87644253f49273a300f3cfb9b581aedd120dacfaf3bbcb688fdf788ab1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullQuadraticObstruction/Variant74b52d87644253f49273a300f3cfb9b581aedd120dacfaf3bbcb688fdf788ab1.lean#L310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36018f03848dedab38ef57a3563230130bff9cbf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
