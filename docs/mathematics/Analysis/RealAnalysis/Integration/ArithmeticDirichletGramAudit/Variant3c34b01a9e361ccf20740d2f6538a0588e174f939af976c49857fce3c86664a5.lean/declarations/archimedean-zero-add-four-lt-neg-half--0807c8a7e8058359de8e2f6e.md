# archimedean_zero_add_four_lt_neg_half

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5a8f813ecc1afdf2e171c9d1d9506c2f3ebda69b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 29,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3c/3c34b01a9e361ccf20740d2f6538a0588e174f939af976c49857fce3c86664a5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:27166d18-99bc-5c50-8a9c-769861eeb4ae",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:834a448a-97f1-b3d6-ab1e-514e75f1de8f",
  "kind": "theorem",
  "lexical_name": "archimedean_zero_add_four_lt_neg_half",
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
  "slug": "archimedean-zero-add-four-lt-neg-half--0807c8a7e8058359de8e2f6e",
  "source": {
    "blob": "5a8f813ecc1afdf2e171c9d1d9506c2f3ebda69b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 29,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ArithmeticDirichletGramAudit/Variant3c34b01a9e361ccf20740d2f6538a0588e174f939af976c49857fce3c86664a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0807c8a7e8058359de8e2f6e297d56213d57fd269e5794f0d738649f32946b39",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ArithmeticDirichletGramAudit/Variant3c34b01a9e361ccf20740d2f6538a0588e174f939af976c49857fce3c86664a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:834a448a-97f1-b3d6-ab1e-514e75f1de8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem archimedean_zero_add_four_lt_neg_half : archimedeanMultiplier 0 + 4 < -1 / 2 := by
  let u : ℕ → ℝ := fun n ↦ 1 / ((n : ℝ) + 1) -
    ((n : ℝ) + 1 + 1 / 4) / (((n : ℝ) + 1 + 1 / 4) ^ 2 + 0 ^ 2)
  have hu : Summable u := Zeta23.MuFields.summable_re_terms
    (a := 1 / 4) (by norm_num) (by norm_num) 0
  have hterm (n : ℕ) : u n ≤
      1 / ((n : ℝ) + 1) - 1 / ((n : ℝ) + 2) := by
    dsimp [u]
    have hn : 0 ≤ (n : ℝ) := Nat.cast_nonneg n
    norm_num only [zero_pow (by norm_num : 2 ≠ 0), add_zero]
    apply sub_le_sub_left
    apply (div_le_div_iff₀ (by positivity) (by positivity)).2
    nlinarith
  have hfinite (N : ℕ) : ∑ n ∈ Finset.range N, u n ≤ 1 := by
    calc
      _ ≤ ∑ n ∈ Finset.range N,
          (1 / ((n : ℝ) + 1) - 1 / ((n : ℝ) + 2)) :=
        Finset.sum_le_sum fun n _ ↦ hterm n
      _ = 1 - 1 / ((N : ℝ) + 1) := by
        simpa only [Nat.cast_add, Nat.cast_zero, Nat.cast_one, zero_add, one_div_one,
          add_assoc, one_add_one_eq_two] using
          Finset.sum_range_sub' (fun n : ℕ ↦ 1 / ((n : ℝ) + 1)) N
      _ ≤ 1 := by
        have hp : 0 ≤ 1 / ((N : ℝ) + 1) := by positivity
        linarith
  have hsum : ∑' n : ℕ, u n ≤ 1 :=
    le_of_tendsto hu.hasSum.tendsto_sum_nat (Eventually.of_forall hfinite)
  have hd := Zeta23.MuFields.re_digamma_vertical (a := 1 / 4)
    (by norm_num) (by norm_num) 0
  have hpi : 1 < Real.log Real.pi :=
    (Real.lt_log_iff_exp_lt Real.pi_pos).mpr (Real.exp_one_lt_three.trans Real.pi_gt_three)
  norm_num at hd
  have hdu : (Complex.digamma (1 / 4)).re =
      -Real.eulerMascheroniConstant - 4 + ∑' n, u n := by
    simpa [u] using hd
  simp only [archimedeanMultiplier, Complex.ofReal_zero, mul_zero, zero_div, add_zero]
  linarith [Real.one_half_lt_eulerMascheroniConstant]
/-- The actual zero-frequency Gamma constant plus the coarse constant four is negative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ArithmeticDirichletGramAudit/Variant3c34b01a9e361ccf20740d2f6538a0588e174f939af976c49857fce3c86664a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ArithmeticDirichletGramAudit/Variant3c34b01a9e361ccf20740d2f6538a0588e174f939af976c49857fce3c86664a5.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a8f813ecc1afdf2e171c9d1d9506c2f3ebda69b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
