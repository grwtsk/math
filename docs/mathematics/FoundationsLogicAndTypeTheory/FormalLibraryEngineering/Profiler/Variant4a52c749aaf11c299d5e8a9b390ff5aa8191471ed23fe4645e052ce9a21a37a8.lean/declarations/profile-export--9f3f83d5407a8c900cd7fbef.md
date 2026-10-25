# Profile.export

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ea204c01b83bf90b8c425df1e548b985264a972c17d55e3dc9c5b2866f072fbb",
  "kind": "def",
  "lexical_name": "Profile.export",
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
  "slug": "profile-export--9f3f83d5407a8c900cd7fbef",
  "source": {
    "blob": "cd0d7668cdb9b297b9b9ea1d793b4ce4e993e55b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 320,
    "line": 286,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Profiler/Variant4a52c749aaf11c299d5e8a9b390ff5aa8191471ed23fe4645e052ce9a21a37a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9f3f83d5407a8c900cd7fbef4a030a1d32243a3a5df681c35517fb6a237f7d6c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Profiler/Variant4a52c749aaf11c299d5e8a9b390ff5aa8191471ed23fe4645e052ce9a21a37a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ea204c01b83bf90b8c425df1e548b985264a972c17d55e3dc9c5b2866f072fbb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 286–320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Profile.export (name : String) (startTime : Float) (traceStates : Array TraceState)
    (opts : Options) : IO Profile := do
  let tids := traceStates.groupByKey (·.tid)
  let stopTime := (← IO.monoNanosNow).toFloat / 1000000000
  let threads ← tids.toArray.qsort (fun (t1, _) (t2, _) => t1 < t2) |>.mapM fun (tid, traceStates) => do
    let mut thread := { Thread.new (if tid = 0 then name else toString tid) with isMainThread := tid = 0 }
    let traces := traceStates.map (·.traces.toArray)
    -- sort traces of thread by start time
    let traces := traces.qsort (fun tr1 tr2 =>
      let f tr := tr[0]? |>.bind (getFirstStart? ·.msg) |>.getD 0
      f tr1 < f tr2)
    let mut traces := traces.flatMap id |>.map (·.msg)
    if tid = 0 then
      -- wrap entire trace up to current time in `runFrontend` node
      traces := #[.trace {
        cls := `runFrontend, startTime, stopTime,
        collapsed := true } "" traces]
    for trace in traces do
      if thread.lastTime > 0.0 then
        if let some nextStart := getFirstStart? trace then
          -- add 0% CPU run time slice between traces
          thread := { thread with samples := {
            stack := thread.samples.stack.push 0 |>.push 0
            time := thread.samples.time.push thread.lastTime |>.push nextStart
            weight := thread.samples.weight.push 0.0 |>.push 0.0
            threadCPUDelta := thread.samples.threadCPUDelta.push 0.0 |>.push 0.0
            length := thread.samples.length + 2
          } }
      thread ← addTrace (Lean.trace.profiler.output.pp.get opts) thread trace
    return thread
  return {
    «meta» := { startTime, categories }
    threads := threads.map (·.toThread)
  }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Profiler/Variant4a52c749aaf11c299d5e8a9b390ff5aa8191471ed23fe4645e052ce9a21a37a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Profiler/Variant4a52c749aaf11c299d5e8a9b390ff5aa8191471ed23fe4645e052ce9a21a37a8.lean#L286).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd0d7668cdb9b297b9b9ea1d793b4ce4e993e55b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
