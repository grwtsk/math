# product_scaled_neg_logDeriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:68d6fa2b-95df-ba02-2579-2103090e3a14",
  "kind": "theorem",
  "lexical_name": "product_scaled_neg_logDeriv",
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
  "slug": "product-scaled-neg-logderiv--d24ac04cc957a07180c8ac25",
  "source": {
    "blob": "dcb736fbc9dd37ce44a3bb2405788f81876ae7b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 21,
    "path": "GRWTSK/Analysis/Complex/LocalFactorOrderProduct.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d24ac04cc957a07180c8ac25fc5ac49638f9e029ffeba1275da275c7b8b6adca",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/LocalFactorOrderProduct.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68d6fa2b-95df-ba02-2579-2103090e3a14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem product_scaled_neg_logDeriv (f g u v : ℂ → ℂ) (a : ℂ) (k l : ℤ)
    (hu : AnalyticAt ℂ u a) (hu0 : u a ≠ 0)
    (hv : AnalyticAt ℂ v a) (hv0 : v a ≠ 0)
    (hf : f =ᶠ[𝓝[≠] a] fun s => (s - a) ^ k * u s)
    (hg : g =ᶠ[𝓝[≠] a] fun s => (s - a) ^ l * v s) :
    Tendsto (fun s => (s - a) * (-logDeriv (fun z => f z * g z) s))
      (𝓝[≠] a) (𝓝 (-((k + l : ℤ) : ℂ))) :=
  tendsto_scaled_neg_logDeriv_of_factorization _ _ a (k + l)
    (hu.mul hv) (mul_ne_zero hu0 hv0) (product_local_factorization f g u v a k l hf hg)

/-- An analytic nonvanishing extra factor contributes order zero, not a new residue. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/LocalFactorOrderProduct.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/LocalFactorOrderProduct.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dcb736fbc9dd37ce44a3bb2405788f81876ae7b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
