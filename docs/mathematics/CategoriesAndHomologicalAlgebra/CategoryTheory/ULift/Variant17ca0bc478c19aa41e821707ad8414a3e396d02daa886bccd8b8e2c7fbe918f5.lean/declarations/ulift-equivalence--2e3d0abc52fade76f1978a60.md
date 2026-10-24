# ULift.equivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:36ca2e6df20c34f44e1e0037962e19a816aaf0107866abd7d1a99852b1bc5730",
  "kind": "def",
  "lexical_name": "ULift.equivalence",
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
  "slug": "ulift-equivalence--2e3d0abc52fade76f1978a60",
  "source": {
    "blob": "d5e9a5b1c056b3b74513f40416a30c88026cb621",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 61,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant17ca0bc478c19aa41e821707ad8414a3e396d02daa886bccd8b8e2c7fbe918f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2e3d0abc52fade76f1978a607b480019213515974213249c1b99ba2278f17bae",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant17ca0bc478c19aa41e821707ad8414a3e396d02daa886bccd8b8e2c7fbe918f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:36ca2e6df20c34f44e1e0037962e19a816aaf0107866abd7d1a99852b1bc5730`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ULift.equivalence : C ≌ ULift.{u₂} C where
  functor := ULift.upFunctor
  inverse := ULift.downFunctor
  unitIso :=
    { hom := 𝟙 _
      inv := 𝟙 _ }
  counitIso :=
    { hom := { app := fun _ => 𝟙 _ }
      inv := { app := fun _ => 𝟙 _ } }

section ULiftHom

/-- `ULiftHom.{w} C` is an alias for `C`, which is endowed with a category instance
  whose morphisms are obtained by applying `ULift.{w}` to the morphisms from `C`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant17ca0bc478c19aa41e821707ad8414a3e396d02daa886bccd8b8e2c7fbe918f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant17ca0bc478c19aa41e821707ad8414a3e396d02daa886bccd8b8e2c7fbe918f5.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5e9a5b1c056b3b74513f40416a30c88026cb621` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
