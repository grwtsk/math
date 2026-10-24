# sqrt_log_minus_ge_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6f46cc74-5fb2-abd9-62ab-060e250d5260",
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
  "slug": "sqrt-log-minus-ge-one--faec613002ab49fa6737a8ac",
  "source": {
    "blob": "4bc63a57afc465f27db885b1686b1f5e58591aef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2230,
    "line": 2207,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variantb98ed9f7a0ad0c712f2a6e834162cc247b167cc7114066c466053cd55d97b4a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:faec613002ab49fa6737a8acddae991a0859d0b7de00dfa9487e52a5a2e8d33e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FKS2/Variantb98ed9f7a0ad0c712f2a6e834162cc247b167cc7114066c466053cd55d97b4a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f46cc74-5fb2-abd9-62ab-060e250d5260`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2207–2230.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FKS2/Variantb98ed9f7a0ad0c712f2a6e834162cc247b167cc7114066c466053cd55d97b4a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variantb98ed9f7a0ad0c712f2a6e834162cc247b167cc7114066c466053cd55d97b4a5.lean#L2207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bc63a57afc465f27db885b1686b1f5e58591aef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
