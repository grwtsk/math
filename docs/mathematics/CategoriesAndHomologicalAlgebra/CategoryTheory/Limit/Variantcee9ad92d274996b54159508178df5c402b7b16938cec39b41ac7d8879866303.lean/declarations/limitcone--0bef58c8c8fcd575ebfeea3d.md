# limitCone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6535a99451c0171acf9b447ee9d628138b251b855dec9ac00a3e55c5fb3788d3",
  "kind": "def",
  "lexical_name": "limitCone",
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
  "slug": "limitcone--0bef58c8c8fcd575ebfeea3d",
  "source": {
    "blob": "a8e3b0d285a14355548a184840bd8799ee6ab087",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 101,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limit/Variantcee9ad92d274996b54159508178df5c402b7b16938cec39b41ac7d8879866303.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0bef58c8c8fcd575ebfeea3df5965ee002b0473003a4cac8928fc9ddefb1fc34",
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

Occurrence: `declaration:6535a99451c0171acf9b447ee9d628138b251b855dec9ac00a3e55c5fb3788d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def limitCone (F : J ⥤ Cat.{v, v}) : Cone F where
  pt := limitConeX F
  π :=
    { app := fun j => Functor.toCatHom
        { obj := limit.π (F ⋙ Cat.objects) j
          map := fun f => limit.π (homDiagram _ _) j f }
      naturality := fun _ _ f => Cat.Hom.ext <|
        CategoryTheory.Functor.ext (fun X => (congr_hom (limit.w (F ⋙ Cat.objects) f) X).symm)
          fun X Y h => (congr_hom (limit.w (homDiagram X Y) f) h).symm }

set_option backward.defeqAttrib.useBackward true in
attribute [-simp] homDiagram_obj Functor.comp_obj in
set_option backward.isDefEq.respectTransparency false in
/-- Auxiliary definition: the universal morphism to the proposed limit cone. -/
@[simps! toFunctor]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limit/Variantcee9ad92d274996b54159508178df5c402b7b16938cec39b41ac7d8879866303.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limit/Variantcee9ad92d274996b54159508178df5c402b7b16938cec39b41ac7d8879866303.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8e3b0d285a14355548a184840bd8799ee6ab087` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
