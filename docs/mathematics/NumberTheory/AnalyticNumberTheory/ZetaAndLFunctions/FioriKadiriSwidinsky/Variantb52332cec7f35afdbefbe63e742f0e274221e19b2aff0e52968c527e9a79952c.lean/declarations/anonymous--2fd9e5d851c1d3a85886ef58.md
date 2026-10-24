# ε₃

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7c9329dbb2cf8cae2790afa8358ca5dbcdf6f6fc2bb01b1564a53bc6f51c218e",
  "kind": "def",
  "lexical_name": "ε₃",
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
  "slug": "anonymous--2fd9e5d851c1d3a85886ef58",
  "source": {
    "blob": "d645be53aef2067c81ea220aede21a93d941f61e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 462,
    "line": 448,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/FioriKadiriSwidinsky/Variantb52332cec7f35afdbefbe63e742f0e274221e19b2aff0e52968c527e9a79952c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2fd9e5d851c1d3a85886ef58d76174c91278474d083b09194c368bb552165080",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/FioriKadiriSwidinsky/Variantb52332cec7f35afdbefbe63e742f0e274221e19b2aff0e52968c527e9a79952c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7c9329dbb2cf8cae2790afa8358ca5dbcdf6f6fc2bb01b1564a53bc6f51c218e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 448–462.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def ε₃ (I : Inputs) (x σ₁ σ₂ : ℝ) (N : ℕ) (T : ℝ) : ℝ :=
    2 * x ^ (-(1 - σ₁) + (σ₂ - σ₁) / N) * (I.B₀ σ₁ (Hσ I.H₀ I.R σ₁) T) +
      2 * x ^ (1 - σ₁) * (1 - x ^ (-(σ₂ - σ₁) / N)) *
        ∑ n ∈ Finset.Ico 1 N, (I.B₀ (σn σ₁ σ₂ n N) (Hn I.H₀ I.R σ₁ σ₂ n N) T) *
          x ^ ((σ₂ - σ₁) * (n + 1) / N)

@[blueprint
  "fks-proposition-3-8"
  (title := "FKS Proposition 3.8")
  (statement := /--
    Let $N \geq 2$ be an integer.  If $5/8 \leq \sigma_1 < \sigma_2 \leq 1$, $T \geq H_0$, then
    $\Sigma_{\sigma_1}^{\sigma_2} ≤ 2 x^{-(1-\sigma_1)+(\sigma_2-\sigma_1/N)}B_0(\sigma_1,
    H_{\sigma_1}, T) + 2 x^{(1-\sigma_1)} (1 - x^{-(\sigma_2-\sigma_1)/N})
    \sum_{n=1}^{N-1} B_0(\sigma^{(n)}, H^{(n)}, T) x^{(\sigma_2-\sigma_1) (n+1)/N}$.
  -/)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/FioriKadiriSwidinsky/Variantb52332cec7f35afdbefbe63e742f0e274221e19b2aff0e52968c527e9a79952c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/FioriKadiriSwidinsky/Variantb52332cec7f35afdbefbe63e742f0e274221e19b2aff0e52968c527e9a79952c.lean#L448).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d645be53aef2067c81ea220aede21a93d941f61e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
