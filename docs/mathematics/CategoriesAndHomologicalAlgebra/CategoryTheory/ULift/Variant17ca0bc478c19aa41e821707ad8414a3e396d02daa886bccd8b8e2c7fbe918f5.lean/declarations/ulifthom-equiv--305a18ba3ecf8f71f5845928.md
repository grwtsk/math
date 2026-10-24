# ULiftHom.equiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6cd4272031cf444b67b5364dd8bfd3f0010ab76b75556730dc02df93d6931d5f",
  "kind": "def",
  "lexical_name": "ULiftHom.equiv",
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
  "slug": "ulifthom-equiv--305a18ba3ecf8f71f5845928",
  "source": {
    "blob": "d5e9a5b1c056b3b74513f40416a30c88026cb621",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 117,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant17ca0bc478c19aa41e821707ad8414a3e396d02daa886bccd8b8e2c7fbe918f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:305a18ba3ecf8f71f5845928d3e697b57551fcf3c86091646c7a3decee187cd9",
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

Occurrence: `declaration:6cd4272031cf444b67b5364dd8bfd3f0010ab76b75556730dc02df93d6931d5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ULiftHom.equiv : C ≌ ULiftHom C where
  functor := ULiftHom.up
  inverse := ULiftHom.down
  unitIso := NatIso.ofComponents fun _ => eqToIso rfl
  counitIso := NatIso.ofComponents fun _ => eqToIso rfl

end ULiftHom

/-- `AsSmall C` is a small category equivalent to `C`.
  More specifically, if `C : Type u` is endowed with `Category.{v} C`, then
  `AsSmall.{w} C : Type (max w v u)` is endowed with an instance of a small category.

  The objects and morphisms of `AsSmall C` are defined by applying `ULift` to the
  objects and morphisms of `C`.

  Note: We require a category instance for this definition in order to have direct
  access to the universe level `v`.
-/
@[nolint unusedArguments]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant17ca0bc478c19aa41e821707ad8414a3e396d02daa886bccd8b8e2c7fbe918f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant17ca0bc478c19aa41e821707ad8414a3e396d02daa886bccd8b8e2c7fbe918f5.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5e9a5b1c056b3b74513f40416a30c88026cb621` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
