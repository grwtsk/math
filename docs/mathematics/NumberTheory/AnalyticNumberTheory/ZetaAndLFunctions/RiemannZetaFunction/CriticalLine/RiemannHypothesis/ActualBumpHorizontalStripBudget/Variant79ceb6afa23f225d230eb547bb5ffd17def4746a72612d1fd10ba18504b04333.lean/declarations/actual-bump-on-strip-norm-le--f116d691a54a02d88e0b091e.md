# actual_bump_on_strip_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:52049c81-e4fe-edca-cf9f-b695066f918e",
  "kind": "theorem",
  "lexical_name": "actual_bump_on_strip_norm_le",
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
  "slug": "actual-bump-on-strip-norm-le--f116d691a54a02d88e0b091e",
  "source": {
    "blob": "fe53c30c0788cea36dd6a86df2550a6327ac3cb9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 60,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualBumpHorizontalStripBudget/Variant79ceb6afa23f225d230eb547bb5ffd17def4746a72612d1fd10ba18504b04333.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f116d691a54a02d88e0b091ecf6aa466827613362e8c8dd43c45c51b6b89233c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualBumpHorizontalStripBudget/Variant79ceb6afa23f225d230eb547bb5ffd17def4746a72612d1fd10ba18504b04333.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52049c81-e4fe-edca-cf9f-b695066f918e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_bump_on_strip_norm_le (A c x y : ℝ) (hA : 1 ≤ A) (hc : 1 < c)
    (hl : 1-c ≤ x) (hr : x ≤ c) (hy : 1 ≤ |y|) :
    ‖bumpLaplace ((A : ℂ)*((x : ℂ)+(y : ℂ)*Complex.I-1/2))‖ ≤
      204288 * Real.exp (A*(c-1/2)) / (A^5*|y|^5) := by
  let z : ℂ := (A : ℂ)*((x : ℂ)+(y : ℂ)*Complex.I-1/2)
  have hzre : z.re = A*(x-1/2) := by simp [z,Complex.mul_re]
  have hzim : z.im = A*y := by simp [z,Complex.mul_im]
  have hlower : A*|y| ≤ ‖z‖ := by
    simpa only [hzim,abs_mul,abs_of_nonneg (show 0 ≤ A by linarith)] using
      Complex.abs_im_le_norm z
  have hn : 1 ≤ ‖z‖ := by nlinarith
  have hre : |z.re| ≤ A*(c-1/2) := by
    rw [hzre,abs_mul,abs_of_nonneg (show 0 ≤ A by linarith)]
    exact mul_le_mul_of_nonneg_left (abs_le.mpr ⟨by linarith,by linarith⟩)
      (by linarith)
  have hp : A^5*|y|^5 ≤ ‖z‖^5 := by
    simpa only [mul_pow] using pow_le_pow_left₀ (by positivity) hlower 5
  calc
    _ ≤ 204288*Real.exp |z.re|/‖z‖^5 := actual_bump_norm_le_abs_re z hn
    _ ≤ 204288*Real.exp (A*(c-1/2))/‖z‖^5 := by gcongr
    _ ≤ _ := div_le_div_of_nonneg_left (by positivity) (by positivity) hp

/-- The full literal ordinary-square weight has an A⁻⁹ horizontal budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualBumpHorizontalStripBudget/Variant79ceb6afa23f225d230eb547bb5ffd17def4746a72612d1fd10ba18504b04333.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualBumpHorizontalStripBudget/Variant79ceb6afa23f225d230eb547bb5ffd17def4746a72612d1fd10ba18504b04333.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe53c30c0788cea36dd6a86df2550a6327ac3cb9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
