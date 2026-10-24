# LSeriesSummable_of_le_const_mul_rpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9c600187008df264d2ed6320fcfe3ee395538aca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 346,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a8/a8a5e0f3f9f1a5aeca34960f5f53741088dc3a394dcef28f0f9768c5450fc6c8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4542d3a6-a051-0a68-00d6-2e5c5e4c7ef9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:91095d97-7fe7-f7cf-a782-2dbd1ce79a6e",
  "kind": "lemma",
  "lexical_name": "LSeriesSummable_of_le_const_mul_rpow",
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
  "slug": "lseriessummable-of-le-const-mul-rpow--60c36f6c295383fd3b8043ce",
  "source": {
    "blob": "9c600187008df264d2ed6320fcfe3ee395538aca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 371,
    "line": 346,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Varianta8a5e0f3f9f1a5aeca34960f5f53741088dc3a394dcef28f0f9768c5450fc6c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60c36f6c295383fd3b8043cea6b1b3a8b8ffa688387de2525e6aeb91b3e0e165",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Varianta8a5e0f3f9f1a5aeca34960f5f53741088dc3a394dcef28f0f9768c5450fc6c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91095d97-7fe7-f7cf-a782-2dbd1ce79a6e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 346–371.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LSeriesSummable_of_le_const_mul_rpow {f : ℕ → ℂ} {x : ℝ} {s : ℂ} (hs : x < s.re)
    (h : ∃ C, ∀ n ≠ 0, ‖f n‖ ≤ C * n ^ (x - 1)) :
    LSeriesSummable f s := by
  obtain ⟨C, hC⟩ := h
  have hC₀ : 0 ≤ C := (norm_nonneg <| f 1).trans <| by simpa using hC 1 one_ne_zero
  have hsum : Summable fun n : ℕ ↦ ‖(C : ℂ) / n ^ (s + (1 - x))‖ := by
    simp_rw [div_eq_mul_inv, norm_mul, ← cpow_neg]
    have hsx : -s.re + x - 1 < -1 := by linarith only [hs]
    refine Summable.mul_left _ <|
      Summable.of_norm_bounded_eventually_nat (g := fun n ↦ (n : ℝ) ^ (-s.re + x - 1)) ?_ ?_
    · simpa
    · simp only [norm_norm, Filter.eventually_atTop]
      refine ⟨1, fun n hn ↦ le_of_eq ?_⟩
      simp only [norm_natCast_cpow_of_pos hn, add_re, sub_re, neg_re, ofReal_re, one_re]
      ring_nf
  refine Summable.of_norm <| hsum.of_nonneg_of_le (fun _ ↦ norm_nonneg _) (fun n ↦ ?_)
  rcases n.eq_zero_or_pos with rfl | hn
  · simpa only [term_zero, norm_zero] using norm_nonneg _
  have hn' : 0 < (n : ℝ) ^ s.re := Real.rpow_pos_of_pos (Nat.cast_pos.mpr hn) _
  simp_rw [term_of_ne_zero hn.ne', norm_div, norm_natCast_cpow_of_pos hn, div_le_iff₀ hn',
    norm_real, Real.norm_of_nonneg hC₀, div_eq_mul_inv, mul_assoc,
    ← Real.rpow_neg <| Nat.cast_nonneg _, ← Real.rpow_add <| Nat.cast_pos.mpr hn]
  simpa using hC n <| Nat.pos_iff_ne_zero.mp hn

open Filter Finset Real Nat in
/-- If `f = O(n^(x-1))` and `re s > x`, then the `LSeries` of `f` is summable at `s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Varianta8a5e0f3f9f1a5aeca34960f5f53741088dc3a394dcef28f0f9768c5450fc6c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Varianta8a5e0f3f9f1a5aeca34960f5f53741088dc3a394dcef28f0f9768c5450fc6c8.lean#L346).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c600187008df264d2ed6320fcfe3ee395538aca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
