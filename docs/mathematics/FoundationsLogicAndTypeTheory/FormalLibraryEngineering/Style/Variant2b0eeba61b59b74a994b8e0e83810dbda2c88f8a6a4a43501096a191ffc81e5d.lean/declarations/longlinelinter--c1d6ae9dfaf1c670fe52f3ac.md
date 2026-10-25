# longLineLinter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1b7758599b1c7033db9e1b6ab08cf665f260c0807d9b6b04bbfc6c0c3dd2522d",
  "kind": "def",
  "lexical_name": "longLineLinter",
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
  "slug": "longlinelinter--c1d6ae9dfaf1c670fe52f3ac",
  "source": {
    "blob": "6bbb9be3fa0eb628880e7cfea3837a97e7614756",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 480,
    "line": 446,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variant2b0eeba61b59b74a994b8e0e83810dbda2c88f8a6a4a43501096a191ffc81e5d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c1d6ae9dfaf1c670fe52f3ac5205fc63257ec7fae892f46ad95abc723025cef9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variant2b0eeba61b59b74a994b8e0e83810dbda2c88f8a6a4a43501096a191ffc81e5d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1b7758599b1c7033db9e1b6ab08cf665f260c0807d9b6b04bbfc6c0c3dd2522d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 446–480.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def longLineLinter : Linter where run := withSetOptionIn fun stx ↦ do
    unless getLinterValue linter.style.longLine (← getLinterOptions) do
      return
    if (← MonadState.get).messages.hasErrors then
      return
    -- The linter ignores the `#guard_msgs` command, in particular its doc-string.
    -- The linter still lints the message guarded by `#guard_msgs`.
    if stx.isOfKind ``Lean.guardMsgsCmd then
      return
    if stx.isOfKind ``Lean.Parser.Module.header then return
    -- if the linter reached the end of the file, then we scan the `import` syntax instead
    let stx ← do
      if stx.isOfKind ``Lean.Parser.Command.eoi then
        let fileMap ← getFileMap
        -- `impMods` is the syntax for the modules imported in the current file
        let (impMods, _) ← Parser.parseHeader
          { inputString := fileMap.source, fileName := ← getFileName, fileMap := fileMap }
        pure impMods.raw
      else pure stx
    let sstr := stx.getSubstring?
    let fm ← getFileMap
    let maxLineLength := linter.style.longLine.maxLineLength.get (← getOptions)
    let longLines := ((sstr.getD default).splitOn "\n").filter fun line ↦
      (maxLineLength < (fm.toPosition line.stopPos).column)
    for line in longLines do
      if (line.splitOn "http").length ≤ 1 && !(isImport line.toString) then
        let stringMsg := if line.contains '"' then
          "\nYou can use \"string gaps\" to format long strings: within a string quotation, \
          using a '\\' at the end of a line allows you to continue the string on the following \
          line, removing all intervening whitespace."
        else ""
        Linter.logLint linter.style.longLine
          (.ofRange ⟨(line.drop maxLineLength).startPos, line.stopPos⟩)
          m!"This line exceeds the {maxLineLength} character limit, please shorten it!{stringMsg}"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variant2b0eeba61b59b74a994b8e0e83810dbda2c88f8a6a4a43501096a191ffc81e5d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variant2b0eeba61b59b74a994b8e0e83810dbda2c88f8a6a4a43501096a191ffc81e5d.lean#L446).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6bbb9be3fa0eb628880e7cfea3837a97e7614756` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
