# mk'.isLocallySurjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3312c35e-ff8c-77d2-2bba-768b6e6130a8",
  "kind": "lemma",
  "lexical_name": "mk'.isLocallySurjective",
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
  "slug": "mk-islocallysurjective--5d81b165e1d60d56316bdb29",
  "source": {
    "blob": "c2443fcc5ef982dece8a6ae189b59b698facfca1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 190,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Conservative/Variant505cfd82d53b73eb6cc019e018dac6aba0dcc5a075f4f18b099321489e4431a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d81b165e1d60d56316bdb292a0e19777a6c3c383b5eccd4c7cc8f8a0abfc092",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Conservative/Variant505cfd82d53b73eb6cc019e018dac6aba0dcc5a075f4f18b099321489e4431a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3312c35e-ff8c-77d2-2bba-768b6e6130a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma mk'.isLocallySurjective
    (hP : ∀ ⦃X : C⦄ (S : Sieve X) (_ : ∀ (Φ : P.FullSubcategory) (x : Φ.obj.fiber.obj X),
      ∃ (Y : C) (g : Y ⟶ X) (_ : S g) (y : Φ.obj.fiber.obj Y), Φ.obj.fiber.map g y = x),
        S ∈ J X)
    {F₁ F₂ : Cᵒᵖ ⥤ Type w} (f : F₁ ⟶ F₂) [Mono f]
    (hf : ∀ (Φ : P.FullSubcategory), Function.Surjective (Φ.obj.presheafFiber.map f)) :
    Presheaf.IsLocallySurjective J f := by
  wlog hF₂ : ∃ (U : C), F₂ = shrinkYoneda.obj U generalizing F₁ F₂
  · refine ⟨fun {U} s ↦ ?_⟩
    let f' := pullback.snd f (shrinkYonedaEquiv.{w}.symm s)
    have hf' (Φ : P.FullSubcategory) :
        Function.Surjective (Φ.obj.presheafFiber.map f') := by
      replace hf := hf Φ
      rw [← CategoryTheory.epi_iff_surjective] at hf ⊢
      exact (MorphismProperty.epimorphisms _).of_isPullback
        ((IsPullback.of_hasPullback f (shrinkYonedaEquiv.{w}.symm s)).map
          Φ.obj.presheafFiber) (.infer_property _)
    have := this f' hf' ⟨_, rfl⟩
    refine J.superset_covering ?_
      (Presheaf.imageSieve_mem J f' (shrinkYonedaObjObjEquiv.symm (𝟙 U)))
    rintro V g ⟨v, hv⟩
    refine ⟨(pullback.fst f (shrinkYonedaEquiv.{w}.symm s)).app _ v, ?_⟩
    refine (ConcreteCategory.congr_hom (NatTrans.congr_app
      (pullback.condition (f := f)) (op V)) _).trans ?_
    dsimp at hv ⊢
    refine (congr_arg _ hv).trans ?_
    refine (congr_arg _ (shrinkYoneda_obj_map_shrinkYonedaObjObjEquiv_symm g.op (𝟙 _))).trans ?_
    simpa using shrinkYonedaEquiv_symm_app_shrinkYonedaObjObjEquiv_symm s g
  obtain ⟨U, rfl⟩ := hF₂
  suffices Presheaf.imageSieve f (shrinkYonedaObjObjEquiv.symm (𝟙 U)) ∈ J U from ⟨by
    intro V g
    obtain ⟨g, rfl⟩ := shrinkYonedaObjObjEquiv.symm.surjective g
    replace this := J.pullback_stable g this
    rw [Presheaf.pullback_imageSieve] at this
    have hg := shrinkYoneda_obj_map_shrinkYonedaObjObjEquiv_symm g.op (𝟙 _)
    simp only [Quiver.Hom.unop_op, Category.comp_id] at hg
    simpa [← hg]⟩
  refine hP _ (fun Φ u ↦ ?_)
  obtain ⟨x₁, hx₁⟩ := hf Φ (Φ.obj.shrinkYonedaCompPresheafFiberIso.inv.app _ u)
  obtain ⟨V, v, y, rfl⟩ := Φ.obj.toPresheafFiber_jointly_surjective (A := Type w) x₁
  obtain ⟨t, ht⟩ := shrinkYonedaObjObjEquiv.symm.surjective (f.app _ y)
  refine ⟨V, t, ⟨y, ht.symm.trans ?_⟩, v, ?_⟩
  · simpa using (shrinkYoneda_obj_map_shrinkYonedaObjObjEquiv_symm t.op (𝟙 _)).symm
  · refine (Φ.obj.shrinkYonedaCompPresheafFiberIso.symm.app U).toEquiv.injective ?_
    dsimp [-Functor.comp_obj]
    trans (Φ.obj.toPresheafFiber V v (shrinkYoneda.{w}.obj U)) (shrinkYonedaObjObjEquiv.symm t)
    · rw [← Φ.obj.presheafFiber_map_shrinkYoneda_map_shrinkYonedaCompPresheafFiberIso_inv_app]
      exact Φ.obj.shrinkYonedaCompPresheafFiberIso.inv.naturality_apply t v
    · rw [← hx₁]
      refine Eq.trans (congr_arg _ ht)
        (Φ.obj.toPresheafFiber_naturality_apply f _ v y).symm

/- Let `P` be family of points of a site `(C, J)`, we show that `P` is a conservative
family of points if the following condition is satisfied (SGA 4 IV 6.5 (a)):
for any sieve `S : Sieve X`, if the family of maps `Φ.map.fiber.map f`
for all morphisms `f` in the sieve `S` is jointly surjective for any `Φ` in `P`,
then `S` is a covering sieve for `J`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Conservative/Variant505cfd82d53b73eb6cc019e018dac6aba0dcc5a075f4f18b099321489e4431a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Conservative/Variant505cfd82d53b73eb6cc019e018dac6aba0dcc5a075f4f18b099321489e4431a0.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2443fcc5ef982dece8a6ae189b59b698facfca1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
