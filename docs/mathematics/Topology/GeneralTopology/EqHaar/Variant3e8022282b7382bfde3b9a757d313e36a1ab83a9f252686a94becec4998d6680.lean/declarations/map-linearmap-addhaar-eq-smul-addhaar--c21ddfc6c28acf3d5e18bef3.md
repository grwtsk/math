# map_linearMap_addHaar_eq_smul_addHaar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "df05ce0845ed32a0bb7ac052cf509c7af6e46f82",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 218,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3e/3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2cb7c445-0d23-b868-aa78-bfb8ddd8368d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fa55ef40-0cd6-cb7b-4efc-43e28192afff",
  "kind": "theorem",
  "lexical_name": "map_linearMap_addHaar_eq_smul_addHaar",
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
  "slug": "map-linearmap-addhaar-eq-smul-addhaar--c21ddfc6c28acf3d5e18bef3",
  "source": {
    "blob": "df05ce0845ed32a0bb7ac052cf509c7af6e46f82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 218,
    "path": "GRWTSK/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c21ddfc6c28acf3d5e18bef3c020d40b1fafdf08b090e24deba8ef8ebb2dcd74",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa55ef40-0cd6-cb7b-4efc-43e28192afff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_linearMap_addHaar_eq_smul_addHaar {f : E →ₗ[ℝ] E} (hf : LinearMap.det f ≠ 0) :
    Measure.map f μ = ENNReal.ofReal |(LinearMap.det f)⁻¹| • μ := by
  -- we reduce to the case of `E = ι → ℝ`, for which we have already proved the result using
  -- matrices in `map_linearMap_addHaar_pi_eq_smul_addHaar`.
  let ι := Fin (finrank ℝ E)
  haveI : FiniteDimensional ℝ (ι → ℝ) := by infer_instance
  have : finrank ℝ E = finrank ℝ (ι → ℝ) := by simp
  have e : E ≃ₗ[ℝ] ι → ℝ := LinearEquiv.ofFinrankEq E (ι → ℝ) this
  -- next line is to avoid `g` getting reduced by `simp`.
  obtain ⟨g, hg⟩ : ∃ g, g = (e : E →ₗ[ℝ] ι → ℝ).comp (f.comp (e.symm : (ι → ℝ) →ₗ[ℝ] E)) := ⟨_, rfl⟩
  have gdet : LinearMap.det g = LinearMap.det f := by rw [hg]; exact LinearMap.det_conj f e
  rw [← gdet] at hf ⊢
  have fg : f = (e.symm : (ι → ℝ) →ₗ[ℝ] E).comp (g.comp (e : E →ₗ[ℝ] ι → ℝ)) := by
    ext x
    simp only [LinearEquiv.coe_coe, Function.comp_apply, LinearMap.coe_comp,
      LinearEquiv.symm_apply_apply, hg]
  simp only [fg, LinearEquiv.coe_coe, LinearMap.coe_comp]
  have Ce : Continuous e := (e : E →ₗ[ℝ] ι → ℝ).continuous_of_finiteDimensional
  have Cg : Continuous g := LinearMap.continuous_of_finiteDimensional g
  have Cesymm : Continuous e.symm := (e.symm : (ι → ℝ) →ₗ[ℝ] E).continuous_of_finiteDimensional
  rw [← map_map Cesymm.measurable (Cg.comp Ce).measurable, ← map_map Cg.measurable Ce.measurable]
  haveI : IsAddHaarMeasure (map e μ) := (e : E ≃+ (ι → ℝ)).isAddHaarMeasure_map μ Ce Cesymm
  have ecomp : e.symm ∘ e = id := by
    ext x; simp only [id.def, Function.comp_apply, LinearEquiv.symm_apply_apply]
  rw [map_linearMap_addHaar_pi_eq_smul_addHaar hf (map e μ), Measure.map_smul,
    map_map Cesymm.measurable Ce.measurable, ecomp, Measure.map_id]
#align measure_theory.measure.map_linear_map_add_haar_eq_smul_add_haar MeasureTheory.Measure.map_linearMap_addHaar_eq_smul_addHaar

/-- The preimage of a set `s` under a linear map `f` with nonzero determinant has measure
equal to `μ s` times the absolute value of the inverse of the determinant of `f`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df05ce0845ed32a0bb7ac052cf509c7af6e46f82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
