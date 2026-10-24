# isLeftDerivabilityStructure_iff_of_isLocalizedEquivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ada605bdc76b3605b7c4d99febbc40e7a533df20",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 88,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/76/762d5ec8cf312854bd3ec2b5ab686cc8d226da725c362267b76ad33e6bc3ec37.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e127b677-c2dc-93c3-c44f-f03c5664dd88",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cb086b6b-da81-4d4e-52e3-cbb7cf95755e",
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
  "slug": "isleftderivabilitystructure-iff-of-islocalizedequivalence--fbe74040dae88fa0cd78928c",
  "source": {
    "blob": "ada605bdc76b3605b7c4d99febbc40e7a533df20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 88,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OfLocalizedEquivalences/Variant762d5ec8cf312854bd3ec2b5ab686cc8d226da725c362267b76ad33e6bc3ec37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fbe74040dae88fa0cd78928c978a463fdd22da8ee6cf3919d90bb1de44144304",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OfLocalizedEquivalences/Variant762d5ec8cf312854bd3ec2b5ab686cc8d226da725c362267b76ad33e6bc3ec37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb086b6b-da81-4d4e-52e3-cbb7cf95755e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–119.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OfLocalizedEquivalences/Variant762d5ec8cf312854bd3ec2b5ab686cc8d226da725c362267b76ad33e6bc3ec37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OfLocalizedEquivalences/Variant762d5ec8cf312854bd3ec2b5ab686cc8d226da725c362267b76ad33e6bc3ec37.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ada605bdc76b3605b7c4d99febbc40e7a533df20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
