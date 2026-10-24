# source_absolute_tail_constant_le_rational_cap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8eef5697-b119-da40-b784-c1c6bb3cc437",
  "kind": "theorem",
  "lexical_name": "source_absolute_tail_constant_le_rational_cap",
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
  "slug": "source-absolute-tail-constant-le-rational-cap--b8a9eecb41185e9153050dac",
  "source": {
    "blob": "a206ee88188149cc2984c331c387de23c1cb5648",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 50,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/FiveModeFiniteTailBudget/Variantea5a9183ce4781b1675158f6aab2e17569d13220f4564966a3f3b3f04a015766.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8a9eecb41185e9153050dac81c2f063ffe301eddb0247e0e26cb3f954eac6b4",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/FiveModeFiniteTailBudget/Variantea5a9183ce4781b1675158f6aab2e17569d13220f4564966a3f3b3f04a015766.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8eef5697-b119-da40-b784-c1c6bb3cc437`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_absolute_tail_constant_le_rational_cap
    (A : ℝ) (hA : 1 ≤ A) (hA160 : A ≤ 160) :
    sourceAbsoluteTailConstant A 3000000000000 ≤ rationalSourceCap := by
  have hp : 0 < A := by linarith
  have hx : 10000 ≤ A*(3000000000000 : ℝ) := by nlinarith
  have hc := source_polynomial_budget_le_385 _ hx
  have hcn : 0 ≤ sourceTransformPolynomialBudget (A*3000000000000) := by
    unfold sourceTransformPolynomialBudget
    positivity
  have hn := original_normalization_ge_limit A hA
  have hcosh := actual_cosh_envelope_le_rational_max A hA hA160
  have he : 4*Real.cosh (A/2)^2 = Real.exp A+2+Real.exp (-A) := by
    rw [Real.cosh_eq]
    have hp2 : Real.exp (A/2)^2 = Real.exp A := by
      rw [pow_two, ← Real.exp_add]; congr 1; ring
    have hn2 : Real.exp (-(A/2))^2 = Real.exp (-A) := by
      rw [pow_two, ← Real.exp_add]; congr 1; ring
    have hm : Real.exp (A/2)*Real.exp (-(A/2)) = 1 := by
      rw [← Real.exp_add]; simp
    nlinarith
  rw [he] at hcosh
  have hs : (1+1/(4*(3000000000000 : ℝ)^2))^2 ≤ (17/16 : ℝ)^2 := by norm_num
  unfold sourceAbsoluteTailConstant rationalSourceCap
  calc
    _ = ((Real.exp A+2+Real.exp (-A))/A^9) *
      sourceTransformPolynomialBudget (A*3000000000000)^2 *
      (1+1/(4*(3000000000000 : ℝ)^2))^2 / sourceNormalization A := by ring
    _ ≤ _ := by gcongr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/FiveModeFiniteTailBudget/Variantea5a9183ce4781b1675158f6aab2e17569d13220f4564966a3f3b3f04a015766.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/FiveModeFiniteTailBudget/Variantea5a9183ce4781b1675158f6aab2e17569d13220f4564966a3f3b3f04a015766.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a206ee88188149cc2984c331c387de23c1cb5648` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
