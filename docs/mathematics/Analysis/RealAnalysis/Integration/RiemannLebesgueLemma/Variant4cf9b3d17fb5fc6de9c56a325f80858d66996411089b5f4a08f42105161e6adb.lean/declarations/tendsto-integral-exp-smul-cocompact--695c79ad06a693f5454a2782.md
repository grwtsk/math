# tendsto_integral_exp_smul_cocompact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:87ca7edb-9063-251f-5a4c-9f4dc9db21e9",
  "kind": "theorem",
  "lexical_name": "tendsto_integral_exp_smul_cocompact",
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
  "slug": "tendsto-integral-exp-smul-cocompact--695c79ad06a693f5454a2782",
  "source": {
    "blob": "3cbe58cea49e0870ffdd8c94ae206a743ca5d704",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 357,
    "line": 301,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RiemannLebesgueLemma/Variant4cf9b3d17fb5fc6de9c56a325f80858d66996411089b5f4a08f42105161e6adb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:695c79ad06a693f5454a2782c203cfe14727ad7bc9ed2f088d9d605be032155d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/RiemannLebesgueLemma/Variant4cf9b3d17fb5fc6de9c56a325f80858d66996411089b5f4a08f42105161e6adb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87ca7edb-9063-251f-5a4c-9f4dc9db21e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 301–357.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_integral_exp_smul_cocompact (μ : Measure V) [μ.IsAddHaarMeasure] :
    Tendsto (fun w : V →L[ℝ] ℝ => ∫ v, e[-w v] • f v ∂μ) (cocompact (V →L[ℝ] ℝ)) (𝓝 0) := by
  -- We have already proved the result for inner-product spaces, formulated in a way which doesn't
  -- refer to the inner product. So we choose an arbitrary inner-product space isomorphic to V
  -- and port the result over from there.
  let V' := EuclideanSpace ℝ (Fin (finrank ℝ V))
  have A : V ≃L[ℝ] V' := toEuclidean
  borelize V'
  -- various equivs derived from A
  let Aₘ : MeasurableEquiv V V' := A.toHomeomorph.toMeasurableEquiv
  -- isomorphism between duals derived from A -- need to do continuity as a separate step in order
  -- to apply `LinearMap.continuous_of_finiteDimensional`.
  let Adualₗ : (V →L[ℝ] ℝ) ≃ₗ[ℝ] V' →L[ℝ] ℝ :=
    { toFun := fun t => t.comp A.symm.toContinuousLinearMap
      invFun := fun t => t.comp A.toContinuousLinearMap
      map_add' := by
        intro t s
        ext1 v
        simp only [ContinuousLinearMap.coe_comp', Function.comp_apply,
          ContinuousLinearMap.add_apply]
      map_smul' := by
        intro x f
        ext1 v
        simp only [RingHom.id_apply, ContinuousLinearMap.coe_comp', Function.comp_apply,
          ContinuousLinearMap.smul_apply]
      left_inv := by
        intro w
        ext1 v
        simp only [ContinuousLinearMap.coe_comp',
          ContinuousLinearEquiv.coe_coe, Function.comp_apply,
          ContinuousLinearEquiv.symm_apply_apply]
      right_inv := by
        intro w
        ext1 v
        simp only [ContinuousLinearMap.coe_comp',
          ContinuousLinearEquiv.coe_coe, Function.comp_apply,
          ContinuousLinearEquiv.apply_symm_apply] }
  let Adual : (V →L[ℝ] ℝ) ≃L[ℝ] V' →L[ℝ] ℝ :=
    { Adualₗ with
      continuous_toFun := Adualₗ.toLinearMap.continuous_of_finiteDimensional
      continuous_invFun := Adualₗ.symm.toLinearMap.continuous_of_finiteDimensional }
  have : (μ.map Aₘ).IsAddHaarMeasure := Measure.MapContinuousLinearEquiv.isAddHaarMeasure _ A
  convert
    (tendsto_integral_exp_smul_cocompact_of_inner_product (f ∘ A.symm) (μ.map Aₘ)).comp
      Adual.toHomeomorph.toCocompactMap.cocompact_tendsto' with w
  rw [Function.comp_apply, integral_map_equiv]
  congr 1 with v : 1
  congr
  · -- Porting note: added `congr_arg`
    apply congr_arg w
    exact (ContinuousLinearEquiv.symm_apply_apply A v).symm
  · exact (ContinuousLinearEquiv.symm_apply_apply A v).symm
#align tendsto_integral_exp_smul_cocompact tendsto_integral_exp_smul_cocompact

/-- The Riemann-Lebesgue lemma, formulated in terms of `VectorFourier.fourierIntegral` (with the
pairing in the definition of `fourier_integral` taken to be the canonical pairing between `V` and
its dual space). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RiemannLebesgueLemma/Variant4cf9b3d17fb5fc6de9c56a325f80858d66996411089b5f4a08f42105161e6adb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RiemannLebesgueLemma/Variant4cf9b3d17fb5fc6de9c56a325f80858d66996411089b5f4a08f42105161e6adb.lean#L301).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3cbe58cea49e0870ffdd8c94ae206a743ca5d704` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
