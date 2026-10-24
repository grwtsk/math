# FullSubcategory.concreteCategory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:594144475fb166221acaae079cba7da15c7f620c675b855a66728effc488abc2",
  "kind": "instance",
  "lexical_name": "FullSubcategory.concreteCategory",
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
  "slug": "fullsubcategory-concretecategory--269b2dcb905f5e2a2b4a69e9",
  "source": {
    "blob": "d3ed98208fef14caf83f199a211498248f395208",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 477,
    "line": 464,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdfed0b72d5827ae85a4eda24fba72441576b8be0debd7527eca27e28253e5e26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:269b2dcb905f5e2a2b4a69e92d91aa27a212b5088f9bdd1b370b82589ea03c4c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdfed0b72d5827ae85a4eda24fba72441576b8be0debd7527eca27e28253e5e26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:594144475fb166221acaae079cba7da15c7f620c675b855a66728effc488abc2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 464–477.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance FullSubcategory.concreteCategory {C : Type u} [Category.{v} C]
    {FC : C → C → Type*} {CC : C → Type w} [∀ X Y, FunLike (FC X Y) (CC X) (CC Y)]
    [ConcreteCategory.{w} C FC]
    (P : ObjectProperty C) : ConcreteCategory P.FullSubcategory (fun X Y => FC X.1 Y.1) where
  hom := hom (C := C)
  ofHom := ofHom (C := C)
  hom_ofHom := hom_ofHom (C := C)
  ofHom_hom := ofHom_hom (C := C)
  comp_apply := ConcreteCategory.comp_apply (C := C)
  id_apply := ConcreteCategory.id_apply (C := C)

end ConcreteCategory

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdfed0b72d5827ae85a4eda24fba72441576b8be0debd7527eca27e28253e5e26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdfed0b72d5827ae85a4eda24fba72441576b8be0debd7527eca27e28253e5e26.lean#L464).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3ed98208fef14caf83f199a211498248f395208` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
