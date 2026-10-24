# zeta_pow_four_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cf9bfc459f0e3cd584d2ef9726e580780198b141",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 657,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c3/c39d8a2cc2e7ade486261c02ce7fd99d32a83631353ad661af9d9c10b69c0f49.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a75c7299-903e-5cb0-e2c1-106556c97dff",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bc9ddb5a-3352-998d-c9b5-5595e86c1b1b",
  "kind": "theorem",
  "lexical_name": "zeta_pow_four_eq",
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
  "slug": "zeta-pow-four-eq--7cd8acbb5a70f53f034ab58e",
  "source": {
    "blob": "cf9bfc459f0e3cd584d2ef9726e580780198b141",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 679,
    "line": 657,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantc39d8a2cc2e7ade486261c02ce7fd99d32a83631353ad661af9d9c10b69c0f49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7cd8acbb5a70f53f034ab58ef75ca41e119e63b1b835f48594a6a36c81591eda",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantc39d8a2cc2e7ade486261c02ce7fd99d32a83631353ad661af9d9c10b69c0f49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc9ddb5a-3352-998d-c9b5-5595e86c1b1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 657–679.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zeta_pow_four_eq (s : ℂ) (hs : 1 < s.re) :
    riemannZeta s ^ 4 = riemannZeta (2 * s) * LSeries (fun n ↦ (τ n) ^ 2) s := by
  convert (zeta_mul_zeta_mul_zeta_mul_zeta_eq 0 0 s hs (by simpa using hs) (by simpa using hs)
      (by simpa using hs)) using 1
  · ring_nf
  · congr
    · ring_nf
    · simp [tau, sigma, sigmaR, pow_two]

/--
Baby Rankin-Selberg:
`ζ(s)∑τ(n^2)n^-s = ∑τ(n)^2 n^-s`. -/
@[blueprint
  "zeta_mul_tau_square_eq"
  (title := "zeta mul tau square eq")
  (statement := /-- Baby Rankin-Selberg: $\zeta(s)\sum_{n=1}^{\infty}\tau(n^2)n^{-s} = \sum_{n=1}^{\infty}\tau(n)^2 n^{-s}$.
  \begin{verbatim}
  Precursor to IK (1.30).
  \end{verbatim}
  -/)
  (proof := /--
  This follows from the multiplicative properties of the divisor function $\tau$ and the definition of the L-series. The left-hand side can be expressed as a product of L-series corresponding to $\zeta$ and the function $n \mapsto \tau(n^2)$. The right-hand side is the L-series of the function $n \mapsto \tau(n)^2$. By analyzing the Euler products and using the fact that $\tau(n)$ counts divisors, we can derive the stated equality.
  -/)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantc39d8a2cc2e7ade486261c02ce7fd99d32a83631353ad661af9d9c10b69c0f49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantc39d8a2cc2e7ade486261c02ce7fd99d32a83631353ad661af9d9c10b69c0f49.lean#L657).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf9bfc459f0e3cd584d2ef9726e580780198b141` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
