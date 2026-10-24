# actualMixed_rectangle_second_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bd31421c-2e7f-fc3a-f8ce-4e39b7ee614c",
  "kind": "theorem",
  "lexical_name": "actualMixed_rectangle_second_upper",
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
  "slug": "actualmixed-rectangle-second-upper--108f0d35c2452d70b0b56ab8",
  "source": {
    "blob": "759ff2be6c60368eda2d3df70ee827968a963043",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 75,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualAdjointSecondSectorChallengeSourceNative02/Variant3745d2d1950aea29ea9c63bd1901b8e2792dfd07b2236c80266e348622b58757.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:108f0d35c2452d70b0b56ab8bd3b5f22f47249c5b9213fc491b1e893276ce790",
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

Occurrence: `result:bd31421c-2e7f-fc3a-f8ce-4e39b7ee614c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualMixed_rectangle_second_upper {A t u : ℝ} (hA : 25600 ≤ A)
    (ht : Real.log (vaughanCutoff A : ℝ) ≤ t)
    (ht1 : t ≤ Real.log (vaughanCutoff A : ℝ) + 1)
    (hu : ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ u)
    (hu2 : u ≤ ((vaughanCutoff A + 2 : ℕ) : ℝ)) :
    deriv (deriv (sourceCorrelation explicitSecondDerivative A)) (t + Real.log u) ≤
      -3 / A ^ 2 := by
  have hy := actualMixed_firstColumn_shift_bounds hA ht ht1 hu hu2
  have hy2 : (t + Real.log u) ^ 2 ≤ A ^ 2 / 100 := by nlinarith
  have hi := actualCorrelation_second_increment_abs (by linarith : 91 ≤ A) hy.1
  have hz := actualCorrelation_second_zero_le_neg_four (by linarith : 0 < A)
  have he : 67 / A ^ 4 * (t + Real.log u) ^ 2 ≤ (67 / 100 : ℝ) / A ^ 2 := by
    calc
      _ ≤ 67 / A ^ 4 * (A ^ 2 / 100) := by gcongr
      _ = _ := by field_simp <;> ring
  have hp : 0 ≤ (1 : ℝ) / A ^ 2 := by positivity
  have hii := (abs_le.mp hi).2
  simp only [div_eq_mul_inv] at hz he hp hii ⊢
  nlinarith

/-- The actual post-adjoint ORIGINAL work kernel retains the second-order sector. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualAdjointSecondSectorChallengeSourceNative02/Variant3745d2d1950aea29ea9c63bd1901b8e2792dfd07b2236c80266e348622b58757.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualAdjointSecondSectorChallengeSourceNative02/Variant3745d2d1950aea29ea9c63bd1901b8e2792dfd07b2236c80266e348622b58757.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `759ff2be6c60368eda2d3df70ee827968a963043` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
