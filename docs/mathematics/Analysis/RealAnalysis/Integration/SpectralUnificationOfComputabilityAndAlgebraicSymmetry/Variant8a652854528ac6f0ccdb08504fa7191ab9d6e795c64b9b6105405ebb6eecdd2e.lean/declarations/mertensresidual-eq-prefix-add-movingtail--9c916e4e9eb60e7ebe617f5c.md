# mertensResidual_eq_prefix_add_movingTail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9b8f42b8-4cb4-1f40-4137-a95a48967177",
  "kind": "theorem",
  "lexical_name": "mertensResidual_eq_prefix_add_movingTail",
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
  "slug": "mertensresidual-eq-prefix-add-movingtail--9c916e4e9eb60e7ebe617f5c",
  "source": {
    "blob": "84fe698ebfdd6fc6d0046540ca40a7a23a2a53ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 149,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant8a652854528ac6f0ccdb08504fa7191ab9d6e795c64b9b6105405ebb6eecdd2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c916e4e9eb60e7ebe617f5c4030616b20aadfae13a14378e528eda3dc5775fc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant8a652854528ac6f0ccdb08504fa7191ab9d6e795c64b9b6105405ebb6eecdd2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b8f42b8-4cb4-1f40-4137-a95a48967177`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mertensResidual_eq_prefix_add_movingTail (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A = sourcePrefixPairing A (2 * Real.log A) + sourceMovingTail A := by
  have hfront := square_front_mem A hA
  have hi := weightedMobiusPrimitive_mul_deriv_integrable A hA
  have hi1 : IntervalIntegrable
      (fun s ↦ weightedMobiusPrimitive s * deriv (sourceLogKernel A) s)
      volume 0 (2 * Real.log A) :=
    (intervalIntegrable_iff_integrableOn_Icc_of_le hfront.1).mpr
      (hi.mono_set (Icc_subset_Icc le_rfl hfront.2))
  have hi2 : IntervalIntegrable
      (fun s ↦ weightedMobiusPrimitive s * deriv (sourceLogKernel A) s)
      volume (2 * Real.log A) (2 * A) :=
    (intervalIntegrable_iff_integrableOn_Icc_of_le hfront.2).mpr
      (hi.mono_set (Icc_subset_Icc hfront.1 le_rfl))
  rw [mertensResidual_eq_weighted_log_pairing A hA, sourcePrefixPairing, sourceMovingTail,
    ← intervalIntegral.integral_add_adjacent_intervals hi1 hi2]
  ring


/-- The moving tail includes the weighted lower endpoint in addition to the
strict large-divisor sector. The endpoint is not absorbed by deleting it. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant8a652854528ac6f0ccdb08504fa7191ab9d6e795c64b9b6105405ebb6eecdd2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant8a652854528ac6f0ccdb08504fa7191ab9d6e795c64b9b6105405ebb6eecdd2e.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84fe698ebfdd6fc6d0046540ca40a7a23a2a53ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
