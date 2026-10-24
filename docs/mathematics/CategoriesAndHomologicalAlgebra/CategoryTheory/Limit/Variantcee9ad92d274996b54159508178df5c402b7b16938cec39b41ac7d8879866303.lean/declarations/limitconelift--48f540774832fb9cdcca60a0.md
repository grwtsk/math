# limitConeLift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ff80d1c805ef4bc10a79f19dd822bf8e95a6fc9d5838a7feb5bbdd12947712c6",
  "kind": "def",
  "lexical_name": "limitConeLift",
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
  "slug": "limitconelift--48f540774832fb9cdcca60a0",
  "source": {
    "blob": "a8e3b0d285a14355548a184840bd8799ee6ab087",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 116,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limit/Variantcee9ad92d274996b54159508178df5c402b7b16938cec39b41ac7d8879866303.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:48f540774832fb9cdcca60a07dce6b0c2b8e7492580bb5a35220f0af4f5c0b2d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limit/Variantcee9ad92d274996b54159508178df5c402b7b16938cec39b41ac7d8879866303.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ff80d1c805ef4bc10a79f19dd822bf8e95a6fc9d5838a7feb5bbdd12947712c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def limitConeLift (F : J ⥤ Cat.{v, v}) (s : Cone F) : s.pt ⟶ limitConeX F :=
  Functor.toCatHom <| {
    obj :=
      limit.lift (F ⋙ Cat.objects)
        { pt := s.pt
          π :=
            { app := fun j => ↾(s.π.app j).toFunctor.obj
              naturality := fun _ _ f => objects.congr_map (s.π.naturality f) } }
    map f := by
      fapply Types.Limit.mk.{v, v}
      · intro j
        refine eqToHom ?_ ≫ (s.π.app j).toFunctor.map f ≫ eqToHom ?_ <;> simp
      · intro j j' h
        dsimp [Functor.comp_obj, homDiagram_obj]
        simp only [Functor.map_comp, eqToHom_map, ← Functor.comp_map, Category.assoc, eqToHom_trans,
          eqToHom_trans_assoc]
        have := congr($((s.π.naturality h).symm).toFunctor)
        dsimp at this
        rw [Functor.id_comp] at this
        rw [Functor.congr_hom this f]
        simp }

set_option backward.isDefEq.respectTransparency.types false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limit/Variantcee9ad92d274996b54159508178df5c402b7b16938cec39b41ac7d8879866303.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limit/Variantcee9ad92d274996b54159508178df5c402b7b16938cec39b41ac7d8879866303.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8e3b0d285a14355548a184840bd8799ee6ab087` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
