# isIso_pushoutSection_of_iSup_eq

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
      "line": 339,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/be/beb3f499047422f911e5b1d062fadd4bc0f60facea6e339c662288a00e853270.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6be022b0-41d3-5e4a-d807-40ebfc4f3faf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c6f69653-b0cf-2571-0295-0651bc48d931",
  "kind": "lemma",
  "lexical_name": "isIso_pushoutSection_of_iSup_eq",
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
  "slug": "isiso-pushoutsection-of-isup-eq--ac19a03879a55f88453e95f5",
  "source": {
    "blob": "8df1840034f03f6976335b08c21ed3f529cc0142",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 437,
    "line": 339,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Flat/Variantbeb3f499047422f911e5b1d062fadd4bc0f60facea6e339c662288a00e853270.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac19a03879a55f88453e95f54a7da066d2ef6106ffb6f7572c3164e3e2070e50",
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

Occurrence: `result:c6f69653-b0cf-2571-0295-0651bc48d931`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 339–437.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
lemma isIso_pushoutSection_of_iSup_eq
    {ι : Type u} [Finite ι] (VX : ι → X.Opens) (hVU : iSup VX = UX)
    (hV : ∀ i, IsIso (pushoutSection H hUST (show VX i ≤ _ by aesop) rfl))
    (hV' : ∀ i j, Mono (pushoutSection H hUST
      (show VX i ⊓ VX j ≤ _ from inf_le_left.trans (by clear hV; aesop)) rfl))
    (hT : (f.appLE US UT hUST).hom.Flat) :
    IsIso (pushoutSection H hUST hUSX hUY) := by
  classical
  /-
  We shall show that `Γ(T, Uₜ) ⊗[Γ(S, Uₛ)] Γ(X, U) ⟶ Γ(X ×ₛ T, pr₁ ⁻¹ U ∩ pr₂ ⁻¹ Uₜ)` is
  injective using the following diagram
  ```
  0 → Γ(T, Uₜ) ⊗ Γ(X, U) ------→ Γ(T, Uₜ) ⊗ ∏ᵢ Γ(X, Vᵢ) ---→ Γ(T, Uₜ) ⊗ ∏ᵢⱼ Γ(X, Vᵢ ∩ Vⱼ)
           |                              |                           |
           ↓                              ↓                           ↓
  0 → Γ(X ×ₛ T, U ∩ Uₜ)  ------→ ∏ᵢ Γ(X ×ₛ T, Vᵢ ∩ Uₜ)  ---→ ∏ᵢ Γ(X ×ₛ T, Vᵢ ∩ Vⱼ ∩ Uₜ)
  ```
  The two rows are exact because of the sheaf axiom (and additionally the flatness assumption for
  the top row). The vertical arrow in the middle is an isomorphism by assumption, and the one
  one the right is monomorphic by assumption. Hence the left arrow is also an isomorphism.

  In the actual proof we use `Pairwise`-indexed diagrams instead of nested limits because it works
  better with the existing API.
  -/
  -- The diagram consisting of `Γ(X, Vᵢ) ⟶ Γ(X, Vᵢ ∩ Vⱼ)`.
  let D := Pairwise.diagram VX
  have h : iSup D.obj = UX := by
    refine le_antisymm (iSup_le_iff.mpr ?_) ?_
    · subst hVU; rintro (i | ⟨i, j⟩); exacts [le_iSup VX _, inf_le_left.trans (le_iSup VX _)]
    · subst hVU; exact iSup_le_iff.mpr fun i ↦ le_iSup D.obj (.single i)
  let c₀ : Cocone D := (colimit.cocone _).extend
    (eqToIso (Y := UX) (by simpa [CompleteLattice.colimit_eq_iSup])).hom
  -- The diagram consisting of `Γ(T, Uₜ) ⊗ Γ(X, Vᵢ) ⟶ Γ(T, Uₜ) ⊗ Γ(X, Vᵢ ∩ Vⱼ)`.
  let F := Under.lift _ ((Functor.const _).map (iX.appLE US UX hUSX) ≫
    ((X.presheaf.mapCone c₀.op).π)) ⋙ Under.pushout (f.appLE US UT hUST) ⋙ Under.forget _
  let G : X.Opens ⥤ Y.Opens :=
    { obj U := g ⁻¹ᵁ U ⊓ iY ⁻¹ᵁ UT, map h := homOfLE (by gcongr; exact h.le) }
  -- The natural transformation between the diagrams at the top and bottom.
  let αF : F ⟶ D.op ⋙ G.op ⋙ Y.presheaf :=
  { app i := (pushout.congrHom (by simp) rfl).hom ≫
      pushoutSection H hUST (by grw [← hUSX, ← h]; exact le_iSup D.obj i.unop) rfl }
  -- `Γ(T, Uₜ) ⊗ Γ(X, U)` as a (limit) cone over the top diagram.
  let c : Cone F := (Under.pushout (f.appLE US UT hUST) ⋙ Under.forget _).mapCone
    (Under.liftCone (X.presheaf.mapCone c₀.op) _)
  have := CommRingCat.Under.preservesFiniteLimits_of_flat _ hT
  cases nonempty_fintype ι
  let hc : IsLimit c :=
    haveI HX := ((TopCat.Presheaf.isSheaf_iff_isSheafPreservesLimitPairwiseIntersections
      _).mp X.IsSheaf VX).preserves (c := c₀.op)
    haveI HX := (HX (IsColimit.extendIso _ (colimit.isColimit _)).op).some
    isLimitOfPreserves (Under.pushout _ ⋙ Under.forget _) (Under.isLimitLiftCone _ _ HX)
  let c'₀ : Cocone (D ⋙ G) := (colimit.cocone _).extend
    (eqToIso (Y := UY) (by
      simp only [colimit.cocone_x, CompleteLattice.colimit_eq_iSup]
      eta_expand
      dsimp [G]
      rw [← iSup_inf_eq, ← Scheme.Hom.preimage_iSup, h, hUY])).hom
  -- `Γ(X ×ₛ T, U ∩ Uₜ)` as a (limit) cone over the bottom diagram.
  let c' : Cone (D.op ⋙ G.op ⋙ Y.presheaf) := Y.presheaf.mapCone c'₀.op
  let hc' : IsLimit c' := by
    letI e : D ⋙ G ≅ Pairwise.diagram fun i ↦ g ⁻¹ᵁ VX i ⊓ iY ⁻¹ᵁ UT :=
      NatIso.ofComponents (fun | .single i => .refl _ | .pair i j => eqToIso (by
        dsimp [D, G]; rw [Scheme.Hom.preimage_inf, inf_inf_distrib_right]))
    haveI HX := ((TopCat.Presheaf.isSheaf_iff_isSheafPreservesLimitPairwiseIntersections _).mp
      Y.IsSheaf (fun i ↦ g ⁻¹ᵁ VX i ⊓ iY ⁻¹ᵁ UT)).preserves
        (c := ((Cocone.precompose e.inv).obj c'₀).op)
    exact (IsLimit.postcomposeHomEquiv (Functor.isoWhiskerRight (NatIso.op e.symm) Y.presheaf) _)
      ((HX ((IsColimit.precomposeInvEquiv e _).symm
        (IsColimit.extendIso _ (colimit.isColimit _))).op).some.ofIsoLimit (Cone.ext (.refl _)))
  have HαF₂ (i j : _) : Mono (αF.app (.op <| .pair i j)) := by infer_instance
  -- We construct the morphisms between the cone points,
  let f₁ : c.pt ⟶ c'.pt := hc'.lift ((Cone.postcompose αF).obj c)
  let f₂ : c'.pt ⟶ c.pt := hc.lift ⟨c'.pt, ⟨fun
    | .op (.single i) => c'.π.app _ ≫ inv (αF.app (.op <| .single i))
    | .op (.pair i j) => c'.π.app (.op (.single i)) ≫ inv (αF.app (.op <| .single i)) ≫
        F.map (Quiver.Hom.op <| Pairwise.Hom.left i j), by
    rintro ⟨i⟩ ⟨j⟩ f
    obtain ⟨i | ⟨i, j⟩ | ⟨i, j⟩ | ⟨i, j⟩, rfl⟩ :=
      (show Function.Surjective Quiver.Hom.op from Quiver.Hom.opEquiv.surjective) f
    · simp [show Pairwise.Hom.id_single i = 𝟙 (Pairwise.single i) from rfl]
    · simp [show Pairwise.Hom.id_pair i j = 𝟙 (Pairwise.pair i j) from rfl]
    · simp
    · rw [← cancel_mono (αF.app _)]
      simpa using (c'.w (Quiver.Hom.op <| Pairwise.Hom.left i j)).trans
        (c'.w (Quiver.Hom.op <| Pairwise.Hom.right i j)).symm⟩⟩
  -- and prove that they form an isomorphism.
  let e : c.pt ≅ c'.pt := by
    refine ⟨f₁, f₂, hc.hom_ext ?_, hc'.hom_ext ?_⟩
    · rintro ⟨i | ⟨i, j⟩⟩ <;> simp [f₁, f₂]
    · rintro ⟨i | ⟨i, j⟩⟩
      · simp [f₁, f₂]
      · simpa [f₁, f₂] using c'.w (Quiver.Hom.op <| Pairwise.Hom.left i j)
  convert! e.isIso_hom using 1
  · refine hc'.hom_ext fun i ↦ ?_
    rw [hc'.fac]
    ext1
    · simp [αF, c, Under.liftCone, c', c₀]
    · simp [αF, c, c']

````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Flat/Variantbeb3f499047422f911e5b1d062fadd4bc0f60facea6e339c662288a00e853270.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Flat/Variantbeb3f499047422f911e5b1d062fadd4bc0f60facea6e339c662288a00e853270.lean#L339).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8df1840034f03f6976335b08c21ed3f529cc0142` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
