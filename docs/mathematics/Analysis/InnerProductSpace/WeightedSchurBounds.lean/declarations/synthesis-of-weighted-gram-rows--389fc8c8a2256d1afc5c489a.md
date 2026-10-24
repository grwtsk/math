# synthesis_of_weighted_gram_rows

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "28e803e649a93dccf50e3d95711b88c7db126c1e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 77,
      "path": "GRWTSK/Analysis/InnerProductSpace/WeightedSchurBounds.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:81c4c0f3-100a-922f-5e50-43616c9e7e8b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f3ed9552-4b3c-a45f-5da0-f225247b56b3",
  "kind": "theorem",
  "lexical_name": "synthesis_of_weighted_gram_rows",
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
  "slug": "synthesis-of-weighted-gram-rows--389fc8c8a2256d1afc5c489a",
  "source": {
    "blob": "28e803e649a93dccf50e3d95711b88c7db126c1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 77,
    "path": "GRWTSK/Analysis/InnerProductSpace/WeightedSchurBounds.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:389fc8c8a2256d1afc5c489aa5d35638c38038d9e4912c0ff0ed7513872de19d",
  "verification": {
    "reference": "docs/verification/Analysis/InnerProductSpace/WeightedSchurBounds.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3ed9552-4b3c-a45f-5da0-f225247b56b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem synthesis_of_weighted_gram_rows {ι E : Type*}
    [NormedAddCommGroup E] [InnerProductSpace ℂ E]
    (S : Finset ι) (v : ι → E) (a : ι → ℂ) (w : ι → ℝ) {C : ℝ}
    (hw : ∀ i ∈ S, 0 < w i)
    (hrow : ∀ i ∈ S,
      ∑ j ∈ S, ‖inner ℂ (v i) (v j)‖ * w j ≤ C * w i) :
    ‖∑ i ∈ S, a i • v i‖ ^ 2 ≤ C * ∑ i ∈ S, ‖a i‖ ^ 2 := by
  have hs := weighted_symmetric_schur S
    (fun i j => ‖inner ℂ (v i) (v j)‖) w (fun i => ‖a i‖ / w i) C
    (fun i hi => (hw i hi).le) (fun _ _ _ _ => norm_nonneg _)
    (fun _ _ _ _ => norm_inner_symm _ _)
    (by simpa only [mul_comm] using hrow)
  have hc (i : ι) (hi : i ∈ S) : (‖a i‖ / w i) * w i = ‖a i‖ :=
    div_mul_cancel₀ _ (hw i hi).ne'
  have hs' : (∑ i ∈ S, ∑ j ∈ S,
      ‖a i‖ * ‖a j‖ * ‖inner ℂ (v i) (v j)‖) ≤
      C * ∑ i ∈ S, ‖a i‖ ^ 2 := by
    have hl : (∑ i ∈ S, ∑ j ∈ S,
        (‖a i‖ / w i * w i) * (‖a j‖ / w j * w j) * ‖inner ℂ (v i) (v j)‖) =
        ∑ i ∈ S, ∑ j ∈ S, ‖a i‖ * ‖a j‖ * ‖inner ℂ (v i) (v j)‖ := by
      apply sum_congr rfl
      intro i hi
      apply sum_congr rfl
      intro j hj
      rw [hc i hi, hc j hj]
    have hr : (∑ i ∈ S, (‖a i‖ / w i * w i) ^ 2) = ∑ i ∈ S, ‖a i‖ ^ 2 := by
      apply sum_congr rfl
      intro i hi
      rw [hc i hi]
    rw [hl, hr] at hs
    exact hs
  calc
    _ = (inner ℂ (∑ i ∈ S, a i • v i) (∑ i ∈ S, a i • v i)).re :=
      norm_sq_eq_re_inner (𝕜 := ℂ) _
    _ ≤ ‖inner ℂ (∑ i ∈ S, a i • v i) (∑ i ∈ S, a i • v i)‖ := re_le_norm _
    _ = ‖∑ i ∈ S, ∑ j ∈ S, conj (a i) * a j * inner ℂ (v i) (v j)‖ := by
      simp only [sum_inner, inner_sum, inner_smul_left, inner_smul_right, mul_sum]
      rw [sum_comm]
      congr 1
      apply sum_congr rfl
      intro i hi
      apply sum_congr rfl
      intro j hj
      ring
    _ ≤ ∑ i ∈ S, ∑ j ∈ S, ‖conj (a i) * a j * inner ℂ (v i) (v j)‖ :=
      (norm_sum_le _ _).trans (sum_le_sum (fun _ _ => norm_sum_le _ _))
    _ = ∑ i ∈ S, ∑ j ∈ S,
        ‖a i‖ * ‖a j‖ * ‖inner ℂ (v i) (v j)‖ := by
      simp only [norm_mul, norm_conj]
    _ ≤ _ := hs'

/-- The upper Bessel estimate is a consequence of BGP–1, not a reconstruction theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/InnerProductSpace/WeightedSchurBounds.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/InnerProductSpace/WeightedSchurBounds.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28e803e649a93dccf50e3d95711b88c7db126c1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
