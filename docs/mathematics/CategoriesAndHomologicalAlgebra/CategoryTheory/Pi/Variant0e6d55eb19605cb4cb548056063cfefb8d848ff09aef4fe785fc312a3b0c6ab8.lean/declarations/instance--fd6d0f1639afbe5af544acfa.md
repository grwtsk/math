# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b8eeeddcfc48fdbee9fb7be115c1f5e83ee857302b1ecbf8c51bd483bac097c0",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--fd6d0f1639afbe5af544acfa",
  "source": {
    "blob": "fdd31c91aa4e67b72da38542b9daa727ce3370f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 75,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pi/Variant0e6d55eb19605cb4cb548056063cfefb8d848ff09aef4fe785fc312a3b0c6ab8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fd6d0f1639afbe5af544acfa80ddbdada94f100fee68d862b0d55cbb75aeba39",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pi/Variant0e6d55eb19605cb4cb548056063cfefb8d848ff09aef4fe785fc312a3b0c6ab8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b8eeeddcfc48fdbee9fb7be115c1f5e83ee857302b1ecbf8c51bd483bac097c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance {J : Type} [Finite J] {C : Type u₁} {D : Type u₂} [Category.{v₁} C] [Category.{v₂} D]
    (L : C ⥤ D) (W : MorphismProperty C) [W.ContainsIdentities] [L.IsLocalization W] :
    ((whiskeringRight (Discrete J) C D).obj L).IsLocalization
      (W.functorCategory (Discrete J)) := by
  let E := piEquivalenceFunctorDiscrete J C
  let E' := piEquivalenceFunctorDiscrete J D
  let L₂ := (whiskeringRight (Discrete J) C D).obj L
  let L₁ := Functor.pi (fun (_ : J) => L)
  have : CatCommSq E.functor L₁ L₂ E'.functor :=
    ⟨(Functor.rightUnitor _).symm ≪≫ isoWhiskerLeft _ E'.counitIso.symm ≪≫
      Functor.associator _ _ _≪≫ isoWhiskerLeft _ ((Functor.associator _ _ _).symm ≪≫
      isoWhiskerRight (by exact Iso.refl _) _) ≪≫ (Functor.associator _ _ _).symm ≪≫
      isoWhiskerRight ((Functor.associator _ _ _).symm ≪≫
      isoWhiskerRight E.unitIso.symm L₁) _ ≪≫ isoWhiskerRight L₁.leftUnitor _⟩
  refine Functor.IsLocalization.of_equivalences L₁
    (MorphismProperty.pi (fun _ => W)) L₂ _ E E' ?_ ?_
  · intro X Y f hf
    exact MorphismProperty.le_isoClosure _ _ (fun ⟨j⟩ => hf j)
  · intro X Y f hf
    have : ∀ (j : Discrete J), IsIso ((L₂.map f).app j) :=
      fun j => Localization.inverts L W _ (hf j)
    apply NatIso.isIso_of_isIso_app

end CategoryTheory.Functor.IsLocalization
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pi/Variant0e6d55eb19605cb4cb548056063cfefb8d848ff09aef4fe785fc312a3b0c6ab8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pi/Variant0e6d55eb19605cb4cb548056063cfefb8d848ff09aef4fe785fc312a3b0c6ab8.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fdd31c91aa4e67b72da38542b9daa727ce3370f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
