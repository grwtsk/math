# actualMixed_rectangle_second_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f053796f-fed2-4285-e2e3-120d9427319c",
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
  "slug": "actualmixed-rectangle-second-upper--b037b0feee66c69641a068da",
  "source": {
    "blob": "8a78ada36d92bfb095d368487da5b8948a93e877",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 75,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualAdjointSecondSectorChallenge/Variantf05d54a2a5c35e9dcde4e707bc02ccb67c6673c86fc0d9b1cdf3f28335c3c9fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b037b0feee66c69641a068dab2536755e8c924c50cc5eb5054b7048083f5463b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualAdjointSecondSectorChallenge/Variantf05d54a2a5c35e9dcde4e707bc02ccb67c6673c86fc0d9b1cdf3f28335c3c9fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f053796f-fed2-4285-e2e3-120d9427319c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–95.

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
      _ = _ := by field_simp
  have hp : 0 ≤ (1 : ℝ) / A ^ 2 := by positivity
  have hii := (abs_le.mp hi).2
  simp only [div_eq_mul_inv] at hz he hp hii ⊢
  nlinarith

/-- The actual post-adjoint ORIGINAL work kernel retains the second-order sector. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualAdjointSecondSectorChallenge/Variantf05d54a2a5c35e9dcde4e707bc02ccb67c6673c86fc0d9b1cdf3f28335c3c9fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualAdjointSecondSectorChallenge/Variantf05d54a2a5c35e9dcde4e707bc02ccb67c6673c86fc0d9b1cdf3f28335c3c9fb.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a78ada36d92bfb095d368487da5b8948a93e877` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
