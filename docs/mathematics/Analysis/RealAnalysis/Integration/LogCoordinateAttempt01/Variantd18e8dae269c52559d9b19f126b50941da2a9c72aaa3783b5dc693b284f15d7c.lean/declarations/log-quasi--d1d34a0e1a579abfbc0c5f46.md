# log_quasi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:98610e2e-330f-6187-30d6-3ec092a8f26c",
  "kind": "theorem",
  "lexical_name": "log_quasi",
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
  "slug": "log-quasi--d1d34a0e1a579abfbc0c5f46",
  "source": {
    "blob": "27136e64cdfd79db6ad26b30882e0b16b780552f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 54,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LogCoordinateAttempt01/Variantd18e8dae269c52559d9b19f126b50941da2a9c72aaa3783b5dc693b284f15d7c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1d34a0e1a579abfbc0c5f46a51743e608938ec0b9d7a6ece2860d15c3849933",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LogCoordinateAttempt01/Variantd18e8dae269c52559d9b19f126b50941da2a9c72aaa3783b5dc693b284f15d7c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:98610e2e-330f-6187-30d6-3ec092a8f26c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_quasi : Measure.QuasiMeasurePreserving Real.log positiveMeasure volume := by
  refine ⟨Real.measurable_log,Measure.AbsolutelyContinuous.mk (fun s hs hzero => ?_)⟩
  rw [Measure.map_apply Real.measurable_log hs]
  change volume.restrict (Ioi 0) (Real.log ⁻¹' s) = 0
  rw [Measure.restrict_apply (hs.preimage Real.measurable_log)]
  have him : Real.log ⁻¹' s ∩ Ioi 0 = Real.exp '' s := by
    ext x
    constructor
    · rintro ⟨hx,hpos⟩
      exact ⟨Real.log x,hx,Real.exp_log hpos⟩
    · rintro ⟨u,hu,rfl⟩
      exact ⟨by simpa only [mem_preimage,Real.log_exp] using hu,Real.exp_pos u⟩
  rw [him]
  have h := lintegral_image_eq_lintegral_abs_deriv_mul hs
    (fun u _ => (Real.hasDerivAt_exp u).hasDerivWithinAt)
    Real.exp_injective.injOn (fun _ => (1 : ℝ≥0∞))
  have hr : (volume : Measure ℝ).restrict s = 0 := Measure.restrict_eq_zero.mpr hzero
  simpa only [lintegral_one,abs_of_pos (Real.exp_pos _),mul_one,hr,lintegral_zero_measure] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LogCoordinateAttempt01/Variantd18e8dae269c52559d9b19f126b50941da2a9c72aaa3783b5dc693b284f15d7c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LogCoordinateAttempt01/Variantd18e8dae269c52559d9b19f126b50941da2a9c72aaa3783b5dc693b284f15d7c.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27136e64cdfd79db6ad26b30882e0b16b780552f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
