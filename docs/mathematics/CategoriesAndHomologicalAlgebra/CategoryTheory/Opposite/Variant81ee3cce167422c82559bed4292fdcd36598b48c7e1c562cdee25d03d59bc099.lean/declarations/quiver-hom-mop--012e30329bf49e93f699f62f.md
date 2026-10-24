# Quiver.Hom.mop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:40108b5f5694c5c75bd657eb4a143d20c6aae71a853e3f43b5c77a615edd0491",
  "kind": "def",
  "lexical_name": "Quiver.Hom.mop",
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
  "slug": "quiver-hom-mop--012e30329bf49e93f699f62f",
  "source": {
    "blob": "6d7823eb1c6c4f7723be5df7def159dda8f4752a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 90,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant81ee3cce167422c82559bed4292fdcd36598b48c7e1c562cdee25d03d59bc099.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:012e30329bf49e93f699f62fe503522c183031634d1ed3678a667a83fd2de215",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant81ee3cce167422c82559bed4292fdcd36598b48c7e1c562cdee25d03d59bc099.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:40108b5f5694c5c75bd657eb4a143d20c6aae71a853e3f43b5c77a615edd0491`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Quiver.Hom.mop {X Y : C} (f : X ⟶ Y) : @Quiver.Hom Cᴹᵒᵖ _ (mop X) (mop Y) :=
  f
#align quiver.hom.mop Quiver.Hom.mop

/-- We can think of a morphism `f : mop X ⟶ mop Y` as a morphism `X ⟶ Y`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant81ee3cce167422c82559bed4292fdcd36598b48c7e1c562cdee25d03d59bc099.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant81ee3cce167422c82559bed4292fdcd36598b48c7e1c562cdee25d03d59bc099.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d7823eb1c6c4f7723be5df7def159dda8f4752a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
