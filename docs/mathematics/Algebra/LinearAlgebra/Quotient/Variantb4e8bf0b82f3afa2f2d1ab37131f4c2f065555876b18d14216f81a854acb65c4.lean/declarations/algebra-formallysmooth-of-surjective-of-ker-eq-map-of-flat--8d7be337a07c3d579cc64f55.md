# Algebra.FormallySmooth.of_surjective_of_ker_eq_map_of_flat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d094c6c4-b2e3-98e8-4014-eb7407965692",
  "kind": "lemma",
  "lexical_name": "Algebra.FormallySmooth.of_surjective_of_ker_eq_map_of_flat",
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
  "slug": "algebra-formallysmooth-of-surjective-of-ker-eq-map-of-flat--8d7be337a07c3d579cc64f55",
  "source": {
    "blob": "f798541bf5e0ba241e549814de0c11e01e77e56b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 105,
    "path": "GRWTSK/Algebra/LinearAlgebra/Quotient/Variantb4e8bf0b82f3afa2f2d1ab37131f4c2f065555876b18d14216f81a854acb65c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d7be337a07c3d579cc64f5504d84b46d09d185750122924c85889b5ad9d9f00",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Quotient/Variantb4e8bf0b82f3afa2f2d1ab37131f4c2f065555876b18d14216f81a854acb65c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d094c6c4-b2e3-98e8-4014-eb7407965692`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Algebra.FormallySmooth.of_surjective_of_ker_eq_map_of_flat [Module.Flat R S]
    (surj : Function.Surjective (algebraMap R R'))
    (surjS : Function.Surjective (algebraMap S S'))
    (eqmap : RingHom.ker (algebraMap S S') = (RingHom.ker (algebraMap R R')).map (algebraMap R S))
    (sq0 : (RingHom.ker (algebraMap R R')) ^ 2 = ⊥) (smoothq : Algebra.FormallySmooth R' S') :
    Algebra.FormallySmooth R S := by
  let P := (Algebra.Generators.self R S).toExtension
  let : Algebra.FormallySmooth R P.Ring := instFormallySmoothMvPolynomial S
  let IP := (RingHom.ker (algebraMap R R')).map (algebraMap R P.Ring)
  let Gen : Algebra.Generators R' S' S := {
    val := algebraMap S S'
    σ' := fun s' ↦ MvPolynomial.X (Classical.choose (surjS s'))
    aeval_val_σ' s' := by simp [Classical.choose_spec (surjS s')] }
  let P' := Gen.toExtension
  let : Algebra.FormallySmooth R' P'.Ring := instFormallySmoothMvPolynomial S
  let : Algebra P.Ring P'.Ring := MvPolynomial.algebraMvPolynomial
  let : IsScalarTower R P.Ring P'.Ring :=
    IsScalarTower.of_algebraMap_eq (fun x ↦ (MvPolynomial.map_C _ x).symm)
  algebraize [(algebraMap S S').comp (algebraMap P.Ring S)]
  have : IsScalarTower P.Ring P'.Ring S' := by
    refine IsScalarTower.of_algebraMap_eq (fun x ↦ ?_)
    change (algebraMap S S') (MvPolynomial.aeval _root_.id x) =
      MvPolynomial.aeval Gen.val (MvPolynomial.map (algebraMap R R') x)
    rw [← MvPolynomial.aeval_algebraMap_apply]
    simp [MvPolynomial.aeval_map_algebraMap, Gen]
  let J := RingHom.ker (algebraMap P.Ring S)
  let J' := RingHom.ker (algebraMap P'.Ring S')
  let I := RingHom.ker (algebraMap R R')
  let IS := I.map (algebraMap R S)
  have kerS : RingHom.ker (algebraMap S S') = IS := eqmap
  let IP := I.map (algebraMap R P.Ring)
  have kerP : RingHom.ker (algebraMap P.Ring P'.Ring) = IP := MvPolynomial.ker_map _
  have surjPP' : Function.Surjective (algebraMap P.Ring P'.Ring) :=
    MvPolynomial.map_surjective _ surj
  have ISeq : IS = IP.map (algebraMap P.Ring S) := by
    simp [IP, IS, Ideal.map_map, ← IsScalarTower.algebraMap_eq]
  classical
  have surjP : Function.Surjective (algebraMap P.Ring S) := fun x ↦ ⟨P.σ x, P.algebraMap_σ x⟩
  apply (Algebra.FormallySmooth.iff_split_injection surjP).mpr
  have surjP' : Function.Surjective (algebraMap P'.Ring S') := fun x ↦ ⟨P'.σ x, P'.algebraMap_σ x⟩
  rcases (Algebra.FormallySmooth.iff_split_injection surjP').mp smoothq with ⟨σ, hσ⟩
  have infeq : IP ⊓ J = IP * J := by
    refine le_antisymm (fun x hx ↦ ?_) Ideal.mul_le_inf
    have : x ∈ I • (J.restrictScalars R) := by
      change x ∈ I • (IsScalarTower.toAlgHom R P.Ring S).toLinearMap.ker
      rw [← LinearMap.ker_inf_smul_top_eq_smul_of_flat I _ surjP]
      simpa using! ⟨hx.2, hx.1⟩
    simpa [← Ideal.smul_restrictScalars I J, Submodule.restrictScalars_mem] using! this
  have h : J'.comap (algebraMap P.Ring P'.Ring) = RingHom.ker (algebraMap P.Ring P'.Ring) ⊔ J :=
    comap_ker_eq_sup_of_ker_eq_map surjP (by simp [kerP, ← ISeq, eqmap, IS, I])
  have Jle : J ≤ J'.comap (algebraMap P.Ring P'.Ring) := le_of_le_of_eq le_sup_right h.symm
  let mapcot := Ideal.mapCotangent J J' (Algebra.ofId P.Ring P'.Ring) Jle
  have cotsurj : Function.Surjective mapcot := Ideal.mapCotangent_surjective_of_comap_eq surjPP' h
  have cotker : LinearMap.ker mapcot = (Submodule.comap J.subtype (_ ⊓ J)).map J.toCotangent :=
    Ideal.mapCotangent_ker_of_surjective surjPP' h
  rw [kerP, infeq] at cotker
  let cottoTen := KaehlerDifferential.kerCotangentToTensor R P.Ring S
  let cottoTen' := KaehlerDifferential.kerCotangentToTensor R' P'.Ring S'
  let mapTen : TensorProduct P.Ring S Ω[P.Ring⁄R] →ₗ[P.Ring]
    TensorProduct P'.Ring S' Ω[P'.Ring⁄R'] :=
    _root_.TensorProduct.lift ((((TensorProduct.mk P'.Ring S' Ω[P'.Ring⁄R']).restrictScalars₁₂
      P.Ring P.Ring).compl₂ (KaehlerDifferential.map R R' P.Ring P'.Ring)).comp
      (IsScalarTower.toAlgHom P.Ring S S').toLinearMap)
  have comm : (cottoTen'.restrictScalars P.Ring).comp mapcot = mapTen.comp cottoTen := by
    ext x
    rcases Ideal.toCotangent_surjective _ x with ⟨y, rfl⟩
    have : (KaehlerDifferential.kerToTensor R' P'.Ring S')
      ⟨(algebraMap P.Ring P'.Ring) y.1, Jle y.2⟩ =
      mapTen ((KaehlerDifferential.kerToTensor R P.Ring S) y) := by
      simp [KaehlerDifferential.kerToTensor, mapTen]
    simpa [mapcot] using! this
  let ediff : Ω[P.Ring⁄R] ≃ₗ[P.Ring] S →₀ P.Ring := KaehlerDifferential.mvPolynomialEquiv R S
  let eTen : TensorProduct P.Ring S Ω[P.Ring⁄R] ≃ₗ[P.Ring] (S →₀ S) :=
    ((ediff.lTensor S).trans (TensorProduct.finsuppRight P.Ring P.Ring _ _ S)).trans
    (Finsupp.mapRange.linearEquiv (_root_.TensorProduct.rid P.Ring _))
  let toJ'cot : (S →₀ S) →ₗ[P.Ring] J'.Cotangent :=
    ((σ.restrictScalars P.Ring).comp mapTen).comp eTen.symm.toLinearMap
  let eS : (P.Ring ⧸ J) ≃ₗ[P.Ring] S :=
    (Submodule.quotEquivOfEq _ _ rfl).trans
    ((Algebra.linearMap P.Ring S).quotKerEquivOfSurjective surjP)
  let toJcot : (S →₀ S) →ₗ[P.Ring] J.Cotangent :=
    Finsupp.lsum P.Ring (fun s ↦ ((LinearMap.toSpanSingleton (P.Ring ⧸ J) J.Cotangent
      (Classical.choose (cotsurj (toJ'cot (Finsupp.single s 1))))).restrictScalars P.Ring).comp
        eS.symm.toLinearMap)
  have toJcot_spec : mapcot.comp toJcot = toJ'cot := by
    ext i s
    simp only [LinearMap.comp_assoc, toJcot, Finsupp.lsum_comp_lsingle]
    rcases Ideal.Quotient.mk_surjective (eS.symm s) with ⟨p, hp⟩
    have (x : J.Cotangent) : mapcot (eS.symm s • x) = p • mapcot x := hp ▸ map_smul mapcot p x
    have psmul : p • 1 = s := by simpa [Algebra.smul_def, eS] using! eS.eq_symm_apply.mp hp
    simp [this, Classical.choose_spec (cotsurj (toJ'cot (Finsupp.single i 1))), ← map_smul, psmul]
  let σ' := toJcot.comp eTen.toLinearMap
  have σ'_spec' : mapcot.comp σ' = (σ.restrictScalars P.Ring).comp mapTen := by
    simp only [← LinearMap.comp_assoc, toJcot_spec, σ']
    apply LinearMap.ext (fun x ↦ ?_)
    exact ((σ.restrictScalars P.Ring).comp mapTen).congr_arg (eTen.symm_apply_apply x)
  have σ'_spec : mapcot.comp (σ'.comp cottoTen) = mapcot := by
    rw [← LinearMap.comp_assoc, σ'_spec', LinearMap.comp_assoc, ← comm, ← LinearMap.comp_assoc,
      ← LinearMap.restrictScalars_comp, hσ]
    rfl
  let Δ : J.Cotangent →ₗ[P.Ring] J.Cotangent := LinearMap.id - (σ'.comp cottoTen)
  have rΔle : Δ.range ≤ (Submodule.comap J.subtype (IP * J)).map J.toCotangent := by
    rintro x ⟨y, hy⟩
    simp only [← cotker, ← hy, LinearMap.mem_ker, Δ]
    rw [LinearMap.sub_apply, map_sub, LinearMap.id_apply, ← LinearMap.comp_apply, σ'_spec, sub_self]
  have leΔk := mul_le_ker_of_range_le_mul_of_sq_zero (by simp [IP, ← Ideal.map_pow, I, sq0]) Δ rΔle
  let δ := (Submodule.liftQ _ Δ (le_of_eq_of_le cotker leΔk)).comp
    (mapcot.quotKerEquivOfSurjective cotsurj).symm.toLinearMap
  have δ_spec : δ.comp mapcot = Δ := by
    ext
    simp [δ]
  have : σ'.comp cottoTen + δ.comp ((σ.restrictScalars P.Ring).comp (mapTen.comp cottoTen)) =
    LinearMap.id := by
    rw [← comm, ← LinearMap.comp_assoc mapcot, ← LinearMap.restrictScalars_comp, hσ]
    exact add_eq_of_eq_sub' δ_spec
  exact ⟨σ' + (δ.comp (σ.restrictScalars P.Ring)).comp mapTen, this⟩

end

/-- A pure `RingHom` variant of `Algebra.FormallySmooth.of_surjective_of_ker_eq_map_of_flat` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Quotient/Variantb4e8bf0b82f3afa2f2d1ab37131f4c2f065555876b18d14216f81a854acb65c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Quotient/Variantb4e8bf0b82f3afa2f2d1ab37131f4c2f065555876b18d14216f81a854acb65c4.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f798541bf5e0ba241e549814de0c11e01e77e56b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
