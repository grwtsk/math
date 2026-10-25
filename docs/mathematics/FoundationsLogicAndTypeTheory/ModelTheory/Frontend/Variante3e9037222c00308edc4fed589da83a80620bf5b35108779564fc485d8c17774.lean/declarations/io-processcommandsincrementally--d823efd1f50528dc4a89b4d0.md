# IO.processCommandsIncrementally

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b4f6f82d7e96581385b9d75de9b0b1edcb9676fc169cc9b05dc29f25e74f22f1",
  "kind": "def",
  "lexical_name": "IO.processCommandsIncrementally",
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
  "slug": "io-processcommandsincrementally--d823efd1f50528dc4a89b4d0",
  "source": {
    "blob": "965a761b628ebc7b7c780c7a6d12fde6e2e9b339",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 99,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Frontend/Variante3e9037222c00308edc4fed589da83a80620bf5b35108779564fc485d8c17774.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d823efd1f50528dc4a89b4d01377339ed60c2630e4c24a87a9882a3ec9ddf839",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Frontend/Variante3e9037222c00308edc4fed589da83a80620bf5b35108779564fc485d8c17774.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b4f6f82d7e96581385b9d75de9b0b1edcb9676fc169cc9b05dc29f25e74f22f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def IO.processCommandsIncrementally (inputCtx : Parser.InputContext)
    (parserState : Parser.ModuleParserState) (commandState : Command.State)
    (old? : Option IncrementalState) :
    BaseIO IncrementalState := do
  let task ← Language.Lean.processCommands inputCtx parserState commandState
    (old?.map fun old => (old.inputCtx, old.initialSnap))
  go task.get task #[]
where
  go initialSnap t commands :=
    let snap := t.get
    let commands := commands.push snap
    if let some next := snap.nextCmdSnap? then
      go initialSnap next.task commands
    else
      -- Opting into reuse also enables incremental reporting, so make sure to collect messages from
      -- all snapshots
      let messages := toSnapshotTree initialSnap
        |>.getAll.map (·.diagnostics.msgLog)
        |>.foldl (· ++ ·) {}
      -- In contrast to messages, we should collect info trees only from the top-level command
      -- snapshots as they subsume any info trees reported incrementally by their children.
      let trees := commands.map (·.elabSnap.infoTreeSnap.get.infoTree?) |>.filterMap id |>.toPArray'
      return {
        commandState := { snap.elabSnap.resultSnap.get.cmdState with messages, infoState.trees := trees }
        parserState := snap.parserState
        cmdPos := snap.parserState.pos
        commands := commands.map (·.stx)
        inputCtx, initialSnap
      }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Frontend/Variante3e9037222c00308edc4fed589da83a80620bf5b35108779564fc485d8c17774.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Frontend/Variante3e9037222c00308edc4fed589da83a80620bf5b35108779564fc485d8c17774.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `965a761b628ebc7b7c780c7a6d12fde6e2e9b339` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
