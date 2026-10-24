# mixed_spatialDerivative_inner_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5f4e24ae-854c-1ba1-bfb5-3921800fedda",
  "kind": "theorem",
  "lexical_name": "mixed_spatialDerivative_inner_neg",
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
  "slug": "mixed-spatialderivative-inner-neg--40c75c0b03e7c1d4f0f266e2",
  "source": {
    "blob": "a98e5e40fb2ed7823816530ddd9cf4a44d711a4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 251,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MaintainedSourceV1Prebytes/Variantfbfaa86f4399a65281a4bbbe1544e88868f84a3a59f5640350eab321f9f0428c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:40c75c0b03e7c1d4f0f266e25f6ec63829eb8134ba8ec8c8eff6b8e42885992b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MaintainedSourceV1Prebytes/Variantfbfaa86f4399a65281a4bbbe1544e88868f84a3a59f5640350eab321f9f0428c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f4e24ae-854c-1ba1-bfb5-3921800fedda`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mixed_spatialDerivative_inner_neg {A B : ℝ} (hA : 0 < A) (hB : 0 < B) (s : ℝ) :
    (⟪spatialDerivativeState B, translation s (originalSourceState A)⟫_ℂ).re =
      -(⟪originalSourceState B, translation s (spatialDerivativeState A)⟫_ℂ).re := by
  rw [real_inner_of_representatives _ _ _ _ (spatialDerivativeState_coe_ae hB)
    (translate_real_representative s _ _ (originalSourceState_coe_ae hA)),
    real_inner_of_representatives _ _ _ _ (originalSourceState_coe_ae hB)
    (translate_real_representative s _ _ (spatialDerivativeState_coe_ae hA))]
  let q := normalizedTest explicitSecondDerivative
  have hcA := (normalizedTest_contDiff A hA).continuous
  have hcB := (normalizedTest_contDiff B hB).continuous
  have hpB := normalizedTest_hasCompactSupport B hB
  have hpR := spatialDerivative_hasCompactSupport hB
  have he := integral_mul_deriv_eq_deriv_mul_of_integrable
    (u := q B) (u' := spatialDerivative B)
    (v := fun x => q A (x - s)) (v' := fun x => spatialDerivative A (x - s))
    (fun x _ => normalizedSource_hasSpatialDerivAt hB x)
    (fun x _ => by
      simpa [q, Function.comp_def] using (normalizedSource_hasSpatialDerivAt hA (x - s)).comp x
        ((hasDerivAt_id x).sub_const s))
    ((hcB.mul ((spatialDerivative_continuous hA).comp
      (continuous_id.sub continuous_const))).integrable_of_hasCompactSupport hpB.mul_right)
    (((spatialDerivative_continuous hB).mul (hcA.comp
      (continuous_id.sub continuous_const))).integrable_of_hasCompactSupport hpR.mul_right)
    ((hcB.mul (hcA.comp (continuous_id.sub continuous_const))).integrable_of_hasCompactSupport
      hpB.mul_right)
  dsimp [q] at he
  linarith

/-- Exact mixed difference identity avoids differentiating the spatial derivative in scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MaintainedSourceV1Prebytes/Variantfbfaa86f4399a65281a4bbbe1544e88868f84a3a59f5640350eab321f9f0428c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MaintainedSourceV1Prebytes/Variantfbfaa86f4399a65281a4bbbe1544e88868f84a3a59f5640350eab321f9f0428c.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a98e5e40fb2ed7823816530ddd9cf4a44d711a4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
