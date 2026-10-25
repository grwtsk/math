# deprecated.moduleLinter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:015445b3073cddc1b2ead2abf867dc0b7bdcfb945d2320b69918dc3d190f7c31",
  "kind": "def",
  "lexical_name": "deprecated.moduleLinter",
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
  "slug": "deprecated-modulelinter--8119274f1ba5191ba602d949",
  "source": {
    "blob": "4c06dd7f4a94c8363ba5c038064f4ae9b82f1e40",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 136,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedModule/Variantec231e298d0d59a554f9fe72b93af2176f675d6f0518dcde5a44b6a6066bba80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8119274f1ba5191ba602d949c8baaf7a574dc7b64113c2db3be97c52308ec039",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedModule/Variantec231e298d0d59a554f9fe72b93af2176f675d6f0518dcde5a44b6a6066bba80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:015445b3073cddc1b2ead2abf867dc0b7bdcfb945d2320b69918dc3d190f7c31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def deprecated.moduleLinter : Linter where run := withSetOptionIn fun stx ↦ do
  unless Linter.getLinterValue linter.deprecated.module (← getOptions) do
    return
  if (← get).messages.hasErrors then
    return
  let laterCommand ← IsLaterCommand.get
  -- If `laterCommand` is `true`, then the linter already did what it was supposed to do.
  -- If `laterCommand` is `false` at the end of file, the file is an import-only file and
  -- the linter should not do anything.
  if laterCommand || (Parser.isTerminalCommand stx && !laterCommand) then
    return
  IsLaterCommand.set true
  let deprecations := deprecatedModuleExt.getState (← getEnv)
  if deprecations.isEmpty then
    return
  if stx.isOfKind ``Linter.deprecated_modules then return
  let fm ← getFileMap
  let (importStx, _) ←
    Parser.parseHeader { input := fm.source, fileName := ← getFileName, fileMap := fm }
  let modulesWithNames := (getImportIds importStx).map fun i ↦ (i, i.getId)
  for (i, preferred, msg?) in deprecations do
    for (nmStx, _) in modulesWithNames.filter (·.2 == i) do
      Linter.logLint linter.deprecated.module nmStx
        m!"{msg?.getD ""}\n\
          '{nmStx}' has been deprecated: please replace this import by\n\n\
          {String.join (preferred.foldl (·.push s!"import {·}\n") #[]).toList}"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedModule/Variantec231e298d0d59a554f9fe72b93af2176f675d6f0518dcde5a44b6a6066bba80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedModule/Variantec231e298d0d59a554f9fe72b93af2176f675d6f0518dcde5a44b6a6066bba80.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c06dd7f4a94c8363ba5c038064f4ae9b82f1e40` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
