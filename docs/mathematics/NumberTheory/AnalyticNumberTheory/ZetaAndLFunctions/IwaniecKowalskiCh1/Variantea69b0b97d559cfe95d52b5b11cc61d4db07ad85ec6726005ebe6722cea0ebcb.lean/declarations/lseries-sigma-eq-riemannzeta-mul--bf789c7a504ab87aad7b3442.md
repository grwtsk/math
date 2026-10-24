# LSeries_sigma_eq_riemannZeta_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aab42bbd-8563-06c0-9726-cccb1dd8fdb7",
  "kind": "theorem",
  "lexical_name": "LSeries_sigma_eq_riemannZeta_mul",
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
  "slug": "lseries-sigma-eq-riemannzeta-mul--bf789c7a504ab87aad7b3442",
  "source": {
    "blob": "d1e130d856dabeec0e70683332be624b1a15c231",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 645,
    "line": 622,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantea69b0b97d559cfe95d52b5b11cc61d4db07ad85ec6726005ebe6722cea0ebcb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf789c7a504ab87aad7b3442cea4cf30ea9aef728d67ed32792154609a4a65ae",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantea69b0b97d559cfe95d52b5b11cc61d4db07ad85ec6726005ebe6722cea0ebcb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aab42bbd-8563-06c0-9726-cccb1dd8fdb7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 622–645.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LSeries_sigma_eq_riemannZeta_mul (ν : ℂ) {s : ℂ} (hs : 1 < s.re) (hsν : 1 < (s - ν).re) :
    LSeries (↗(σᴿ ν)) s = riemannZeta s * riemannZeta (s - ν) := by
  rw [← ArithmeticFunction.LSeries_zeta_eq_riemannZeta hs, ← LSeries_powR_eq ν hsν, sigmaR_eq_zeta_mul_powR];
  apply ArithmeticFunction.LSeries_mul
  · apply (ArithmeticFunction.abscissaOfAbsConv_zeta.trans_lt _)
    exact_mod_cast hs
  · apply lt_of_le_of_lt (abscissa_powR_le ν)
    rw[Complex.sub_re] at hsν
    exact_mod_cast (by linarith)

/--
Ramanujan formula:
`ζ(s)ζ(s-α)ζ(s-β)ζ(s-α-β)=ζ(2s-α-β) ∑ σ_α(n)σ_β(n)n^(-s)`. -/
@[blueprint
  "zeta_mul_zeta_mul_zeta_mul_zeta_eq"
  (title := "zeta mul zeta mul zeta mul zeta eq")
  (statement := /-- Ramanujan formula: $\zeta(s)\zeta(s-\alpha)\zeta(s-\beta)\zeta(s-\alpha-\beta)=\zeta(2s-\alpha-\beta) \sum_{n=1}^{\infty} \sigma_\alpha(n)\sigma_\beta(n)n^{-s}$.
  \begin{verbatim}
  This is IK (1.28).
  \end{verbatim}
   -/)
  (proof := /--
  This is a direct consequence of the multiplicative properties of the functions involved and the definition of the L-series. The left-hand side can be expressed as a product of L-series corresponding to the functions $\zeta$, $n \mapsto n^{-\alpha}$, and $n \mapsto n^{-\beta}$. The right-hand side involves the L-series of the convolution of $\sigma_\alpha$ and $\sigma_\beta$, which can be expressed in terms of the L-series of $\zeta$ and the power functions. By carefully applying the properties of Dirichlet convolutions and the definitions of the L-series, we can derive the stated formula.
  -/)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantea69b0b97d559cfe95d52b5b11cc61d4db07ad85ec6726005ebe6722cea0ebcb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantea69b0b97d559cfe95d52b5b11cc61d4db07ad85ec6726005ebe6722cea0ebcb.lean#L622).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1e130d856dabeec0e70683332be624b1a15c231` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
