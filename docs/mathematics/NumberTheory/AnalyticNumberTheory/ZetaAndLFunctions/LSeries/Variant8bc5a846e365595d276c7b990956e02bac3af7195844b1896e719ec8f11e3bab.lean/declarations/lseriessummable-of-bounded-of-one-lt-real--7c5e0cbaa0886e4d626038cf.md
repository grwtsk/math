# LSeriesSummable_of_bounded_of_one_lt_real

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3fedfcbe0a7751bd9f3b0cea68cab65496bea5b1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 61,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8b/8bc5a846e365595d276c7b990956e02bac3af7195844b1896e719ec8f11e3bab.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:551cbaf0-f43e-af03-4fc1-91089e55a925",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:78b8c60d-aa6f-8388-102e-27df904af765",
  "kind": "theorem",
  "lexical_name": "LSeriesSummable_of_bounded_of_one_lt_real",
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
  "slug": "lseriessummable-of-bounded-of-one-lt-real--7c5e0cbaa0886e4d626038cf",
  "source": {
    "blob": "3fedfcbe0a7751bd9f3b0cea68cab65496bea5b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 61,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variant8bc5a846e365595d276c7b990956e02bac3af7195844b1896e719ec8f11e3bab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c5e0cbaa0886e4d626038cfc690289a5946c87afd7d1f8e7047ad47ea303970",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variant8bc5a846e365595d276c7b990956e02bac3af7195844b1896e719ec8f11e3bab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:78b8c60d-aa6f-8388-102e-27df904af765`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LSeriesSummable_of_bounded_of_one_lt_real {f : ArithmeticFunction ℂ} {m : ℝ}
    (h : ∀ n : ℕ, Complex.abs (f n) ≤ m) {z : ℝ} (hz : 1 < z) : f.LSeriesSummable z := by
  by_cases h0 : m = 0
  · subst h0
    have hf : f = 0 := ArithmeticFunction.ext fun n =>
      Complex.abs.eq_zero.1 (le_antisymm (h n) (Complex.abs.nonneg _))
    simp [hf]
  refine' summable_of_norm_bounded (fun n : ℕ => m / n ^ z) _ _
  · simp_rw [div_eq_mul_inv]
    exact (summable_mul_left_iff h0).2 (Real.summable_nat_rpow_inv.2 hz)
  · intro n
    have hm : 0 ≤ m := le_trans (Complex.abs.nonneg _) (h 0)
    cases' n with n
    · simp [hm, Real.zero_rpow (_root_.ne_of_gt (lt_trans Real.zero_lt_one hz))]
    simp only [map_div₀, Complex.norm_eq_abs]
    apply div_le_div hm (h _) (Real.rpow_pos_of_pos (Nat.cast_pos.2 n.succ_pos) _) (le_of_eq _)
    rw [Complex.abs_cpow_real, Complex.abs_cast_nat]
#align nat.arithmetic_function.l_series_summable_of_bounded_of_one_lt_real Nat.ArithmeticFunction.LSeriesSummable_of_bounded_of_one_lt_real

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variant8bc5a846e365595d276c7b990956e02bac3af7195844b1896e719ec8f11e3bab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variant8bc5a846e365595d276c7b990956e02bac3af7195844b1896e719ec8f11e3bab.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fedfcbe0a7751bd9f3b0cea68cab65496bea5b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
