# bumpCorrelation_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3de442c8-435a-e1ee-91f9-ca6065841a55",
  "kind": "theorem",
  "lexical_name": "bumpCorrelation_integral",
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
  "slug": "bumpcorrelation-integral--b0d8f31009e9a397cd27b344",
  "source": {
    "blob": "7e0ed6d6035d27ab291348df122dc33942bebc94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 32,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant8d37129e6bf0061d5f4a975be8747e55b5f8d267d2d5ce99cacefd34947a9424.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0d8f31009e9a397cd27b344215700e626c6bd1c2a5d5ae0c44768752e4d2f59",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant8d37129e6bf0061d5f4a975be8747e55b5f8d267d2d5ce99cacefd34947a9424.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3de442c8-435a-e1ee-91f9-ca6065841a55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bumpCorrelation_integral :
    (∫ v in (0 : ℝ)..2, bumpCorrelation v) = (256 / 315 : ℝ) ^ 2 / 2 := by
  have h := intervalIntegral.integral_comp_sub_left (a := (0 : ℝ)) (b := 2)
    bumpCorrelation 2
  norm_num only [sub_self, sub_zero] at h
  rw [← h]
  simp_rw [bumpCorrelation_boundary_expansion]
  rw [intervalIntegral.integral_finsetSum]
  · simp_rw [intervalIntegral.integral_const_mul, integral_pow]
    have hI : Finset.Icc 9 17 = {9, 10, 11, 12, 13, 14, 15, 16, 17} := by decide
    rw [hI]
    norm_num [boundaryCoefficient]
  · intro j _
    exact (by fun_prop : Continuous
      (fun d : ℝ ↦ boundaryCoefficient j * d ^ j)).intervalIntegrable _ _

/-- The integrated second-derivative correction vanishes at both endpoints. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant8d37129e6bf0061d5f4a975be8747e55b5f8d267d2d5ce99cacefd34947a9424.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant8d37129e6bf0061d5f4a975be8747e55b5f8d267d2d5ce99cacefd34947a9424.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e0ed6d6035d27ab291348df122dc33942bebc94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
