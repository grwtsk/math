# chevalley_mvPolynomialC

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
      "line": 662,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e9/e9636108fda11a8d3a774230ebe79210938937944c67eaf1ee719be526b22850.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eefca8c0-75b5-9c62-a46a-b8e92f8d4496",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f4be4272-81f0-5245-5c9e-6c685e7fec58",
  "kind": "lemma",
  "lexical_name": "chevalley_mvPolynomialC",
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
  "slug": "chevalley-mvpolynomialc--aa2ce08e9ac722023d7ab012",
  "source": {
    "blob": "dc32d4255acefb2564af50d0c658288326d98ff4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 774,
    "line": 662,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variante9636108fda11a8d3a774230ebe79210938937944c67eaf1ee719be526b22850.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa2ce08e9ac722023d7ab01223837bceafc5a9c741eccdbcc9c57a2ca4f1a883",
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

Occurrence: `result:f4be4272-81f0-5245-5c9e-6c685e7fec58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 662–774.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma chevalley_mvPolynomialC
    {M : Submodule ℤ R} (hM : 1 ∈ M) (k : ℕ) (d : Multiset (Fin n))
    (S : ConstructibleSetData (MvPolynomial (Fin n) R))
    (hSn : ∀ C ∈ S, C.n ≤ k)
    (hS : ∀ C ∈ S, ∀ j, C.g j ∈ coeffsIn _ M ⊓ (degreesLE _ _ d).restrictScalars _) :
    ∃ T : ConstructibleSetData R,
      comap MvPolynomial.C '' S.toSet = T.toSet ∧ ∀ C ∈ T,
        C.n ≤ numBound k (fun i ↦ 1 + (d.map Fin.val).count i) n ∧
      ∀ i, C.g i ∈ M ^ (degBound k (fun i ↦ 1 + (d.map Fin.val).count i) n) := by
  classical
  induction' n with n IH generalizing k M
  · refine ⟨(S.map (isEmptyRingEquiv _ _).toRingHom), ?_, ?_⟩
    · rw [ConstructibleSetData.toSet_map]
      show _ = (comapEquiv (isEmptyRingEquiv _ _)).symm ⁻¹' _
      rw [← Equiv.image_eq_preimage]
      rfl
    · simp only [ConstructibleSetData.map, RingEquiv.toRingHom_eq_coe, Finset.mem_image, comp_apply,
        BasicConstructibleSetData.map, RingHom.coe_coe, isEmptyRingEquiv_eq_coeff_zero, pow_one,
        numBound_zero, degBound_zero, forall_exists_index, and_imp, forall_apply_eq_imp_iff₂]
      exact fun a haS ↦ ⟨hSn a haS, fun i ↦ (hS a haS i).1 0⟩
  let e : MvPolynomial (Fin (n + 1)) R ≃ₐ[R] (MvPolynomial (Fin n) R)[X] := finSuccEquiv R n
  let S' := S.map e.toRingHom
  have hS' : S'.degBound ≤ k * (1 + d.count 0) := by
    apply Finset.sup_le fun x hxS ↦ ?_
    simp only [ConstructibleSetData.map, AlgEquiv.toRingEquiv_eq_coe, RingEquiv.toRingHom_eq_coe,
      AlgEquiv.toRingEquiv_toRingHom, Finset.mem_image, BasicConstructibleSetData.map,
      RingHom.coe_coe, S'] at hxS
    obtain ⟨C, hxS, rfl⟩ := hxS
    trans ∑ i : Fin C.n, (1 + d.count 0)
    · gcongr with j hj
      simp only [e, comp_apply]
      by_cases hgj : C.g j = 0
      · rw [hgj, map_zero]
        simp
      rw [degree_finSuccEquiv hgj, WithBot.succ_natCast, add_comm]
      simp only [Nat.cast_id, add_le_add_iff_left, degreeOf_def]
      exact Multiset.count_le_of_le _ (hS _ hxS _).2
    · simp only [Finset.sum_const, Finset.card_univ, Fintype.card_fin, smul_eq_mul]
      gcongr
      exact hSn _ hxS
  let B : Multiset (Fin n) :=
    (d.toFinsupp.comapDomain Fin.succ (Fin.succ_injective _).injOn).toMultiset
  obtain ⟨T, hT₁, hT₂⟩ := chevalley_polynomialC
      (R := MvPolynomial (Fin n) R)
      (coeffsIn _ M ⊓ (degreesLE _ _ B).restrictScalars ℤ)
      (by simpa [MvPolynomial.coeff_one, apply_ite] using hM)
      S' (fun x hxS j k ↦ by
        simp only [ConstructibleSetData.map, AlgEquiv.toRingEquiv_eq_coe,
          RingEquiv.toRingHom_eq_coe, AlgEquiv.toRingEquiv_toRingHom, Finset.mem_image,
          BasicConstructibleSetData.map, RingHom.coe_coe, S', e] at hxS
        obtain ⟨C, hxS, rfl⟩ := hxS
        simp only [comp_apply, Submodule.mem_inf, mem_coeffsIn, Submodule.restrictScalars_mem,
          mem_degreesLE]
        constructor
        · intro d
          simp only [finSuccEquiv_coeff_coeff, e]
          exact (hS _ hxS _).1 _
        · simp only [totalDegree, Finset.sup_le_iff, MvPolynomial.mem_support_iff, B,
            finSuccEquiv_coeff_coeff, ne_eq, e]
          replace hS := (hS _ hxS j).2
          simp only [Submodule.coe_restrictScalars, SetLike.mem_coe, mem_degreesLE,
            Multiset.le_iff_count, Finsupp.count_toMultiset, Finsupp.comapDomain_apply,
            Multiset.toFinsupp_apply, ← degreeOf_def] at hS ⊢
          intro a
          exact (degreeOf_coeff_finSuccEquiv (C.g j) a k).trans (hS _))
  let N := (k * (1 + d.count 0)) ^ (k * (1 + d.count 0))
  have (C) (hCT : C ∈ T) (a) : C.g a ∈ coeffsIn (Fin n) (M ^ N) ⊓
        (degreesLE R (Fin n) (N • B)).restrictScalars ℤ := by
    refine SetLike.le_def.mp ?_ ((hT₂ C hCT).2 a)
    refine pow_inf_le.trans (inf_le_inf ?_ ?_)
    · refine (pow_le_pow_right' ?_ (Nat.pow_self_mono hS')).trans le_coeffsIn_pow
      simpa [MvPolynomial.coeff_one, apply_ite] using hM
    · rw [degreesLE_nsmul, Submodule.restrictScalars_pow Nat.pow_self_pos.ne']
      refine pow_le_pow_right' ?_ (Nat.pow_self_mono hS')
      simp
  have h1M : 1 ≤ M := Submodule.one_le.mpr hM
  obtain ⟨U, hU₁, hU₂⟩ := IH (M := M ^ N)
    (SetLike.le_def.mp (le_self_pow h1M Nat.pow_self_pos.ne') hM) _ _ T
    (fun C hCT ↦ (hT₂ C hCT).1)
    (fun C hCT k ↦ this C hCT k)
  simp only [Multiset.map_nsmul, smul_comm _ (_ ^ _), Multiset.count_nsmul, ← pow_mul, N] at hU₂
  have : ∀ i < n + 1, i.casesOn (1 + d.count 0) (1 + (B.map Fin.val).count ·) ≤
      1 + (d.map Fin.val).count i := by
    intro t ht
    show _ ≤ 1 + (d.map Fin.val).count (Fin.mk t ht).val
    rw [Multiset.count_map_eq_count' _ _ Fin.val_injective]
    obtain - | t := t
    · exact le_rfl
    · simp only [add_lt_add_iff_right] at ht
      show 1 + (B.map Fin.val).count (Fin.mk t ht).val ≤ _
      rw [Multiset.count_map_eq_count' _ _ Fin.val_injective]
      simp [B]
  refine ⟨U, ?_, fun C hCU ↦ ⟨(hU₂ C hCU).1.trans ?_,
    fun i ↦ pow_le_pow_right' h1M ?_ <| (hU₂ C hCU).2 i⟩⟩
  · unfold S' at hT₁
    rw [← hU₁, ← hT₁, ← Set.image_comp, ← ContinuousMap.coe_comp, ← comap_comp,
      ConstructibleSetData.toSet_map]
    show _ = _ '' ((comapEquiv e.toRingEquiv).symm ⁻¹' _)
    rw [← Equiv.image_eq_preimage, Set.image_image]
    simp only [comapEquiv_apply, ← comap_apply, ← comap_comp_apply]
    congr!
    exact e.symm.toAlgHom.comp_algebraMap.symm
  · refine (numBound_mono hS' _ fun _ _ ↦ ?_).trans
      ((numBound_casesOn_succ k _ _ _).symm.trans_le (numBound_mono le_rfl _ this))
    simp +contextual [mul_add, Nat.one_le_iff_ne_zero]
  · refine (Nat.mul_le_mul le_rfl (degBound_le_degBound hS' _ fun _ _ ↦ ?_)).trans
      ((degBound_casesOn_succ k _ _ _).symm.trans_le (degBound_le_degBound le_rfl _ this))
    simp +contextual [mul_add, Nat.one_le_iff_ne_zero]

/-! ### The general `f : R[Y₁, ..., Yₙ] → R[X₁, ..., Xₘ]` case -/

/-- The bound on the number of polynomials used to describe the constructible set appearing in
Chevalley's theorem with complexity bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variante9636108fda11a8d3a774230ebe79210938937944c67eaf1ee719be526b22850.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variante9636108fda11a8d3a774230ebe79210938937944c67eaf1ee719be526b22850.lean#L662).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc32d4255acefb2564af50d0c658288326d98ff4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
