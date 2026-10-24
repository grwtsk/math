# exists_nonarchimedean_pow_mul_seminorm_of_finiteDimensional

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0e89023e7aab66340c3d81970d450ed4e59d1f93",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 179,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f9/f9754fb518a4ed8f7da7bb867182438c639417fdd889063716b6d35ea8020a33.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a3907036-c8f6-1bb0-8986-34f3467f41c3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d4c79682-ad89-1a21-fd3b-2f1509b250b8",
  "kind": "theorem",
  "lexical_name": "exists_nonarchimedean_pow_mul_seminorm_of_finiteDimensional",
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
  "slug": "exists-nonarchimedean-pow-mul-seminorm-of-finitedimensional--ee2274f52e0849c9ddc69ffb",
  "source": {
    "blob": "0e89023e7aab66340c3d81970d450ed4e59d1f93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 179,
    "path": "GRWTSK/Analysis/FiniteExtension/Variantf9754fb518a4ed8f7da7bb867182438c639417fdd889063716b6d35ea8020a33.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee2274f52e0849c9ddc69ffb57773cf584469e1b3287e11fba5f24fd5a9a7f33",
  "verification": {
    "reference": "docs/verification/Analysis/FiniteExtension/Variantf9754fb518a4ed8f7da7bb867182438c639417fdd889063716b6d35ea8020a33.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4c79682-ad89-1a21-fd3b-2f1509b250b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_nonarchimedean_pow_mul_seminorm_of_finiteDimensional (hfd : FiniteDimensional K L)
    (hna : IsNonarchimedean (norm : K → ℝ)) :
    ∃ f : AlgebraNorm K L, IsPowMul f ∧ (∀ (x : K), f ((algebraMap K L) x) = ‖x‖) ∧
      IsNonarchimedean f := by
  -- Choose a basis B = {1, e2,..., en} of the K-vector space L
  set h1 : LinearIndependent K fun x : ({1} : Set L) ↦ (x : L) :=
    LinearIndepOn.id_singleton _ one_ne_zero
  set ι := { x // x ∈ LinearIndepOn.extend h1 (Set.subset_univ ({1} : Set L)) }
  set B : Basis ι K L := Basis.extend h1
  letI hfin : Fintype ι := FiniteDimensional.fintypeBasisIndex B
  haveI hem : Nonempty ι := B.index_nonempty
  have h1L : (1 : L) ∈ LinearIndepOn.extend h1 _ :=
    Basis.subset_extend _ (Set.mem_singleton (1 : L))
  have hB1 : B ⟨1, h1L⟩ = (1 : L) := by rw [Basis.coe_extend, Subtype.coe_mk]
  -- Define a function g : L → ℝ by setting g (∑ki • ei) = maxᵢ ‖ ki ‖
  set g : L → ℝ := B.norm
  -- g 0 = 0seminormFromBounded
  have hg0 : g 0 = 0 := B.norm_zero
  -- g takes nonnegative values
  have hg_nonneg : ∀ x : L, 0 ≤ g x := fun x ↦ by simp only [g, Basis.norm]; aesop
  -- g extends the norm on K
  have hg_ext : ∀ (x : K), g ((algebraMap K L) x) = ‖x‖ := Basis.norm_extends hB1
  -- g is nonarchimedean
  have hg_na : IsNonarchimedean g := Basis.norm_isNonarchimedean hna
  -- g satisfies the triangle inequality
  have hg_add : ∀ a b : L, g (a + b) ≤ g a + g b :=
    fun _ _ ↦ IsNonarchimedean.add_le hg_nonneg hg_na
  -- g (-a) = g a
  have hg_neg : ∀ a : L, g (-a) = g a := B.norm_neg
  -- g is multiplicatively bounded
  obtain ⟨_, _, hg_bdd⟩ := Basis.norm_mul_le_const_mul_norm hB1 hna
  -- g is a K-module norm
  have hg_mul : ∀ (k : K) (y : L), g ((algebraMap K L) k * y) = g ((algebraMap K L) k) * g y :=
    fun k y ↦ Basis.norm_smul hB1 k y
  -- Using BGR Prop. 1.2.1/2, we can smooth g to a ring norm f on L that extends the norm on K.
  set f := seminormFromBounded hg0 hg_nonneg hg_bdd hg_add hg_neg
  have hf_na : IsNonarchimedean f := seminormFromBounded_isNonarchimedean hg_nonneg hg_bdd hg_na
  have hf_1 : f 1 ≤ 1 := seminormFromBounded_one_le hg_nonneg hg_bdd
  have hf_ext : ∀ (x : K), f ((algebraMap K L) x) = ‖x‖ :=
    fun k ↦ hg_ext k ▸ seminormFromBounded_of_mul_apply hg_nonneg hg_bdd (hg_mul k)
  -- Using BGR Prop. 1.3.2/1, we obtain from f  a power multiplicative K-algebra norm on L
  -- extending the norm on K.
  set F' := smoothingSeminorm f hf_1 hf_na with hF'
  have hF'_ext : ∀ k : K, F' ((algebraMap K L) k) = ‖k‖ := by
    intro k
    rw [← hf_ext _]
    exact smoothingSeminorm_apply_of_map_mul_eq_mul f hf_1 hf_na
      (seminormFromBounded_of_mul_is_mul hg_nonneg hg_bdd (hg_mul k))
  have hF'_1 : F' 1 = 1 := by
    have h1 : (1 : L) = (algebraMap K L) 1 := by rw [map_one]
    simp only [h1, hF'_ext (1 : K), norm_one]
  have hF'_0 : F' ≠ 0 := DFunLike.ne_iff.mpr ⟨(1 : L), by rw [hF'_1]; exact one_ne_zero⟩
  set F : AlgebraNorm K L :=
    { RingSeminorm.toRingNorm F' hF'_0 with
      smul' := fun k y ↦ by
        have hk : ∀ y : L, f (algebraMap K L k * y) = f (algebraMap K L k) * f y :=
          seminormFromBounded_of_mul_is_mul hg_nonneg hg_bdd (hg_mul k)
        have hfk : ‖k‖ = (smoothingSeminorm f hf_1 hf_na) ((algebraMap K L) k) := by
          rw [← hf_ext k, eq_comm, smoothingSeminorm_apply_of_map_mul_eq_mul f hf_1 hf_na hk]
        simp only [hfk, hF']
        -- TODO: There are missing `simp` lemmas here, that should be able to convert
        -- `((smoothingSeminorm f hf_1 hf_na).toRingNorm ⋯).toRingSeminorm y` to
        -- `(smoothingSeminorm f hf_1 hf_na y)`, after which the `erw` would work as a `rw`.
        erw [← smoothingSeminorm_of_mul f hf_1 hf_na hk y]
        rw [Algebra.smul_def]
        rfl }
  have hF_ext (k : K) : F ((algebraMap K L) k) = ‖k‖ := by
    rw [← hf_ext]
    exact smoothingSeminorm_apply_of_map_mul_eq_mul f hf_1 hf_na
      (seminormFromBounded_of_mul_is_mul hg_nonneg hg_bdd (hg_mul k))
  exact ⟨F, isPowMul_smoothingFun f hf_1, hF_ext, isNonarchimedean_smoothingFun f hf_1 hf_na⟩

end Field
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/FiniteExtension/Variantf9754fb518a4ed8f7da7bb867182438c639417fdd889063716b6d35ea8020a33.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FiniteExtension/Variantf9754fb518a4ed8f7da7bb867182438c639417fdd889063716b6d35ea8020a33.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e89023e7aab66340c3d81970d450ed4e59d1f93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
