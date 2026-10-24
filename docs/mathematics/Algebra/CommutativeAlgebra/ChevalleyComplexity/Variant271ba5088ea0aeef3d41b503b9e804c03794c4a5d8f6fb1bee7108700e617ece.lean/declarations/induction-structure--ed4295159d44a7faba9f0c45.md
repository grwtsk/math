# induction_structure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b3c11170219fe4fb2295e31535130d7bef6e1655",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 184,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/27/271ba5088ea0aeef3d41b503b9e804c03794c4a5d8f6fb1bee7108700e617ece.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:91402b34-0c9a-c254-7f80-d99967e27015",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7d75b28d-b928-437f-d820-53917a5f83ce",
  "kind": "lemma",
  "lexical_name": "induction_structure",
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
  "slug": "induction-structure--ed4295159d44a7faba9f0c45",
  "source": {
    "blob": "b3c11170219fe4fb2295e31535130d7bef6e1655",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 184,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variant271ba5088ea0aeef3d41b503b9e804c03794c4a5d8f6fb1bee7108700e617ece.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed4295159d44a7faba9f0c45a0bf127a1ff1cb97b79828692b0565701d2d150b",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variant271ba5088ea0aeef3d41b503b9e804c03794c4a5d8f6fb1bee7108700e617ece.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d75b28d-b928-437f-d820-53917a5f83ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma induction_structure (n : ℕ)
    (P : ∀ (R : Type u) [CommRing R], (InductionObj R n) → Prop)
    (hP₁ : ∀ (R) [CommRing R], P R ⟨0⟩)
    (hP₂ : ∀ (R) [CommRing R] (e : InductionObj R n) (i : Fin n),
      (e.1 i).Monic → (∀ j ≠ i, e.1 j = 0) → P R e)
    (hP₃ : ∀ (R) [CommRing R] (e : InductionObj R n) (i j : Fin n),
      (e.1 i).Monic → (e.1 i).degree ≤ (e.1 j).degree → i ≠ j →
      P R ⟨update e.1 j (e.1 j %ₘ e.1 i)⟩ → P R e)
    (hP₄ : ∀ (R) [CommRing R] (c : R) (i : Fin n) (e : InductionObj R n), c = (e.1 i).leadingCoeff →
      c ≠ 0 →
      P (Away c) ⟨Polynomial.C (IsLocalization.Away.invSelf (S := Away c) c) •
        mapRingHom (algebraMap _ _) ∘ e⟩ →
      P (R ⧸ Ideal.span {c}) ⟨mapRingHom (algebraMap _ _) ∘ e⟩ → P R e)
    {R} [CommRing R] (e : InductionObj R n) : P R e := by
  classical
  set v := e.degree with hv
  clear_value v
  induction v using WellFoundedLT.induction generalizing R with
  | ind v H_IH =>
    by_cases he0 : e = ⟨0⟩
    · exact he0 ▸ hP₁ R
    cases subsingleton_or_nontrivial R
    · convert! hP₁ R; ext; exact Subsingleton.elim _ _
    simp only [InductionObj.ext_iff, funext_iff, Pi.zero_apply, not_forall] at he0
    -- Case I : The `e i ≠ 0` with minimal degree has invertible leading coefficient
    by_cases H : (∃ i, (e.1 i).Monic ∧ ∀ j, e.1 j ≠ 0 → (e.1 i).degree ≤ (e.1 j).degree)
    · obtain ⟨i, hi, i_min⟩ := H
      -- Case I.ii : `e j = 0` for all `j ≠ i`.
      by_cases! H' : ∀ j ≠ i, e.1 j = 0
      -- then `I = Ideal.span {e i}`
      · exact hP₂ R e i hi H'
      -- Case I.i : There is another `e j ≠ 0`
      · obtain ⟨j, hj, hj'⟩ := H'
        replace i_min := i_min j hj'
        -- then we can replace `e j` with `e j %ₘ (C h.unit⁻¹ * e i) `
        -- with `h : IsUnit (e i).leadingCoeff`.
        apply hP₃ R e i j hi i_min (hj.symm) (H_IH _ ?_ _ rfl)
        refine .left _ _ (lt_of_le_of_ne (b := (ofLex v).1) ?_ ?_)
        · intro k
          simp only [comp_apply, update_apply, hv]
          split_ifs with hjk
          · rw [hjk]
            exact (degree_modByMonic_le _ hi).trans i_min
          · exact le_rfl
        · simp only [hv, ne_eq, not_forall, funext_iff,
            comp_apply]
          use j
          simp only [update_self]
          refine ((degree_modByMonic_lt _ hi).trans_le i_min).ne
    -- Case II : The `e i ≠ 0` with minimal degree has non-invertible leading coefficient
    obtain ⟨i, hi, i_min⟩ : ∃ i, e.1 i ≠ 0 ∧ ∀ j, e.1 j ≠ 0 → (e.1 i).degree ≤ (e.1 j).degree := by
      have : ∃ n : ℕ, ∃ i, (e.1 i).degree = n ∧ (e.1 i) ≠ 0 := by
        obtain ⟨i, hi⟩ := he0; exact ⟨(e.1 i).natDegree, i, degree_eq_natDegree hi, hi⟩
      let m := Nat.find this
      obtain ⟨i, hi, hi'⟩ : ∃ i, (e.1 i).degree = m ∧ (e.1 i) ≠ 0 := Nat.find_spec this
      refine ⟨i, hi', fun j hj ↦ ?_⟩
      refine hi.le.trans ?_
      rw [degree_eq_natDegree hj, Nat.cast_le]
      exact Nat.find_min' _ ⟨j, degree_eq_natDegree hj, hj⟩
    -- We replace `R` by `R ⧸ Ideal.span {(e i).leadingCoeff}` where `(e i).degree` is lowered
    -- and `Away (e i).leadingCoeff` where `(e i).leadingCoeff` becomes invertible.
    apply hP₄ _ _ i e rfl (by simpa using hi) (H_IH _ ?_ _ rfl) (H_IH _ ?_ _ rfl)
    · rw [hv, Prod.Lex.lt_iff']
      constructor
      · intro j
        simp only [coe_mapRingHom, InductionObj.ofLex_degree_fst, Pi.smul_apply,
          comp_apply, smul_eq_mul]
        refine ((degree_mul_le _ _).trans (add_le_add degree_C_le degree_map_le)).trans ?_
        simp
      rw [lt_iff_le_not_ge]
      simp only [coe_mapRingHom, funext_iff, InductionObj.ofLex_degree_fst, Pi.smul_apply,
        comp_apply, smul_eq_mul, show (ofLex e.degree).2 from H,
        le_Prop_eq, implies_true, true_implies, true_and]
      simp only [InductionObj.ofLex_degree_snd, Pi.smul_apply, comp_apply, smul_eq_mul,
        ne_eq, not_exists, not_and, not_forall, not_le, not_lt]
      intro h_eq
      refine ⟨i, ?_, ?_⟩
      · rw [Monic.def, ← coeff_natDegree (p := _ * _), natDegree_eq_of_degree_eq (h_eq i),
          Polynomial.coeff_C_mul, Polynomial.coeff_map, coeff_natDegree, mul_comm,
          IsLocalization.Away.mul_invSelf]
      · intro j hj; rw [h_eq, h_eq]; exact i_min j fun H ↦ (by simp [H] at hj)
    · rw [hv]
      refine .left _ _ (lt_of_le_of_ne ?_ ?_)
      · intro j; simpa using degree_map_le
      simp only [coe_mapRingHom, ne_eq]
      intro h_eq
      replace h_eq := congr_fun h_eq i
      simp only [Ideal.Quotient.algebraMap_eq, comp_apply, degree_map_eq_iff,
        Ideal.Quotient.mk_singleton_self, ne_eq, not_true_eq_false, false_or] at h_eq
      exact hi h_eq

open Submodule hiding comap in
/-- Part 4 of the induction structure applied to `Statement R₀ R n`. See the docstring of
`induction_structure`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variant271ba5088ea0aeef3d41b503b9e804c03794c4a5d8f6fb1bee7108700e617ece.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variant271ba5088ea0aeef3d41b503b9e804c03794c4a5d8f6fb1bee7108700e617ece.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3c11170219fe4fb2295e31535130d7bef6e1655` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
