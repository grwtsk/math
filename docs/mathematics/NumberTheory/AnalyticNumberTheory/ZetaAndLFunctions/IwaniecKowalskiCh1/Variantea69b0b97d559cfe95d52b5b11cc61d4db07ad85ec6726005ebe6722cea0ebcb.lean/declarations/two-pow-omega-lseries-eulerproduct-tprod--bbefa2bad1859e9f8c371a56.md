# two_pow_omega_LSeries_eulerProduct_tprod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:80b66703-a069-85a5-9afc-5876bf96b7fb",
  "kind": "lemma",
  "lexical_name": "two_pow_omega_LSeries_eulerProduct_tprod",
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
  "slug": "two-pow-omega-lseries-eulerproduct-tprod--bbefa2bad1859e9f8c371a56",
  "source": {
    "blob": "d1e130d856dabeec0e70683332be624b1a15c231",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 984,
    "line": 960,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantea69b0b97d559cfe95d52b5b11cc61d4db07ad85ec6726005ebe6722cea0ebcb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bbefa2bad1859e9f8c371a56d81ca1695ad51182a579a27bd57f9ba935d233fb",
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

Occurrence: `result:80b66703-a069-85a5-9afc-5876bf96b7fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 960–984.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma two_pow_omega_LSeries_eulerProduct_tprod (s : ℂ) (hs : 1 < s.re) :
    LSeries (fun n ↦ 2 ^ (ω n)) s = ∏' (p : Primes), (1 + (p : ℂ) ^ (-s)) / (1 - (p : ℂ) ^ (-s)) := by
  convert HasProd.tprod_eq ( EulerProduct.eulerProduct_hasProd (R := ℂ) ?_ ?_ _ _ ) |> Eq.symm using 1
  · apply tprod_congr
    simp only [← two_pow_omega_tsum_prime_pow hs, sumOnPrimePows_apply, implies_true]
  · simp only [ne_eq, one_ne_zero, not_false_eq_true, LSeries.term_of_ne_zero,
      cardDistinctFactors_one, pow_zero, cast_one, Complex.one_cpow, div_self]
  · intro m n mCn; exact two_pow_omega_LSeries.term_isMultiplicative s mCn
  · convert (LSeriesSummable_two_pow_omega hs).norm using 1
  · unfold LSeries.term; simp only [↓reduceIte]

@[blueprint
  "two_pow_omega_LSeries_eulerProduct_hasProd"
  (title := "two-pow-omega-LSeries-eulerProduct-hasProd")
  (statement := /--
    For $1<\Re(s)$ we have that
    $$\sum_{1\leq n}2^{\omega(n)}n^{-s}=\prod_p\frac{1+p^{-s}}{1-p^{-s}}.$$
    The naming convention here is designed to match
    \begin{verbatim}
      riemannZeta_eulerProduct_hasProd
    \end{verbatim}
  -/)
  (proof := /--
    Immediately follows from Lemmas \ref{two-pow-omega-LSeries.term-IsMultiplicative} and \ref{two-pow-omega-tsum-prime-pow}.
  -/)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantea69b0b97d559cfe95d52b5b11cc61d4db07ad85ec6726005ebe6722cea0ebcb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantea69b0b97d559cfe95d52b5b11cc61d4db07ad85ec6726005ebe6722cea0ebcb.lean#L960).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1e130d856dabeec0e70683332be624b1a15c231` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
