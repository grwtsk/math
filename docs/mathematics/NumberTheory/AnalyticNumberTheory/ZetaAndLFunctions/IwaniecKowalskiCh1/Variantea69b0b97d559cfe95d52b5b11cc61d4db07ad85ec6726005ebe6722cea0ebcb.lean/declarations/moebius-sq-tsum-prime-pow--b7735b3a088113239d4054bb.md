# moebius_sq_tsum_prime_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:358856a3-8360-5567-0835-a7e643d1bd30",
  "kind": "lemma",
  "lexical_name": "moebius_sq_tsum_prime_pow",
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
  "slug": "moebius-sq-tsum-prime-pow--b7735b3a088113239d4054bb",
  "source": {
    "blob": "d1e130d856dabeec0e70683332be624b1a15c231",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1147,
    "line": 1107,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantea69b0b97d559cfe95d52b5b11cc61d4db07ad85ec6726005ebe6722cea0ebcb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7735b3a088113239d4054bbec8ccb39a905dd3157cad2c00abea5519d56e1c6",
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

Occurrence: `result:358856a3-8360-5567-0835-a7e643d1bd30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1107–1147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma moebius_sq_tsum_prime_pow {s : ℂ} (p : Nat.Primes) :
    sumOnPrimePows (LSeries.term (fun n ↦ (μ n) ^ 2) s) p = (1 + (p : ℂ) ^ (-s)) := by
  have h_rw : 1 + ↑↑p ^ (-s) = ∑' (e : ℕ), (if e ≤ 1 then 1 else 0) / ((p : ℂ) ^ e) ^ s := by
    rw [tsum_eq_sum (s := {0, 1})]
    · simp only [mem_singleton, zero_ne_one, not_false_eq_true, sum_insert, _root_.zero_le,
        ↓reduceIte, pow_zero, Complex.one_cpow, ne_eq, one_ne_zero, div_self, sum_singleton,
        le_refl, pow_one, one_div, Complex.cpow_neg]
    · intro e he; simp at he
      simp [show ¬e ≤ 1 by omega]
  simp only [sumOnPrimePows_apply, LSeries.term, Nat.pow_eq_zero, ne_eq, cast_pow, Nat.Prime.ne_zero p.prop, false_and, ↓reduceIte, ← Int.cast_pow, moebius_sq, h_rw]
  apply tsum_congr
  intro e
  congr 1
  by_cases h : (e ≤ 1) <;> simp only [Int.cast_ite, Int.cast_one, Int.cast_zero, h, ↓reduceIte, ite_eq_left_iff,
    zero_ne_one, imp_false, Decidable.not_not, ite_eq_right_iff, one_ne_zero, imp_false]
  · rw [Nat.squarefree_iff_factorization_le_one (pow_ne_zero _ (Nat.Prime.ne_zero p.prop))]
    simp only [factorization_pow, Finsupp.coe_smul, Pi.smul_apply, smul_eq_mul]
    interval_cases e
    · simp only [zero_mul, zero_le, implies_true]
    · simp only [one_mul, ← Nat.squarefree_iff_factorization_le_one (Nat.Prime.ne_zero p.prop)]
      exact (Nat.squarefree_and_prime_pow_iff_prime.mpr p.prop).1
  · rw [Nat.squarefree_iff_factorization_le_one (pow_ne_zero _ (Nat.Prime.ne_zero p.prop))]
    simp only [factorization_pow, Finsupp.coe_smul, Pi.smul_apply, smul_eq_mul, not_forall, not_le]
    use p
    simp only [Nat.Prime.factorization_self p.prop, mul_one]
    exact Nat.lt_of_not_le h

@[blueprint
  "moebius_sq_LSeries_eulerProduct_tprod"
  (title := "moebius-sq-LSeries-eulerProduct-tprod")
  (statement := /--
    For $1<\Re(s)$ we have that
    $$\sum_{1\leq n}\mu^2(n)n^{-s}=\prod_p(1+p^{-s}).$$
    The naming convention here is designed to match
    \begin{verbatim}
      riemannZeta_eulerProduct_tprod
    \end{verbatim}
  -/)
  (proof := /--
    Immediately follows from Lemmas \ref{moebius-sq-LSeries.term-IsMultiplicative} and \ref{moebius-sq-tsum-prime-pow}.
  -/)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantea69b0b97d559cfe95d52b5b11cc61d4db07ad85ec6726005ebe6722cea0ebcb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantea69b0b97d559cfe95d52b5b11cc61d4db07ad85ec6726005ebe6722cea0ebcb.lean#L1107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1e130d856dabeec0e70683332be624b1a15c231` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
