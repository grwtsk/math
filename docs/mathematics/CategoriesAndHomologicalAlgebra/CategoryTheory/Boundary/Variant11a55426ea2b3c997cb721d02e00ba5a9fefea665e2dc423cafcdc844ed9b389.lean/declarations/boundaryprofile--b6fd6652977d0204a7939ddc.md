# BoundaryProfile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0f54c6677fe742257bb4fe5d981e4defd40419fa5b0912bb888ad14d9d552c46",
  "kind": "structure",
  "lexical_name": "BoundaryProfile",
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
  "slug": "boundaryprofile--b6fd6652977d0204a7939ddc",
  "source": {
    "blob": "2be19f5874ecb13e3d8c3c0751ed21299824894f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 37,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Boundary/Variant11a55426ea2b3c997cb721d02e00ba5a9fefea665e2dc423cafcdc844ed9b389.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b6fd6652977d0204a7939ddc9c8e84d5c6281954e5190cc477a4b90350174c54",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Boundary/Variant11a55426ea2b3c997cb721d02e00ba5a9fefea665e2dc423cafcdc844ed9b389.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0f54c6677fe742257bb4fe5d981e4defd40419fa5b0912bb888ad14d9d552c46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure BoundaryProfile
    (F : Fabric)
    {n : Nat}
    (x : F.Cell n) where
  boundaryContract :
    ∀ {m : Nat} (θ : ProperBoundaryOperator m n),
      Presentation.Hom
        (F.cellPresentation x)
        (F.cellPresentation (F.shape.restrict θ.operator x))
  agreesWithFabric :
    ∀ {m : Nat} (θ : ProperBoundaryOperator m n),
      boundaryContract θ = F.contract θ.operator x
  coherent :
    ∀ {l m : Nat}
      (θ : ProperBoundaryOperator m n)
      (ψ : ProperBoundaryOperator l m),
      HEq
        ((F.contract ψ.operator (F.shape.restrict θ.operator x)).comp
          (boundaryContract θ))
        (boundaryContract (θ.comp ψ))

/-- A candidate replacement presentation equipped with all strict boundary maps. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Boundary/Variant11a55426ea2b3c997cb721d02e00ba5a9fefea665e2dc423cafcdc844ed9b389.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Boundary/Variant11a55426ea2b3c997cb721d02e00ba5a9fefea665e2dc423cafcdc844ed9b389.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2be19f5874ecb13e3d8c3c0751ed21299824894f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
