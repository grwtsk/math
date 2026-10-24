# ZariskisMainProperty.of_algHom_mvPolynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4c3f2e43-fb1d-872b-b83f-d58866f68ecc",
  "kind": "lemma",
  "lexical_name": "ZariskisMainProperty.of_algHom_mvPolynomial",
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
  "slug": "zariskismainproperty-of-alghom-mvpolynomial--7b29dcf6cada2b34e838291f",
  "source": {
    "blob": "a3f1e7dee44739a43e1e47c0de40ea175ad71eb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 642,
    "line": 563,
    "path": "GRWTSK/Algebra/ZariskisMainTheorem/Variantfc2de014fc01f9687c59c7be65284e3ed44d917363e1636bb41b245526f7fc52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b29dcf6cada2b34e838291f2bee23c0bbe0ce7489e4d8a7a8ccd317bacfa065",
  "verification": {
    "reference": "docs/verification/Algebra/ZariskisMainTheorem/Variantfc2de014fc01f9687c59c7be65284e3ed44d917363e1636bb41b245526f7fc52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c3f2e43-fb1d-872b-b83f-d58866f68ecc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 563–642.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma ZariskisMainProperty.of_algHom_mvPolynomial
    (p : Ideal S) [p.IsPrime] [Algebra.WeaklyQuasiFiniteAt R p] {n : ℕ}
    (f : MvPolynomial (Fin n) R →ₐ[R] S) (hf : f.Finite) : ZariskisMainProperty R p := by
  classical
  induction n generalizing R S with
  | zero =>
    have : Module.Finite R S := by
      rw [← RingHom.finite_algebraMap]
      convert! RingHom.Finite.comp hf (RingHom.Finite.of_surjective _ (MvPolynomial.C_surjective _))
      exact f.comp_algebraMap.symm
    exact .of_isIntegral _
  | succ n IH =>
    let f' := f.comp (MvPolynomial.finSuccEquiv _ _).symm.toAlgHom
    let := (f'.toRingHom.comp C).toAlgebra
    have : IsScalarTower R (MvPolynomial (Fin n) R) S := .of_algebraMap_eq fun r ↦
      (f.commutes r).symm.trans congr(f ($(MvPolynomial.finSuccEquiv_comp_C_eq_C n) r)).symm
    let f'' : (MvPolynomial (Fin n) R)[X] →ₐ[MvPolynomial (Fin n) R] S :=
      ⟨f'.toRingHom, fun _ ↦ rfl⟩
    have : Algebra.WeaklyQuasiFiniteAt (MvPolynomial (Fin n) R) p := by
      exact .of_restrictScalars R _ _
    have := ZariskisMainProperty.of_algHom_polynomial p f''
      (RingHom.Finite.comp hf (MvPolynomial.finSuccEquiv R n).symm.toRingEquiv.finite)
    choose r hrp hr m hm using zariskisMainProperty_iff.mp this
    obtain ⟨⟨s, hs⟩⟩ : Algebra.FiniteType R S := by
      rw [← RingHom.finiteType_algebraMap, ← f.comp_algebraMap]
      exact RingHom.FiniteType.comp hf.finiteType (RingHom.finiteType_algebraMap.mpr inferInstance)
    let R' : Subalgebra R S :=
      Algebra.adjoin R ↑(Finset.univ.image (f ∘ .X ∘ Fin.succ) ∪ r ^ (s.sup m) • s ∪ {r})
    have hrR' : r ∈ R' := Algebra.subset_adjoin (by simp)
    have : Algebra.WeaklyQuasiFiniteAt R (p.under R') := by
      let := Localization.AtPrime.algebraOfLiesOver (p.under R') p
      let e : Localization.AtPrime (p.under R') ≃ₐ[R] Localization.AtPrime p :=
        .ofBijective (IsScalarTower.toAlgHom _ _ _) <| by
          refine Localization.localRingHom_bijective_of_saturated_inf_eq_top _ ?_ _
          rw [← top_le_iff, ← hs, Algebra.adjoin_le_iff]
          intro x hx
          refine ⟨r ^ (s.sup m), pow_mem (by exact ⟨hrp, hrR'⟩) _, Algebra.subset_adjoin ?_⟩
          simp [Set.smul_mem_smul_set hx, ← smul_eq_mul]
      exact .of_algHom_localization _ _ e.symm.toAlgHom e.symm.surjective
    let φ : MvPolynomial (Fin n) R →ₐ[R] R' :=
      MvPolynomial.aeval fun i ↦ ⟨f (.X i.succ), Algebra.subset_adjoin (by simp)⟩
    have := IH (R := R) (S := R') (p.under R') φ <| by
      refine RingHom.finite_iff_isIntegral_and_finiteType.mpr ⟨?_, ?_⟩
      · let := φ.toAlgebra
        have : IsScalarTower (MvPolynomial (Fin n) R) R' S := .of_algebraMap_eq' <| by
          ext <;> simp [φ, (f'.toRingHom.comp C).algebraMap_toAlgebra, φ.algebraMap_toAlgebra, f',
            MvPolynomial.finSuccEquiv, MvPolynomial.optionEquivLeft]
        refine algebraMap_isIntegral_iff.mpr (integralClosure_eq_top_iff.mp ?_)
        apply Subalgebra.restrictScalars_injective R
        rw [← (Subalgebra.map_injective (f := R'.val) Subtype.val_injective).eq_iff]
        simp only [Subalgebra.restrictScalars_top, Algebra.map_top]
        refine le_antisymm (Set.image_subset_range _ _) ?_
        suffices (∀ (a : Fin n), IsIntegral (MvPolynomial (Fin n) R) (f (MvPolynomial.X a.succ))) ∧
            ∀ a ∈ s, IsIntegral (MvPolynomial (Fin n) R) (r ^ s.sup m * a) by
          simp +contextual only [Subalgebra.range_val, Algebra.adjoin_le_iff, Subalgebra.coe_map,
            Subalgebra.coe_val, Set.subset_def, SetLike.mem_coe, Algebra.mem_adjoin_of_mem,
            Set.mem_image, Subtype.exists, exists_and_right, exists_eq_right, R']
          simpa [R', mem_integralClosure_iff, ← isIntegral_algebraMap_iff (A := R') (B := S),
            forall_and, hr, or_imp, Finset.mem_smul_finset]
        refine ⟨fun i ↦ ?_, fun a has ↦ ?_⟩
        · convert! isIntegral_algebraMap (x := MvPolynomial.X i)
          simp [RingHom.algebraMap_toAlgebra, f', MvPolynomial.finSuccEquiv,
            MvPolynomial.optionEquivLeft]
        · rw [← Nat.sub_add_cancel (s.le_sup has), pow_add, mul_assoc]
          exact (hr.pow _).mul (hm _)
      · refine .of_comp_finiteType (f := algebraMap R _) ?_
        rw [AlgHom.toRingHom_eq_coe, φ.comp_algebraMap, RingHom.finiteType_algebraMap]
        exact ⟨(Subalgebra.fg_top _).mpr ⟨_, rfl⟩⟩
    refine this.trans _ ⟨⟨r, hrR'⟩, hrp, ?_⟩
    suffices ⊤ ≤ R'.saturation (.powers r) (by simpa [Submonoid.powers_le]) by
      simpa [SetLike.le_def, Subalgebra.smul_def, Submonoid.mem_powers_iff,
        SetLike.ext_iff, Algebra.mem_bot] using this
    rw [← hs, Algebra.adjoin_le_iff]
    intro x hx
    refine ⟨_, ⟨s.sup m, rfl⟩, Algebra.subset_adjoin ?_⟩
    simp [Set.smul_mem_smul_set hx, ← smul_eq_mul]

end FixedUniverse

@[stacks 00Q9]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ZariskisMainTheorem/Variantfc2de014fc01f9687c59c7be65284e3ed44d917363e1636bb41b245526f7fc52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ZariskisMainTheorem/Variantfc2de014fc01f9687c59c7be65284e3ed44d917363e1636bb41b245526f7fc52.lean#L563).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3f1e7dee44739a43e1e47c0de40ea175ad71eb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
