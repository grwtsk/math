# missingInitImports

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9f6d8d0ea0c864dbd1066c3a297929c8b6f63a466cefb40a5307ecf4c6d9f473",
  "kind": "def",
  "lexical_name": "missingInitImports",
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
  "slug": "missinginitimports--d14623eb36ea900dd2015350",
  "source": {
    "blob": "bbebb11ba1907c4f84ceadb3f716161efd21c712",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 96,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LintStyle/Variant9026d0730e48d31316535f213d399accf63c772859e52aea9d8568d6250e6218.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d14623eb36ea900dd2015350c085a57431275ecb9d52d10957e05cd33d0b9a87",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LintStyle/Variant9026d0730e48d31316535f213d399accf63c772859e52aea9d8568d6250e6218.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9f6d8d0ea0c864dbd1066c3a297929c8b6f63a466cefb40a5307ecf4c6d9f473`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def missingInitImports (opts : Lean.Options) : IO Nat := do
  unless getLinterValue linter.checkInitImports opts do return 0

  -- Find any file in the Mathlib directory which does not contain any Mathlib import.
  -- We simply parse `Mathlib.lean`, as CI ensures this file is up to date.
  let allModuleNames := eraseExplicitImports (← findImports "Mathlib.lean")
  let mut modulesWithoutMathlibImports := #[]
  let mut importsHeaderLinter := #[]
  for module in allModuleNames do
    let path := System.mkFilePath (module.components.map fun n ↦ n.toString)|>.addExtension "lean"
    let imports ← findImports path
    let hasNoMathlibImport := imports.all fun name ↦ name.getRoot != `Mathlib
    if hasNoMathlibImport then
      modulesWithoutMathlibImports := modulesWithoutMathlibImports.push module
    if imports.contains `Mathlib.Tactic.Linter.Header then
      importsHeaderLinter := importsHeaderLinter.push module

  -- Every file importing the `header` linter should be imported in `Mathlib/Init.lean` itself.
  -- (Downstream files should import `Mathlib.Init` and not the header linter.)
  -- The only exception are auto-generated import-only files.
  let initImports ← findImports ("Mathlib" / "Init.lean")
  let mismatch := importsHeaderLinter.filter (fun mod ↦
    ![`Mathlib, `Mathlib.Tactic, `Mathlib.Init].contains mod && !initImports.contains mod)
    -- This file is transitively imported by `Mathlib.Init`.
    |>.erase `Mathlib.Tactic.DeclarationNames
  if mismatch.size > 0 then
    IO.eprintln s!"error: the following {mismatch.size} module(s) import the `header` linter \
      directly, but should import Mathlib.Init instead: {mismatch}\n\
      The `header` linter is included in Mathlib.Init, and every file in Mathlib \
      should import Mathlib.Init.\nPlease adjust the imports accordingly."
    return mismatch.size

  -- Now, it only remains to check that every module (except for the Header linter itself)
  -- imports some file in Mathlib.
  let missing := modulesWithoutMathlibImports.erase `Mathlib.Tactic.Linter.Header
    -- This file is imported by `Mathlib/Tactic/Linter/Header.lean`.
    |>.erase `Mathlib.Tactic.Linter.DirectoryDependency
  if missing.size > 0 then
    IO.eprintln s!"error: the following {missing.size} module(s) do not import Mathlib.Init: \
      {missing}"
    return missing.size
  return 0

/-- Verify that every file in the `scripts` directory is documented in `scripts/README.md` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LintStyle/Variant9026d0730e48d31316535f213d399accf63c772859e52aea9d8568d6250e6218.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LintStyle/Variant9026d0730e48d31316535f213d399accf63c772859e52aea9d8568d6250e6218.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbebb11ba1907c4f84ceadb3f716161efd21c712` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
