# connectedComponentsTypeToCatAdj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6dc0ce8ec37f0af256c67d0f7f33066abfa7cd558a56c8c50ae9c39fbe706f44",
  "kind": "def",
  "lexical_name": "connectedComponentsTypeToCatAdj",
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
  "slug": "connectedcomponentstypetocatadj--5739a3ed6f278f936d8c6fc3",
  "source": {
    "blob": "0dadf7ac0b6ce470717bd6a6829468b42dc59f5d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 78,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant9b6c4c6c5db04e9f4886586957669ff2097d71d3f27fae401e5c25fe16a80904.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5739a3ed6f278f936d8c6fc3ab8555c9562ce37fa33cce04164dcf0fb8022241",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant9b6c4c6c5db04e9f4886586957669ff2097d71d3f27fae401e5c25fe16a80904.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6dc0ce8ec37f0af256c67d0f7f33066abfa7cd558a56c8c50ae9c39fbe706f44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def connectedComponentsTypeToCatAdj : connectedComponents.{u} ⊣ typeToCat.{u} :=
  Adjunction.mk' {
    homEquiv := fun C X ↦ by
      refine TypeCat.homEquiv.trans ?_
      exact (ConnectedComponents.typeToCatHomEquiv _ _).trans
        (Functor.equivCatHom _ _)
    unit :=
      { app := fun C ↦ Functor.toCatHom <|
          ConnectedComponents.functorToDiscrete _ (𝟙 (connectedComponents.obj C)) }
    counit := {
        app := fun X => ↾(ConnectedComponents.liftFunctor _
          (𝟙 typeToCat.obj X).toFunctor)
        naturality := fun _ _ _ => by
          ext xcc
          obtain ⟨x, h⟩ := Quotient.exists_rep xcc
          cat_disch }
    homEquiv_counit := fun {C X G} => by
      ext cc
      obtain ⟨_, _⟩ := Quotient.exists_rep cc
      cat_disch }

end CategoryTheory.Cat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant9b6c4c6c5db04e9f4886586957669ff2097d71d3f27fae401e5c25fe16a80904.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant9b6c4c6c5db04e9f4886586957669ff2097d71d3f27fae401e5c25fe16a80904.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0dadf7ac0b6ce470717bd6a6829468b42dc59f5d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
