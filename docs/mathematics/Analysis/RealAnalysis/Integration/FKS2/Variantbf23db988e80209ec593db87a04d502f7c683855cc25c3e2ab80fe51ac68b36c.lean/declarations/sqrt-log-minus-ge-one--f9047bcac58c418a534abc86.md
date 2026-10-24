# sqrt_log_minus_ge_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ae6db2c8-70f3-2e26-5093-0fc09a976020",
  "kind": "lemma",
  "lexical_name": "sqrt_log_minus_ge_one",
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
  "slug": "sqrt-log-minus-ge-one--f9047bcac58c418a534abc86",
  "source": {
    "blob": "b782c60ba436204bfe0cbe2f3e10cf9ae3c50f1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2230,
    "line": 2207,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variantbf23db988e80209ec593db87a04d502f7c683855cc25c3e2ab80fe51ac68b36c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9047bcac58c418a534abc8685e6a8b1cc38ab2ef2b273deffc75dca2072247f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FKS2/Variantbf23db988e80209ec593db87a04d502f7c683855cc25c3e2ab80fe51ac68b36c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae6db2c8-70f3-2e26-5093-0fc09a976020`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2207–2230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sqrt_log_minus_ge_one {C R x₁ : ℝ}
    (hx1 : x₁ ≥ exp ((1 + C / (2 * sqrt R)) ^ 2)) :
    √(log x₁) - C / (2 * √R) ≥ 1 := by
  -- Taking the natural logarithm of both sides of the inequality $x₁ \geq \exp((1 + C / (2 * \sqrt{R}))^2)$, we get $\log x₁ \geq (1 + C / (2 * \sqrt{R}))^2$.
  have h_log : Real.log x₁ ≥ (1 + C / (2 * Real.sqrt R)) ^ 2 := by
    simpa using Real.log_le_log ( by positivity ) hx1;
  exact le_tsub_of_add_le_right ( Real.le_sqrt_of_sq_le ( by linarith ) )

/-
PROBLEM
Helper: the integral term from eq_30 is bounded by the Dawson component of μ_asymp

Bound the integral term from eq_30.

PROVIDED SOLUTION
Step 1: Since Eθ t ≥ 0, we have ∫ Eθ t / log t^2 ≤ ∫ |Eθ t| / log t^2.
Step 2: Apply lemma_12 to bound the integral.
Step 3: Multiply by log x / x and use integral_algebra to simplify:
  = 2 * m(x₀,x) * (log x)^(1-B) * dawson(√(log x) - C/(2√R)) * admissible_bound.
Step 4: Apply m_simplify to get m * (log x)^(1-B) ≤ 1/√(log x₁).
Step 5: Apply dawson_mono_ge_one (using sqrt_log_minus_ge_one for the ≥ 1 condition)
  to get dawson(√(log x)-C/(2√R)) ≤ dawson(√(log x₁)-C/(2√R)).
Step 6: Combine: ≤ 2/√(log x₁) * dawson(√(log x₁)-C/(2√R)) * admissible_bound.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FKS2/Variantbf23db988e80209ec593db87a04d502f7c683855cc25c3e2ab80fe51ac68b36c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variantbf23db988e80209ec593db87a04d502f7c683855cc25c3e2ab80fe51ac68b36c.lean#L2207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b782c60ba436204bfe0cbe2f3e10cf9ae3c50f1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
