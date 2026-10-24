# corollary_3_12

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b746c74a-d421-ac2f-8a7d-f925f0ed32ba",
  "kind": "theorem",
  "lexical_name": "corollary_3_12",
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
  "slug": "corollary-3-12--0aeaad3e550428d89dca2f36",
  "source": {
    "blob": "aeb084ec45220d3f0ae964018cea4bce2d78a5b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 561,
    "line": 536,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/FioriKadiriSwidinsky/Variant98b65a559079ede32ffd79798582141697e9dab140fa1021652e7e53e76c575a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0aeaad3e550428d89dca2f362a5adbbc111b19107d7bebac9659aedb8d44c81d",
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

Occurrence: `result:b746c74a-d421-ac2f-8a7d-f925f0ed32ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 536–561.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem corollary_3_12 (I : Inputs) {σ₂ t₀ T x : ℝ} (K : ℕ) (hσ₂ : σ₂ ∈ Set.Ioc (5 / 8) 1)
    (ht₀ : t₀ = max (Hσ I.H₀ I.R σ₂) (exp (sqrt (log x) / I.R))) (hT : T > t₀)
    (ZDB : zero_density_bound) :
    riemannZeta.Sigma T x σ₂ 1 ≤ ε₄ I t₀ x σ₂ K T := by sorry

@[blueprint
  "fks-proposition-3-14"
  (title := "FKS Proposition 3-14")
  (statement := /--
    Fix $K \geq 2$ and $c > 1$, and set $t_0$, $T$, and $\sigma_2$ as functions of $x$ defined by
    \begin{equation}
    t_0 = t_0(x) = \exp\left(\sqrt{\frac{\log x}{R}}\right), \quad T = t_0^c, \quad \text{and}
      \quad \sigma_2 = 1 - \frac{2}{R \log t_0}.
    \end{equation}
    Then, with $\varepsilon_4(x, \sigma_2, K, T)$ as defined in (3.22), we have that as
    $x \to \infty$,
    \begin{equation}
    \varepsilon_4(x, \sigma_2, K, T) = (1 + o(1)) C
      \frac{(\log t_0)^{3 + \frac{4}{R \log t_0}}}{t_0^2}, \quad \text{with }
      C = 2c_1 e^{\frac{16w_1}{3R}} w_1^3, \text{ and } w_1 = 1 + \frac{c-1}{K},
    \end{equation}
    where $c_1$ is an admissible value for (ZDB) on some interval $[\sigma_1, 1]$. Moreover, both
    $\varepsilon_4(x, \sigma_2, K, T)$ and
    $\frac{\varepsilon_4(x, \sigma_2, K, T) t_0^2}{(\log t_0)^3}$ are decreasing in $x$ for
    $x > \exp(Re^2)$.
  -/)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/FioriKadiriSwidinsky/Variant98b65a559079ede32ffd79798582141697e9dab140fa1021652e7e53e76c575a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/FioriKadiriSwidinsky/Variant98b65a559079ede32ffd79798582141697e9dab140fa1021652e7e53e76c575a.lean#L536).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aeb084ec45220d3f0ae964018cea4bce2d78a5b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
