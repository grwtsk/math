# actual_plain_profile_derivative_neg_on_twenty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e917b085-53fd-eae1-eb2c-6b25f48f5828",
  "kind": "theorem",
  "lexical_name": "actual_plain_profile_derivative_neg_on_twenty",
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
  "slug": "actual-plain-profile-derivative-neg-on-twenty--db69c95c8cb3deda10a385b2",
  "source": {
    "blob": "e84a840cc569b09e3f8f58f3172639b5208b1adc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 31,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiFloorDensitySigns/Variant6ecf8357599548876439f230d14c477f56e3c9547627a02025527dc29c7a9982.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db69c95c8cb3deda10a385b25e0b00161028357dc5b6eaf9ed6d77041509b2b3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiFloorDensitySigns/Variant6ecf8357599548876439f230d14c477f56e3c9547627a02025527dc29c7a9982.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e917b085-53fd-eae1-eb2c-6b25f48f5828`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_plain_profile_derivative_neg_on_twenty {A x : ℝ}
    (hA : 91 ≤ A) (hx : 1 ≤ x) (hx20 : x ≤ 20) :
    deriv (plainProfile A 1) x < 0 := by
  have hp : 0 < A := by linarith
  have hxp : 0 < x := by linarith
  have he2 : (5 : ℝ) ≤ Real.exp 2 := by
    nlinarith [Real.quadratic_le_exp_of_nonneg (by norm_num : (0 : ℝ) ≤ 2)]
  have he4 : (25 : ℝ) ≤ Real.exp 4 := by
    rw [show (4 : ℝ) = 2 + 2 by norm_num, Real.exp_add]
    nlinarith [Real.exp_pos (2 : ℝ)]
  have hl20 : Real.log (20 : ℝ) ≤ 4 :=
    (Real.log_le_iff_le_exp (by norm_num : (0 : ℝ) < 20)).2 (by linarith)
  have ht0 : 0 ≤ Real.log x := Real.log_nonneg hx
  have ht4 : Real.log x ≤ 4 := (Real.log_le_log hxp hx20).trans hl20
  have ht2 : (Real.log x) ^ 2 ≤ 16 := by nlinarith
  have hC := actualCorrelation_sub_one_abs_le_five hA (Real.log x)
  have hD := actualCorrelation_first_abs_le_five hA (Real.log x)
  rw [abs_of_nonneg ht0] at hD
  have hc : 1 - sourceCorrelation explicitSecondDerivative A (Real.log x) ≤
      (5 / 2 : ℝ) * (Real.log x) ^ 2 / A ^ 2 := by
    have hh := (abs_le.mp hC).1
    calc
      _ ≤ (5 / 2 : ℝ) / A ^ 2 * (Real.log x) ^ 2 := by linarith
      _ = _ := by ring
  have hd : deriv (sourceCorrelation explicitSecondDerivative A) (Real.log x) ≤
      5 * Real.log x / A ^ 2 := by
    calc
      _ ≤ 5 / A ^ 2 * Real.log x := (abs_le.mp hD).2
      _ = _ := by ring
  have hcp := (le_div_iff₀ (by positivity : 0 < A ^ 2)).mp hc
  have hdp := (le_div_iff₀ (by positivity : 0 < A ^ 2)).mp hd
  have hq : (8281 : ℝ) ≤ A ^ 2 := by nlinarith
  have hi : deriv (sourceCorrelation explicitSecondDerivative A) (Real.log x) -
      sourceCorrelation explicitSecondDerivative A (Real.log x) / 2 < 0 := by
    have hm : (deriv (sourceCorrelation explicitSecondDerivative A) (Real.log x) -
        sourceCorrelation explicitSecondDerivative A (Real.log x) / 2) * A ^ 2 < 0 := by
      nlinarith
    nlinarith [sq_pos_of_pos hp]
  rw [(plainProfile_hasDerivAt hp 1 hxp).deriv]
  simp only [Real.log_one, zero_add]
  exact mul_neg_of_pos_of_neg (div_pos (Real.exp_pos _) hxp) hi

/-- Actual closed Psi powers make this real block strictly negative in the signed pairing. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiFloorDensitySigns/Variant6ecf8357599548876439f230d14c477f56e3c9547627a02025527dc29c7a9982.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiFloorDensitySigns/Variant6ecf8357599548876439f230d14c477f56e3c9547627a02025527dc29c7a9982.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e84a840cc569b09e3f8f58f3172639b5208b1adc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
