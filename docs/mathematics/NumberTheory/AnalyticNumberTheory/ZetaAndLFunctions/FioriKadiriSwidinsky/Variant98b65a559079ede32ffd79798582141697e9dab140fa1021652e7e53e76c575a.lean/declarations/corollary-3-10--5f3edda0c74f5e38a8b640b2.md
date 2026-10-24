# corollary_3_10

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d2c6c14c-637a-625c-82f2-8dea5e15f0ac",
  "kind": "theorem",
  "lexical_name": "corollary_3_10",
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
  "slug": "corollary-3-10--5f3edda0c74f5e38a8b640b2",
  "source": {
    "blob": "aeb084ec45220d3f0ae964018cea4bce2d78a5b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 494,
    "line": 480,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/FioriKadiriSwidinsky/Variant98b65a559079ede32ffd79798582141697e9dab140fa1021652e7e53e76c575a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f3edda0c74f5e38a8b640b2b4b0d0ddae468b2a53b5d5956627b12d6d218e4d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/FioriKadiriSwidinsky/Variant98b65a559079ede32ffd79798582141697e9dab140fa1021652e7e53e76c575a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2c6c14c-637a-625c-82f2-8dea5e15f0ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 480–494.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem corollary_3_10 {σ₁ σ₂ T x : ℝ} (hσ₁ : σ₁ ∈ Set.Icc 0.9 1) (hσ₂ : σ₂ ∈ Set.Ioc σ₁ 1) :
    riemannZeta.Sigma T x σ₁ σ₂ ≤ 0.00125994 * x ^ (σ₂ - 1) := by sorry

@[blueprint
  "fks-proposition-3-11"
  (title := "FKS Proposition 3.11")
  (statement := /--
    Let $5/8 < \sigma_2 \leq 1$, $t_0 = t_0(\sigma_2,x) = \max(H_{\sigma_2},
    \exp( \sqrt{\log x}/R))$ and $T > 0$.  Let $K \geq 2$ and consider a strictly increasing
    sequence $(t_k)_{k=0}^K$ such that $t_k = T$.  Then
    $\Sigma_{\sigma_2}^1 ≤ 2 N(\sigma_2,T) x^{-1/R\log t_0}/t_0$ and
    $\Sigma_{\sigma_2}^1 ≤ 2 ((\sum_{k=1}^{K-1} N(\sigma_2, t_k)
    (x^{-1/R\log t_{k-1}} / t_{k-1} - x^{-1/(R \log t_k)}/t_k)) +
    x^{-1/R \log t_{K-1}}/t_{K-1} N(\sigma_2,T))$.
  -/)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/FioriKadiriSwidinsky/Variant98b65a559079ede32ffd79798582141697e9dab140fa1021652e7e53e76c575a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/FioriKadiriSwidinsky/Variant98b65a559079ede32ffd79798582141697e9dab140fa1021652e7e53e76c575a.lean#L480).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aeb084ec45220d3f0ae964018cea4bce2d78a5b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
