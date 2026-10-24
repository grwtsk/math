# isLeftDerivabilityStructure_iff_of_isLocalizedEquivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fec82e2f-3eee-6d83-bfdf-52a712970481",
  "kind": "lemma",
  "lexical_name": "isLeftDerivabilityStructure_iff_of_isLocalizedEquivalence",
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
  "slug": "isleftderivabilitystructure-iff-of-islocalizedequivalence--ff4726072c45af391fcd38ed",
  "source": {
    "blob": "3b1101deea54428a0be2aa5150ea87b729f917c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 96,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OfLocalizedEquivalences/Varianta07538c1c3f1895f65392ace13069c83c59c5064d91769db58587db1f76bf029.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff4726072c45af391fcd38edb74319626cc4d1adc9021c610680d72ff90d0e26",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OfLocalizedEquivalences/Varianta07538c1c3f1895f65392ace13069c83c59c5064d91769db58587db1f76bf029.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fec82e2f-3eee-6d83-bfdf-52a712970481`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isLeftDerivabilityStructure_iff_of_isLocalizedEquivalence
    [L.functor.EssSurj] [R.functor.Full] [R.IsInduced]
    (iso : T.functor ⋙ R.functor ≅ L.functor ⋙ B.functor)
    [TwoSquare.GuitartExact iso.inv] :
    T.IsLeftDerivabilityStructure ↔ B.IsLeftDerivabilityStructure := by
  refine ⟨fun _ ↦ isLeftDerivabilityStructure_of_isLocalizedEquivalence iso, fun _ ↦ ?_⟩
  have : T.HasLeftResolutions := fun X₂ ↦ by
    let ρ : B.LeftResolution (R.functor.obj X₂) := Classical.arbitrary _
    exact ⟨{
      X₁ := L.functor.objPreimage ρ.X₁
      w :=
        R.functor.preimage (iso.hom.app _ ≫
          B.functor.map (L.functor.objObjPreimageIso ρ.X₁).hom ≫ ρ.w)
      hw := by
        simp only [← R.inverseImage_eq, Functor.comp_obj,
          MorphismProperty.inverseImage_iff, Functor.map_preimage]
        refine (W₂'.arrow_mk_iso_iff ?_).2 ρ.hw
        exact Arrow.isoMk (iso.app _ ≪≫ B.functor.mapIso (L.functor.objObjPreimageIso ρ.X₁))
          (Iso.refl _) }⟩
  let F := B.localizedFunctor W₁'.Q W₂'.Q
  let e' := CatCommSq.iso B.functor W₁'.Q W₂'.Q F
  let e : T.functor ⋙ R.functor ⋙ W₂'.Q ≅ (L.functor ⋙ W₁'.Q) ⋙ F :=
    (Functor.associator _ _ _).symm ≪≫ Functor.isoWhiskerRight iso _ ≪≫
      Functor.associator _ _ _ ≪≫
      Functor.isoWhiskerLeft _ e' ≪≫ (Functor.associator _ _ _).symm
  have he' : TwoSquare.GuitartExact e'.inv := inferInstance
  have : TwoSquare.hComp iso.inv e'.inv = e.inv := by ext; simp [e]
  rw [T.isLeftDerivabilityStructure_iff (L.functor ⋙ W₁'.Q)
    (R.functor ⋙ W₂'.Q) F e, ← this]
  infer_instance

set_option backward.isDefEq.respectTransparency.types false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OfLocalizedEquivalences/Varianta07538c1c3f1895f65392ace13069c83c59c5064d91769db58587db1f76bf029.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OfLocalizedEquivalences/Varianta07538c1c3f1895f65392ace13069c83c59c5064d91769db58587db1f76bf029.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b1101deea54428a0be2aa5150ea87b729f917c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
