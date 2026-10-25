# elabCommandTopLevel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:369c2c98987ace31be6010d75e81aa13230f3d9d6127c5bdb0d0a9f3ef46f49c",
  "kind": "def",
  "lexical_name": "elabCommandTopLevel",
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
  "slug": "elabcommandtoplevel--4c46027c8c0506f47a703831",
  "source": {
    "blob": "64dd38ae66f95db8e5109b5b0e7ec2e229855a95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 675,
    "line": 644,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Command/Variant4fb0272fe60f81f39aaa854be64c888702ffdbc904c279e0dec508ea83e949c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4c46027c8c0506f47a7038312448727f8efc343cef859c75147deffd920eb15c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Command/Variant4fb0272fe60f81f39aaa854be64c888702ffdbc904c279e0dec508ea83e949c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:369c2c98987ace31be6010d75e81aa13230f3d9d6127c5bdb0d0a9f3ef46f49c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 644–675.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabCommandTopLevel (stx : Syntax) (cmds : Array Syntax := #[]) : CommandElabM Unit := withRef stx do profileitM Exception "elaboration" (← getOptions) do
  withReader ({ · with suppressElabErrors :=
    stx.hasMissing && !showPartialSyntaxErrors.get (← getOptions) }) do
  -- initialize quotation context using hash of input string
  let ss? := stx.getSubstring? (withLeading := false) (withTrailing := false)
  withInitQuotContext (ss?.map (hash ·.toString.trimAscii.copy)) do
  -- Reset messages and info state, which are both per-command
  modify fun st => { st with messages := {}, infoState := { enabled := st.infoState.enabled } }
  try
    -- We should *not* factor out `elabCommand`'s `withLogging` to here since it would make its error
    -- recovery more coarse. In particular, if `c` in `set_option ... in $c` fails, the remaining
    -- `end` command of the `in` macro would be skipped and the option would be leaked to the outside!
    elabCommand stx
  finally
    -- This call could be placed at a prior point in this function except that it
    -- would then record uses of `#guard_msgs` before that elaborator is run, which
    -- would increase noise in related tests. Thus all other things being equal, we
    -- place it here.
    recordUsedSyntaxKinds stx
    -- Make sure `snap?` is definitely resolved; we do not use it for reporting as `#guard_msgs` may
    -- be the caller of this function and add new messages and info trees
    if let some snap := (← read).snap? then
      snap.new.resolve default

  -- Run the linters, unless `#guard_msgs` is present, which is special and runs `elabCommandTopLevel` itself,
  -- so it is a "super-top-level" command. This is the only command that does this, so we just special case it here
  -- rather than engineer a general solution.
  unless (stx.find? (·.isOfKind ``Lean.guardMsgsCmd)).isSome do
    withLogging do
      runLintersAsync stx cmds

/-- Adapt a syntax transformation to a regular, command-producing elaborator. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Command/Variant4fb0272fe60f81f39aaa854be64c888702ffdbc904c279e0dec508ea83e949c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Command/Variant4fb0272fe60f81f39aaa854be64c888702ffdbc904c279e0dec508ea83e949c8.lean#L644).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64dd38ae66f95db8e5109b5b0e7ec2e229855a95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
