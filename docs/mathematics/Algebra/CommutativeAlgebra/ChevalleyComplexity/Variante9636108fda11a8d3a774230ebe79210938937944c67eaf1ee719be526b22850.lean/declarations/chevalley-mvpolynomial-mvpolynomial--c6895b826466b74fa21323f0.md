# chevalley_mvPolynomial_mvPolynomial

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
      "line": 795,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e9/e9636108fda11a8d3a774230ebe79210938937944c67eaf1ee719be526b22850.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dd5f1226-28dc-9ebc-e649-d8e57d8d29b7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dadea3f8-1c48-1120-1614-65496ce43834",
  "kind": "lemma",
  "lexical_name": "chevalley_mvPolynomial_mvPolynomial",
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
  "slug": "chevalley-mvpolynomial-mvpolynomial--c6895b826466b74fa21323f0",
  "source": {
    "blob": "dc32d4255acefb2564af50d0c658288326d98ff4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 899,
    "line": 795,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variante9636108fda11a8d3a774230ebe79210938937944c67eaf1ee719be526b22850.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6895b826466b74fa21323f0d801c4a9e37deda80f44f40471d79c18e0718c31",
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

Occurrence: `result:dadea3f8-1c48-1120-1614-65496ce43834`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 795–899.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma chevalley_mvPolynomial_mvPolynomial
    {m n : ℕ} (f : MvPolynomial (Fin n) R →ₐ[R] MvPolynomial (Fin m) R)
    (k : ℕ) (d : Multiset (Fin m))
    (S : ConstructibleSetData (MvPolynomial (Fin m) R))
    (hSn : ∀ C ∈ S, C.n ≤ k)
    (hS : ∀ C ∈ S, ∀ j, (C.g j).degrees ≤ d)
    (hf : ∀ i, (f (.X i)).degrees ≤ d) :
    ∃ T : ConstructibleSetData (MvPolynomial (Fin n) R),
      comap f '' S.toSet = T.toSet ∧
      ∀ C ∈ T, C.n ≤ numBound k m n d ∧ ∀ i j, (C.g i).degreeOf j ≤ degBound k m n d := by
  classical
  let g : MvPolynomial (Fin m) (MvPolynomial (Fin n) R) →+* MvPolynomial (Fin m) R :=
    eval₂Hom f.toRingHom X
  have hg : g.comp (algebraMap (MvPolynomial (Fin n) R) _) = f := by ext x : 2 <;> simp [g]
  let σ : MvPolynomial (Fin m) R →+* MvPolynomial (Fin m) (MvPolynomial (Fin n) R) :=
    map (algebraMap _ _)
  have hσ : g.comp σ = .id _ := by ext : 2 <;> simp [g, σ]
  have hσ' (x) : g (σ x) = x := DFunLike.congr_fun hσ x
  have hg' : Surjective g := LeftInverse.surjective hσ'
  let S' : ConstructibleSetData (MvPolynomial (Fin m) (MvPolynomial (Fin n) R)) := S.image
    fun ⟨fk, k, gk⟩ ↦ ⟨σ fk, k + n, fun s ↦ (finSumFinEquiv.symm s).elim (σ ∘ gk)
      fun i ↦ .C (.X i) - σ (f (.X i))⟩
  let s₀ : Set (MvPolynomial (Fin m) (MvPolynomial (Fin n) R)) :=
    .range fun i ↦ .C (.X i) - σ (f (.X i))
  have hs : zeroLocus s₀ = Set.range (comap g) := by
    rw [range_comap_of_surjective _ _ hg', ← zeroLocus_span]
    congr! 2
    have H : Ideal.span s₀ ≤ RingHom.ker g := by
      simp only [Ideal.span_le, Set.range_subset_iff, SetLike.mem_coe, RingHom.mem_ker, map_sub,
        hσ', s₀]
      simp [g]
    refine H.antisymm fun p hp ↦ ?_
    obtain ⟨q₁, q₂, hq₁, rfl⟩ : ∃ q₁ q₂, q₁ ∈ Ideal.span s₀ ∧ p = q₁ + σ q₂ := by
      clear hp
      obtain ⟨p, rfl⟩ := (commAlgEquiv _ _ _).surjective p
      simp_rw [← (commAlgEquiv R (Fin n) (Fin m)).symm.injective.eq_iff,
        AlgEquiv.symm_apply_apply]
      induction p using MvPolynomial.induction_on with
      | C q =>
        exact ⟨0, q, by simp, (commAlgEquiv _ _ _).injective <|
          by simp [commAlgEquiv_C, σ]⟩
      | add p q hp hq =>
        obtain ⟨q₁, q₂, hq₁, rfl⟩ := hp
        obtain ⟨q₃, q₄, hq₃, rfl⟩ := hq
        refine ⟨q₁ + q₃, q₂ + q₄, add_mem hq₁ hq₃, by simp only [map_add, add_add_add_comm]⟩
      | mul_X p i hp =>
        obtain ⟨q₁, q₂, hq₁, rfl⟩ := hp
        simp only [← (commAlgEquiv R (Fin n) (Fin m)).injective.eq_iff,
          map_mul, AlgEquiv.apply_symm_apply, commAlgEquiv_X]
        refine ⟨q₁ * .C (.X i) + σ q₂ * (.C (.X i) - σ (f (.X i))), q₂ * f (.X i), ?_, ?_⟩
        · exact add_mem (Ideal.mul_mem_right _ _ hq₁)
            (Ideal.mul_mem_left _ _ (Ideal.subset_span (Set.mem_range_self _)))
        · simp; ring
    obtain rfl : q₂ = 0 := by simpa [hσ', show g q₁ = 0 from H hq₁] using hp
    simpa using hq₁
  have hg'' (t) : comap g '' t = comap σ ⁻¹' t ∩ zeroLocus s₀ := by
    refine Set.injOn_preimage (f := comap g) .rfl ?_ ?_ ?_
    · simp
    · simp [hs]
    · rw [Set.preimage_image_eq _ (comap_injective_of_surjective g hg'),
        Set.preimage_inter, hs, Set.preimage_range, Set.inter_univ,
        ← Set.preimage_comp, ← ContinuousMap.coe_comp, ← comap_comp, hσ]
      simp only [comap_id, ContinuousMap.coe_id, Set.preimage_id_eq, id_eq]
  have hS' : comap g '' S.toSet = S'.toSet := by
    simp only [S', BasicConstructibleSetData.toSet, ConstructibleSetData.toSet, Set.image_iUnion₂,
      Finset.set_biUnion_finset_image, ← comp_def (g := finSumFinEquiv.symm), Set.range_comp,
      Equiv.range_eq_univ, Set.image_univ, Set.Sum.elim_range,
      Set.image_diff (hf := comap_injective_of_surjective g hg'), zeroLocus_union]
    simp [hg'', ← Set.inter_diff_distrib_right, Set.sdiff_inter_right_comm, s₀]
  obtain ⟨T, hT, hT'⟩ :=
    chevalley_mvPolynomialC
    (M := (degreesLE R (Fin n) Finset.univ.1).restrictScalars ℤ) (by simp) (k + n) d S'
    (Finset.forall_mem_image.mpr fun x hx ↦ (by simpa using hSn _ hx))
    (Finset.forall_mem_image.mpr fun x hx ↦ by
      intro j
      obtain ⟨j, rfl⟩ := finSumFinEquiv.surjective j
      simp only [Equiv.symm_apply_apply, Submodule.mem_inf, mem_coeffsIn, implies_true,
        Submodule.restrictScalars_mem, mem_degreesLE, true_and]
      constructor
      · intro i
        obtain j | j := j
        · simp [σ, MvPolynomial.coeff_map, degrees_C]
        · simp only [MvPolynomial.algebraMap_eq, Sum.elim_inr, MvPolynomial.coeff_sub,
            MvPolynomial.coeff_C, MvPolynomial.coeff_map, σ]
          refine degrees_sub_le.trans ?_
          simp only [degrees_C, apply_ite, degrees_zero,
            Multiset.union_zero]
          split_ifs with h
          · refine (degrees_X' _).trans ?_
            simp
          · simp
      · obtain j | j := j
        · simp only [MvPolynomial.algebraMap_eq, Sum.elim_inl, comp_apply, σ]
          exact degrees_map_le.trans (hS _ hx j)
        · refine degrees_sub_le.trans ?_
          simp only [degrees_C, Multiset.zero_union]
          exact degrees_map_le.trans (hf _))
  refine ⟨T, ?_, fun C hCT ↦ ⟨(hT' C hCT).1, fun i j ↦ ?_⟩⟩
  · rwa [← hg, comap_comp, ContinuousMap.coe_comp, Set.image_comp, hS']
  · have := (hT' C hCT).2 i
    rw [← Submodule.restrictScalars_pow (MvPolynomialC.degBound_pos ..).ne', ← degreesLE_nsmul,
      Submodule.restrictScalars_mem, mem_degreesLE,
        Multiset.le_iff_count] at this
    simpa only [Multiset.count_nsmul, Multiset.count_univ, mul_one, ← degreeOf_def]
      using this j
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variante9636108fda11a8d3a774230ebe79210938937944c67eaf1ee719be526b22850.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variante9636108fda11a8d3a774230ebe79210938937944c67eaf1ee719be526b22850.lean#L795).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc32d4255acefb2564af50d0c658288326d98ff4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
