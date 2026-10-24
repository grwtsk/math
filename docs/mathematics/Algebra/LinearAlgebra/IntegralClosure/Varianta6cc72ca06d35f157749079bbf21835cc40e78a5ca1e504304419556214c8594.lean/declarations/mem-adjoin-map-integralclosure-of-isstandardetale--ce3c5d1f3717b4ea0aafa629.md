# mem_adjoin_map_integralClosure_of_isStandardEtale

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fd8d39ed9f66f9b65488cf19af6038db4921b03c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 280,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a6/a6cc72ca06d35f157749079bbf21835cc40e78a5ca1e504304419556214c8594.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:95143779-f07c-0959-545d-80677b44818c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c8e34a83-3011-08b5-2ee3-b7f07a55b0b5",
  "kind": "theorem",
  "lexical_name": "mem_adjoin_map_integralClosure_of_isStandardEtale",
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
  "slug": "mem-adjoin-map-integralclosure-of-isstandardetale--ce3c5d1f3717b4ea0aafa629",
  "source": {
    "blob": "fd8d39ed9f66f9b65488cf19af6038db4921b03c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 366,
    "line": 280,
    "path": "GRWTSK/Algebra/LinearAlgebra/IntegralClosure/Varianta6cc72ca06d35f157749079bbf21835cc40e78a5ca1e504304419556214c8594.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce3c5d1f3717b4ea0aafa6292cf8625b63af6544292463d83093a49b6871b96c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/IntegralClosure/Varianta6cc72ca06d35f157749079bbf21835cc40e78a5ca1e504304419556214c8594.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8e34a83-3011-08b5-2ee3-b7f07a55b0b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 280–366.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_adjoin_map_integralClosure_of_isStandardEtale [Algebra.IsStandardEtale R S]
    (a : S ⊗[R] B) (hx : IsIntegral S a) :
    a ∈ Algebra.adjoin S
      ((integralClosure R B).map Algebra.TensorProduct.includeRight : Subalgebra R (S ⊗[R] B)) := by
  -- By assumption, `S = (R[X]/f)[1/g]` for some `f g : R[X]`. Let `x : S` denote the image of `X`.
  have 𝓟 := Classical.ofNonempty (α := StandardEtalePresentation R S)
  -- Since `a` is integral over `S = (R[X]/f)[1/g]`, `gⁿ • a` is `R`-integral for `n` large enough.
  obtain ⟨n, hx⟩ : ∃ n, ∀ m, IsIntegral R ((aeval 𝓟.x 𝓟.g) ^ (n + m) • a) := by
    let e := 𝓟.equivRing.trans 𝓟.equivAwayAdjoinRoot
    algebraize [(e.symm.toAlgHom.comp (IsScalarTower.toAlgHom R (AdjoinRoot 𝓟.f) _)).toRingHom]
    have := IsLocalization.isLocalization_of_algEquiv (R := AdjoinRoot 𝓟.f) (.powers (.mk _ 𝓟.g))
      { toRingEquiv := e.symm.toRingEquiv, commutes' := by simp [RingHom.algebraMap_toAlgebra] }
    obtain ⟨⟨_, m, rfl⟩, hm⟩ := IsIntegral.exists_multiple_integral_of_isLocalization
      (R := AdjoinRoot 𝓟.f) (.powers (.mk _ 𝓟.g)) _ hx
    replace hm := fun k : ℕ ↦ (isIntegral_algebraMap (x := AdjoinRoot.mk 𝓟.f 𝓟.g ^ k)).mul hm
    simp only [Submonoid.smul_def, ← @IsScalarTower.algebraMap_smul (AdjoinRoot 𝓟.f) S,
      ← map_pow, ← Algebra.smul_def, ← mul_smul, ← map_mul, ← pow_add, add_comm _ m] at hm
    simp_rw [map_pow] at hm
    have := 𝓟.monic_f.finite_adjoinRoot
    suffices algebraMap (AdjoinRoot 𝓟.f) S (.mk _ 𝓟.g) = aeval 𝓟.x 𝓟.g from
      ⟨m, fun k ↦ this ▸ isIntegral_trans (R := R) _ (hm k)⟩
    simp [RingHom.algebraMap_toAlgebra, e, StandardEtalePair.equivAwayAdjoinRoot,
      ← aeval_def, ← aeval_algHom_apply]
  -- Under `S ⊗[R] B ≃ (B[X]/f)[1/g]`, we may write `a` as `a/gᵐ` with `a` now living in `B[X]/f`.
  let 𝓟' := 𝓟.baseChange (T := B)
  let e := 𝓟'.equivRing.trans 𝓟'.equivAwayAdjoinRoot
  obtain ⟨a, rfl⟩ := (Algebra.TensorProduct.comm _ _ _).surjective a
  obtain ⟨a, rfl⟩ := e.symm.surjective a
  obtain ⟨a, ⟨_, m, rfl⟩, rfl⟩ := IsLocalization.exists_mk'_eq
    (R := AdjoinRoot 𝓟'.f) (.powers (.mk _ 𝓟'.g)) a
  have hfg : IsIntegral R (AdjoinRoot.mk 𝓟'.f 𝓟'.g) := by
    have := 𝓟.monic_f.finite_adjoinRoot
    let e : AdjoinRoot 𝓟.f →ₐ[R] AdjoinRoot 𝓟'.f :=
      AdjoinRoot.mapAlgHom (Algebra.ofId _ _) _ _ (dvd_refl _)
    convert! (Algebra.IsIntegral.isIntegral (R := R) (AdjoinRoot.mk 𝓟.f 𝓟.g)).map e
    have : (AdjoinRoot.mk 𝓟'.f).comp (mapRingHom (algebraMap R B)) =
        e.toRingHom.comp (AdjoinRoot.mk _) := by ext <;> simp [e]
    exact congr($this 𝓟.g)
  have heg (g : R[X]) : e (1 ⊗ₜ aeval 𝓟.x g) =
      algebraMap _ _ (AdjoinRoot.mk 𝓟'.f (g.map (algebraMap _ _))) := by
    trans e (aeval (1 ⊗ₜ 𝓟.x) (g.map (algebraMap _ B)))
    · rw [← Algebra.TensorProduct.includeRight_apply, ← aeval_algHom_apply]
      simp [StandardEtalePresentation.baseChange, 𝓟']
    rw [← e.eq_symm_apply]
    simp [e, StandardEtalePair.equivAwayAdjoinRoot, ← aeval_def, ← aeval_algHom_apply]
    rfl
  -- And `gᵏ • a` is still `R`-integral for `k` large enough.
  obtain ⟨k, hk⟩ : ∃ k, IsIntegral R (AdjoinRoot.mk 𝓟'.f 𝓟'.g ^ k * a) := by
    have H : ∀ k, e (1 ⊗ₜ (aeval 𝓟.x 𝓟.g ^ k)) = algebraMap _ _ (AdjoinRoot.mk 𝓟'.f 𝓟'.g ^ k) := by
      intro k; convert! congr($(heg 𝓟.g) ^ k) <;>
        simp [← map_pow, 𝓟', StandardEtalePresentation.baseChange]
    have := ((hx m).map (Algebra.TensorProduct.comm _ _ _).symm).map e
    simp only [Algebra.smul_def, Algebra.TensorProduct.algebraMap_apply, Algebra.algebraMap_self,
      RingHom.id_apply, map_mul, Algebra.TensorProduct.comm_symm_tmul, AlgEquiv.symm_apply_apply,
      AlgEquiv.apply_symm_apply] at this
    rw [H, pow_add, map_mul, mul_assoc, IsLocalization.mk'_spec'_mk, ← map_mul] at this
    obtain ⟨k, hk⟩ := IsLocalization.Away.exists_isIntegral_mul_of_isIntegral_algebraMap hfg this
    refine ⟨k + n, by convert! hk using 1; ring_nf⟩
  -- We now use the key lemma `exists_derivative_mul_eq_and_isIntegral_coeff` to get a `y : B[X]`
  -- with `R`-integral coefficients such that `f' * gᵏ * a = y` in `S ⊗[R] B`.
  obtain ⟨y, hy, hRy⟩ := exists_derivative_mul_eq_and_isIntegral_coeff
    (φ := (AdjoinRoot.mkₐ 𝓟'.f).restrictScalars R) AdjoinRoot.mk_surjective 𝓟'.monic_f
    (by simp [𝓟', StandardEtalePresentation.baseChange, isIntegral_algebraMap]) Ideal.mk_ker hk
  simp only [AlgHom.coe_restrictScalars', AdjoinRoot.coe_mkₐ] at hy
  -- Since `f' * gᵏ` is invertible in S, to show that `a ∈ S ⊗ B'` (where `B'` is the
  -- integral closure of `R` in `B`), it suffices to show that `y ∈ S ⊗ B'`,
  rw [← Subalgebra.mem_toSubmodule, ← Submodule.smul_mem_iff_of_isUnit _
    (𝓟.hasMap.isUnit_derivative_f.mul <| (𝓟.hasMap.2.pow k).mul (𝓟.hasMap.2.pow m))]
  convert_to eval₂ Algebra.TensorProduct.includeRight.toRingHom (𝓟.x ⊗ₜ[R] 1) y ∈ _ using 1
  · convert! congr(Algebra.TensorProduct.comm _ _ _ <| e.symm (algebraMap _ _ $hy))
    · apply (Algebra.TensorProduct.comm R B S).symm.injective
      apply e.injective
      simp only [Algebra.smul_def, Algebra.TensorProduct.algebraMap_apply, Algebra.algebraMap_self,
        RingHom.id_apply, map_mul, Algebra.TensorProduct.comm_symm_tmul, AlgEquiv.symm_apply_apply,
        AlgEquiv.apply_symm_apply, map_pow, heg]
      simp_rw [mul_assoc, ← map_pow, show 𝓟.g.map (algebraMap R B) = 𝓟'.g from rfl,
        IsLocalization.mk'_spec'_mk, ← derivative_map]; rfl
    · simp only [← AlgEquiv.coe_toAlgHom, ← AlgHom.coe_toRingHom, ← RingHom.comp_apply,
        ← coe_eval₂RingHom]
      congr 1
      ext <;> simp [e, StandardEtalePair.equivAwayAdjoinRoot]; rfl
  -- which follows from the fact that `y` has `R`-integral coefficients.
  rw [eval₂_eq_sum_range]
  exact sum_mem fun i hi ↦ Subalgebra.mul_mem _ (Algebra.subset_adjoin ⟨_, hRy _, rfl⟩)
    (pow_mem (Subalgebra.algebraMap_mem _ _) _)

-- Subsumed by `TensorProduct.toIntegralClosure_bijective_of_smooth`
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/IntegralClosure/Varianta6cc72ca06d35f157749079bbf21835cc40e78a5ca1e504304419556214c8594.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/IntegralClosure/Varianta6cc72ca06d35f157749079bbf21835cc40e78a5ca1e504304419556214c8594.lean#L280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd8d39ed9f66f9b65488cf19af6038db4921b03c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
