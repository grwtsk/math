# whiskeringRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:acabbf658702be07aa588c2211419d522b960146e1bf7caf0425a6be116320e7",
  "kind": "def",
  "lexical_name": "whiskeringRight",
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
  "slug": "whiskeringright--e0fa639ae48b9d94d7eb3f86",
  "source": {
    "blob": "6a731bece3d78d9b13d0d02d1d6d6e83f4307f11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 91,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variant51393e8e591a4c50b3555fc4f8f44207815ae29c832526b712a7ed3f23689e2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e0fa639ae48b9d94d7eb3f8673028254b46f3584d04b537188cc28739b04e41d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variant51393e8e591a4c50b3555fc4f8f44207815ae29c832526b712a7ed3f23689e2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:acabbf658702be07aa588c2211419d522b960146e1bf7caf0425a6be116320e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def whiskeringRight : (D ⥤ E) ⥤ (C ⥤ D) ⥤ C ⥤ E where
  obj H :=
    { obj := fun F => F ⋙ H
      map := fun α => whiskerRight α H }
  map τ :=
    { app := fun F =>
        { app := fun c => τ.app (F.obj c)
          naturality := fun X Y f => by dsimp; rw [τ.naturality] }
      naturality := fun X Y f => by ext; dsimp; rw [← NatTrans.naturality] }

variable {C} {D} {E}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variant51393e8e591a4c50b3555fc4f8f44207815ae29c832526b712a7ed3f23689e2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variant51393e8e591a4c50b3555fc4f8f44207815ae29c832526b712a7ed3f23689e2c.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a731bece3d78d9b13d0d02d1d6d6e83f4307f11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
