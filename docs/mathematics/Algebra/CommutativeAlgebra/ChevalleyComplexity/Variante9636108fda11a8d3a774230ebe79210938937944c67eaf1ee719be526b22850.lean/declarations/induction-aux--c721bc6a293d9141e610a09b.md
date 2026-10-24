# induction_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dc32d4255acefb2564af50d0c658288326d98ff4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 270,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e9/e9636108fda11a8d3a774230ebe79210938937944c67eaf1ee719be526b22850.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:190c7fdc-3317-0066-3e93-8d55e2519199",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c32f3b7c-a92f-d36d-1c30-11198a8e7a3e",
  "kind": "lemma",
  "lexical_name": "induction_aux",
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
  "slug": "induction-aux--c721bc6a293d9141e610a09b",
  "source": {
    "blob": "dc32d4255acefb2564af50d0c658288326d98ff4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 421,
    "line": 270,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variante9636108fda11a8d3a774230ebe79210938937944c67eaf1ee719be526b22850.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c721bc6a293d9141e610a09b00b5bff9365d26cce07017f8a7606ff8da9d3fef",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variante9636108fda11a8d3a774230ebe79210938937944c67eaf1ee719be526b22850.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c32f3b7c-a92f-d36d-1c30-11198a8e7a3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 270–421.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma induction_aux (R : Type*) [CommRing R] [Algebra R₀ R]
    (c : R) (i : Fin n) (e : InductionObj R n) (hi : c = (e.1 i).leadingCoeff) (hc : c ≠ 0) :
    Statement R₀ (Away c) n
      ⟨Polynomial.C (IsLocalization.Away.invSelf (S := Away c) c) •
        mapRingHom (algebraMap _ _) ∘ e⟩ →
    Statement R₀ (R ⧸ Ideal.span {c}) n ⟨mapRingHom (algebraMap _ _) ∘ e⟩ →
      Statement R₀ R n e := by
  set q₁ := IsScalarTower.toAlgHom R₀ R (Away c)
  set q₂ := Ideal.Quotient.mkₐ R₀ (.span {c})
  have q₂_surjective : Surjective q₂ := Ideal.Quotient.mk_surjective
  set e₁ : InductionObj (Away c) n :=
    ⟨Polynomial.C (IsLocalization.Away.invSelf (S := Away c) c) • mapRingHom q₁ ∘ e⟩
  set e₂ : InductionObj (R ⧸ Ideal.span {c}) n := ⟨mapRingHom q₂ ∘ e⟩
  have degBound_e₁_le : e₁.degBound ≤ e.degBound := by
    unfold degBound
    gcongr with j
    exact (degree_mul_le _ _).trans <| (add_le_of_nonpos_left degree_C_le).trans degree_map_le
  have degBound_e₂_lt : e₂.degBound < e.degBound := by
    unfold degBound
    refine Fintype.sum_strictMono <| Pi.lt_def.2 ⟨fun j ↦ ?_, i, ?_⟩
    · dsimp
      gcongr
      exact degree_map_le
    · gcongr
      exact degree_map_lt (by simp [q₂, ← hi]) (by simpa [hi] using hc)
  intro (H₁ : Statement R₀ _ _ e₁) (H₂ : Statement R₀ _ _ e₂) f
  obtain ⟨T₁, hT₁⟩ := H₁ (mapRingHom q₁ f)
  obtain ⟨T₂, hT₂⟩ := H₂ (mapRingHom q₂ f)
  simp only [forall_and] at hT₁ hT₂
  obtain ⟨hT₁, hT₁deg, hT₁span⟩ := hT₁
  obtain ⟨hT₂, hT₂deg, hT₂span⟩ := hT₂
  -- Lift the tuples of `T₁` from `Away c` to `R`
  let _ : Invertible (q₁ c) :=
    -- TODO(Andrew): add API for `IsLocalization.Away.invSelf`
    ⟨IsLocalization.Away.invSelf c, by simp [q₁, IsLocalization.Away.invSelf], by
      simp [q₁, IsLocalization.Away.invSelf]⟩
  have he₁span :
      e₁.coeffSubmodule R₀ ^ e₁.powBound = ⅟(q₁ c ^ e₁.powBound) •
        (span R₀ ({c} ∪ ⋃ i, coeff(e i)) ^ e₁.powBound).map q₁.toLinearMap := by
    unfold coeffSubmodule
    rw [Submodule.map_pow, map_span, invOf_pow, ← smul_pow, ← span_smul]
    simp [Set.image_insert_eq, Set.smul_set_insert, Set.image_iUnion, Set.smul_set_iUnion, q₁, e₁]
    congr! with i
    change _ = IsLocalization.Away.invSelf c • _
    simp [← Set.range_comp, Set.smul_set_range, funext fun _ ↦ coeff_C_mul _]
    ext
    simp [q₁]
  replace hT₁span x hx i :=
    smul_mem_pointwise_smul _ (q₁ c ^ e₁.powBound) _ (hT₁span x hx i)
  simp only [he₁span, smul_invOf_smul, smul_eq_mul] at hT₁span
  choose! g₁ hg₁ hq₁g₁ using hT₁span
  -- Lift the constants of `T₁` from `Away c` to `R`
  choose! n₁ f₁ hf₁ using Away.surj (S := Away c) c
  change (∀ _, _ * q₁ _ ^ _ = q₁ _) at hf₁
  -- Lift the tuples of `T₂` from `R ⧸ Ideal.span {c}` to `R`
  rw [coeffSubmodule_mapRingHom_comp, ← Submodule.map_pow] at hT₂span
  choose! g₂ hg₂ hq₂g₂ using hT₂span
  -- Lift the constants of `T₂` from `R ⧸ Ideal.span {c}` to `R`
  choose! f₂ hf₂ using Ideal.Quotient.mkₐ_surjective R₀ (I := .span {c})
  change (∀ _, q₂ _ = _) at hf₂
  -- Lift everything together
  classical
  let S₁ : Finset (BasicConstructibleSetData R) := T₁.image fun x ↦ ⟨c * f₁ x.f, _, g₁ x⟩
  let S₂ : Finset (BasicConstructibleSetData R) := T₂.image fun x ↦ ⟨f₂ x.f, _, Fin.cons c (g₂ x)⟩
  refine ⟨S₁ ∪ S₂, ?_, ?_⟩
  · calc
      comap Polynomial.C '' (zeroLocus (.range e) \ zeroLocus {f})
        = comap q₁ '' (comap Polynomial.C ''
            (comap (mapRingHom q₁.toRingHom) ⁻¹' (zeroLocus (.range e) \ zeroLocus {f}))) ∪
          comap q₂ '' (comap Polynomial.C ''
            (comap (mapRingHom q₂.toRingHom) ⁻¹' (zeroLocus (.range e) \ zeroLocus {f}))) :=
        Set.image_of_range_union_range_eq_univ (by ext; simp) (by ext; simp)
          (by rw [Ideal.Quotient.mkₐ_toRingHom,
            ← range_comap_algebraMap_localization_compl_eq_range_comap_quotientMk,
            RingHom.algebraMap_toAlgebra]; exact Set.union_compl_self _) _
      _ = (⋃ C ∈ S₁, C.toSet) ∪ ⋃ C ∈ S₂, C.toSet := ?_
      _ = ⋃ C ∈ S₁ ∪ S₂, C.toSet := by
        simpa using (Set.biUnion_union S₁.toSet S₂.toSet _).symm
    congr 1
    · convert congr(comap q₁.toRingHom '' $hT₁)
      · dsimp only [e₁]
        rw [Set.preimage_diff, preimage_comap_zeroLocus, preimage_comap_zeroLocus,
          Set.image_singleton, Pi.smul_def, ← Set.smul_set_range, Set.range_comp]
        congr 1
        refine (PrimeSpectrum.zeroLocus_smul_of_isUnit (.map _ ?_) _).symm
        exact isUnit_iff_exists_inv'.mpr ⟨_, IsLocalization.Away.mul_invSelf c⟩
      · rw [ConstructibleSetData.toSet, Set.image_iUnion₂]
        simp_rw [← Finset.mem_coe, S₁, Finset.coe_image, Set.biUnion_image]
        congr! with x hxT₁
        apply Set.injOn_preimage subset_rfl (f := comap q₁.toRingHom)
        · dsimp only [q₁, AlgHom.toRingHom_eq_coe]
          rw [IsScalarTower.coe_toAlgHom,
            localization_away_comap_range (S := Localization.Away c) (r := c),
            BasicConstructibleSetData.toSet, sdiff_eq, ← basicOpen_eq_zeroLocus_compl,
            basicOpen_mul]
          exact Set.inter_subset_right.trans Set.inter_subset_left
        · exact Set.image_subset_range ..
        · rw [BasicConstructibleSetData.toSet, BasicConstructibleSetData.toSet, Set.preimage_diff,
            preimage_comap_zeroLocus, preimage_comap_zeroLocus, Set.preimage_image_eq]
          swap; · exact localization_specComap_injective _ (.powers c)
          simp only [AlgHom.toLinearMap_apply] at hq₁g₁
          simp only [← Set.range_comp, comp_def, AlgHom.toRingHom_eq_coe, RingHom.coe_coe,
            hq₁g₁ _ hxT₁, Set.image_singleton, map_mul, ← hf₁, mul_comm x.1, ← mul_assoc,
            ← pow_succ']
          simp only [← smul_eq_mul, ← Set.smul_set_range, ← Set.smul_set_singleton,
            zeroLocus_smul_of_isUnit ((isUnit_of_invertible (q₁ c)).pow _)]
    · convert congr(comap q₂.toRingHom '' $hT₂)
      · rw [Set.preimage_diff, preimage_comap_zeroLocus, preimage_comap_zeroLocus,
          Set.image_singleton, Set.range_comp, AlgHom.toRingHom_eq_coe]
      · rw [ConstructibleSetData.toSet, Set.image_iUnion₂]
        simp_rw [← Finset.mem_coe, S₂, Finset.coe_image, Set.biUnion_image]
        congr! 3 with x hxT₂
        apply Set.injOn_preimage subset_rfl (f := comap q₂.toRingHom)
        · rw [range_comap_of_surjective _ _ q₂_surjective]
          simp only [AlgHom.toRingHom_eq_coe, Ideal.Quotient.mkₐ_ker, zeroLocus_span, q₂]
          exact Set.diff_subset.trans (zeroLocus_anti_mono (by simp))
        · exact Set.image_subset_range _ _
        · simp only [AlgHom.toLinearMap_apply, RingHom.toIntAlgHom_coe] at hq₂g₂
          have : q₂ c = 0 := by simp [q₂]
          simp only [BasicConstructibleSetData.toSet, Set.preimage_diff, preimage_comap_zeroLocus,
            preimage_comap_zeroLocus,
            Set.preimage_image_eq _ (comap_injective_of_surjective _ q₂_surjective)]
          simp only [Fin.range_cons, Set.image_singleton, Set.image_insert_eq,
            ← Set.range_comp, comp_def]
          simp only [AlgHom.toRingHom_eq_coe, AlgHom.coe_toRingHom, hq₂g₂ _ hxT₂, hf₂]
          rw [← Set.union_singleton, zeroLocus_union,
            this, zeroLocus_singleton_zero, Set.inter_univ]
  · simp only [Finset.mem_union, forall_and, or_imp, Finset.forall_mem_image, S₁, S₂]
    refine ⟨⟨fun x hx ↦ (hT₁deg _ hx).trans degBound_e₁_le,
      fun x hx ↦ (hT₂deg _ hx).trans_lt degBound_e₂_lt⟩,
      fun x hx k ↦ SetLike.mem_of_subset ?_ (hg₁ _ hx _),
      fun x hx ↦ Fin.cons ?_ fun k ↦ SetLike.mem_of_subset ?_ (hg₂ _ hx _)⟩
    · norm_cast
      calc
        span R₀ ({c} ∪ ⋃ i, coeff(e i)) ^ e₁.powBound
        _ ≤ span R₀ (⋃ i, coeff(e i)) ^ e₁.powBound := by
          gcongr; simpa [Set.insert_subset_iff] using ⟨_, _, hi.symm⟩
        _ ≤ e.coeffSubmodule R₀ ^ e.powBound := by
          unfold coeffSubmodule powBound
          gcongr
          · exact one_le_coeffSubmodule
          · exact Set.subset_union_right
          · omega
    · exact le_self_pow one_le_coeffSubmodule powBound_ne_zero <| subset_span <| .inr <| by
        simpa using ⟨_, _, hi.symm⟩
    · unfold powBound
      gcongr
      · exact one_le_coeffSubmodule
      · omega

/-- The main induction in the proof of Chevalley's theorem for `R →+* R[X]`.
See the docstring of `induction_structure` for the overview. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variante9636108fda11a8d3a774230ebe79210938937944c67eaf1ee719be526b22850.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variante9636108fda11a8d3a774230ebe79210938937944c67eaf1ee719be526b22850.lean#L270).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc32d4255acefb2564af50d0c658288326d98ff4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
