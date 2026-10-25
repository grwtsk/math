# helpSubCommand

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:458a343739e1060d4411e1e7c6798f4557f6d08534f93bd2dc90048f01500663",
  "kind": "def",
  "lexical_name": "helpSubCommand",
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
  "slug": "helpsubcommand--4d32a1521c9f33a3c3108f5b",
  "source": {
    "blob": "1ed114227548a239dbfd53ed1d575436b953f746",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 64,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extensions/Variant1560fcd5ffe33ac7d0ac2e4470430d20f814fff53d516ea40596721ae5be5031.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4d32a1521c9f33a3c3108f5b4fd14dafef99fbc8729912821407c5a3c3dff46b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extensions/Variant1560fcd5ffe33ac7d0ac2e4470430d20f814fff53d516ea40596721ae5be5031.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:458a343739e1060d4411e1e7c6798f4557f6d08534f93bd2dc90048f01500663`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  def helpSubCommand : Extension := {
      priority := 0
      extend   := fun cmd =>
        let helpCmd := .mk
          (parent      := cmd)
          (name        := "help")
          (version?    := none)
          (description := "Prints this message.")
          (run         := fun _ => pure 0)
        -- adding it once without a command handler ensures that the help will include
        -- the help subcommand itself
        let cmd := cmd.update (subCmds := cmd.subCmds.push helpCmd)
        let helpCmd := helpCmd.update (run := fun _ => do
          cmd.toFullCmdWithoutExtensions.printHelp
          return 0)
        let subCmds := cmd.subCmds.set! (cmd.subCmds.size - 1) helpCmd
        cmd.update (subCmds := subCmds)
    }

  /-- Adds a `version` subcommand. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extensions/Variant1560fcd5ffe33ac7d0ac2e4470430d20f814fff53d516ea40596721ae5be5031.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extensions/Variant1560fcd5ffe33ac7d0ac2e4470430d20f814fff53d516ea40596721ae5be5031.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ed114227548a239dbfd53ed1d575436b953f746` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
