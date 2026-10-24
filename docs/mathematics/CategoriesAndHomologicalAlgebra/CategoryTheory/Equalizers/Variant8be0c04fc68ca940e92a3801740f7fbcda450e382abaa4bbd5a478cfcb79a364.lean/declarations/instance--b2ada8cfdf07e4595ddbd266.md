# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fe350eb61d3b535d2bb9496f8411d59ea09f2d36883aee33ea7ca285e8ae61d3",
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
  "slug": "instance--b2ada8cfdf07e4595ddbd266",
  "source": {
    "blob": "f46b946fbb4052e516a47f09183a0d8c22587dcf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 107,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant8be0c04fc68ca940e92a3801740f7fbcda450e382abaa4bbd5a478cfcb79a364.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b2ada8cfdf07e4595ddbd26660a230e5b4d351dc9ad51805cb6b764d6356eb40",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant8be0c04fc68ca940e92a3801740f7fbcda450e382abaa4bbd5a478cfcb79a364.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fe350eb61d3b535d2bb9496f8411d59ea09f2d36883aee33ea7ca285e8ae61d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : IsIso (equalizerComparison f g G) := by
  rw [← PreservesEqualizer.iso_hom]
  infer_instance

end Equalizers

section Coequalizers

variable {X Y Z : C} {f g : X ⟶ Y} {h : Y ⟶ Z} (w : f ≫ h = g ≫ h)

set_option backward.defeqAttrib.useBackward true in
/-- The map of a cofork is a colimit iff the cofork consisting of the mapped morphisms is a colimit.
This essentially lets us commute `Cofork.ofπ` with `Functor.mapCocone`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant8be0c04fc68ca940e92a3801740f7fbcda450e382abaa4bbd5a478cfcb79a364.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant8be0c04fc68ca940e92a3801740f7fbcda450e382abaa4bbd5a478cfcb79a364.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f46b946fbb4052e516a47f09183a0d8c22587dcf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
