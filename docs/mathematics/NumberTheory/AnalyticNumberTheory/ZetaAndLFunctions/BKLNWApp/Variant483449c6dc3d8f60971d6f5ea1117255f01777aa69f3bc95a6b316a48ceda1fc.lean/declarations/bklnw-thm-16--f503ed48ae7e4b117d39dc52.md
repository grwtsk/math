# bklnw_thm_16

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0d14c070-7a2a-1924-fa4b-6bc26c272213",
  "kind": "theorem",
  "lexical_name": "bklnw_thm_16",
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
  "slug": "bklnw-thm-16--f503ed48ae7e4b117d39dc52",
  "source": {
    "blob": "8540b9c42bd040f88ceaa130fd3ccba5e0ae6db4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 728,
    "line": 676,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/BKLNWApp/Variant483449c6dc3d8f60971d6f5ea1117255f01777aa69f3bc95a6b316a48ceda1fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f503ed48ae7e4b117d39dc52fc2c1302442ccf40717c1beb7b1850951f59b552",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/BKLNWApp/Variant483449c6dc3d8f60971d6f5ea1117255f01777aa69f3bc95a6b316a48ceda1fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d14c070-7a2a-1924-fa4b-6bc26c272213`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 676–728.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bklnw_thm_16 (ε c x₀ α : ℝ)
    (hε : 0 < ε ∧ ε < 1e-3)
    (hc : 3 ≤ c)
    (hx₀ : 100 ≤ x₀)
    (hα : 0 ≤ α ∧ α < 1)
    (hB0 : (ε * rexp (-ε) * x₀ * |ν c ε α|) /
      (2 * (μ c ε α)) > 1)
    (hRH : riemannZeta.RH_up_to (c / ε))
    (x : ℝ)
    (hx : x ≥ rexp (ε * α) * x₀) :
    let E₁ :=
      rexp (2 * ε) * log (rexp ε * x₀) *
        (2 * ε * |ν c ε α| /
          log ((ε * rexp (-ε) * x₀ *
            |ν c ε α|) / (2 * (μ c ε α))) +
        2.01 * ε / sqrt x₀ +
        log (log (2 * x₀ ^ 2) /
          (2 * x₀))) +
      exp (ε * α) - 1
    let E₂ :=
      0.16 * (1 + x₀ ^ (-1 : ℝ)) / sinh c *
        exp (0.71 * sqrt (c * ε)) *
        log (c / ε)
    let E₃ :=
      2 / sqrt x₀ *
        riemannZeta.zeroes_sum (Set.Icc 0 1)
          (Set.Ioo 0 (c / ε))
          (fun ρ ↦ ℓ c ε ρ.im / ρ.im) +
      2 / x₀
    Eψ x ≤ exp (ε * α) * (E₁ + E₂ + E₃) := by
  sorry

blueprint_comment /--
Note: This thesis of Bhattacharjee \cite{bhattacharjee2023survey} will be a good resource
when formalizing this result.
-/

@[blueprint
  "bknlw-theorem-2"
  (title := "Theorem 2")
  (statement := /-- If $b>0$ then
  $|\psi(x) - x| \leq \varepsilon(b) x$
  for all $x \geq \exp(b)$, where
  $\varepsilon$ is as in
  \cite[Table 8]{BKLNW}. -/)
  (latexEnv := "theorem")
  (proof := /-- Values for
  $20 \leq b \leq 2000$ are computed using
  Theorem \ref{bklnw-thm-16}, and values for
  $2500 \leq b \leq 25000$ are computed as
  using Theorem \ref{bklnw-thm-13}.
  For $b > 25000$ we use
  Theorem \ref{bklnw-thm-14}. -/)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/BKLNWApp/Variant483449c6dc3d8f60971d6f5ea1117255f01777aa69f3bc95a6b316a48ceda1fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/BKLNWApp/Variant483449c6dc3d8f60971d6f5ea1117255f01777aa69f3bc95a6b316a48ceda1fc.lean#L676).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8540b9c42bd040f88ceaa130fd3ccba5e0ae6db4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
