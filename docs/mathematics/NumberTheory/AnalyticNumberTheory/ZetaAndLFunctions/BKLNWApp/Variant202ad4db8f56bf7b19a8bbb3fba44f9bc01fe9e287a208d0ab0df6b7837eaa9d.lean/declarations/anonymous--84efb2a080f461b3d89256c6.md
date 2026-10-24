# ν

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:318ecc52c02c4d8b5b72567cd3ee1a8f77bbd3c355b0cefc90e58e430c604b15",
  "kind": "def",
  "lexical_name": "ν",
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
  "slug": "anonymous--84efb2a080f461b3d89256c6",
  "source": {
    "blob": "d23f277aa57f0df744f827aba10ffe84abca071f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 667,
    "line": 617,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/BKLNWApp/Variant202ad4db8f56bf7b19a8bbb3fba44f9bc01fe9e287a208d0ab0df6b7837eaa9d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:84efb2a080f461b3d89256c6de672ca23beba0c7dbc8684f006e337c528b3e46",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/BKLNWApp/Variant202ad4db8f56bf7b19a8bbb3fba44f9bc01fe9e287a208d0ab0df6b7837eaa9d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:318ecc52c02c4d8b5b72567cd3ee1a8f77bbd3c355b0cefc90e58e430c604b15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 617–667.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def ν (c ε t : ℝ) : ℝ :=
  ∫ τ in Set.Iic t, μ c ε τ

@[blueprint
  "bklnw-thm_16"
  (title := "Theorem 16")
  (statement := /-- Let
  $0 < \varepsilon < 10^{-3}$, $c \geq 3$,
  $x_0 \geq 100$ and $\alpha \in [0, 1)$
  such that the inequality
  $$ B_0 := \frac{\varepsilon e^{-\varepsilon}
  x_0 |\nu_c(\alpha)|}
  {2(\mu_c)_+(\alpha)} > 1 $$
  holds. We denote the zeros of the
  Riemann zeta function by
  $\rho = \beta + i\gamma$ with
  $\beta, \gamma \in \mathbb{R}$.
  Then, if $\beta = \frac{1}{2}$ holds for
  $0 < \gamma \leq \frac{c}{\varepsilon}$,
  the inequality
  $$ |\psi(x) - x| \leq x e^{\varepsilon\alpha}
  (\mathcal{E}_1 + \mathcal{E}_2
  + \mathcal{E}_3) $$
  holds for all
  $x \geq e^{\varepsilon\alpha} x_0$, where
  \begin{align*}
  \mathcal{E}_1 &= e^{2\varepsilon}
  \log(e^\varepsilon x_0)
  \left[\frac{2\varepsilon|\nu_c(\alpha)|}
  {\log B_0}
  + \frac{2.01\varepsilon}{\sqrt{x_0}}
  + \frac{\log\log(2x_0^2)}{2x_0}\right]
  + e^{\varepsilon\alpha} - 1, \\
  \mathcal{E}_2 &= 0.16
  \frac{1 + x_0^{-1}}{\sinh c}
  e^{0.71\sqrt{c\varepsilon}}
  \log\left(\frac{c}{\varepsilon}\right),
  \quad \text{and} \\
  \mathcal{E}_3 &= \frac{2}{\sqrt{x_0}}
  \sum_{0 < \gamma < \frac{c}{\varepsilon}}
  \frac{\ell_{c,\varepsilon}(\gamma)}{\gamma}
  + \frac{2}{x_0}.
  \end{align*}
  The $\nu_c(\alpha) = \nu_{c,1}(\alpha)$ and
  $\mu_c(\alpha) = \mu_{c,1}(\alpha)$ where
  $\nu_{c,\varepsilon}(\alpha)$ and
  $\mu_{c,\varepsilon}(\alpha)$ are
  defined by \cite[p.~2490]{Buthe2}. -/)
  (proof := /-- This is
  \cite[Theorem 1]{Buthe2}. -/)
  (latexEnv := "theorem")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/BKLNWApp/Variant202ad4db8f56bf7b19a8bbb3fba44f9bc01fe9e287a208d0ab0df6b7837eaa9d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/BKLNWApp/Variant202ad4db8f56bf7b19a8bbb3fba44f9bc01fe9e287a208d0ab0df6b7837eaa9d.lean#L617).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d23f277aa57f0df744f827aba10ffe84abca071f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
