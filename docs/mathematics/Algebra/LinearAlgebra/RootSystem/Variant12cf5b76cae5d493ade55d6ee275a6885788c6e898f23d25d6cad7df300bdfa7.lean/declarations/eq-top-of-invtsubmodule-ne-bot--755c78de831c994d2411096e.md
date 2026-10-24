# eq_top_of_invtSubmodule_ne_bot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "04734e10633c10ddc57f22f02ff722c709a6c50a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 432,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/12/12cf5b76cae5d493ade55d6ee275a6885788c6e898f23d25d6cad7df300bdfa7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:13925f0e-b036-0cad-97fd-7621d728c4d3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1e1c9792-6138-b51d-5133-0ece59421ac8",
  "kind": "lemma",
  "lexical_name": "eq_top_of_invtSubmodule_ne_bot",
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
  "slug": "eq-top-of-invtsubmodule-ne-bot--755c78de831c994d2411096e",
  "source": {
    "blob": "04734e10633c10ddc57f22f02ff722c709a6c50a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 593,
    "line": 432,
    "path": "GRWTSK/Algebra/LinearAlgebra/RootSystem/Variant12cf5b76cae5d493ade55d6ee275a6885788c6e898f23d25d6cad7df300bdfa7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:755c78de831c994d2411096e1c59370aa5b353c6c7d1ae97b785a50ab97b50cb",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/RootSystem/Variant12cf5b76cae5d493ade55d6ee275a6885788c6e898f23d25d6cad7df300bdfa7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e1c9792-6138-b51d-5133-0ece59421ac8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 432–593.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eq_top_of_invtSubmodule_ne_bot
   (q : Submodule K (Dual K H))
   (h₀ : ∀ (i : H.root), q ∈ End.invtSubmodule ((rootSystem H).reflection i))
   (h₁ : q ≠ ⊥) : q = ⊤ := by
  have _i := nontrivial_of_isIrreducible K L L
  let S := rootSystem H
  by_contra h₃
  suffices h₂ : ∀ Φ, Φ.Nonempty → S.root '' Φ ⊆ q → (∀ i ∉ Φ, q ≤ LinearMap.ker (S.coroot' i)) →
      Φ = Set.univ by
    have := (S.eq_top_of_mem_invtSubmodule_of_forall_eq_univ q h₁ h₀) h₂
    apply False.elim (h₃ this)
  intro Φ hΦ₁ hΦ₂ hΦ₃
  by_contra hc
  have hΦ₂' : ∀ i ∈ Φ, (S.root i) ∈ q := by
    intro i hi
    apply hΦ₂
    exact Set.mem_image_of_mem S.root hi
  have s₁ (i j : H.root) (h₁ : i ∈ Φ) (h₂ : j ∉ Φ) : S.root i (S.coroot j) = 0 :=
    (hΦ₃ j h₂) (hΦ₂' i h₁)
  have s₁' (i j : H.root) (h₁ : i ∈ Φ) (h₂ : j ∉ Φ) : S.root j (S.coroot i) = 0 :=
    (S.pairing_eq_zero_iff (i := i) (j := j)).1 (s₁ i j h₁ h₂)
  have s₂ (i j : H.root) (h₁ : i ∈ Φ) (h₂ : j ∉ Φ) : i.1 (coroot j) = 0 := s₁ i j h₁ h₂
  have s₂' (i j : H.root) (h₁ : i ∈ Φ) (h₂ : j ∉ Φ) : j.1 (coroot i) = 0 := s₁' i j h₁ h₂
  have s₃ (i j : H.root) (h₁ : i ∈ Φ) (h₂ : j ∉ Φ) : genWeightSpace L (i.1.1 + j.1.1) = ⊥ := by
    by_contra h
    have i_non_zero : i.1.IsNonZero := by
      obtain ⟨val, hval⟩ := i
      simp only [Finset.mem_filter, Finset.mem_univ, true_and] at hval
      exact hval
    have j_non_zero : j.1.IsNonZero := by
      obtain ⟨val, hval⟩ := j
      simp only [Finset.mem_filter, Finset.mem_univ, true_and] at hval
      exact hval
    let r := Weight.mk (R := K) (L := H) (M := L) (i.1.1 + j.1.1) h
    have r₁ : r ≠ 0 := by
      intro a
      have h_eq : i.1 = -j.1 := Weight.ext <| congrFun (eq_neg_of_add_eq_zero_left <| by
        have := congr_arg Weight.toFun a
        simp at this; exact this)
      have := s₂ i j h₁ h₂
      rw [h_eq, coe_neg, Pi.neg_apply, root_apply_coroot j_non_zero] at this
      field_simp at this
    have r₂ : r ∈ H.root := by simp [isNonZero_iff_ne_zero, r₁]
    cases Classical.em (⟨r, r₂⟩ ∈ Φ) with
    | inl hl =>
      have e₁ : i.1.1 (coroot j) = 0 := s₂ i j h₁ h₂
      have e₂ : j.1.1 (coroot j) = 2 := root_apply_coroot j_non_zero
      have : (0 : K) = 2 := calc
        0 = (i.1.1 + j.1.1) (coroot j) := (s₂ ⟨r, r₂⟩ j hl h₂).symm
        _ = i.1.1 (coroot j) + j.1.1 (coroot j) := rfl
        _ = 2 := by rw [e₁, e₂, zero_add]
      simp at this
    | inr hr =>
      have e₁ : j.1.1 (coroot i) = 0 := s₂' i j h₁ h₂
      have e₂ : i.1.1 (coroot i) = 2 := root_apply_coroot i_non_zero
      have : (0 : K) = 2 := calc
        0 = (i.1.1 + j.1.1) (coroot i) := (s₂' i ⟨r, r₂⟩ h₁ hr).symm
        _ = i.1.1 (coroot i) + j.1.1 (coroot i) := rfl
        _ = 2 := by rw [e₁, e₂, add_zero]
      simp at this
  have s₄ (i j : H.root) (h1 : i ∈ Φ) (h2 : j ∉ Φ) (li : rootSpace H i.1.1)
      (lj : rootSpace H j.1.1) : ⁅li.1, lj.1⁆ = 0 := by
    have h₃ := lie_mem_genWeightSpace_of_mem_genWeightSpace li.2 lj.2
    rw [s₃ i j h1 h2] at h₃
    exact h₃
  let g := ⋃ i ∈ Φ, (rootSpace H i : Set L)
  let I := LieSubalgebra.lieSpan K L g
  have s₅ : I ≠ ⊤ := by
    obtain ⟨j, hj⟩ := (Set.ne_univ_iff_exists_notMem Φ).mp hc
    obtain ⟨z, hz₁, hz₂⟩ := exists_ne_zero (R := K) (L := H) (M := L) j
    by_contra! hI
    have center_element : z ∈ center K L := by
      have commutes_with_all (x : L) : ⁅x, z⁆ = 0 := by
        have x_mem_I : x ∈ I := by rw [hI]; exact trivial
        induction x_mem_I using LieSubalgebra.lieSpan_induction with
        | mem x hx =>
          obtain ⟨i, hi, hx1_mem⟩ := Set.mem_iUnion₂.mp hx
          have := s₄ i j hi hj
          simp only [Subtype.forall] at this
          exact (this x hx1_mem) z hz₁
        | zero => exact zero_lie z
        | add _ _ _ _ e f => rw [add_lie, e, f, add_zero]
        | smul _ _ _ d =>
          simp only [smul_lie, smul_eq_zero]
          right
          exact d
        | lie _ _ _ _ e f => rw [lie_lie, e, f, lie_zero, lie_zero, sub_self]
      exact commutes_with_all
    rw [center_eq_bot] at center_element
    exact hz₂ center_element
  have s₆ : I ≠ ⊥ := by
    obtain ⟨r, hr⟩ := Set.nonempty_def.mp hΦ₁
    obtain ⟨x, hx₁, hx₂⟩ := exists_ne_zero (R := K) (L := H) (M := L) r
    have x_in_g : x ∈ g := by
      apply Set.mem_iUnion_of_mem r
      simp only [Set.mem_iUnion]
      exact ⟨hr, hx₁⟩
    have x_mem_I : x ∈ I := LieSubalgebra.mem_lieSpan.mpr (fun _ a ↦ a x_in_g)
    by_contra h
    exact hx₂ (I.eq_bot_iff.mp h x x_mem_I)
  have s₇ : ∀ x y : L, y ∈ I → ⁅x, y⁆ ∈ I := by
    have gen : ⨆ χ : Weight K H L, (genWeightSpace L χ).toSubmodule = ⊤ := by
      simp only [LieSubmodule.iSup_toSubmodule_eq_top]
      exact iSup_genWeightSpace_eq_top' K H L
    intro x y hy
    have hx : x ∈ ⨆ χ : Weight K H L, (genWeightSpace L χ).toSubmodule := by
      simp only [gen, Submodule.mem_top]
    induction hx using Submodule.iSup_induction' with
    | mem j x hx =>
      induction hy using LieSubalgebra.lieSpan_induction with
      | mem x₁ hx₁ =>
        obtain ⟨i, hi, x₁_mem⟩ := Set.mem_iUnion₂.mp hx₁
        have r₁ (j : Weight K H L) : j = 0 ∨ j ∈ H.root := by
          rcases (eq_or_ne j 0) with h | h
          · left
            exact h
          · right
            refine Finset.mem_filter.mpr ?_
            exact ⟨Finset.mem_univ j, isNonZero_iff_ne_zero.mpr h⟩
        rcases (r₁ j) with h | h
        have h₁ : ⁅x, x₁⁆ ∈ g := by
          have h₂ := lie_mem_genWeightSpace_of_mem_genWeightSpace hx x₁_mem
          rw [h, coe_zero, zero_add] at h₂
          exact Set.mem_biUnion hi h₂
        exact LieSubalgebra.mem_lieSpan.mpr fun _ a ↦ a h₁
        rcases (Classical.em (⟨j, h⟩ ∈ Φ)) with h₁ | h₁
        exact I.lie_mem
          (LieSubalgebra.mem_lieSpan.mpr fun _ a ↦ a (Set.mem_biUnion h₁ hx))
          (LieSubalgebra.mem_lieSpan.mpr fun _ a ↦ a hx₁)
        have : ⁅x, x₁⁆ = 0 := by
          rw [← neg_eq_zero, lie_skew x₁ x, (s₄ i ⟨j, h⟩ hi h₁ ⟨x₁, x₁_mem⟩ ⟨x, hx⟩)]
        rw [this]
        exact I.zero_mem
      | zero => simp only [lie_zero, zero_mem, I]
      | add _ _ _ _ e f =>
        simp only [lie_add]
        exact add_mem e f
      | smul a _ _ d =>
        simp only [lie_smul]
        exact I.smul_mem a d
      | lie a b c d e f =>
        have : ⁅x, ⁅a, b⁆⁆ = ⁅⁅x, a⁆, b⁆ + ⁅a, ⁅x, b⁆⁆ := by
          simp only [lie_lie, sub_add_cancel]
        rw [this]
        exact add_mem (I.lie_mem e d) (I.lie_mem c f)
    | zero => simp only [zero_lie, zero_mem]
    | add x1 y1 _ _ hx hy =>
      simp only [add_lie]
      exact add_mem hx hy
  obtain ⟨I', h⟩ := (LieSubalgebra.exists_lieIdeal_coe_eq_iff (K := I)).2 s₇
  have : IsSimple K L := inferInstance
  have : I' = ⊥ ∨ I' = ⊤ := this.eq_bot_or_eq_top I'
  have c₁ : I' ≠ ⊤ := by
    rw [← h] at s₅
    exact ne_of_apply_ne (LieIdeal.toLieSubalgebra K L) s₅
  have c₂ : I' ≠ ⊥ := by
    rw [← h] at s₆
    exact ne_of_apply_ne (LieIdeal.toLieSubalgebra K L) s₆
  rcases this with h_bot | h_top
  · contradiction
  · contradiction

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/RootSystem/Variant12cf5b76cae5d493ade55d6ee275a6885788c6e898f23d25d6cad7df300bdfa7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/RootSystem/Variant12cf5b76cae5d493ade55d6ee275a6885788c6e898f23d25d6cad7df300bdfa7.lean#L432).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04734e10633c10ddc57f22f02ff722c709a6c50a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
