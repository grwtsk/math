# mono_pushoutSection_of_iSup_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8df1840034f03f6976335b08c21ed3f529cc0142",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 256,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/be/beb3f499047422f911e5b1d062fadd4bc0f60facea6e339c662288a00e853270.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d3ae0a5f-2f87-4015-eff1-bb7f429ff949",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f612fa50-e5fa-0f50-6b69-469fa2c8c2b6",
  "kind": "lemma",
  "lexical_name": "mono_pushoutSection_of_iSup_eq",
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
  "slug": "mono-pushoutsection-of-isup-eq--e7dcb55a3c6b437a602db906",
  "source": {
    "blob": "8df1840034f03f6976335b08c21ed3f529cc0142",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 338,
    "line": 256,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Flat/Variantbeb3f499047422f911e5b1d062fadd4bc0f60facea6e339c662288a00e853270.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7dcb55a3c6b437a602db906c742af0e0afb0dcb9762774c4b477d43c69729d6",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Flat/Variantbeb3f499047422f911e5b1d062fadd4bc0f60facea6e339c662288a00e853270.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f612fa50-e5fa-0f50-6b69-469fa2c8c2b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–338.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
lemma mono_pushoutSection_of_iSup_eq {ι : Type*} [Finite ι] (VX : ι → X.Opens) (hVU : iSup VX = UX)
    (hV : ∀ i, Mono (pushoutSection H hUST (show VX i ≤ _ by aesop) rfl))
    (hT : (f.appLE US UT hUST).hom.Flat) :
    Mono (pushoutSection H hUST hUSX hUY) := by
  /-
  We shall show that `Γ(T, Uₜ) ⊗[Γ(S, Uₛ)] Γ(X, U) ⟶ Γ(X ×ₛ T, pr₁ ⁻¹ U ∩ pr₂ ⁻¹ Uₜ)` is
  injective using the following diagram
  ```
  Γ(T, Uₜ) ⊗ Γ(X, U) ------→ Γ(T, Uₜ) ⊗ ∏ᵢ Γ(X, Vᵢ)
           |                          |
           ↓                          ↓
  Γ(X ×ₛ T, U ∩ Uₜ)  ------→ ∏ᵢ Γ(X ×ₛ T, Vᵢ ∩ Uₜ)
  ```
  -/
  have (i : _) : VX i ≤ iX ⁻¹ᵁ US := by clear hV; aesop
  classical
  algebraize [(iX.appLE US UX hUSX).hom, (f.appLE US UT hUST).hom]
  let (i : _) := (iX.appLE US (VX i) (by aesop)).hom.toAlgebra
  -- This is the map `Γ(X ×ₛ T, U ∩ Uₜ) ⟶ ∏ᵢ Γ(X ×ₛ T, Vᵢ ∩ Uₜ)` on the bottom.
  let ψY : Γ(Y, UY) →+* Π i, Γ(Y, g ⁻¹ᵁ VX i ⊓ iY ⁻¹ᵁ UT) := RingHom.pi fun i ↦
      (Y.presheaf.map (homOfLE (by subst hUY hVU; gcongr; exact le_iSup _ _)).op).hom
  -- The map `Γ(X, U) ⟶ ∏ᵢ Γ(X, Vᵢ)`
  let ψ : Γ(X, UX) →ₐ[Γ(S, US)] Π i, Γ(X, VX i) := AlgHom.pi fun i ↦
    ⟨(X.presheaf.map (homOfLE (hVU ▸ le_iSup VX i)).op).hom, fun r ↦ by
      dsimp [RingHom.algebraMap_toAlgebra]
      simp only [← CommRingCat.comp_apply, Scheme.Hom.appLE_map]⟩
  -- ... is injective by the sheaf axiom,
  have hψ : Function.Injective ψ := by
    intro s t est
    apply X.IsSheaf.section_ext fun x hx ↦ ?_
    simp only [← hVU, Opens.mem_iSup] at hx
    obtain ⟨i, hxi⟩ := hx
    exact ⟨_, _, hxi, congr($est i)⟩
  -- ... and remains injective after tensoring with `Γ(T, Uₜ)` by the flatness assumption.
  have hψ' : Function.Injective (Algebra.TensorProduct.map (AlgHom.id Γ(T, UT) Γ(T, UT)) ψ) :=
    Module.Flat.lTensor_preserves_injective_linearMap ψ.toLinearMap hψ
  simp_rw [@ConcreteCategory.mono_iff_injective_of_preservesPullback] at hV ⊢
  cases nonempty_fintype ι
  -- And the map at the right
  let φ : (Γ(T, UT) ⊗[Γ(S, US)] Π i, Γ(X, VX i)) →+* Π i, Γ(Y, g ⁻¹ᵁ VX i ⊓ iY ⁻¹ᵁ UT) :=
    (RingHom.pi fun i ↦ (pushoutSection H hUST (show VX i ≤ _ by aesop) rfl).hom.comp
      ((CommRingCat.isPushout_tensorProduct _ _ _).flip.isoPushout.hom.hom.comp
      (by exact Pi.evalRingHom _ _))).comp (Algebra.TensorProduct.piRight _ Γ(S, US) _ _).toRingHom
  -- ... is also injective by our hypotheses on `Vᵢ`.
  have hφ : Function.Injective φ := by
    dsimp [φ]
    refine .comp ?_ (Algebra.TensorProduct.piRight _ Γ(S, US) _ _).injective
    exact .piMap fun i ↦ (hV _).comp <| CommRingCat.isPushout_tensorProduct _ _ _
      |>.flip.isoPushout.commRingCatIsoToRingEquiv.injective
  let e : pushout (iX.appLE US UX hUSX) (f.appLE US UT hUST) ≅
      .of (Γ(T, UT) ⊗[Γ(S, US)] Γ(X, UX)) :=
    (CommRingCat.isPushout_tensorProduct _ _ _).flip.isoPushout.symm
  -- It remains to check that the square indeed commutes, and we may conclude that the map
  -- at the left is also injective.
  suffices (ψY.comp (pushoutSection H hUST hUSX hUY).hom).comp e.inv.hom = φ.comp
      (Algebra.TensorProduct.map (AlgHom.id Γ(T, UT) Γ(T, UT)) ψ).toRingHom by
    refine .of_comp (f := ψY) ?_
    convert (hφ.comp hψ').comp e.commRingCatIsoToRingEquiv.injective
    ext1 x; simpa using! congr($this (e.hom x))
  ext1
  · have H₁ : e.inv.hom.comp Algebra.TensorProduct.includeLeftRingHom =
        (pushout.inr (C := CommRingCat) _ _).hom :=
      congr($((CommRingCat.isPushout_tensorProduct _ _ _).flip.inr_isoPushout_hom).hom)
    have H₂ (x j) : φ (x ⊗ₜ[↑Γ(S, US)] 1) j = pushoutSection H hUST (UX := VX j) (by simp_all) rfl
        (pushout.inr (C := CommRingCat) _ _ x) := congr(pushoutSection H hUST (UX := VX j) _ rfl
        ($((CommRingCat.isPushout_tensorProduct ↑Γ(S, US)
          ↑Γ(T, UT) ↑Γ(X, VX j)).flip.inr_isoPushout_hom) x))
    simp only [RingHom.comp_assoc, H₁]
    ext x j
    simp [ψY, H₂, ← CategoryTheory.comp_apply, pushoutSection]
  · have H₁ : e.inv.hom.comp Algebra.TensorProduct.includeRight.toRingHom =
        (pushout.inl (C := CommRingCat) _ _).hom :=
      congr($((CommRingCat.isPushout_tensorProduct _ _ _).flip.inl_isoPushout_hom).hom)
    have H₂ (x j) : φ (1 ⊗ₜ[↑Γ(S, US)] x) j = pushoutSection H hUST (UX := VX j) (by simp_all) rfl
        (pushout.inl (C := CommRingCat) _ _ (x j)) := congr(pushoutSection H hUST (UX := VX j) _ rfl
        ($((CommRingCat.isPushout_tensorProduct ↑Γ(S, US)
          ↑Γ(T, UT) ↑Γ(X, VX j)).flip.inl_isoPushout_hom) (x j)))
    simp only [RingHom.comp_assoc, H₁]
    ext x j
    simp [ψY, H₂, -CommRingCat.hom_comp, ← CategoryTheory.comp_apply, pushoutSection, ψ]

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Flat/Variantbeb3f499047422f911e5b1d062fadd4bc0f60facea6e339c662288a00e853270.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Flat/Variantbeb3f499047422f911e5b1d062fadd4bc0f60facea6e339c662288a00e853270.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8df1840034f03f6976335b08c21ed3f529cc0142` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
