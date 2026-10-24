# critical_bump_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3237439f-cb80-c4ae-a461-67ac3c1088a4",
  "kind": "theorem",
  "lexical_name": "critical_bump_norm_le",
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
  "slug": "critical-bump-norm-le--a8dfeb8566ac878147af5933",
  "source": {
    "blob": "83465f9e48f74962c04e2661bf42f86a15d2a9f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 73,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalOrdinateBudget/Variant653f6b5253e257b350103fa9c87491a47967cbce1855be8a10d7452e38fcc48e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8dfeb8566ac878147af5933f90792a9d14ae09dbb18f165bc5b91851c73ab6d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalOrdinateBudget/Variant653f6b5253e257b350103fa9c87491a47967cbce1855be8a10d7452e38fcc48e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3237439f-cb80-c4ae-a461-67ac3c1088a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem critical_bump_norm_le (A : ℝ) (s : ℂ) (hA : 1 ≤ A)
    (hs : s.re = 1 / 2) (ht : 1 ≤ A * |s.im|) :
    ‖bumpLaplace ((A : ℂ) * (s - 1 / 2))‖ ≤
      204288 / (A ^ 5 * |s.im| ^ 5) := by
  let z : ℂ := (A : ℂ) * (s - 1 / 2)
  have hzr : z.re = 0 := by simp [z, Complex.mul_re, hs]
  have hzi : z.im = A * s.im := by simp [z, Complex.mul_im]
  have hl : A * |s.im| ≤ ‖z‖ := by
    simpa only [hzi, abs_mul, abs_of_nonneg (show 0 ≤ A by linarith)] using
      Complex.abs_im_le_norm z
  have hz : 1 ≤ ‖z‖ := ht.trans hl
  have hp : A ^ 5 * |s.im| ^ 5 ≤ ‖z‖ ^ 5 := by
    simpa only [mul_pow] using pow_le_pow_left₀ (by positivity) hl 5
  have htt : 0 < |s.im| := by nlinarith [abs_nonneg s.im]
  have hb := actual_bump_vertical_norm_le z (by rw [hzr]) hz
  rw [hzr, Real.exp_zero, mul_one] at hb
  exact hb.trans (div_le_div_of_nonneg_left (by norm_num) (by positivity) hp)

/-- The critical source weight has no growing exponential, even at small nonzero ordinates. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalOrdinateBudget/Variant653f6b5253e257b350103fa9c87491a47967cbce1855be8a10d7452e38fcc48e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalOrdinateBudget/Variant653f6b5253e257b350103fa9c87491a47967cbce1855be8a10d7452e38fcc48e.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83465f9e48f74962c04e2661bf42f86a15d2a9f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
