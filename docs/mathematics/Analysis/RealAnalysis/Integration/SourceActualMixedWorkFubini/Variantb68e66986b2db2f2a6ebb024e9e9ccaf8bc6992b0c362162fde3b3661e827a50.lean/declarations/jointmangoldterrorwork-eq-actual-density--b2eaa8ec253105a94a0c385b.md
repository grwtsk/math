# jointMangoldtErrorWork_eq_actual_density

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9c1f8f70-e311-3639-eda1-2c9530c73733",
  "kind": "theorem",
  "lexical_name": "jointMangoldtErrorWork_eq_actual_density",
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
  "slug": "jointmangoldterrorwork-eq-actual-density--b2eaa8ec253105a94a0c385b",
  "source": {
    "blob": "ddaa0a38d43ccfbc3c3f8645035c2fcbc6f007fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 810,
    "line": 791,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubini/Variantb68e66986b2db2f2a6ebb024e9e9ccaf8bc6992b0c362162fde3b3661e827a50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2eaa8ec253105a94a0c385b3150be77ca7b98e6b6290e0efac5589c19b9ee7d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubini/Variantb68e66986b2db2f2a6ebb024e9e9ccaf8bc6992b0c362162fde3b3661e827a50.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c1f8f70-e311-3639-eda1-2c9530c73733`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 791–810.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jointMangoldtErrorWork_eq_actual_density (A : ℝ) (hA : 1 ≤ A) :
    SourceJointMangoldtWork.jointMangoldtErrorWork A = ∫ v : ℝ, actualMixedWorkDensity A v := by
  have hp : 0 < A := by linarith
  have h1 := actual_profile_product_integrable _
    ((normalizedTest_contDiff A hp).continuous_deriv (by norm_num)) hA
    (deriv_source_tsupport_subset hp)
  have h0 := actual_profile_product_integrable _ (normalizedTest_contDiff A hp).continuous hA
    (source_tsupport_subset hp)
  have hw := jointMangoldtErrorWork_eq_actual_bilinear_profiles A hA
  dsimp only at hw
  change SourceJointMangoldtWork.jointMangoldtErrorWork A =
    (∫ v : ℝ, actualTimeProfile (deriv (normalizedTest explicitSecondDerivative A)) A v *
      actualReflectedProfile (deriv (normalizedTest explicitSecondDerivative A)) A v) +
      (1 / 4 : ℝ) * (∫ v : ℝ, actualTimeProfile (normalizedTest explicitSecondDerivative A) A v *
        actualReflectedProfile (normalizedTest explicitSecondDerivative A) A v) at hw
  rw [hw]
  dsimp only [actualMixedWorkDensity]
  rw [integral_add h1 (h0.const_mul (1 / 4 : ℝ)), integral_const_mul]

/-- The localization uses log U on the left; it does not discard the continuous strip. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubini/Variantb68e66986b2db2f2a6ebb024e9e9ccaf8bc6992b0c362162fde3b3661e827a50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubini/Variantb68e66986b2db2f2a6ebb024e9e9ccaf8bc6992b0c362162fde3b3661e827a50.lean#L791).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ddaa0a38d43ccfbc3c3f8645035c2fcbc6f007fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
