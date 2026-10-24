# two_pow_omega_tsum_prime_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:80c2f38d-9a5b-0ca1-a3d7-9ba57a32cb74",
  "kind": "lemma",
  "lexical_name": "two_pow_omega_tsum_prime_pow",
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
  "slug": "two-pow-omega-tsum-prime-pow--b7bbf790ec2f10f7fa7047c2",
  "source": {
    "blob": "d1e130d856dabeec0e70683332be624b1a15c231",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 936,
    "line": 897,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantea69b0b97d559cfe95d52b5b11cc61d4db07ad85ec6726005ebe6722cea0ebcb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7bbf790ec2f10f7fa7047c2ab57a17eb0ab69684ec503ac380d066a27d47853",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantea69b0b97d559cfe95d52b5b11cc61d4db07ad85ec6726005ebe6722cea0ebcb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80c2f38d-9a5b-0ca1-a3d7-9ba57a32cb74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 897–936.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma two_pow_omega_tsum_prime_pow {s : ℂ} (hs : 1 < s.re)
    (p : Primes) : sumOnPrimePows (LSeries.term (fun n ↦ 2 ^ (ω n)) s) p = (1 + (p : ℂ) ^ (-s)) / (1 - (p : ℂ) ^ (-s)) := by
  have h_rw : sumOnPrimePows (LSeries.term (fun n ↦ 2 ^ (ω n)) s) p = 1 + ∑' e : ℕ, LSeries.term (fun n : ℕ => 2 ^ (ω n)) s (p.val ^ (e + 1)) := by
    rw [sumOnPrimePows_apply, Summable.tsum_eq_zero_add];
    · unfold LSeries.term
      simp [Nat.Prime.ne_zero p.prop]
    · have := LSeriesSummable_two_pow_omega hs;
      convert this.comp_injective (show Function.Injective (fun e : ℕ => p.val ^ e) from fun a b h => Nat.pow_right_injective p.prop.one_lt h) using 1
  have h_term_eval : ∀ e : ℕ, LSeries.term (fun n : ℕ => 2 ^ ω n) s (p.val ^ (e + 1)) = 2 * (p.val : ℂ) ^ (-(e + 1) * s) := by
    intro e
    simp only [neg_mul, LSeries.term, Nat.pow_eq_zero, ne_eq, cast_pow, Nat.Prime.ne_zero p.prop, false_and, ↓reduceIte]
    rw [ArithmeticFunction.cardDistinctFactors_apply_prime_pow p.prop, pow_one]
    · simp only [Complex.cpow_neg, div_eq_mul_inv, ← Complex.natCast_cpow_natCast_mul, cast_add, cast_one]
    · linarith
  have geo_series_rw : ∑' e : ℕ, (p.val : ℂ) ^ (-(e + 1) * s) = (p.val : ℂ) ^ (-s) / (1 - (p.val : ℂ) ^ (-s)) := by
    rw [div_eq_mul_inv, ← tsum_geometric_of_norm_lt_one]
    · rw [← tsum_mul_left]; congr; ext n; rw [← Complex.cpow_nat_mul]; ring_nf
      rw [← Complex.cpow_add _ _ (Nat.cast_ne_zero.mpr p.prop.ne_zero)]; ring_nf
    · rw [Complex.norm_cpow_of_ne_zero] <;> norm_num [p.2.ne_zero]
      exact lt_of_lt_of_le (Real.rpow_lt_rpow_of_exponent_lt (mod_cast p.2.one_lt) (neg_lt_zero.mpr (by linarith))) (by norm_num)
  simp only [h_rw, h_term_eval, geo_series_rw, tsum_mul_left]
  rw [eq_div_iff, add_mul, one_mul, ← mul_div_assoc, div_mul_cancel₀]
  · ring_nf
  all_goals (exact Complex.one_sub_prime_cpow_ne_zero p.2 hs)

@[blueprint
  "Complex.one_add_prime_cpow_ne_zero"
  (title := "Complex.one-add-prime-cpow-ne-zero")
  (statement := /--
    For $1<\Re(s)$ and $p$ prime, we have that $1+p^{-s}\neq 0$. The naming convention is to mimic
    \begin{verbatim}
      Complex.one_sub_prime_cpow_ne_zero
    \end{verbatim}
  -/)
  (proof := /--
    Suppose for contradiction $1+p^{-s}=0$, then $|p^{-s}|=1$. However, this can not happen per
    \begin{verbatim}
      Complex.norm_prime_cpow_le_one_half
    \end{verbatim}
  -/)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantea69b0b97d559cfe95d52b5b11cc61d4db07ad85ec6726005ebe6722cea0ebcb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantea69b0b97d559cfe95d52b5b11cc61d4db07ad85ec6726005ebe6722cea0ebcb.lean#L897).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1e130d856dabeec0e70683332be624b1a15c231` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
