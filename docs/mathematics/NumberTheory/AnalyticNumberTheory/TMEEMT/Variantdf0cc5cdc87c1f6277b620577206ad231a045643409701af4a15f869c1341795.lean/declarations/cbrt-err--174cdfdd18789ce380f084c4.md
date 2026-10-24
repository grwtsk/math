# cbrt_err

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:50eac319-915c-d63d-a7c4-8db374e7d786",
  "kind": "lemma",
  "lexical_name": "cbrt_err",
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
  "slug": "cbrt-err--174cdfdd18789ce380f084c4",
  "source": {
    "blob": "b621f1aa334bf7d3760b92c847894510fa068a54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 245,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/TMEEMT/Variantdf0cc5cdc87c1f6277b620577206ad231a045643409701af4a15f869c1341795.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:174cdfdd18789ce380f084c4e5480cea8eb619de91021d9ed1ca7d75820afa47",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/TMEEMT/Variantdf0cc5cdc87c1f6277b620577206ad231a045643409701af4a15f869c1341795.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50eac319-915c-d63d-a7c4-8db374e7d786`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma cbrt_err {x : ℝ} (hx : x ≥ exp 22) :
    1.78 * x ^ (1 / 3 : ℝ) ≤ 0.0005 * x / log x := by
  have hx_pos : (0 : ℝ) < x := lt_of_lt_of_le (by positivity) hx
  have hlog := log_nonneg <| by linarith [add_one_le_exp 22]
  have h_rpow : x ^ (2 / 3 : ℝ) = exp (2 * log x / 3) := by rw [rpow_def_of_pos hx_pos]; ring_nf
  have h_taylor : exp (2 * log x / 3) ≥ (2 * log x / 3) ^ 9 / 362880 := by
    rw [exp_eq_exp_ℝ, NormedSpace.exp_eq_tsum_div] at *
    refine le_trans ?_ (Summable.sum_le_tsum (Finset.range 10)
      (fun _ _ => div_nonneg (pow_nonneg (div_nonneg (mul_nonneg zero_le_two hlog) zero_le_three) _)
      (Nat.cast_nonneg _)) (show Summable _ from summable_pow_div_factorial _))
    norm_num [Finset.sum_range_succ, Nat.factorial]; ring_nf; norm_num
    nlinarith [sq_nonneg (log x ^ 2), sq_nonneg (log x ^ 3), sq_nonneg (log x ^ 4),
      sq_nonneg (log x ^ 5), sq_nonneg (log x ^ 6), sq_nonneg (log x ^ 7), hlog]
  have h_bound : x ^ (2 / 3 : ℝ) ≥ 3560 * log x := by
    rw [h_rpow]
    nlinarith [log_exp 22, log_le_log (by positivity) hx,
      pow_nonneg hlog 2, pow_nonneg hlog 3, pow_nonneg hlog 4,
      pow_nonneg hlog 5, pow_nonneg hlog 6, pow_nonneg hlog 7, pow_nonneg hlog 8]
  have h_13 : x ^ (1 / 3 : ℝ) * x ^ (2 / 3 : ℝ) = x := by norm_num [← rpow_add hx_pos]
  have h_recombine : x ≥ 3560 * x ^ (1 / 3 : ℝ) * log x := by nlinarith [rpow_pos_of_pos hx_pos (1 / 3 : ℝ)]
  rw [le_div_iff₀ (log_pos <| lt_of_lt_of_le (by norm_num) hx)]
  linarith

@[blueprint
  "thm:dusart1999-a"
  (title := "Dusart 1999, part a")
  (statement := /-- For $x \geq e^{22}$, we have $|\psi(x) - x| \leq \frac{0.006409\, x}{\log x}$. -/)
  (latexEnv := "theorem")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/TMEEMT/Variantdf0cc5cdc87c1f6277b620577206ad231a045643409701af4a15f869c1341795.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/TMEEMT/Variantdf0cc5cdc87c1f6277b620577206ad231a045643409701af4a15f869c1341795.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b621f1aa334bf7d3760b92c847894510fa068a54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
