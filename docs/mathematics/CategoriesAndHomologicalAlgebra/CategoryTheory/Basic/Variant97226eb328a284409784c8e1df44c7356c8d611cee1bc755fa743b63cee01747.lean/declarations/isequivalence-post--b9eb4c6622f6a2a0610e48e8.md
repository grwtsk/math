# isEquivalence_post

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d72f4e5cfefee469d447d2f5c8fff3d01cc8f44abeae0d678262e5c31398cae1",
  "kind": "instance",
  "lexical_name": "isEquivalence_post",
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
  "slug": "isequivalence-post--b9eb4c6622f6a2a0610e48e8",
  "source": {
    "blob": "2c7509b18de3b3c52965ea801c396fbe01d3d44b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 815,
    "line": 805,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant97226eb328a284409784c8e1df44c7356c8d611cee1bc755fa743b63cee01747.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b9eb4c6622f6a2a0610e48e8af052afc405bdbfcd3ae7a0a96cc2847a7505f5c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant97226eb328a284409784c8e1df44c7356c8d611cee1bc755fa743b63cee01747.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d72f4e5cfefee469d447d2f5c8fff3d01cc8f44abeae0d678262e5c31398cae1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 805–815.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isEquivalence_post (S : C) (F : B ⥤ C) (G : C ⥤ D) [G.Full] [G.Faithful] :
    (post F G S).IsEquivalence where

section

variable {U : A ⥤ B} {V : B} {F : C ⥤ A} {G : D ⥤ B}
  (α : F ⋙ U ⟶ S ⋙ G) (β : G.obj T ⟶ V)

/-- The functor `CostructuredArrow S T ⥤ CostructuredArrow U V` that is deduced from
a natural transformation `F ⋙ U ⟶ S ⋙ G` and a morphism `G.obj T ⟶ V` -/
@[simps!, implicit_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant97226eb328a284409784c8e1df44c7356c8d611cee1bc755fa743b63cee01747.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant97226eb328a284409784c8e1df44c7356c8d611cee1bc755fa743b63cee01747.lean#L805).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c7509b18de3b3c52965ea801c396fbe01d3d44b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
