# addTraceAsMessages

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:80d2de0da24331fa1b471c78aac24251c6f1a33c7d51661cf8cf4edd00c6d029",
  "kind": "def",
  "lexical_name": "addTraceAsMessages",
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
  "slug": "addtraceasmessages--f34189a65304d38f9d7b5712",
  "source": {
    "blob": "cb6aea1431eef54da8295c675a31bcebb2ef16b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 476,
    "line": 455,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variantb97a87dd10e31447a3da7c0da6dfb73d2ca20eb77268ef8cc4b5b8811283afe3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f34189a65304d38f9d7b5712a3841e8c754211ac9875fcb6cc7ee637abc65ce3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variantb97a87dd10e31447a3da7c0da6dfb73d2ca20eb77268ef8cc4b5b8811283afe3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:80d2de0da24331fa1b471c78aac24251c6f1a33c7d51661cf8cf4edd00c6d029`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 455–476.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def addTraceAsMessages [Monad m] [MonadRef m] [MonadLog m] [MonadTrace m] : m Unit := do
  if trace.profiler.isExporting (← getOptions) then
    -- do not add trace messages if the profile is being exported (`trace.profiler.output` or
    -- `trace.profiler.serve`) as it would be redundant, pretty printing the trace messages is
    -- expensive, and `getResetTraces` would consume the data we want to export
    return
  let traces ← getResetTraces
  if traces.isEmpty then
    return
  let mut pos2traces : Std.HashMap (String.Pos.Raw × String.Pos.Raw) (Array MessageData) := ∅
  for traceElem in traces do
    let ref := replaceRef traceElem.ref (← getRef)
    let pos := ref.getPos?.getD 0
    let endPos := ref.getTailPos?.getD pos
    pos2traces := pos2traces.insert (pos, endPos) <| pos2traces.getD (pos, endPos) #[] |>.push traceElem.msg
  let traces' := pos2traces.toArray.qsort fun ((a, _), _) ((b, _), _) => a < b
  for ((pos, endPos), traceMsg) in traces' do
    -- cmdline and info view differ in how they insert newlines in between trace nodes so we just
    -- put them in a synthetic root node for now and let the rendering functions handle this case
    let data := .tagged `trace <| .trace { cls := .anonymous } .nil traceMsg
    logMessage <| Elab.mkMessageCore (← getFileName) (← getFileMap) data .information pos endPos

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variantb97a87dd10e31447a3da7c0da6dfb73d2ca20eb77268ef8cc4b5b8811283afe3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variantb97a87dd10e31447a3da7c0da6dfb73d2ca20eb77268ef8cc4b5b8811283afe3.lean#L455).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb6aea1431eef54da8295c675a31bcebb2ef16b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
