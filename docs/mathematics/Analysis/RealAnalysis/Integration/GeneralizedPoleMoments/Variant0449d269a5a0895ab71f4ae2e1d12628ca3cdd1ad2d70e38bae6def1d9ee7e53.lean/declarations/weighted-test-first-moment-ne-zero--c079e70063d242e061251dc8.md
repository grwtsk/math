# weighted_test_first_moment_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ec2ae640-631c-0388-a80e-bd8329935dd7",
  "kind": "theorem",
  "lexical_name": "weighted_test_first_moment_ne_zero",
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
  "slug": "weighted-test-first-moment-ne-zero--c079e70063d242e061251dc8",
  "source": {
    "blob": "fb0f2f3e68b09d9620a4aa67786fcbcadc7e322d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 388,
    "line": 378,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant0449d269a5a0895ab71f4ae2e1d12628ca3cdd1ad2d70e38bae6def1d9ee7e53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c079e70063d242e061251dc83dc5273cc29cf2fdc1d98e5c884096b433fa511f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant0449d269a5a0895ab71f4ae2e1d12628ca3cdd1ad2d70e38bae6def1d9ee7e53.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec2ae640-631c-0388-a80e-bd8329935dd7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 378–388.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weighted_test_first_moment_ne_zero (A σ : ℝ) (hA : 1 ≤ A)
    (hσ : σ ^ 2 = 1 / 4) :
    (∫ x, x * Real.exp (σ * x) * normalizedTest explicitSecondDerivative A x) ≠ 0 := by
  rw [weighted_test_first_moment A σ hA hσ]
  apply div_ne_zero
  · have hs : σ ≠ 0 := by intro h; simp [h] at hσ
    exact mul_ne_zero (mul_ne_zero (by norm_num) hs)
      (ne_of_gt (weighted_bump_integral_pos A σ (by linarith)))
  · exact ne_of_gt (Real.sqrt_pos.2 (source_normalization_pos A hA))

/-- The actual scaled bump has the closed compact support used by the source. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant0449d269a5a0895ab71f4ae2e1d12628ca3cdd1ad2d70e38bae6def1d9ee7e53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant0449d269a5a0895ab71f4ae2e1d12628ca3cdd1ad2d70e38bae6def1d9ee7e53.lean#L378).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb0f2f3e68b09d9620a4aa67786fcbcadc7e322d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
