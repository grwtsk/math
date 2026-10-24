# bklnw_eq_A_13

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:66b07853-5703-d3c7-da5c-2f63941a322f",
  "kind": "theorem",
  "lexical_name": "bklnw_eq_A_13",
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
  "slug": "bklnw-eq-a-13--cfabd9330aba1982b2d9f354",
  "source": {
    "blob": "8540b9c42bd040f88ceaa130fd3ccba5e0ae6db4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 206,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/BKLNWApp/Variant483449c6dc3d8f60971d6f5ea1117255f01777aa69f3bc95a6b316a48ceda1fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cfabd9330aba1982b2d9f354c64a9e47c13c3791c0f9fd9a5a9a12012696ef90",
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

Occurrence: `result:66b07853-5703-d3c7-da5c-2f63941a322f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bklnw_eq_A_13 (I : Inputs)
    (x T δ lambda : ℝ) (hlambda : 1 < lambda)
    (hx : 1 < x) (hT : 0 < T) (hTH : I.H < T)
    (hσ : 1 - δ ∈ I.ZDB.σ_range) (hT₀ : I.ZDB.T₀ ≤ I.H) :
    let K := ⌊log (T / I.H) / log lambda⌋₊ + 1
    ‖Sigma₂ x T δ‖ ≤ (2 * lambda / T) *
      ∑ k ∈ Finset.range K,
        exp (k * log lambda -
          (log x) / (I.R * (log T -
            k * log lambda))) *
        (I.ZDB.c₁ (1 - δ) *
          (T / lambda ^ k) ^ (I.ZDB.p (1 - δ)) *
          (log (T / lambda ^ k)) ^ (I.ZDB.q (1 - δ)) +
        I.ZDB.c₂ (1 - δ) *
          (log (T / lambda ^ k)) ^ 2) := by
  have h4 (k : ℕ) : exp ((k : ℝ) * log lambda - (log x) / (I.R * (log T - (k : ℝ) * log lambda))) =
      lambda ^ k * x ^ (-(1 / (I.R * log (T / lambda ^ k)))) := by
    rw [Real.log_div hT.ne' (by positivity), Real.log_pow, sub_eq_add_neg,
      Real.exp_add, Real.exp_nat_mul, Real.exp_log (by positivity),
      Real.rpow_def_of_pos (by positivity), mul_neg, mul_one_div]
  refine (bklnw_eq_A_12 I x T δ lambda hlambda hx hT hTH hσ hT₀).trans (le_of_eq ?_)
  simp_rw [zero_density_bound.N, Finset.mul_sum, h4]; congr 1; ext k; ring

@[blueprint
  "bklnw-eq_A_14"
  (title := "Equation (A.14)")
  (statement := /-- We denote
  \begin{align}
  s_2(b, \lambda, K, T) &= \frac{2\lambda}{T}
  \sum_{k=0}^{K-1}
  \exp\left(k \log \lambda
  - \frac{b}{R(\log T
  - k \log \lambda)}\right) \\
  &\quad \times \left(c_1
  \left(\frac{T}{\lambda^k}
  \right)^{p(1-\delta)}
  (\log(T/\lambda^k))^{q(1-\delta)}
  + c_2
  (\log(T/\lambda^k))^2\right) \notag
  \end{align}
  where $p$, $q$, $c_1$, $c_2$ are the
  parameters of the zero density bound. -/)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/BKLNWApp/Variant483449c6dc3d8f60971d6f5ea1117255f01777aa69f3bc95a6b316a48ceda1fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/BKLNWApp/Variant483449c6dc3d8f60971d6f5ea1117255f01777aa69f3bc95a6b316a48ceda1fc.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8540b9c42bd040f88ceaa130fd3ccba5e0ae6db4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
