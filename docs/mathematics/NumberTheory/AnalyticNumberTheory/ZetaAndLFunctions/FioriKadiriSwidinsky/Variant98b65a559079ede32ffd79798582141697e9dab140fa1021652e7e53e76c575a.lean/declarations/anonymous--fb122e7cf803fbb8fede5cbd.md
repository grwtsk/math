# ε₄

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6b0fa6dda166a1ab090ae5a3bc50ced8fbc7d9c81bec8440766a2c4ebdecc176",
  "kind": "def",
  "lexical_name": "ε₄",
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
  "slug": "anonymous--fb122e7cf803fbb8fede5cbd",
  "source": {
    "blob": "aeb084ec45220d3f0ae964018cea4bce2d78a5b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 535,
    "line": 509,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/FioriKadiriSwidinsky/Variant98b65a559079ede32ffd79798582141697e9dab140fa1021652e7e53e76c575a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fb122e7cf803fbb8fede5cbd9c7e572c0cb7fafbe4e5e12ae549c16b83a0d38f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/FioriKadiriSwidinsky/Variant98b65a559079ede32ffd79798582141697e9dab140fa1021652e7e53e76c575a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6b0fa6dda166a1ab090ae5a3bc50ced8fbc7d9c81bec8440766a2c4ebdecc176`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 509–535.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def ε₄ (I : Inputs) (t₀ x σ₂ : ℝ) (K : ℕ) (T : ℝ) : ℝ :=
    let t : Fin (K + 2) → ℝ := fun k ↦ t₀ * (T / t₀) ^ (k / K)
    2 * ∑ k ∈ Finset.Ioo 0 (Fin.last (K + 1)),
      (x ^ (-1 / (I.R * log (t k))) / (t k)) *
        (I.ZDB.N σ₂ (t (k + 1)) - I.ZDB.N σ₂ (t k)) +
      2 * (I.ZDB.N σ₂ (t 1)) * x ^ (-1 / (I.R * log (t 0))) / (t 0)

@[blueprint
  "fks-corollary-3-12"
  (title := "FKS Corollary 3.12")
  (statement := /--
    Let $5/8 < \sigma_2 \leq 1$, $t_0 = t_0(\sigma_2, x) = \max\left(H_{\sigma_2},
    \exp\left(\sqrt{\frac{\log x}{R}}\right)\right)$, $T > t_0$. Let $K \geq 2$,
    $\lambda = (T/t_0)^{1/K}$, and consider $(t_k)_{k=0}^K$ the sequence given by
    $t_k = t_0 \lambda^k$. Then
    \[
    \Sigma^1_{\sigma_2} = 2 \sum_{\substack{0 < \gamma < T \\ \sigma_2 \leq \beta < 1}}
      \frac{x^{\beta-1}}{\gamma} \leq \varepsilon_4(x, \sigma_2, K, T),
    \]
    where
    \[
    \varepsilon_4(x, \sigma_2, K, T) = 2 \sum_{k=1}^{K-1} \frac{x^{-\frac{1}{R \log t_k}}}{t_k}
      \left( \tilde{N}(\sigma_2, t_{k+1}) - \tilde{N}(\sigma_2, t_k) \right) +
      2\tilde{N}(\sigma_2, t_1) \frac{x^{-\frac{1}{R(\log t_0)}}}{t_0},
    \]
    and $\tilde{N}(\sigma, T)$ satisfy (ZDB) $N(\sigma, T) \leq \tilde{N}(\sigma, T)$.
  -/)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/FioriKadiriSwidinsky/Variant98b65a559079ede32ffd79798582141697e9dab140fa1021652e7e53e76c575a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/FioriKadiriSwidinsky/Variant98b65a559079ede32ffd79798582141697e9dab140fa1021652e7e53e76c575a.lean#L509).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aeb084ec45220d3f0ae964018cea4bce2d78a5b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
