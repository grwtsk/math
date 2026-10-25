# withTraceNodeBefore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d65003249980122f83cebb5bbd69ee6f5aa7b0e39c4b5d18de4d90cbeeffd9d2",
  "kind": "def",
  "lexical_name": "withTraceNodeBefore",
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
  "slug": "withtracenodebefore--32b082cb66e86ccb09953bc9",
  "source": {
    "blob": "cb6aea1431eef54da8295c675a31bcebb2ef16b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 454,
    "line": 423,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variantb97a87dd10e31447a3da7c0da6dfb73d2ca20eb77268ef8cc4b5b8811283afe3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:32b082cb66e86ccb09953bc9d248d4eee6d372304479afa9820cf4983788b5ab",
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

Occurrence: `declaration:d65003249980122f83cebb5bbd69ee6f5aa7b0e39c4b5d18de4d90cbeeffd9d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 423–454.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def withTraceNodeBefore [MonadRef m] [AddMessageContext m] [MonadOptions m]
    [always : MonadAlwaysExcept ε m] [MonadLiftT BaseIO m] [ExceptToTraceResult ε α] (cls : Name)
    (msg : Unit → m MessageData) (k : m α) (collapsed := true) (tag := "") : m α := do
  let opts ← getOptions
  if !opts.hasTrace then
    return (← k)
  let clsEnabled ← isTracingEnabledFor cls
  unless clsEnabled || trace.profiler.get opts do
    return (← k)
  let oldTraces ← getResetTraces
  let ref ← getRef
  -- make sure to preserve context *before* running `k`
  let msg ← withRef ref do addMessageContext (← msg ())
  let resStartStop ← withStartStop opts <| let _ := always.except; observing k
  postCallback opts clsEnabled oldTraces ref msg resStartStop
where
  postCallback (opts : Options) (clsEnabled oldTraces ref msg resStartStop) : m α := do
    let _ := always.except
    let (res, start, stop) := resStartStop
    let aboveThresh := trace.profiler.get opts &&
      stop - start > trace.profiler.threshold.unitAdjusted opts
    unless clsEnabled || aboveThresh do
      modifyTraces (oldTraces ++ ·)
      return (← MonadExcept.ofExcept res)
    let result := res.toTraceResult
    let mut msg := msg
    let mut data : TraceData := { cls, collapsed, tag, result? := some result }
    if trace.profiler.get opts then
      data := { data with startTime := start, stopTime := stop }
    addTraceNode oldTraces data ref msg
    MonadExcept.ofExcept res

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variantb97a87dd10e31447a3da7c0da6dfb73d2ca20eb77268ef8cc4b5b8811283afe3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variantb97a87dd10e31447a3da7c0da6dfb73d2ca20eb77268ef8cc4b5b8811283afe3.lean#L423).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb6aea1431eef54da8295c675a31bcebb2ef16b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
