# poleReducedCorrelation_second_deriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "27a078c0f289151a33db11bc1bde27ecf3e7d660",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 95,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/75/75b1f4ebbdede410e179c224a8cdfd69b8949d7ccd986c2ee90d1733cfc8f970.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a92cbc80-573a-ff78-87b2-28002a401221",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c3ee0a21-fe3f-fa4e-8740-13497c1088a4",
  "kind": "theorem",
  "lexical_name": "poleReducedCorrelation_second_deriv",
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
  "slug": "polereducedcorrelation-second-deriv--cc493096c80ea04b5337a3a8",
  "source": {
    "blob": "27a078c0f289151a33db11bc1bde27ecf3e7d660",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 95,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant75b1f4ebbdede410e179c224a8cdfd69b8949d7ccd986c2ee90d1733cfc8f970.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc493096c80ea04b5337a3a8494d472264a34948e8c803b295495ac0bde5071a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant75b1f4ebbdede410e179c224a8cdfd69b8949d7ccd986c2ee90d1733cfc8f970.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3ee0a21-fe3f-fa4e-8740-13497c1088a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem poleReducedCorrelation_second_deriv (A t : ℝ) (hA : 0 < A) :
    deriv (deriv (poleReducedCorrelation A)) t =
      ∫ x, normalizedTest explicitSecondDerivative A x *
        deriv (deriv (normalizedSourceBump A)) (x-t) := by
  let q := fun x ↦ normalizedSourceBump A (-x)
  have hq : ContDiff ℝ 2 q := reflected_bump_contDiff A hA
  have hqc : HasCompactSupport q := reflected_bump_compact A hA
  have heq : deriv (poleReducedCorrelation A) =
      (normalizedTest explicitSecondDerivative A ⋆ deriv q) := by
    funext s
    rw [poleReducedCorrelation_eq_convolution]
    exact (hqc.hasDerivAt_convolution_right (ContinuousLinearMap.lsmul ℝ ℝ)
      (normalizedTest_integrable A hA).locallyIntegrable
      (hq.of_le (by norm_num : (1 : ℕ∞ω) ≤ 2)) s).deriv
  rw [heq, (hqc.deriv.hasDerivAt_convolution_right (ContinuousLinearMap.lsmul ℝ ℝ)
    (normalizedTest_integrable A hA).locallyIntegrable hq.deriv' t).deriv, convolution_lsmul]
  have hq' : deriv q = fun x ↦ -deriv (normalizedSourceBump A) (-x) := by
    funext x
    exact deriv_comp_neg (f := normalizedSourceBump A) (x := x)
  apply integral_congr_ae
  filter_upwards [] with x
  rw [hq', deriv.fun_neg, deriv_comp_neg, neg_neg, neg_sub]
  simp only [smul_eq_mul]

/-- The one-pole-reduced operator is exactly the original source correlation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant75b1f4ebbdede410e179c224a8cdfd69b8949d7ccd986c2ee90d1733cfc8f970.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant75b1f4ebbdede410e179c224a8cdfd69b8949d7ccd986c2ee90d1733cfc8f970.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27a078c0f289151a33db11bc1bde27ecf3e7d660` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
