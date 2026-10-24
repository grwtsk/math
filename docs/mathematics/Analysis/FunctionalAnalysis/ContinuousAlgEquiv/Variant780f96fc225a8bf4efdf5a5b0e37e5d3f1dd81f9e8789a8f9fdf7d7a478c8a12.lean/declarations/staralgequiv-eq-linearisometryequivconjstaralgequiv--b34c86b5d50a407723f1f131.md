# StarAlgEquiv.eq_linearIsometryEquivConjStarAlgEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6eb4cb77-ce67-74f9-048a-bfd8531ee43e",
  "kind": "theorem",
  "lexical_name": "StarAlgEquiv.eq_linearIsometryEquivConjStarAlgEquiv",
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
  "slug": "staralgequiv-eq-linearisometryequivconjstaralgequiv--b34c86b5d50a407723f1f131",
  "source": {
    "blob": "be31a3496bfe3fdec99c27c55ca181c5e7208440",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 161,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/ContinuousAlgEquiv/Variant780f96fc225a8bf4efdf5a5b0e37e5d3f1dd81f9e8789a8f9fdf7d7a478c8a12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b34c86b5d50a407723f1f131e5bd09a7f3704abc2f8c306fae0281bf0ce3b74a",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/ContinuousAlgEquiv/Variant780f96fc225a8bf4efdf5a5b0e37e5d3f1dd81f9e8789a8f9fdf7d7a478c8a12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6eb4cb77-ce67-74f9-048a-bfd8531ee43e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem StarAlgEquiv.eq_linearIsometryEquivConjStarAlgEquiv
    (f : (V →L[𝕜] V) ≃⋆ₐ[𝕜] (W →L[𝕜] W)) (hf : Continuous f) :
    ∃ U : V ≃ₗᵢ[𝕜] W, f = U.conjStarAlgEquiv := by
  -- Assume nontriviality of `V`.
  by_cases! Subsingleton V
  · by_cases! Subsingleton W
    · use { toLinearEquiv := 0,
            norm_map' _ := by simp [Subsingleton.eq_zero (α := V), Subsingleton.eq_zero (α := W)] }
      exact ext fun _ ↦ Subsingleton.allEq _ _
    simpa using congr(f $(Subsingleton.allEq 0 1))
  /- By `ContinuousAlgEquiv.eq_continuousLinearEquivConjContinuousAlgEquiv`,
    we know there exists a continuous linear equivalence `y : V ≃L[𝕜] W` such that
    `f = y.conjAlgEquiv`.
    Our goal will be to construct an isometry from `y`. We do this by first showing
    `adjoint y ∘ y` is in the center of the endomorphisms, and as the algebra of endomorphisms
    are central, `adjoint y ∘ y` is a scalar multiple of the identity. -/
  obtain ⟨y, hy⟩ := (ContinuousAlgEquiv.mk f.toAlgEquiv hf
    (f.toAlgEquiv.toLinearEquiv.continuous_symm hf)).eq_continuousLinearEquivConjContinuousAlgEquiv
  have (x : V →L[𝕜] V) : adjoint (f x) = f (adjoint x) := map_star _ _ |>.symm
  rw [ContinuousAlgEquiv.ext_iff] at hy
  simp_rw [← StarAlgEquiv.coe_toAlgEquiv, ContinuousAlgEquiv.coe_mk f.toAlgEquiv hf _ ▸ hy,
    conjContinuousAlgEquiv_apply,  adjoint_comp] at this
  replace this (x : V →L[𝕜] V) : adjoint y.toContinuousLinearMap ∘L y ∘L adjoint x ∘L y.symm =
      adjoint x ∘L adjoint y.toContinuousLinearMap := by
    simp_rw [← this x, ← comp_assoc, ← adjoint_comp]
    simp
  replace this (x : V →L[𝕜] V) : Commute x (adjoint y.toContinuousLinearMap ∘L y) := by
    simp_rw [commute_iff_eq, mul_def, ← comp_assoc, ← (adjoint_adjoint x ▸ this _), comp_assoc]
    simp
  -- Let `α : 𝕜` be that scalar, i.e., `adjoint y ∘ y = α • id`. This scalar is clearly real.
  obtain ⟨α, hα⟩ := by simpa using (Subalgebra.mem_center_iff (R := 𝕜)).mpr fun _ ↦ this _
  simp only [AlgHom.toRingHom_eq_coe, Algebra.toRingHom_ofId, Algebra.algebraMap_eq_smul_one] at hα
  have : IsUnit (adjoint y.toContinuousLinearMap ∘L y) :=
    isUnit_iff_exists.mpr ⟨y.symm ∘L adjoint y.symm.toContinuousLinearMap, by
      simp [mul_def, ← comp_assoc, comp_assoc _ _ (adjoint y.toContinuousLinearMap),
        ← adjoint_comp, one_def, comp_assoc _ y.toContinuousLinearMap]⟩
  have hα_re : α = RCLike.re α := by
    have := by simpa [IsSelfAdjoint, ← hα, one_def, star_eq_adjoint] using
      (IsSelfAdjoint.one (W →L[𝕜] W)).adjoint_conj y.toContinuousLinearMap
    rwa [← one_def, (smul_left_injective 𝕜 one_ne_zero).eq_iff, RCLike.conj_eq_iff_re,
      eq_comm] at this
  --  Also, as `adjoint y ∘ y` is invertible, we get `α ≠ 0`.
  have hα_ne_zero : α ≠ 0 := fun h ↦ by simp [h, ← hα] at this
  -- As `adjoint y ∘ y` is positive, we then get `0 < α`.
  have hα_nonneg : 0 ≤ α := by
    have := hα_re.symm ▸ (nonneg_iff_isPositive |>.mpr
      (hα_re ▸ hα ▸ isPositive_adjoint_comp_self y.toContinuousLinearMap))
    rw [← LinearMap.isPositive_one.isPositive_smul_iff (E := V) (one_ne_zero' (V →ₗ[𝕜] V))]
    exact nonneg_iff_isPositive.mp this
  have hα_pos := RCLike.ofReal_pos.mp <| hα_re ▸ (lt_of_le_of_ne' hα_nonneg hα_ne_zero)
  -- We also get `y ∘ adjoint y = α • id`.
  have h_comp_adjoint : y.toContinuousLinearMap ∘L adjoint y.toContinuousLinearMap =
      α • ContinuousLinearMap.id 𝕜 _ := by
    ext x
    simpa using congr(y (($hα ∘L y.symm.toContinuousLinearMap) x)).symm
  -- Finally, we construct our isometry `1/√(re α) • y`.
  set β := (((RCLike.re α : ℝ) ^ (-(1 / 2 : ℝ)) : ℝ) : 𝕜)
  have hβ : β * β = α⁻¹ := by
    rw [hα_re]
    norm_num [β, ← RCLike.ofReal_mul, ← Real.rpow_add hα_pos, Real.rpow_neg_one]
  set U := auxIsometry y hα_ne_zero hβ hα.symm h_comp_adjoint (by simp [β])
  use U
  have hβ₂ : β⁻¹ * β = 1 := by
    refine inv_mul_cancel₀ ?_
    simp only [β, ne_eq, map_eq_zero]
    rw [Real.rpow_eq_zero hα_pos.le (by simp)]
    exact ne_of_gt hα_pos
  ext
  simp [U.conjStarAlgEquiv_apply, U, smul_smul, hβ₂, ← conjContinuousAlgEquiv_apply, ← hy]

/- TODO: Remove instance when we have `StarOrderedRing (V →L[𝕜] V)` since
this then becomes an instance from `StarRingEquivClass.instOrderIsoClass`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/ContinuousAlgEquiv/Variant780f96fc225a8bf4efdf5a5b0e37e5d3f1dd81f9e8789a8f9fdf7d7a478c8a12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/ContinuousAlgEquiv/Variant780f96fc225a8bf4efdf5a5b0e37e5d3f1dd81f9e8789a8f9fdf7d7a478c8a12.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be31a3496bfe3fdec99c27c55ca181c5e7208440` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
