# Scheme.exists_π_app_comp_eq_of_locallyOfFinitePresentation_of_isAffine

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b0731f5-49f7-1ece-137e-a8aca00505ec",
  "kind": "lemma",
  "lexical_name": "Scheme.exists_π_app_comp_eq_of_locallyOfFinitePresentation_of_isAffine",
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
  "slug": "scheme-exists-app-comp-eq-of-locallyoffinitepresentation-of-isaffine--39625f5d611322341493f83e",
  "source": {
    "blob": "3d0043ac128ef5a67c459ffc0c0daad5f8c9d1da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1231,
    "line": 1164,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant7b1cc53858facace1758cd39ec5f961ab2aa029b3262b53f779d0f5bc7e53e52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39625f5d611322341493f83e1a1e6dc74f3f6476ca9b271553513576be1b49dc",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant7b1cc53858facace1758cd39ec5f961ab2aa029b3262b53f779d0f5bc7e53e52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b0731f5-49f7-1ece-137e-a8aca00505ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1164–1231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private nonrec lemma Scheme.exists_π_app_comp_eq_of_locallyOfFinitePresentation_of_isAffine
    [IsCofiltered I] [LocallyOfFinitePresentation f]
    [IsAffine S] [IsAffine X] [∀ i, IsAffine (D.obj i)]
    (a : c.pt ⟶ X) (ha : c.π ≫ t = (Functor.const _).map (a ≫ f)) :
    ∃ (i : I) (g : D.obj i ⟶ X), c.π.app i ≫ g = a ∧ g ≫ f = t.app i := by
  -- Every scheme involved is affine, so the proof is merely translate to commutative algebra and
  -- use `RingHom.EssFiniteType.exists_eq_comp_ι_app_of_isColimit`.
  -- Unfortunately the translation takes 45 lines.
  wlog hS : ∃ R, S = Spec R generalizing S
  · obtain ⟨i, g, hg, hg'⟩ := this (t ≫ ((Functor.const I).mapIso S.isoSpec).hom)
      (f ≫ S.isoSpec.hom) (by simp [reassoc_of% ha]) ⟨_, rfl⟩
    exact ⟨i, g, hg, by simpa using! congr($hg' ≫ S.isoSpec.inv)⟩
  obtain ⟨R, rfl⟩ := hS
  wlog hX : ∃ S, X = Spec S generalizing X
  · obtain ⟨i, f, hf⟩ := this (a ≫ X.isoSpec.hom) (X.isoSpec.inv ≫ f)
      (by simp [ha, -Functor.map_comp]) ⟨_, rfl⟩
    exact ⟨i, f ≫ X.isoSpec.inv, by simpa [← Iso.comp_inv_eq] using! hf⟩
  obtain ⟨S, rfl⟩ := hX
  obtain ⟨φ, rfl⟩ := Spec.map_surjective f
  wlog hD : ∃ D' : I ⥤ CommRingCatᵒᵖ, D = D' ⋙ Scheme.Spec generalizing D
  · let e : D ⟶ D ⋙ Scheme.Γ.rightOp ⋙ Scheme.Spec := D.whiskerLeft ΓSpec.adjunction.unit
    have inst (i) : IsIso (e.app i) := by dsimp [e]; infer_instance
    have inst : IsIso e := NatIso.isIso_of_isIso_app e
    have inst (i) : IsAffine ((D ⋙ Scheme.Γ.rightOp ⋙ Scheme.Spec).obj i) := by
      dsimp; infer_instance
    obtain ⟨i, g, hg, hg'⟩ := this _ _ ((IsLimit.postcomposeHomEquiv (asIso e) c).symm hc)
      (inv e ≫ t) a (by simpa using! ha) ⟨D ⋙ Scheme.Γ.rightOp, rfl⟩
    exact ⟨i, e.app i ≫ g, by rwa [← Category.assoc], by simp [hg']⟩
  obtain ⟨D, rfl⟩ := hD
  let e : ((Functor.const Iᵒᵖ).obj R).rightOp ⋙ Scheme.Spec ≅ (Functor.const I).obj (Spec R) :=
    NatIso.ofComponents (fun _ ↦ Iso.refl _) (by simp)
  obtain ⟨t, rfl⟩ : ∃ t' : (Functor.const Iᵒᵖ).obj R ⟶ D.leftOp,
      t = Functor.whiskerRight (NatTrans.rightOp t') Scheme.Spec ≫ e.hom :=
    ⟨⟨fun i ↦ Spec.preimage (t.app i.unop), fun _ _ f ↦ Spec.map_injective
      (by simpa using! (t.naturality f.unop).symm)⟩, by ext : 2; simp [e]⟩
  wlog hc' : ∃ c' : Cocone D.leftOp, c = Scheme.Spec.mapCone (coneOfCoconeLeftOp c') generalizing c
  · have inst : IsAffine c.pt := isAffine_of_isLimit _ hc
    let e' : (D ⋙ Scheme.Spec).op ⋙ Γ ≅ D.leftOp := D.leftOp.isoWhiskerLeft SpecΓIdentity
    let c' := coneOfCoconeLeftOp ((Cocone.precompose e'.inv).obj (Γ.mapCocone c.op))
    have inst : ∀ i, IsAffine ((D ⋙ Scheme.Spec).op.obj i).unop := by dsimp; infer_instance
    obtain ⟨i, f, hf⟩ := this (Scheme.Spec.mapCone c') (isLimitOfPreserves _
      (isLimitConeOfCoconeLeftOp _ ((IsColimit.precomposeHomEquiv e'.symm _).symm
        (isColimitOfPreserves _ hc.op)))) (c.pt.isoSpec.inv ≫ a) (by
        ext i
        have : c.π.app i ≫ Spec.map (t.app (.op i)) = a ≫ Spec.map φ := by
          simpa using! congr((($ha).app i))
        simp [c', e, e', ← this, Iso.eq_inv_comp, isoSpec_hom_naturality_assoc]) ⟨_, rfl⟩
    refine ⟨i, f, ?_⟩
    simpa [Iso.eq_inv_comp, c', isoSpec_hom_naturality_assoc, e'] using! hf
  obtain ⟨c', rfl⟩ := hc'
  obtain ⟨ψ, rfl⟩ := Spec.map_surjective a
  replace hc := isColimitOfConeOfCoconeLeftOp _ (isLimitOfReflects _ hc)
  obtain ⟨i, g, hg, hg'⟩ :=
    RingHom.EssFiniteType.exists_eq_comp_ι_app_of_isColimit _ D.leftOp t _ _ hc
    (HasRingHomProperty.Spec_iff.mp ‹LocallyOfFinitePresentation (Spec.map φ)›) ψ fun i ↦ by
    apply Spec.map_injective; simpa using! congr(($ha).app i.unop).symm
  exact ⟨i.unop, Spec.map g, by simpa using! congr(Spec.map $hg').symm,
    by simpa using! congr(Spec.map $hg)⟩

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
open TopologicalSpace in
include hc in
/--
Given a cofiltered diagram of qcqs schemes `Dᵢ` over `S` with affine transition maps.
If `X` is locally of finite presentation over `S`, then any `S`-morphism `lim Dᵢ ⟶ X` factors
through some `lim Dᵢ ⟶ Dⱼ ⟶ X` for some `j`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant7b1cc53858facace1758cd39ec5f961ab2aa029b3262b53f779d0f5bc7e53e52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant7b1cc53858facace1758cd39ec5f961ab2aa029b3262b53f779d0f5bc7e53e52.lean#L1164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d0043ac128ef5a67c459ffc0c0daad5f8c9d1da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
