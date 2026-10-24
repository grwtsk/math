# actualAdjoint_original_rectangle_kernel_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d77eabb5-8544-5afe-296b-881868c402cd",
  "kind": "theorem",
  "lexical_name": "actualAdjoint_original_rectangle_kernel_lower",
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
  "slug": "actualadjoint-original-rectangle-kernel-lower--5cbd998139c0cd72823282dc",
  "source": {
    "blob": "759ff2be6c60368eda2d3df70ee827968a963043",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 96,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualAdjointSecondSectorChallengeSourceNative02/Variant3745d2d1950aea29ea9c63bd1901b8e2792dfd07b2236c80266e348622b58757.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5cbd998139c0cd72823282dc74cf068a15467e256e3be40e54a67376a83ee53c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualAdjointSecondSectorChallengeSourceNative02/Variant3745d2d1950aea29ea9c63bd1901b8e2792dfd07b2236c80266e348622b58757.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d77eabb5-8544-5afe-296b-881868c402cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualAdjoint_original_rectangle_kernel_lower {A t u : ℝ} (hA : 25600 ≤ A)
    (ht : Real.log (vaughanCutoff A : ℝ) ≤ t)
    (ht1 : t ≤ Real.log (vaughanCutoff A : ℝ) + 1)
    (hu : ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ u)
    (hu2 : u ≤ ((vaughanCutoff A + 2 : ℕ) : ℝ)) :
    1 / (2 * A ^ 2) ≤
      iteratedDeriv 4 (sourceCorrelation explicitSecondDerivative A) (t + Real.log u) -
        iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) (t + Real.log u) / 4 := by
  have h2 : iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) (t + Real.log u) ≤
      -3 / A ^ 2 := by
    simpa only [iteratedDeriv_succ, iteratedDeriv_zero] using
      actualMixed_rectangle_second_upper hA ht ht1 hu hu2
  have h4 := actual_correlation_iterated_fourth_abs_le_sixty_seven
    A (t + Real.log u) (by linarith : 91 ≤ A)
  have hsmall : (67 : ℝ) / A ^ 4 ≤ 1 / (4 * A ^ 2) := by
    apply (div_le_div_iff₀ (by positivity : 0 < A ^ 4)
      (by positivity : 0 < 4 * A ^ 2)).mpr
    nlinarith [mul_nonneg (by nlinarith : 0 ≤ A ^ 2 - 268) (sq_nonneg A)]
  have hl4 := (abs_le.mp (h4.trans hsmall)).1
  have hl2 : 3 / (4 * A ^ 2) ≤
      -iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) (t + Real.log u) / 4 := by
    calc
      (3 : ℝ) / (4 * A ^ 2) = -(-3 / A ^ 2) / 4 := by ring
      _ ≤ _ := div_le_div_of_nonneg_right (neg_le_neg h2) (by norm_num)
  calc
    (1 : ℝ) / (2 * A ^ 2) = 3 / (4 * A ^ 2) + -(1 / (4 * A ^ 2)) := by ring
    _ ≤ _ := add_le_add hl2 hl4
    _ = _ := by ring

/-- Its genuine weighted covariant derivative has an A^-2 lower bound in strict support. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualAdjointSecondSectorChallengeSourceNative02/Variant3745d2d1950aea29ea9c63bd1901b8e2792dfd07b2236c80266e348622b58757.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualAdjointSecondSectorChallengeSourceNative02/Variant3745d2d1950aea29ea9c63bd1901b8e2792dfd07b2236c80266e348622b58757.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `759ff2be6c60368eda2d3df70ee827968a963043` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
