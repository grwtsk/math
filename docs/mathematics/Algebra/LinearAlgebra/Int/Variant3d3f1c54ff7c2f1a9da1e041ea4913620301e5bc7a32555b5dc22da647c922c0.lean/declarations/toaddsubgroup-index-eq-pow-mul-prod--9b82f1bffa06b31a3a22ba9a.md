# toAddSubgroup_index_eq_pow_mul_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:db59c466-c9c9-7363-261c-a635409480ae",
  "kind": "lemma",
  "lexical_name": "toAddSubgroup_index_eq_pow_mul_prod",
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
  "slug": "toaddsubgroup-index-eq-pow-mul-prod--9b82f1bffa06b31a3a22ba9a",
  "source": {
    "blob": "2734ba80c8963f87b5467742cf84f30daee9e906",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 36,
    "path": "GRWTSK/Algebra/LinearAlgebra/Int/Variant3d3f1c54ff7c2f1a9da1e041ea4913620301e5bc7a32555b5dc22da647c922c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b82f1bffa06b31a3a22ba9a8fec754908892c1b47360f66546e2b02691f8153",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Int/Variant3d3f1c54ff7c2f1a9da1e041ea4913620301e5bc7a32555b5dc22da647c922c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db59c466-c9c9-7363-261c-a635409480ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toAddSubgroup_index_eq_pow_mul_prod [Module R M] {N : Submodule R M}
    (snf : Basis.SmithNormalForm N ι n) :
    N.toAddSubgroup.index = Nat.card R ^ (Fintype.card ι - n) *
      ∏ i : Fin n, (Ideal.span {snf.a i}).toAddSubgroup.index := by
  classical
  rcases snf with ⟨bM, bN, f, a, snf⟩
  dsimp only
  set N' : Submodule R (ι → R) := N.map bM.equivFun with hN'
  let bN' : Basis (Fin n) R N' := bN.map (bM.equivFun.submoduleMap N)
  have snf' : ∀ i, (bN' i : ι → R) = Pi.single (f i) (a i) := by
    intro i
    simp only [map_apply, bN']
    erw [LinearEquiv.submoduleMap_apply]
    simp only [equivFun_apply, snf, map_smul, repr_self, Finsupp.single_eq_pi_single]
    ext j
    simp [Pi.single_apply]
  have hNN' : N.toAddSubgroup.index = N'.toAddSubgroup.index := by
    set e : (ι → R) ≃+ M := ↑bM.equivFun.symm with he
    let e' : (ι → R) →+ M := e
    have he' : Function.Surjective e' := e.surjective
    convert (AddSubgroup.index_comap_of_surjective N.toAddSubgroup he').symm using 2
    rw [AddSubgroup.comap_equiv_eq_map_symm, he, hN', LinearEquiv.coe_toAddEquiv_symm,
    AddEquiv.symm_symm]
    exact Submodule.map_toAddSubgroup ..
  rw [hNN']
  have hN' : N'.toAddSubgroup = AddSubgroup.pi Set.univ
      (fun i ↦ (Ideal.span {if h : ∃ j, f j = i then a h.choose else 0}).toAddSubgroup) := by
    ext g
    simp only [Submodule.mem_toAddSubgroup, bN'.mem_submodule_iff', snf', AddSubgroup.mem_pi,
      Set.mem_univ, true_implies, Ideal.mem_span_singleton]
    refine ⟨fun h ↦ ?_, fun h ↦ ?_⟩
    · rcases h with ⟨c, rfl⟩
      intro i
      simp only [Finset.sum_apply, Pi.smul_apply, Pi.single_apply]
      split_ifs with h
      · convert dvd_mul_left (a h.choose) (c h.choose)
        calc ∑ x : Fin n, _ = c h.choose * if i = f h.choose then a h.choose else 0 := by
              refine Finset.sum_eq_single h.choose ?_ (by simp)
              rintro j - hj
              have hinj := f.injective.ne hj
              rw [h.choose_spec] at hinj
              simp [hinj.symm]
          _ = c h.choose * a h.choose := by simp [h.choose_spec]
      · convert dvd_refl (0 : R)
        convert Finset.sum_const_zero with j
        rw [not_exists] at h
        specialize h j
        rw [eq_comm] at h
        simp [h]
    · refine ⟨fun j ↦ (h (f j)).choose, ?_⟩
      ext i
      simp only [EmbeddingLike.apply_eq_iff_eq, exists_eq, ↓reduceDIte, Classical.choose_eq,
        Finset.sum_apply, Pi.smul_apply, Pi.single_apply, smul_ite, smul_zero]
      rw [eq_comm]
      by_cases hj : ∃ j, f j = i
      · calc ∑ x : Fin n, _ =
            if i = f hj.choose then (h (f hj.choose)).choose * a hj.choose else 0 := by
              convert Finset.sum_eq_single (M := R) hj.choose ?_ ?_
              · simp [hj]
              · rintro j - h
                have hinj := f.injective.ne h
                rw [hj.choose_spec] at hinj
                simp [hinj.symm]
              · simp
          _ = g i := by
              simp only [hj.choose_spec, ↓reduceIte]
              rw [mul_comm]
              conv_rhs =>
                rw [← hj.choose_spec, (h (f hj.choose)).choose_spec]
              simp only [EmbeddingLike.apply_eq_iff_eq, exists_eq, ↓reduceDIte, Classical.choose_eq]
              congr!
              · exact hj.choose_spec.symm
              · simp [hj]
      · convert Finset.sum_const_zero with x
        · rw [not_exists] at hj
          specialize hj x
          rw [eq_comm] at hj
          simp [hj]
        · rw [← zero_dvd_iff]
          convert h i
          simp [hj]
  simp only [hN', AddSubgroup.index_pi, apply_dite, Finset.prod_dite, Set.singleton_zero,
    Ideal.span_zero, Submodule.bot_toAddSubgroup, AddSubgroup.index_pi, AddSubgroup.index_bot,
    Finset.prod_const, Finset.univ_eq_attach, Finset.card_attach]
  rw [mul_comm]
  congr
  · convert Finset.card_compl {x | ∃ j, f j = x} using 2
    · exact (Finset.compl_filter _).symm
    · convert (Finset.card_image_of_injective Finset.univ f.injective).symm <;> simp
  · rw [Finset.attach_eq_univ]
    let f' : Fin n → { x // x ∈ Finset.filter (fun x ↦ ∃ j, f j = x) Finset.univ } :=
      fun i ↦ ⟨f i, by simp⟩
    have hf' : Function.Injective f' := fun i j hij ↦ by
      rw [Subtype.ext_iff] at hij
      exact f.injective hij
    let f'' : Fin n ↪ { x // x ∈ Finset.filter (fun x ↦ ∃ j, f j = x) Finset.univ } :=
      ⟨f', hf'⟩
    have hu : (Finset.univ : Finset { x // x ∈ Finset.filter (fun x ↦ ∃ j, f j = x) Finset.univ }) =
      Finset.univ.map f'' := by
      ext x
      simp only [Finset.univ_eq_attach, Finset.mem_attach, Finset.mem_map, Finset.mem_univ,
        true_and, true_iff]
      have hx := x.property
      simp only [Finset.univ_filter_exists, Finset.mem_image, Finset.mem_univ, true_and] at hx
      rcases hx with ⟨i, hi⟩
      refine ⟨i, ?_⟩
      rw [Subtype.ext_iff]
      exact hi
    rw [hu, Finset.prod_map]
    congr! with i
    rw [← f.injective.eq_iff]
    generalize_proofs h
    rw [h.choose_spec]
    rfl

/-- Given a submodule `N` in Smith normal form of a free `R`-module, its index as an additive
subgroup is infinite (represented as zero) if the submodule basis has fewer vectors than the basis
for the module, and otherwise equals the product of the indexes of the ideals generated by each
basis vector. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Int/Variant3d3f1c54ff7c2f1a9da1e041ea4913620301e5bc7a32555b5dc22da647c922c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Int/Variant3d3f1c54ff7c2f1a9da1e041ea4913620301e5bc7a32555b5dc22da647c922c0.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2734ba80c8963f87b5467742cf84f30daee9e906` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
