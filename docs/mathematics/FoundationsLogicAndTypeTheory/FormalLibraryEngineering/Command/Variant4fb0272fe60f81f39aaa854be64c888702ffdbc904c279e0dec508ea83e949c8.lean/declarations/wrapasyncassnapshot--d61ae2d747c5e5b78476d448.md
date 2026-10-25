# wrapAsyncAsSnapshot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c8fa17549929327bdcf0bae3b9b5480bad6136f34e02b281559f7777528d44dd",
  "kind": "def",
  "lexical_name": "wrapAsyncAsSnapshot",
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
  "slug": "wrapasyncassnapshot--d61ae2d747c5e5b78476d448",
  "source": {
    "blob": "64dd38ae66f95db8e5109b5b0e7ec2e229855a95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 365,
    "line": 325,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Command/Variant4fb0272fe60f81f39aaa854be64c888702ffdbc904c279e0dec508ea83e949c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d61ae2d747c5e5b78476d448dd10c75b7979956b1783c7f1d8ab5e918dd5d0b6",
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

Occurrence: `declaration:c8fa17549929327bdcf0bae3b9b5480bad6136f34e02b281559f7777528d44dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 325–365.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def wrapAsyncAsSnapshot {α : Type} (act : α → CommandElabM Unit) (cancelTk? : Option IO.CancelToken)
    (desc : String := by exact decl_name%.toString) :
    CommandElabM (α → BaseIO SnapshotTree) := do
  let f ← wrapAsync (cancelTk? := cancelTk?) fun a => do
    IO.FS.withIsolatedStreams (isolateStderr := Core.stderrAsMessages.get (← getOptions)) do
      let tid ← IO.getTID
      -- reset trace state and message log so as not to report them twice
      modify fun st => { st with
        messages := st.messages.markAllReported
        traceState := { tid }
        snapshotTasks := #[]
      }
      try
        withTraceNode `Elab.async (fun _ => return desc) do
          act a
      catch e =>
        logException e
      finally
        addTraceAsMessages
      get
  let ctx ← read
  return fun a => do
    match (← (f a).toBaseIO) with
    | .ok (output, st) =>
      let mut msgs := st.messages
      if !output.isEmpty then
        msgs := msgs.add {
          fileName := ctx.fileName
          severity := MessageSeverity.information
          pos      := ctx.fileMap.toPosition <| ctx.ref.getPos?.getD 0
          data     := output
        }
      return .mk {
        desc
        diagnostics := (← Language.Snapshot.Diagnostics.ofMessageLog msgs)
        traces := st.traceState
      } st.snapshotTasks
    -- interrupt or abort exception as `try catch` above should have caught any others
    | .error _ => default

@[inherit_doc Core.logSnapshotTask]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Command/Variant4fb0272fe60f81f39aaa854be64c888702ffdbc904c279e0dec508ea83e949c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Command/Variant4fb0272fe60f81f39aaa854be64c888702ffdbc904c279e0dec508ea83e949c8.lean#L325).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64dd38ae66f95db8e5109b5b0e7ec2e229855a95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
