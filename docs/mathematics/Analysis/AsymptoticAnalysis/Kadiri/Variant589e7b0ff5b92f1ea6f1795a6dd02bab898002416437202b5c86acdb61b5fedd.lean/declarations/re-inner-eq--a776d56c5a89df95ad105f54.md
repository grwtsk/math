# re_inner_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "09c661c61a357717b95f812192cb59f97c078d54",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 252,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/58/589e7b0ff5b92f1ea6f1795a6dd02bab898002416437202b5c86acdb61b5fedd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:181cfdd4-178b-9944-1bc4-a6bb318a9cf1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9b8a6a7a-24e2-3e2a-7cd3-7c97344094b8",
  "kind": "theorem",
  "lexical_name": "re_inner_eq",
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
  "slug": "re-inner-eq--a776d56c5a89df95ad105f54",
  "source": {
    "blob": "09c661c61a357717b95f812192cb59f97c078d54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 287,
    "line": 252,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Kadiri/Variant589e7b0ff5b92f1ea6f1795a6dd02bab898002416437202b5c86acdb61b5fedd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a776d56c5a89df95ad105f54321f105e024891a998ce5baa3e893dac5021f41d",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Kadiri/Variant589e7b0ff5b92f1ea6f1795a6dd02bab898002416437202b5c86acdb61b5fedd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b8a6a7a-24e2-3e2a-7cd3-7c97344094b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem re_inner_eq (s : ℂ) :
    ((∑' n : ℕ, (Λ n : ℂ) / (n : ℂ) ^ s) - 1 / (s - 1) +
       ∑' ρ : riemannZeta.zeroes_rect (.Ioo 0 1) (.univ : Set ℝ),
         1 / (s - ρ.val)).re =
    -(1 / 2 : ℝ) * Real.log Real.pi +
      (1 / 2 : ℝ) * (digamma (s / 2 + 1)).re := by
  sorry

/-! ## Proposition 2.1 of `Kadiri2005` (the explicit formula)

Assembled from \ref{kadiri-identity-16}, \ref{kadiri-re-inner-eq}, and
\ref{kadiri-summable-lap-at-zeros}. -/

@[blueprint
  "kadiri-prop-2-1"
  (title := "Explicit formula (Kadiri 2005, Prop.~2.1)")
  (statement := /-- Let $d > 0$ and let $f \colon [0, d] \to \mathbb{R}$ be a non-negative
  function of class $C^2$ on $[0, d]$, compactly supported in $[0, d)$, satisfying the boundary
  conditions $f(d) = f'(0) = f'(d) = f''(d) = 0$ (hypothesis $(H_1)$ of \cite{Kadiri2005}).
  Let $F$ denote its Laplace transform $F(s) = \int_0^d e^{-s t} f(t)\, dt$, and let $F_2$
  denote the Laplace transform of $f''$. Then for every $s \in \mathbb{C}$, the sum
  $\sum_{\rho \in Z(\zeta)} \Re F(s - \rho)$ over the non-trivial zeros is convergent, and
  $$ \Re \sum_{n \geq 1} \frac{\Lambda(n)}{n^s} f(\log n)
    = f(0) \left( -\tfrac{1}{2} \log \pi
        + \tfrac{1}{2} \Re \tfrac{\Gamma'}{\Gamma}\!\left(\tfrac{s}{2} + 1\right) \right)
    + \Re F(s - 1) - \sum_{\rho \in Z(\zeta)} \Re F(s - \rho)
    + \Re \left( \frac{1}{2 \pi i} \int_{1/2 - i \infty}^{1/2 + i \infty}
        \Re \tfrac{\Gamma'}{\Gamma}\!\left(\tfrac{z}{2}\right) \frac{F_2(s - z)}{(s - z)^2}\, dz
        + \frac{F_2(s)}{s^2} \right), $$
  where $Z(\zeta)$ is the set of non-trivial zeros of $\zeta$ (those in the open critical strip
  $0 < \Re \rho < 1$). -/)
  (proof := /-- Assemble: the `Summable` conjunct is \ref{kadiri-summable-lap-at-zeros}; the
  identity follows from \ref{kadiri-identity-16} (the (16)-form) followed by
  \ref{kadiri-re-inner-eq} (which substitutes the $T_1$ form for the $f(0)$-coefficient
  $\Re$-expression). -/)
  (latexEnv := "proposition")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Kadiri/Variant589e7b0ff5b92f1ea6f1795a6dd02bab898002416437202b5c86acdb61b5fedd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Kadiri/Variant589e7b0ff5b92f1ea6f1795a6dd02bab898002416437202b5c86acdb61b5fedd.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09c661c61a357717b95f812192cb59f97c078d54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
