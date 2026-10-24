# Inputs.s₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a0d2ff0de188fb05ba6921a60279ffb5abef3ac8ebcd8dfdbc1ecec2cd130c50",
  "kind": "def",
  "lexical_name": "Inputs.s₂",
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
  "slug": "inputs-s--391322fed6eeb8de96116ed3",
  "source": {
    "blob": "8540b9c42bd040f88ceaa130fd3ccba5e0ae6db4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 248,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/BKLNWApp/Variant483449c6dc3d8f60971d6f5ea1117255f01777aa69f3bc95a6b316a48ceda1fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:391322fed6eeb8de96116ed33e1e5b07d66db50f3ff77b711aae22039ade64de",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/BKLNWApp/Variant483449c6dc3d8f60971d6f5ea1117255f01777aa69f3bc95a6b316a48ceda1fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a0d2ff0de188fb05ba6921a60279ffb5abef3ac8ebcd8dfdbc1ecec2cd130c50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Inputs.s₂ (I : Inputs)
    (δ b : ℝ) (K : ℕ) (lambda T : ℝ) : ℝ :=
  (2 * lambda / T) *
    ∑ k ∈ Finset.range K,
      exp (k * log lambda -
        b / (I.R * (log T -
          k * log lambda))) *
      (I.ZDB.c₁ (1 - δ) *
        (T / lambda ^ k) ^ (I.ZDB.p (1 - δ)) *
        (log (T / lambda ^ k)) ^ (I.ZDB.q (1 - δ)) +
      I.ZDB.c₂ (1 - δ) *
        (log (T / lambda ^ k)) ^ 2)

@[blueprint
  "bklnw-thm-13"
  (title := "Theorem 13")
  (statement := /-- Let $b_1, b_2$ satisfy
  $1000 \leq b_1 < b_2$.
  Let $0.001 \leq \delta \leq 0.025$,
  $\lambda > 1$,
  $H < T < e^{b_1}$, and
  $K = \left\lfloor \frac{\log \frac{T}{H}}
  {\log \lambda} \right\rfloor + 1$.
  Then for all $x \in [e^{b_1}, e^{b_2}]$
  $$ \left|\frac{\psi(x) - x}{x}\right|
  \leq s_0(b_2, T)
  + s_1(b_1, \delta, T)
  + s_2(b_1, \delta, \lambda, K, T), $$
  where $s_0, s_1, s_2$ are respectively
  defined in Definitions \ref{bklnw-eq_A_8},
  \ref{bklnw-eq_A_11}, and
  \ref{bklnw-eq_A_14} -/)
  (proof := /-- Follows from combining Sublemmas
  \ref{bklnw_eq_A_7}, \ref{bklnw_eq_A_9},
  \ref{bklnw_eq_A_10}, and
  \ref{bklnw_eq_A_13}. -/)
  (latexEnv := "theorem")
  (discussion := 752)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/BKLNWApp/Variant483449c6dc3d8f60971d6f5ea1117255f01777aa69f3bc95a6b316a48ceda1fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/BKLNWApp/Variant483449c6dc3d8f60971d6f5ea1117255f01777aa69f3bc95a6b316a48ceda1fc.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8540b9c42bd040f88ceaa130fd3ccba5e0ae6db4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
