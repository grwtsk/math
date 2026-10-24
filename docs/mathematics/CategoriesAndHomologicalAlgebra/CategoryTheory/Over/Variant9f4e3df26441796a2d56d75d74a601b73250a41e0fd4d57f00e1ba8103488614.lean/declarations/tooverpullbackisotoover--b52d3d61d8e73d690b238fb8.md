# toOverPullbackIsoToOver

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:67547e0cef1cfa46190dc234a04787242d98e9cd8bc0142a4d0d13502f0e3164",
  "kind": "def",
  "lexical_name": "toOverPullbackIsoToOver",
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
  "slug": "tooverpullbackisotoover--b52d3d61d8e73d690b238fb8",
  "source": {
    "blob": "f3a8220126f88855beb3d5f723721655296715a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 367,
    "line": 356,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant9f4e3df26441796a2d56d75d74a601b73250a41e0fd4d57f00e1ba8103488614.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b52d3d61d8e73d690b238fb86cf733a2ee9fb2f6f5bc445e45646d0a24479aaf",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant9f4e3df26441796a2d56d75d74a601b73250a41e0fd4d57f00e1ba8103488614.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:67547e0cef1cfa46190dc234a04787242d98e9cd8bc0142a4d0d13502f0e3164`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 356–367.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toOverPullbackIsoToOver {X Y : C} (f : Y ⟶ X) [ChosenPullbacksAlong f] :
    toOver X ⋙ pullback f ≅ toOver Y :=
  conjugateIsoEquiv ((mapPullbackAdj f).comp (forgetAdjToOver X))
    (forgetAdjToOver Y) (Over.mapForget f)

attribute [local instance] cartesianMonoidalCategoryOver

omit [CartesianMonoidalCategory C] in
/-- The functor `pullback f : Over X ⥤ Over Y` is naturally isomorphic to
`toOver : Over X ⥤ Over (Over.mk f)` post-composed with the
iterated slice equivalence `Over (Over.mk f) ⥤ Over Y`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant9f4e3df26441796a2d56d75d74a601b73250a41e0fd4d57f00e1ba8103488614.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant9f4e3df26441796a2d56d75d74a601b73250a41e0fd4d57f00e1ba8103488614.lean#L356).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3a8220126f88855beb3d5f723721655296715a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
