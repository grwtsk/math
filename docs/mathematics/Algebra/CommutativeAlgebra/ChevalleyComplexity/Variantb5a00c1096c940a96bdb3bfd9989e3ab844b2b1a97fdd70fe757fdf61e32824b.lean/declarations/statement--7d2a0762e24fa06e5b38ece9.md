# statement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e49fc5f6-64e7-3cd8-19a4-cf5145a38196",
  "kind": "lemma",
  "lexical_name": "statement",
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
  "slug": "statement--7d2a0762e24fa06e5b38ece9",
  "source": {
    "blob": "7201a976ef3fafeb2a26776aa5bdd22d7d398675",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 556,
    "line": 430,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variantb5a00c1096c940a96bdb3bfd9989e3ab844b2b1a97fdd70fe757fdf61e32824b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d2a0762e24fa06e5b38ece920303b7533ed62882303ac1a124571fe803766bc",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variantb5a00c1096c940a96bdb3bfd9989e3ab844b2b1a97fdd70fe757fdf61e32824b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e49fc5f6-64e7-3cd8-19a4-cf5145a38196`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 430–556.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma statement : ∀ S : InductionObj R n, Statement R₀ R n S := by
  intro S; revert R₀; revert S
  classical
  apply induction_structure
  · intro R _ R₀ _ _ f
    refine ⟨(Finset.range (f.natDegree + 2)).image fun j ↦ ⟨f.coeff j, 0, 0⟩, ?_, ?_⟩
    · convert image_comap_C_basicOpen f
      · simp only [basicOpen_eq_zeroLocus_compl, Set.compl_eq_univ_diff]
        congr 1
        rw [← Set.univ_subset_iff]
        rintro x _ _ ⟨_, rfl⟩
        exact zero_mem x.asIdeal
      · suffices Set.range f.coeff = ⋃ i < f.natDegree + 2, {f.coeff i} by
          simp [BasicConstructibleSetData.toSet, ConstructibleSetData.toSet,
            ← Set.compl_eq_univ_diff, eq_compl_comm (y := zeroLocus _), ← zeroLocus_iUnion₂, this]
        trans f.coeff '' (Set.Iio (f.natDegree + 2))
        · refine ((Set.image_subset_range _ _).antisymm ?_).symm
          rintro _ ⟨i, rfl⟩
          by_cases hi : i ≤ f.natDegree
          · exact ⟨i, hi.trans_lt (by simp), rfl⟩
          · exact ⟨f.natDegree + 1, by simp,
              by simp [f.coeff_eq_zero_of_natDegree_lt (lt_of_not_le hi)]⟩
        · ext; simp [eq_comm]
    · simp
  · intros R _ g i hi hi_min _ R₀ _ f
    let M := R[X] ⧸ Ideal.span {g.1 i}
    have : Module.Free R M := .of_basis (AdjoinRoot.powerBasis' hi).basis
    have : Module.Finite R M := .of_basis (AdjoinRoot.powerBasis' hi).basis
    refine ⟨(Finset.range (Module.finrank R M)).image
      fun j ↦ ⟨(Algebra.lmul R M (Ideal.Quotient.mk _ f)).charpoly.coeff j, 0, 0⟩, ?_, ?_⟩
    · ext x
      have : zeroLocus (Set.range g.val) = zeroLocus {g.1 i} := by
        rw [Set.range_eq_iUnion, zeroLocus_iUnion]
        refine (Set.iInter_subset _ _).antisymm (Set.subset_iInter fun j ↦ ?_)
        by_cases hij : i = j
        · subst hij; rfl
        · rw [hi_min j (.symm hij), zeroLocus_singleton_zero]; exact Set.subset_univ _
      rw [this, ← Polynomial.algebraMap_eq, mem_image_comap_zeroLocus_sdiff,
        IsScalarTower.algebraMap_apply R[X] M, isNilpotent_tensor_residueField_iff]
      simp [BasicConstructibleSetData.toSet, ConstructibleSetData.toSet, Set.subset_def, M]
    · simp
  · intro R _ c i j hi hle hne H R₀ _ _ f
    cases subsingleton_or_nontrivial R
    · use ∅
      simp [ConstructibleSetData.toSet, Subsingleton.elim f 0]
    obtain ⟨S, hS, hS'⟩ := H (R₀ := R₀) f
    refine ⟨S, Eq.trans ?_ hS, ?_⟩
    · rw [← zeroLocus_span (Set.range _), ← zeroLocus_span (Set.range _),
        idealSpan_range_update_divByMonic hne _ hi]
    · intro C hC
      let c' : InductionObj _ _ := ⟨update c.val j (c.val j %ₘ c.val i)⟩
      have deg_bound₁ : c'.degBound ≤ c.degBound := by
        dsimp [InductionObj.degBound, c']
        gcongr with k
        · rw [update_apply]
          split_ifs with hkj
          · subst hkj; exact (degree_modByMonic_le _ hi).trans hle
          · rfl
      refine ⟨(hS' C hC).1.trans deg_bound₁, fun k ↦ SetLike.le_def.mp ?_ ((hS' C hC).2 k)⟩
      show c'.coeffSubmodule R₀ ^ c'.powBound ≤ _
      delta powBound
      suffices hij : c'.coeffSubmodule R₀ ≤ c.coeffSubmodule R₀ ^ (c.val j).degree.succ by
        by_cases hi' : c.val i = 1
        · gcongr
          · exact c.one_le_coeffSubmodule
          · refine Submodule.span_le.mpr (Set.union_subset ?_ ?_)
            · exact Set.subset_union_left.trans Submodule.subset_span
            · refine Set.iUnion_subset fun k ↦ ?_
              simp only [update_apply, hi', modByMonic_one, c']
              split_ifs
              · rintro _ ⟨_, rfl⟩
                exact zero_mem _
              · exact (Set.subset_iUnion (fun i ↦ coeff(c.val i)) k).trans
                  (Set.subset_union_right.trans Submodule.subset_span)
          rw [Nat.one_le_iff_ne_zero, ← Nat.pos_iff_ne_zero, InductionObj.degBound]
          refine Fintype.sum_pos (Pi.lt_def.mpr ⟨by positivity, i, by simp [hi']⟩)
        refine (pow_le_pow_left' hij _).trans ?_
        rw [← pow_mul]
        apply pow_le_pow_right' c.one_le_coeffSubmodule
        have deg_bound₂ : c'.degBound < c.degBound := by
          dsimp [InductionObj.degBound, c']
          apply Finset.sum_lt_sum ?_ ⟨j, Finset.mem_univ _, ?_⟩
          · intro k _
            rw [update_apply]
            split_ifs with hkj
            · subst hkj; gcongr; exact (degree_modByMonic_le _ hi).trans hle
            · rfl
          · gcongr; simpa using (degree_modByMonic_lt _ hi).trans_le hle
        calc  (c.val j).degree.succ * c'.degBound ^ c'.degBound
          _ ≤ c.degBound * c.degBound ^ c'.degBound := by
            gcongr
            delta InductionObj.degBound
            exact Finset.single_le_sum (f := fun i ↦ (c.val i).degree.succ)
              (by intros; positivity) (Finset.mem_univ _)
          _ = c.degBound ^ (c'.degBound + 1) := by rw [pow_succ']
          _ ≤ c.degBound ^ c.degBound := by gcongr <;> omega
      rw [coeffSubmodule]
      simp only [Submodule.span_le, Set.union_subset_iff, Set.singleton_subset_iff, SetLike.mem_coe,
        Set.iUnion_subset_iff, Set.range_subset_iff, c']
      constructor
      · apply one_le_pow_of_one_le' c.one_le_coeffSubmodule
        rw [Submodule.one_eq_span]
        exact Submodule.subset_span rfl
      · intro l m
        rw [update_apply]
        split_ifs with hlj
        · convert coeff_modByMonic_mem_pow_natDegree_mul _ _ _ (fun _ ↦ coeff_mem_coeffSubmodule)
            one_mem_coeffSubmodule _ (fun _ ↦ coeff_mem_coeffSubmodule) one_mem_coeffSubmodule _
          rw [← pow_succ, Polynomial.degree_eq_natDegree, WithBot.succ_natCast, Nat.cast_id]
          intro e
          simp [show c.val i = 0 by simpa [e] using hle] at hi
        · have : (c.val j).degree.succ ≠ 0 := by
            rw [← Nat.pos_iff_ne_zero]
            apply WithBot.succ_lt_succ (x := ⊥)
            refine lt_of_lt_of_le ?_ hle
            rw [bot_lt_iff_ne_bot, ne_eq, degree_eq_bot]
            intro e
            simp [e] at hi
          refine le_self_pow c.one_le_coeffSubmodule this ?_
          exact Submodule.subset_span (.inr (Set.mem_iUnion_of_mem l ⟨m, rfl⟩))
  · intro R _ c i e he hc H₁ H₂ R₀ _ _
    exact induction_aux (R₀ := R₀) R c i e he hc H₁ H₂

end PolynomialC

open PolynomialC InductionObj in
/-- The `C : R → R[X]` case of **Chevalley's theorem** with complexity bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variantb5a00c1096c940a96bdb3bfd9989e3ab844b2b1a97fdd70fe757fdf61e32824b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variantb5a00c1096c940a96bdb3bfd9989e3ab844b2b1a97fdd70fe757fdf61e32824b.lean#L430).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7201a976ef3fafeb2a26776aa5bdd22d7d398675` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
