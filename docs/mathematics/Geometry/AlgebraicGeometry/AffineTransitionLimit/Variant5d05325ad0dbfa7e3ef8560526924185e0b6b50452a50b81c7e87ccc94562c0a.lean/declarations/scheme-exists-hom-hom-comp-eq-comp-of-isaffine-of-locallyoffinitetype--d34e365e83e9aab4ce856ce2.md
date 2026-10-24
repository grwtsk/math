# Scheme.exists_hom_hom_comp_eq_comp_of_isAffine_of_locallyOfFiniteType

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8be4896d-0bbb-8a65-a125-98cc94405e67",
  "kind": "lemma",
  "lexical_name": "Scheme.exists_hom_hom_comp_eq_comp_of_isAffine_of_locallyOfFiniteType",
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
  "slug": "scheme-exists-hom-hom-comp-eq-comp-of-isaffine-of-locallyoffinitetype--d34e365e83e9aab4ce856ce2",
  "source": {
    "blob": "9d722dad9181cfd6d7afa3fa039a957385fa07fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 463,
    "line": 409,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d34e365e83e9aab4ce856ce263689cf050bb12b57231ed612ba2ea88eeb0babe",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8be4896d-0bbb-8a65-a125-98cc94405e67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 409–463.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private nonrec lemma Scheme.exists_hom_hom_comp_eq_comp_of_isAffine_of_locallyOfFiniteType
    [IsAffine S] [IsAffine X] [∀ i, IsAffine (D.obj i)] [IsAffine c.pt]
    {i : I} (a : D.obj i ⟶ X) (ha : t.app i = a ≫ f)
    {j : I} (b : D.obj j ⟶ X) (hb : t.app j = b ≫ f)
    (hab : c.π.app i ≫ a = c.π.app j ≫ b) :
    ∃ (k : I) (hik : k ⟶ i) (hjk : k ⟶ j),
      D.map hik ≫ a = D.map hjk ≫ b := by
  wlog hS : ∃ R, S = Spec R generalizing S
  · exact this (t ≫ ((Functor.const I).mapIso S.isoSpec).hom)
      (f ≫ S.isoSpec.hom) (by simp [ha]) (by simp [hb]) ⟨_, rfl⟩
  obtain ⟨R, rfl⟩ := hS
  wlog hX : ∃ S, X = Spec S generalizing X
  · simpa using! this (a ≫ X.isoSpec.hom) (b ≫ X.isoSpec.hom) (by simp [hab]) (X.isoSpec.inv ≫ f)
      (by simp [ha]) (by simp [hb]) ⟨_, rfl⟩
  obtain ⟨S, rfl⟩ := hX
  obtain ⟨φ, rfl⟩ := Spec.map_surjective f
  wlog hD : ∃ D' : I ⥤ CommRingCatᵒᵖ, D = D' ⋙ Scheme.Spec generalizing D
  · let e : D ⟶ D ⋙ Scheme.Γ.rightOp ⋙ Scheme.Spec := D.whiskerLeft ΓSpec.adjunction.unit
    have inst (i) : IsIso (e.app i) := by dsimp [e]; infer_instance
    have inst : IsIso e := NatIso.isIso_of_isIso_app e
    have inst (i) : IsAffine ((D ⋙ Scheme.Γ.rightOp ⋙ Scheme.Spec).obj i) := by
      dsimp; infer_instance
    have inst : IsAffine ((Cone.postcompose (asIso e).hom).obj c).pt := by
      dsimp; infer_instance
    have := this (D ⋙ Scheme.Γ.rightOp ⋙ Scheme.Spec) ((Cone.postcompose (asIso e).hom).obj c)
      ((IsLimit.postcomposeHomEquiv (asIso e) c).symm hc) (inv e ≫ t)
      ((inv e).app _ ≫ a) ((inv e).app _ ≫ b) (by simp [hab]) (by simp [ha]) (by simp [hb])
      ⟨D ⋙ Scheme.Γ.rightOp, rfl⟩
    simp_rw [(inv e).naturality_assoc] at this
    simpa using! this
  obtain ⟨D, rfl⟩ := hD
  obtain ⟨a, rfl⟩ := Spec.map_surjective a
  obtain ⟨b, rfl⟩ := Spec.map_surjective b
  let e : ((Functor.const Iᵒᵖ).obj R).rightOp ⋙ Scheme.Spec ≅ (Functor.const I).obj (Spec R) :=
    NatIso.ofComponents (fun _ ↦ Iso.refl _) (by simp)
  obtain ⟨t, rfl⟩ : ∃ t' : (Functor.const Iᵒᵖ).obj R ⟶ D.leftOp,
      t = Functor.whiskerRight (NatTrans.rightOp t') Scheme.Spec ≫ e.hom :=
    ⟨⟨fun i ↦ Spec.preimage (t.app i.unop), fun _ _ f ↦ Spec.map_injective
      (by simpa using! (t.naturality f.unop).symm)⟩, by ext : 2; simp [e]⟩
  have := monadicCreatesLimits Scheme.Spec
  obtain ⟨k, hik, hjk, H⟩ := (HasRingHomProperty.Spec_iff.mp ‹LocallyOfFiniteType (Spec.map φ)›)
    |>.essFiniteType.exists_comp_map_eq_of_isColimit _ D.leftOp t _
    (coconeLeftOpOfCone (liftLimit hc))
    (isColimitCoconeLeftOpOfCone _ (liftedLimitIsLimit _))
    a (Spec.map_injective (by simpa using! ha.symm))
    b (Spec.map_injective (by simpa using! hb.symm))
    (Spec.map_injective (by
      simp only [coconeLeftOpOfCone_pt, Functor.const_obj_obj,
        Functor.leftOp_obj, coconeLeftOpOfCone_ι_app, Spec.map_comp]
      simp only [← Scheme.Spec_map, ← liftedLimitMapsToOriginal_hom_π, Category.assoc, hab]))
  exact ⟨k.unop, hik.unop, hjk.unop, by simpa [← Spec.map_comp, Spec.map_inj] using! H⟩

/-- (Implementation)
An auxiliary structure used to prove `Scheme.exists_hom_hom_comp_eq_comp_of_locallyOfFiniteType`.
See the section docstring. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean#L409).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d722dad9181cfd6d7afa3fa039a957385fa07fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
