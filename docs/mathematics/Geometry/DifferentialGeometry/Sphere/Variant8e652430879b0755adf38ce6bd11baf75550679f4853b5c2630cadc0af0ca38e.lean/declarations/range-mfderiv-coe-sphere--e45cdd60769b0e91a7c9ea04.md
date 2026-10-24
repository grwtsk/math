# range_mfderiv_coe_sphere

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8c1e43eaf555101bf034f2c3a0690715663ec66f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 512,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8e/8e652430879b0755adf38ce6bd11baf75550679f4853b5c2630cadc0af0ca38e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:894bcca9-ed9e-45e7-76b4-1c3b7e2b9dbb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:939d4c8a-8309-6d3b-cb30-565e2c4c3ce8",
  "kind": "theorem",
  "lexical_name": "range_mfderiv_coe_sphere",
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
  "slug": "range-mfderiv-coe-sphere--e45cdd60769b0e91a7c9ea04",
  "source": {
    "blob": "8c1e43eaf555101bf034f2c3a0690715663ec66f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 555,
    "line": 512,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Sphere/Variant8e652430879b0755adf38ce6bd11baf75550679f4853b5c2630cadc0af0ca38e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e45cdd60769b0e91a7c9ea04faa0919bb774408f47b61b1e2bb111020e07f40e",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Sphere/Variant8e652430879b0755adf38ce6bd11baf75550679f4853b5c2630cadc0af0ca38e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:939d4c8a-8309-6d3b-cb30-565e2c4c3ce8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 512–555.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem range_mfderiv_coe_sphere {n : ℕ} [Fact (finrank ℝ E = n + 1)] (v : sphere (0 : E) 1) :
    LinearMap.range (mfderiv (𝓡 n) 𝓘(ℝ, E) ((↑) : sphere (0 : E) 1 → E) v :
    TangentSpace (𝓡 n) v →L[ℝ] E) = (ℝ ∙ (v : E))ᗮ := by
  rw [((contMDiff_coe_sphere v).mdifferentiableAt le_top).mfderiv]
  dsimp [chartAt]
  -- rw [LinearIsometryEquiv.toHomeomorph_symm]
  -- rw [←LinearIsometryEquiv.coe_toHomeomorph]
  simp only [chartAt, stereographic_neg_apply, fderivWithin_univ,
    LinearIsometryEquiv.toHomeomorph_symm, LinearIsometryEquiv.coe_toHomeomorph,
    LinearIsometryEquiv.map_zero, mfld_simps]
  let U := (OrthonormalBasis.fromOrthogonalSpanSingleton (𝕜 := ℝ) n
    (ne_zero_of_mem_unit_sphere (-v))).repr
  -- Porting note: this `suffices` was a `change`
  suffices :
    LinearMap.range (fderiv ℝ ((stereoInvFunAux (-v : E) ∘ (↑)) ∘ U.symm) 0) = (ℝ ∙ (v : E))ᗮ
  · convert this using 3
    show stereographic' n (-v) v = 0
    dsimp [stereographic']
    simp only [AddEquivClass.map_eq_zero_iff]
    apply stereographic_neg_apply
  have :
    HasFDerivAt (stereoInvFunAux (-v : E) ∘ (Subtype.val : (ℝ ∙ (↑(-v) : E))ᗮ → E))
      (ℝ ∙ (↑(-v) : E))ᗮ.subtypeL (U.symm 0) := by
    convert hasFDerivAt_stereoInvFunAux_comp_coe (-v : E)
    simp
  convert congrArg LinearMap.range (this.comp 0 U.symm.toContinuousLinearEquiv.hasFDerivAt).fderiv
  symm
  convert
    (U.symm : EuclideanSpace ℝ (Fin n) ≃ₗᵢ[ℝ] (ℝ ∙ (↑(-v) : E))ᗮ).range_comp
      (ℝ ∙ (↑(-v) : E))ᗮ.subtype using 1
  simp only [Submodule.range_subtype, coe_neg_sphere]
  congr 1
  -- we must show `submodule.span ℝ {v} = submodule.span ℝ {-v}`
  apply Submodule.span_eq_span
  · simp only [Set.singleton_subset_iff, SetLike.mem_coe]
    rw [← Submodule.neg_mem_iff]
    exact Submodule.mem_span_singleton_self (-v : E)
  · simp only [Set.singleton_subset_iff, SetLike.mem_coe]
    rw [Submodule.neg_mem_iff]
    exact Submodule.mem_span_singleton_self (v:E)
#align range_mfderiv_coe_sphere range_mfderiv_coe_sphere

/-- Consider the differential of the inclusion of the sphere in `E` at the point `v` as a continuous
linear map from `TangentSpace (𝓡 n) v` to `E`.  This map is injective. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Sphere/Variant8e652430879b0755adf38ce6bd11baf75550679f4853b5c2630cadc0af0ca38e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Sphere/Variant8e652430879b0755adf38ce6bd11baf75550679f4853b5c2630cadc0af0ca38e.lean#L512).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c1e43eaf555101bf034f2c3a0690715663ec66f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
