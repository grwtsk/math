# exp_quasi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4af2c6b3-e833-12a2-20ea-2a83aea9dbbc",
  "kind": "theorem",
  "lexical_name": "exp_quasi",
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
  "slug": "exp-quasi--071d1d41be37ae5fe2447ea9",
  "source": {
    "blob": "a8b2cbde2ec92af0ef9a9260688e8ec9f0fd5e16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 43,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LogCoordinateAttempt03/Variantf93adfa417b7e32ce9a5004b55918a4196169c7e114e41830950f4253d28f8a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:071d1d41be37ae5fe2447ea99d07f6cedec0267231035920aa2323cfd5bfa2cd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LogCoordinateAttempt03/Variantf93adfa417b7e32ce9a5004b55918a4196169c7e114e41830950f4253d28f8a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4af2c6b3-e833-12a2-20ea-2a83aea9dbbc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exp_quasi : Measure.QuasiMeasurePreserving Real.exp volume positiveMeasure := by
  refine ⟨Real.measurable_exp,Measure.AbsolutelyContinuous.mk (fun s hs hzero => ?_)⟩
  rw [Measure.map_apply Real.measurable_exp hs]
  have hpre : MeasurableSet (Real.exp ⁻¹' s) := hs.preimage Real.measurable_exp
  have hw : ∫⁻ u in Real.exp ⁻¹' s, ENNReal.ofReal (Real.exp u) = 0 := by
    have h := lintegral_image_eq_lintegral_abs_deriv_mul hpre
      (fun u _ => (Real.hasDerivAt_exp u).hasDerivWithinAt)
      Real.exp_injective.injOn (fun _ => (1 : ℝ≥0∞))
    have him : Real.exp '' (Real.exp ⁻¹' s) = s ∩ Ioi 0 := by
      rw [image_preimage_eq_inter_range,Real.range_exp]
    rw [him] at h
    have he : (∫⁻ u in Real.exp ⁻¹' s, ENNReal.ofReal (Real.exp u)) = positiveMeasure s := by
      simpa only [lintegral_one,abs_of_pos (Real.exp_pos _),mul_one,
        Measure.restrict_apply_univ,←Measure.restrict_apply hs,positiveMeasure] using h.symm
    exact he.trans hzero
  have hac : (volume : Measure ℝ) ≪ volume.withDensity (fun u => ENNReal.ofReal (Real.exp u)) :=
    withDensity_absolutelyContinuous' Real.measurable_exp.ennreal_ofReal.aemeasurable
      (Eventually.of_forall (fun u => ENNReal.ofReal_ne_zero_iff.mpr (Real.exp_pos u)))
  apply hac
  rw [withDensity_apply _ hpre]
  exact hw

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LogCoordinateAttempt03/Variantf93adfa417b7e32ce9a5004b55918a4196169c7e114e41830950f4253d28f8a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LogCoordinateAttempt03/Variantf93adfa417b7e32ce9a5004b55918a4196169c7e114e41830950f4253d28f8a9.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8b2cbde2ec92af0ef9a9260688e8ec9f0fd5e16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
