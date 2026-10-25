# testModulesNotUpperCamelCase

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9f8e87c8c302a3699fd03a7558674fde0edcf30040cd8edabd4e176b5fc81cba",
  "kind": "def",
  "lexical_name": "testModulesNotUpperCamelCase",
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
  "slug": "testmodulesnotuppercamelcase--3641b5518b9e1f8d7f6e68c2",
  "source": {
    "blob": "0c198e6d28922d3e4ed2514b4f61bf9ac5ab0592",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 10,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModuleCasing/Variantda33ce11f2da4f313851a8cd5d3adb6882254b6bd22d3de863f4c977031535ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3641b5518b9e1f8d7f6e68c2a5a2d837089fef1854f1b8453b795874c7669dfc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModuleCasing/Variantda33ce11f2da4f313851a8cd5d3adb6882254b6bd22d3de863f4c977031535ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9f8e87c8c302a3699fd03a7558674fde0edcf30040cd8edabd4e176b5fc81cba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 10–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def testModulesNotUpperCamelCase : IO Unit := do
  -- Explicitly enable the linter, although it is enabled by default.
  let opts : Lean.Options := linter.modulesUpperCamelCase.set {} true

  assert!((← modulesNotUpperCamelCase opts #[]) == 0)
  assert!((← modulesNotUpperCamelCase opts #[`Mathlib.Fine]) == 0)
  assert!((← modulesNotUpperCamelCase opts #[`Mathlib.AlsoFine_]) == 0)
  assert!((← modulesNotUpperCamelCase opts #[`Mathlib.NotFine_.Foo]) == 1)

  assert!((← modulesNotUpperCamelCase opts #[`bad_module]) == 1)
  assert!((← modulesNotUpperCamelCase opts #[`GoodName, `bad_module, `bad_module]) == 2)
  assert!((← modulesNotUpperCamelCase opts #[`Mathlib.BadModule__]) == 1)
  assert!((← modulesNotUpperCamelCase opts #[`Mathlib.lowerCase]) == 1)
  assert!((← modulesNotUpperCamelCase opts #[`Mathlib.snake_case]) == 1)

/--
info: error: module name 'Mathlib.NotFine_.Foo' is not in 'UpperCamelCase': it should be 'Mathlib.NotFine.Foo' instead
error: module name 'bad_module' is not in 'UpperCamelCase': it should be 'BadModule' instead
error: module name 'bad_module' is not in 'UpperCamelCase': it should be 'BadModule' instead
error: module name 'bad_module' is not in 'UpperCamelCase': it should be 'BadModule' instead
error: module name 'Mathlib.BadModule__' is not in 'UpperCamelCase': it should be 'Mathlib.BadModule_' instead
error: module name 'Mathlib.lowerCase' is not in 'UpperCamelCase': it should be 'Mathlib.LowerCase' instead
error: module name 'Mathlib.snake_case' is not in 'UpperCamelCase': it should be 'Mathlib.SnakeCase' instead
-/
#guard_msgs in
#eval testModulesNotUpperCamelCase
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModuleCasing/Variantda33ce11f2da4f313851a8cd5d3adb6882254b6bd22d3de863f4c977031535ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModuleCasing/Variantda33ce11f2da4f313851a8cd5d3adb6882254b6bd22d3de863f4c977031535ee.lean#L10).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c198e6d28922d3e4ed2514b4f61bf9ac5ab0592` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
