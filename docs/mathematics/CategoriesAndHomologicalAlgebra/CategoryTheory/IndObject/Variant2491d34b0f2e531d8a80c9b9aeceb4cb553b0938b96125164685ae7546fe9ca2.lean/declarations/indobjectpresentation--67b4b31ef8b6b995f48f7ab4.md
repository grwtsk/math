# IndObjectPresentation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:580f02a129a979db81741d73f71bbb3e95b5d58a853802432c17ce6ab99675a4",
  "kind": "structure",
  "lexical_name": "IndObjectPresentation",
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
  "slug": "indobjectpresentation--67b4b31ef8b6b995f48f7ab4",
  "source": {
    "blob": "b7e7f1ce6b73ec4e09cef03453a977be655219b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 62,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IndObject/Variant2491d34b0f2e531d8a80c9b9aeceb4cb553b0938b96125164685ae7546fe9ca2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:67b4b31ef8b6b995f48f7ab4e6632ee9c13f2c22a77f9c27700de055ca9b1e96",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IndObject/Variant2491d34b0f2e531d8a80c9b9aeceb4cb553b0938b96125164685ae7546fe9ca2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:580f02a129a979db81741d73f71bbb3e95b5d58a853802432c17ce6ab99675a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure IndObjectPresentation (A : Cᵒᵖ ⥤ Type v) where
  /-- The indexing category of the filtered colimit presentation -/
  I : Type v
  /-- The indexing category of the filtered colimit presentation -/
  [ℐ : SmallCategory I]
  [hI : IsFiltered I]
  /-- The diagram of the filtered colimit presentation -/
  F : I ⥤ C
  /-- Use `IndObjectPresentation.cocone` instead. -/
  ι : F ⋙ yoneda ⟶ (Functor.const I).obj A
  /-- Use `IndObjectPresentation.coconeIsColimit` instead. -/
  isColimit : IsColimit (Cocone.mk A ι)

namespace IndObjectPresentation

/-- Alternative constructor for `IndObjectPresentation` taking a cocone instead of its defining
    natural transformation. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IndObject/Variant2491d34b0f2e531d8a80c9b9aeceb4cb553b0938b96125164685ae7546fe9ca2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IndObject/Variant2491d34b0f2e531d8a80c9b9aeceb4cb553b0938b96125164685ae7546fe9ca2.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7e7f1ce6b73ec4e09cef03453a977be655219b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
