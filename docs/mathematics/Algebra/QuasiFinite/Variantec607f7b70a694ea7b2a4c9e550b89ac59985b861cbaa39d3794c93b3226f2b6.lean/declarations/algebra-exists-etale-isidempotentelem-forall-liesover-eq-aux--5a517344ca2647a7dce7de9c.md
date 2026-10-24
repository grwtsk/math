# Algebra.exists_etale_isIdempotentElem_forall_liesOver_eq_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c586caa1a7a9fff318a173333a0f6f685b36a6ff",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 201,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ec/ec607f7b70a694ea7b2a4c9e550b89ac59985b861cbaa39d3794c93b3226f2b6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2085f791-231d-4397-2f77-4a334aa254b6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0b750bd2-06e4-58d2-d0c4-517333b0bb8b",
  "kind": "lemma",
  "lexical_name": "Algebra.exists_etale_isIdempotentElem_forall_liesOver_eq_aux",
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
  "slug": "algebra-exists-etale-isidempotentelem-forall-liesover-eq-aux--5a517344ca2647a7dce7de9c",
  "source": {
    "blob": "c586caa1a7a9fff318a173333a0f6f685b36a6ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 296,
    "line": 201,
    "path": "GRWTSK/Algebra/QuasiFinite/Variantec607f7b70a694ea7b2a4c9e550b89ac59985b861cbaa39d3794c93b3226f2b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a517344ca2647a7dce7de9c769a6b9da951d37af1e812bb92a0ed8e73301e10",
  "verification": {
    "reference": "docs/verification/Algebra/QuasiFinite/Variantec607f7b70a694ea7b2a4c9e550b89ac59985b861cbaa39d3794c93b3226f2b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b750bd2-06e4-58d2-d0c4-517333b0bb8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–296.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Algebra.exists_etale_isIdempotentElem_forall_liesOver_eq_aux
    {R : Type u} {S : Type v} [CommRing R] [CommRing S] [Algebra R S] [Algebra.FiniteType R S]
    (p : Ideal R) [p.IsPrime] (q : Ideal S) [q.IsPrime] [q.LiesOver p] [Algebra.QuasiFiniteAt R q] :
    ∃ (R' : Type u) (_ : CommRing R') (_ : Algebra R R') (_ : Algebra.Etale R R') (P : Ideal R')
      (_ : P.IsPrime) (_ : P.LiesOver p) (e : R' ⊗[R] S) (_ : IsIdempotentElem e)
      (e₀ : R' ⊗[R] integralClosure R S) (_ : IsIdempotentElem e₀)
      (_ : Algebra.TensorProduct.map (.id R' R') (integralClosure R S).val e₀ = e)
      (P' : Ideal (R' ⊗[R] S)) (_ : P'.IsPrime) (_ : P'.LiesOver P), P'.comap
        Algebra.TensorProduct.includeRight.toRingHom = q ∧ e ∉ P' ∧
      Function.Bijective (Ideal.ResidueField.mapₐ p P (Algebra.ofId _ _) (P.over_def p)) ∧
      (∀ P'' : Ideal (R' ⊗[R] integralClosure R S),
          P''.IsPrime → P''.LiesOver P → e₀ ∉ P'' → P'' =
            P'.comap (Algebra.TensorProduct.map (.id R' R') (integralClosure R S).val).toRingHom) ∧
      ∀ P'' : Ideal (R' ⊗[R] S), P''.IsPrime → P''.LiesOver P → e ∉ P'' → P'' = P' := by
  obtain ⟨s, hsq, hRs, hs, hs₀⟩ := exists_notMem_and_isIntegral_forall_mem_of_ne_of_liesOver p q
  obtain ⟨m, f, b, hfm, hbm, hab, hfab, hf⟩ : ∃ (m : ℕ) (f : R[X])
      (b : p.ResidueField[X]), f.Monic ∧ b.Monic ∧ IsCoprime (X ^ (m + 1)) b ∧
        f.map (algebraMap _ _) = X ^ (m + 1) * b ∧ aeval s f = 0 := by
    let f := X * minpoly R s
    obtain ⟨q, hq, hq'⟩ := exists_eq_pow_rootMultiplicity_mul_and_not_dvd
      ((minpoly R s).map (algebraMap R p.ResidueField)) ((minpoly.monic hRs).map _).ne_zero 0
    have hqm : q.Monic := by
      simpa [((minpoly.monic hRs).map _).leadingCoeff] using! congr(leadingCoeff $hq).symm
    set m' := rootMultiplicity 0 ((minpoly R s).map (algebraMap R p.ResidueField))
    refine ⟨m', f, q, monic_X.mul (minpoly.monic hRs), hqm, ?_,
      by simp [f, hq, pow_succ', mul_assoc], by simp [f]⟩
    simpa [IsCoprime.pow_left_iff,
      (prime_X (R := p.ResidueField)).irreducible.coprime_iff_not_dvd] using! hq'
  obtain ⟨R', _, _, _, P, _, _, a', b', hP, ha'm, hb'm, hfab', ⟨c, d, hcd⟩, ha', hb'⟩ :=
    Algebra.exists_etale_bijective_residueFieldMap_and_map_eq_mul_and_isCoprime p f
      (X ^ (m + 1)) b hfm (monic_X.pow _) hbm hfab hab
  let s₀ : integralClosure R S := ⟨s, hRs⟩
  have hfs₀ : aeval s₀ f = 0 := by
    ext1; change (integralClosure R S).val (aeval s₀ f) = 0; rwa [← aeval_algHom_apply]
  let s' : R' ⊗[R] S := 1 ⊗ₜ s
  have hs'f : aeval s' f = 0 :=
    show aeval (Algebra.TensorProduct.includeRight s) f = 0 by rw [aeval_algHom_apply, hf, map_zero]
  have hs₀'f : aeval (A := R' ⊗[R] integralClosure R S) (1 ⊗ₜ s₀) f = 0 :=
    show aeval (Algebra.TensorProduct.includeRight s₀) f = 0 by
    rw [aeval_algHom_apply, hfs₀, map_zero]
  let e₀ : R' ⊗[R] integralClosure R S := aeval (1 ⊗ₜ s₀) (c * a')
  have he₀ : IsIdempotentElem e₀ := by
    dsimp only [e₀, IsIdempotentElem]
    nth_rw 2 [eq_sub_iff_add_eq.mpr hcd]
    rw [← map_mul, mul_sub, mul_one, mul_mul_mul_comm, ← hfab']
    simp only [map_mul, map_sub, aeval_map_algebraMap, hs₀'f, mul_zero, sub_zero]
  let e : R' ⊗[R] S := aeval s' (c * a')
  let φ := Algebra.TensorProduct.map (.id R' R') (integralClosure R S).val
  have he₀e : φ e₀ = e := by
    simp only [e₀, ← aeval_algHom_apply]; rfl
  have he : IsIdempotentElem e := he₀e ▸ he₀.map _
  let P' := (Ideal.fiberIsoOfBijectiveResidueField hP).symm ⟨q, ‹_›, ‹_›⟩
  let := Localization.AtPrime.algebraOfLiesOver P P'.1
  have hP'q : P'.1.comap Algebra.TensorProduct.includeRight.toRingHom = q :=
    Ideal.comap_fiberIsoOfBijectiveResidueField_symm ..
  have hs'P' : s' ∉ P'.1 := mt (fun h ↦ hP'q.le h) hsq
  have ha'P' : aeval s' a' ∉ P'.1 := by
    simpa using! show IsScalarTower.toAlgHom R' _ P'.1.ResidueField (aeval s' a') ≠ 0 by
      rw [← aeval_algHom_apply, ← aeval_map_algebraMap P.ResidueField, ← ha']; simpa
  have hb'P' : aeval s' b' ∈ P'.1 := by
    rw [← Ideal.IsPrime.mul_mem_left_iff ha'P', ← map_mul, ← hfab']
    simp [hs'f]
  have heP' : e ∉ P'.1 := by
    intro H
    have := P'.1.mul_mem_left (aeval s' d) hb'P'
    rw [← map_mul, eq_sub_iff_add_eq'.mpr hcd, map_sub, Submodule.sub_mem_iff_left _ H,
      map_one] at this
    exact Ideal.one_notMem _ this
  refine ⟨_, inferInstance, inferInstance, inferInstance, P, ‹_›, ‹_›, e, he, e₀, he₀, he₀e, P',
    inferInstance, P'.2.2, hP'q, heP', hP, fun P'' _ _ H ↦ ?_, fun P'' _ _ H ↦ ?_⟩
  · have : (P'.1.comap φ.toRingHom).LiesOver P := inferInstanceAs ((P'.1.comap φ).LiesOver P)
    apply Ideal.eq_of_comap_eq_comap_of_bijective_residueFieldMap hP
    simp only [Ideal.comap_comap, AlgHom.toRingHom_eq_coe,
      ← @AlgHom.coe_restrictScalars R R', ← AlgHom.comp_toRingHom,
      Algebra.TensorProduct.map_restrictScalars_comp_includeRight]
    simp_rw [AlgHom.comp_toRingHom, ← Ideal.comap_comap, ← AlgHom.toRingHom_eq_coe, hP'q]
    contrapose! H
    have : 1 ⊗ₜ s₀ ∈ P'' := hs₀ _ inferInstance H (by simp [Ideal.liesOver_iff, Ideal.under,
      Ideal.comap_comap, Ideal.over_def P p, Ideal.over_def P'' P, ← IsScalarTower.algebraMap_eq])
    rw [← Ideal.algebraMap_residueField_eq_zero, ← aeval_algebraMap_apply,
      Ideal.algebraMap_residueField_eq_zero.mpr this, ← eval_map_algebraMap, Polynomial.map_mul,
      mul_comm, ← (Ideal.ResidueField.mapₐ P P'' (Algebra.ofId _ _)
      (P''.over_def P)).comp_algebraMap, ← Polynomial.map_map, ← ha']
    simp
  · apply Ideal.eq_of_comap_eq_comap_of_bijective_residueFieldMap hP
    rw [hP'q]
    contrapose! H
    have : s' ∈ P'' := hs _ inferInstance H (by simp [Ideal.liesOver_iff, Ideal.under,
      Ideal.comap_comap, Ideal.over_def P p, Ideal.over_def P'' P, ← IsScalarTower.algebraMap_eq])
    rw [← Ideal.algebraMap_residueField_eq_zero, ← aeval_algebraMap_apply,
      Ideal.algebraMap_residueField_eq_zero.mpr this, ← eval_map_algebraMap, Polynomial.map_mul,
      mul_comm, ← (Ideal.ResidueField.mapₐ P P'' (Algebra.ofId _ _)
      (P''.over_def P)).comp_algebraMap, ← Polynomial.map_map, ← ha']
    simp

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/QuasiFinite/Variantec607f7b70a694ea7b2a4c9e550b89ac59985b861cbaa39d3794c93b3226f2b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/QuasiFinite/Variantec607f7b70a694ea7b2a4c9e550b89ac59985b861cbaa39d3794c93b3226f2b6.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c586caa1a7a9fff318a173333a0f6f685b36a6ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
