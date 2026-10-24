# sourceLogKernel_deriv_abs_le_anchored

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9e25af36-47bb-1e22-1356-4df341afbf18",
  "kind": "theorem",
  "lexical_name": "sourceLogKernel_deriv_abs_le_anchored",
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
  "slug": "sourcelogkernel-deriv-abs-le-anchored--c0637f34606c362f5f305b48",
  "source": {
    "blob": "d529cbd44dfba10396aecf9820824f4e4ca238fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 64,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantad128006242155e1cf69f9d1f9cc40b2c27858e40832e6162e346e2b47c7e09c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0637f34606c362f5f305b48eb4a35feef6a5b1c5f548158da553fa2649dbd43",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantad128006242155e1cf69f9d1f9cc40b2c27858e40832e6162e346e2b47c7e09c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e25af36-47bb-1e22-1356-4df341afbf18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceLogKernel_deriv_abs_le_anchored (A s : ℝ) (hA : 1 ≤ A) (hs : 0 ≤ s) :
    |deriv (sourceLogKernel A) s| ≤ 520 * (s + 4) / (3 * A ^ 2) := by
  have h := anchored_two_moment_sampling_bound
    (sourceCorrelation_deriv_contDiff A hA) (sourceCorrelation_deriv_twoMomentProfile A hA)
    (sourceCorrelation_deriv_zero A (by linarith))
    (show 0 ≤ 65 / (3 * A ^ 2) by positivity)
    (fun t ↦ sourceCorrelation_second_deriv_abs_le A t hA) s hs (sourceKernelCutoff A)
    (sourceCorrelation_deriv_samplingTailZero A (Real.exp s) hA (Real.one_le_exp_iff.mpr hs))
  rw [sourceLogKernel_deriv_eq_sum A s (by linarith)]
  convert h using 1
  ring

/-- Both genuine source envelopes remain available pointwise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantad128006242155e1cf69f9d1f9cc40b2c27858e40832e6162e346e2b47c7e09c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantad128006242155e1cf69f9d1f9cc40b2c27858e40832e6162e346e2b47c7e09c.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d529cbd44dfba10396aecf9820824f4e4ca238fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
