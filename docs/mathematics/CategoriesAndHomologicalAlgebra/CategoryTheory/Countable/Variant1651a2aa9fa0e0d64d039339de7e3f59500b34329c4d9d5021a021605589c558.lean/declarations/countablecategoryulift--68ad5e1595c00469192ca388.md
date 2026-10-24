# countableCategoryUlift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:112e299b74ce39fe913e0aeb0762cb382eb2c9b1bebc3d0cbb9b90caeaa48bd8",
  "kind": "instance",
  "lexical_name": "countableCategoryUlift",
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
  "slug": "countablecategoryulift--68ad5e1595c00469192ca388",
  "source": {
    "blob": "3208a69b31545c5a832708fcf62b384bdf3b74ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 99,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variant1651a2aa9fa0e0d64d039339de7e3f59500b34329c4d9d5021a021605589c558.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:68ad5e1595c00469192ca3882e7e70765c1c66ed47ea277b38a2ede41b1b3307",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variant1651a2aa9fa0e0d64d039339de7e3f59500b34329c4d9d5021a021605589c558.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:112e299b74ce39fe913e0aeb0762cb382eb2c9b1bebc3d0cbb9b90caeaa48bd8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance countableCategoryUlift {J : Type v} [Category.{v} J] [CountableCategory J] :
    CountableCategory.{max w v} (ULiftHom.{w, max w v} (ULift.{w, v} J)) where
  countableObj := instCountableULift
  countableHom := fun i j =>
    have : Countable ((ULiftHom.objDown i).down ⟶ (ULiftHom.objDown j).down) := inferInstance
    instCountableULift

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variant1651a2aa9fa0e0d64d039339de7e3f59500b34329c4d9d5021a021605589c558.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variant1651a2aa9fa0e0d64d039339de7e3f59500b34329c4d9d5021a021605589c558.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3208a69b31545c5a832708fcf62b384bdf3b74ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
