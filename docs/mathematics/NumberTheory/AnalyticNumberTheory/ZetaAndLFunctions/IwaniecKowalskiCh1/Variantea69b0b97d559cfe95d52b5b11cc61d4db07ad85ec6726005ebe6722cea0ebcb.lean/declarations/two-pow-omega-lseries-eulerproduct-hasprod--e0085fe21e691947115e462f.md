# two_pow_omega_LSeries_eulerProduct_hasProd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4310673d-d1cb-3d81-a459-dee6d60fdb8d",
  "kind": "lemma",
  "lexical_name": "two_pow_omega_LSeries_eulerProduct_hasProd",
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
  "slug": "two-pow-omega-lseries-eulerproduct-hasprod--e0085fe21e691947115e462f",
  "source": {
    "blob": "d1e130d856dabeec0e70683332be624b1a15c231",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1018,
    "line": 985,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantea69b0b97d559cfe95d52b5b11cc61d4db07ad85ec6726005ebe6722cea0ebcb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0085fe21e691947115e462ffdfee0c14bc26ccc208438c172339d901668ed32",
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

Occurrence: `result:4310673d-d1cb-3d81-a459-dee6d60fdb8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 985–1018.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma two_pow_omega_LSeries_eulerProduct_hasProd (s : ℂ) (hs : 1 < s.re) :
    HasProd (fun (p : Primes) ↦ (1 + ↑↑p ^ (-s)) / (1 - ↑↑p ^ (-s))) (L (fun n ↦ (2 ^ ω n)) s) := by
  convert EulerProduct.eulerProduct_hasProd _ _ _ (LSeries.term_zero (fun n ↦ (2 ^ ω n)) s) using 1;
  · funext p; exact Eq.symm (two_pow_omega_tsum_prime_pow hs p)
  · simp only [ne_eq, one_ne_zero, not_false_eq_true, LSeries.term_of_ne_zero,
      cardDistinctFactors_one, pow_zero, cast_one, Complex.one_cpow, div_self]
  · intro _ _ mCn; exact two_pow_omega_LSeries.term_isMultiplicative s mCn
  · convert (LSeriesSummable_two_pow_omega hs).norm using 1

/--
  Zeta squared:
  `ζ(s)^2 = ζ(2*s) * ∑_n (2^omega(n)) n^(-s)`,
  where omega is the number of distinct prime factors.
-/
@[blueprint
  "zeta_pow_two"
  (title := "zeta pow two")
  (statement := /--
  $$\zeta(s)^2 =\zeta(2s) \sum_{n=1}^{\infty} 2^{\omega(n)} n^{-s}.$$
  \begin{verbatim}
    An expression for `ζ^2`, in IK (1.31).
  \end{verbatim}
  -/)
  (proof := /--
    Note that
    $$\zeta(s)^2=\prod_p\frac{1}{(1-p^{-s})^2}.$$
    Similarly
    $$\zeta(2s)=\prod_p\frac{1}{(1-p^{-2s})}.$$
    Applying Theorems \ref{two-pow-omega-LSeries-eulerProduct-tprod} and \ref{two-pow-omega-LSeries-eulerProduct-hasProd} we have
    $$\sum_{1\leq n}2^{\omega(n)}n^{-s}=\prod_p\frac{1+p^{-s}}{1-p^{-s}}.$$
    Thus
    $$\zeta(2s)\left(\sum_{1\leq n}2^{\omega(n)}n^{-s}\right)=\prod_p\frac{1+p^{-s}}{(1-p^{-s})(1-p^{-2s})}=\prod_p\frac{1}{(1-p^{-s})^2}$$
    by the difference of squares. This is exactly the Euler product for $\zeta(s)^2$ mentioned earlier.
  -/)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantea69b0b97d559cfe95d52b5b11cc61d4db07ad85ec6726005ebe6722cea0ebcb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantea69b0b97d559cfe95d52b5b11cc61d4db07ad85ec6726005ebe6722cea0ebcb.lean#L985).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1e130d856dabeec0e70683332be624b1a15c231` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
