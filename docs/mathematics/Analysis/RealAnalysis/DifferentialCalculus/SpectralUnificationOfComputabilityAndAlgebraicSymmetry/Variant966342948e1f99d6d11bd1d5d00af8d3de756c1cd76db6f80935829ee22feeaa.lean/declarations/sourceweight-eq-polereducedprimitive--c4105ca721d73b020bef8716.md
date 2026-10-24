# sourceWeight_eq_poleReducedPrimitive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:10ab4f99-daa4-4cb8-c97d-3d9ce7ebbb25",
  "kind": "theorem",
  "lexical_name": "sourceWeight_eq_poleReducedPrimitive",
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
  "slug": "sourceweight-eq-polereducedprimitive--c4105ca721d73b020bef8716",
  "source": {
    "blob": "5950f25dacf467658efa476e88b0f78c9913b249",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 96,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant966342948e1f99d6d11bd1d5d00af8d3de756c1cd76db6f80935829ee22feeaa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4105ca721d73b020bef87161fae2f3575d6e1157b34016a813ff660091ffe48",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant966342948e1f99d6d11bd1d5d00af8d3de756c1cd76db6f80935829ee22feeaa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10ab4f99-daa4-4cb8-c97d-3d9ce7ebbb25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceWeight_eq_poleReducedPrimitive (A t : ℝ) (hA : 0 < A) :
    sourceWeight explicitSecondDerivative A t =
      deriv (poleReducedPrimitive A) t + poleReducedPrimitive A t := by
  have heq : exponentialTest (sourceCorrelation explicitSecondDerivative A) =
      fun s ↦ poleReducedPrimitive A s + deriv (weightedPoleCorrelation A) s := by
    funext s
    exact (poleReducedPrimitive_add_deriv A s hA).symm
  have hF := poleReducedPrimitive_contDiff A hA
  have hd := ((hF.differentiable (by norm_num)).differentiableAt.hasDerivAt).add
    (weightedPoleCorrelation_deriv_hasDerivAt A t hA)
  change HasDerivAt (fun s ↦ poleReducedPrimitive A s +
    deriv (weightedPoleCorrelation A) s) _ t at hd
  have hw := exponentialTest_deriv _ (sourceCorrelation_contDiff A hA) t
  rw [heq, hd.deriv] at hw
  exact hw.symm

/-- All upper traces needed by the finite pole transfer vanish at the actual endpoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant966342948e1f99d6d11bd1d5d00af8d3de756c1cd76db6f80935829ee22feeaa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant966342948e1f99d6d11bd1d5d00af8d3de756c1cd76db6f80935829ee22feeaa.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5950f25dacf467658efa476e88b0f78c9913b249` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
