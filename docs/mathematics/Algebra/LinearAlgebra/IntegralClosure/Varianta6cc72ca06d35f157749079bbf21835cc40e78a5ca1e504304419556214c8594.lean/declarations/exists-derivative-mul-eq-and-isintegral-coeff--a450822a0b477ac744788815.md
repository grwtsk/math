# exists_derivative_mul_eq_and_isIntegral_coeff

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
      "line": 195,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a6/a6cc72ca06d35f157749079bbf21835cc40e78a5ca1e504304419556214c8594.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:58c4a824-59e7-dfdc-4de3-f56826f312aa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:23a9168e-7b4a-c0e8-3803-662aeeca17dd",
  "kind": "lemma",
  "lexical_name": "exists_derivative_mul_eq_and_isIntegral_coeff",
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
  "slug": "exists-derivative-mul-eq-and-isintegral-coeff--a450822a0b477ac744788815",
  "source": {
    "blob": "fd8d39ed9f66f9b65488cf19af6038db4921b03c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 195,
    "path": "GRWTSK/Algebra/LinearAlgebra/IntegralClosure/Varianta6cc72ca06d35f157749079bbf21835cc40e78a5ca1e504304419556214c8594.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a450822a0b477ac74478881519a9783d1508f47aa2ec6d67f851e2eed21631de",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/IntegralClosure/Varianta6cc72ca06d35f157749079bbf21835cc40e78a5ca1e504304419556214c8594.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23a9168e-7b4a-c0e8-3803-662aeeca17dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_derivative_mul_eq_and_isIntegral_coeff
    {φ : S[X] →ₐ[R] B} (hφ : Function.Surjective φ) {f : S[X]} (hf : f.Monic)
    (hf' : ∀ i, IsIntegral R (f.coeff i))
    (hfx : RingHom.ker φ.toRingHom = .span {f}) {y : B} (hy : IsIntegral R y) :
    ∃ (g : S[X]), φ f.derivative * y = φ g ∧ ∀ i, IsIntegral R (g.coeff i) := by
  cases subsingleton_or_nontrivial B
  · exact ⟨0, Subsingleton.elim _ _, by simp [isIntegral_zero]⟩
  have hfd : f.natDegree ≠ 0 := by
    rw [ne_eq, hf.natDegree_eq_zero]
    rintro rfl
    simpa using (RingHom.ker_ne_top φ.toRingHom).symm.trans_eq hfx
  classical
  algebraize [φ.toRingHom.comp C]
  have := (algebraMap S B).domain_nontrivial
  obtain ⟨y, rfl⟩ := hφ y
  -- Consider the universal extension `S'` of `S` that splits `f`, so that `f = ∏ᵢ X - aᵢ`.
  obtain ⟨S', _, _, _, _, _, hS'⟩ := hf.exists_splits_map
  obtain ⟨m, hm⟩ := Polynomial.splits_iff_exists_multiset.mp hS'
  simp only [hf.map _, Monic.leadingCoeff, map_one, one_mul] at hm
  algebraize [(algebraMap S S').comp (algebraMap R S)]
  -- Each `aᵢ` is integral since `f` is still monic in `S'`.
  have hm' : ∀ a ∈ m, IsIntegral R a := by
    refine fun a ham ↦ .of_aeval_monic_of_isIntegral_coeff (hf.map (algebraMap _ _)) ?_ ?_ ?_
    · rwa [hf.natDegree_map]
    · rw [hm, eval_multiset_prod, Multiset.prod_eq_zero]
      · exact isIntegral_zero
      · simpa using ⟨a, ham, by simp⟩
    · simp only [coeff_map]
      exact fun _ ↦ (hf' _).algebraMap
  have hmc : m.card = f.natDegree := by
    simpa [hf.natDegree_map, natDegree_multiset_prod_of_monic] using congr(($hm).natDegree).symm
  -- The key identity is `y * f' ≡ ∑ᵢ y(aᵢ) * ∏_{j ≠ i} X - aⱼ (mod f)`.
  have H : (f.derivative * y %ₘ f).map (algebraMap S S') =
        (m.map fun x ↦ ((m.erase x).map (X - C ·)).prod * C (aeval x y)).sum := by
    have ⟨g, hg⟩ : f.map (algebraMap _ _) ∣ (f.derivative * y).map (algebraMap S S') -
        (m.map fun x ↦ ((m.erase x).map (X - C ·)).prod * C (aeval x y)).sum := by
      rw [Polynomial.map_mul, ← Polynomial.derivative_map, hm, derivative_prod,
        ← Multiset.sum_map_mul_right, ← Multiset.sum_map_sub]
      refine Multiset.dvd_sum ?_
      simp only [derivative_sub, derivative_X, derivative_C, sub_zero, mul_one, ← mul_sub,
        Multiset.mem_map, forall_exists_index, and_imp, forall_apply_eq_imp_iff₂]
      intro a ham
      conv_lhs => rw [← Multiset.cons_erase ham]
      rw [Multiset.map_cons, Multiset.prod_cons, mul_comm]
      refine mul_dvd_mul_left _ ?_
      simp [Polynomial.dvd_iff_isRoot]
    rw [map_modByMonic _ hf]
    refine (div_modByMonic_unique g _ (hf.map _) ⟨(sub_eq_iff_eq_add'.mp hg).symm, ?_⟩).2
    refine degree_lt_degree ?_
    rw [hf.natDegree_map, ← Nat.le_sub_one_iff_lt (Ne.bot_lt hfd)]
    refine (natDegree_multiset_sum_le _).trans (Multiset.max_le_of_forall_le _ _ ?_)
    simp only [Multiset.map_map, Function.comp_apply, Multiset.mem_map, forall_exists_index,
      and_imp, forall_apply_eq_imp_iff₂]
    refine fun a ha ↦ (natDegree_mul_C_le _ _).trans ((natDegree_multiset_prod_le _).trans ?_)
    simp [ha, hmc]
  -- Every `y(aᵢ)` is `R`-integral as y is also `R`-integral by assumption.
  have H' (a : S') (ham : a ∈ m) : IsIntegral R (aeval a y) := by
    let ψ : B →ₐ[R] S' := AlgHom.liftOfSurjective _ hφ ((aeval a).restrictScalars R) <| by
      rw [hfx, Ideal.span_le]
      suffices (m.map (a - ·)).prod = 0 by simpa [← eval_map_algebraMap, hm, eval_multiset_prod]
      rw [Multiset.prod_eq_zero]
      simpa using ⟨a, ham, by simp⟩
    simpa [ψ] using hy.map ψ
  -- So `y * f' mod f` is integral over `R[X]` (i.e. its coefficients are `R`-integral)
  -- as a sum of products of integral elements.
  have H'' : IsIntegral R[X] (f.derivative * y %ₘ f) := by
    refine .tower_bot (B := S'[X]) (map_injective _ (FaithfulSMul.algebraMap_injective S S')) ?_
    simp only [algebraMap_def, coe_mapRingHom, H]
    refine .multiset_sum ?_
    simp only [Multiset.mem_map, forall_exists_index, and_imp, forall_apply_eq_imp_iff₂]
    refine fun a ham ↦ .mul (.multiset_prod ?_) ?_
    · simp only [Multiset.mem_map, Polynomial.isIntegral_iff_isIntegral_coeff, forall_exists_index,
        and_imp, forall_apply_eq_imp_iff₂, coeff_sub]
      exact fun b hbm n ↦ .sub (by simp [coeff_X, apply_ite, isIntegral_one, isIntegral_zero])
        (by simp [coeff_C, apply_ite, isIntegral_zero, hm' b (Multiset.mem_of_mem_erase hbm)])
    · simpa [isIntegral_iff_isIntegral_coeff, coeff_C, apply_ite, isIntegral_zero] using H' a ham
  refine ⟨_, ?_, Polynomial.isIntegral_iff_isIntegral_coeff.mp H''⟩
  rw [modByMonic_eq_sub_mul_div, map_sub, map_mul, map_mul,
    show φ f = 0 from hfx.ge (Ideal.mem_span_singleton_self _), zero_mul, sub_zero]

open TensorProduct

set_option backward.isDefEq.respectTransparency false in
attribute [local instance] Polynomial.algebra in
@[stacks 03GE "without the generalization to arbitrary etale algebra"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/IntegralClosure/Varianta6cc72ca06d35f157749079bbf21835cc40e78a5ca1e504304419556214c8594.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/IntegralClosure/Varianta6cc72ca06d35f157749079bbf21835cc40e78a5ca1e504304419556214c8594.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd8d39ed9f66f9b65488cf19af6038db4921b03c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
