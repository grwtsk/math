# isLimitEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6c1453d3722d797f90a609432845f43d383b969fa9991a6f17bba3fe2e11f6c2",
  "kind": "def",
  "lexical_name": "isLimitEquiv",
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
  "slug": "islimitequiv--0900375847a70fac73dee8fa",
  "source": {
    "blob": "d1010e9c7739c600a26f15f1c6c228a05bc424f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 121,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cone/Variant2d687b6b80f06bc30dabdf670dbb1fb3a89a77b3f1438739c4c78c0068a32098.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0900375847a70fac73dee8fa8a35da9882f7925ea324248e7a917c71a8bc2830",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cone/Variant2d687b6b80f06bc30dabdf670dbb1fb3a89a77b3f1438739c4c78c0068a32098.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6c1453d3722d797f90a609432845f43d383b969fa9991a6f17bba3fe2e11f6c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isLimitEquiv : IsLimit (coneEquiv.functor.obj t) ≃ IsLimit t := IsLimit.ofConeEquiv coneEquiv

end WithTerminal

namespace WithInitial
variable {X : C} {K : J ⥤ Under X} {F : C ⥤ D} {t : Cocone K}

/-- The category of functors `J ⥤ Under X` can be seen as part of a comma category,
namely the comma category constructed from the identity of the category of functors
`J ⥤ C` and the functor that maps `X : C` to the constant functor `J ⥤ C`.

Given a functor `K : J ⥤ Under X`, it is mapped to a natural transformation to the
obvious functor `J ⥤ C` from the constant functor `X`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cone/Variant2d687b6b80f06bc30dabdf670dbb1fb3a89a77b3f1438739c4c78c0068a32098.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cone/Variant2d687b6b80f06bc30dabdf670dbb1fb3a89a77b3f1438739c4c78c0068a32098.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1010e9c7739c600a26f15f1c6c228a05bc424f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
