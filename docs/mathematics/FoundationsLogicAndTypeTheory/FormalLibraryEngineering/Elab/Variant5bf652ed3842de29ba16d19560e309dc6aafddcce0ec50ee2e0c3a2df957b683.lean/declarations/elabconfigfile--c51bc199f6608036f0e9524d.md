# elabConfigFile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:92c23025e79c2c0b3f30d6c1e38ac26cfed650030540c032a1b1c866e73d0083",
  "kind": "def",
  "lexical_name": "elabConfigFile",
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
  "slug": "elabconfigfile--c51bc199f6608036f0e9524d",
  "source": {
    "blob": "6eb11dac277c2348131fdf334d007807196c6be6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 69,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant5bf652ed3842de29ba16d19560e309dc6aafddcce0ec50ee2e0c3a2df957b683.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c51bc199f6608036f0e9524d20c339ddfa815699a7f6322298803fc919f5117f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant5bf652ed3842de29ba16d19560e309dc6aafddcce0ec50ee2e0c3a2df957b683.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:92c23025e79c2c0b3f30d6c1e38ac26cfed650030540c032a1b1c866e73d0083`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabConfigFile
  (pkgIdx : Nat) (pkgName : Name) (pkgDir : FilePath) (lakeOpts : NameMap String)
  (leanOpts := Options.empty) (configFile := pkgDir / defaultLeanConfigFile)
: LogIO Environment := do

  -- Read file and initialize environment
  let input ← IO.FS.readFile configFile
  let inputCtx := Parser.mkInputContext input configFile.toString
  let (header, parserState, messages) ← Parser.parseHeader inputCtx
  let (env, messages) ← StateT.run (processHeader header leanOpts inputCtx) messages
  let env := env.setMainModule configModuleName

  -- Configure extensions
  let env := nameExt.setState env ⟨pkgIdx, pkgName⟩
  let env := dirExt.setState env pkgDir
  let env := optsExt.setState env lakeOpts

  -- Elaborate File
  let commandState := Elab.Command.mkState env messages leanOpts
  let s ← Elab.IO.processCommands inputCtx parserState commandState

  -- Log messages
  s.commandState.messages.forM (logMessage ·)

  -- Check result
  if s.commandState.messages.hasErrors then
    error s!"{configFile}: package configuration has errors"
  else
    return s.commandState.env

set_option compiler.ignoreBorrowAnnotation true in
/--
`Lean.Kernel.Environment.add` is now private, this is an exported helper wrapping it for
`Lean.Environment`.
-/
@[extern "lake_environment_add"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant5bf652ed3842de29ba16d19560e309dc6aafddcce0ec50ee2e0c3a2df957b683.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant5bf652ed3842de29ba16d19560e309dc6aafddcce0ec50ee2e0c3a2df957b683.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6eb11dac277c2348131fdf334d007807196c6be6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
