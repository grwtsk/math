# addTraceNode

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4a1569607df9a08dcc5621db8526e5382b4dc214fff4907aebff235df508a08d",
  "kind": "def",
  "lexical_name": "addTraceNode",
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
  "slug": "addtracenode--b299e5439612446690bbcaa3",
  "source": {
    "blob": "cb6aea1431eef54da8295c675a31bcebb2ef16b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 175,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variantb97a87dd10e31447a3da7c0da6dfb73d2ca20eb77268ef8cc4b5b8811283afe3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b299e5439612446690bbcaa3ee320aa79938ab171137bfcec7c6c05015038389",
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

Occurrence: `declaration:4a1569607df9a08dcc5621db8526e5382b4dc214fff4907aebff235df508a08d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def addTraceNode (oldTraces : PersistentArray TraceElem)
    (data : TraceData) (ref : Syntax) (msg : MessageData) : m Unit :=
  withRef ref do
  let msg := .trace data msg ((← getTraces).toArray.map (·.msg))
  let msg ← addMessageContext msg
  modifyTraces fun _ =>
    oldTraces.push { ref, msg }

register_builtin_option trace.profiler : Bool := {
  defValue := false
  descr    :=
    "activate nested traces with execution time above `trace.profiler.threshold` and annotate with \
    time"
}

register_builtin_option trace.profiler.threshold : Nat := {
  defValue := 10
  descr    :=
    "threshold in milliseconds (or heartbeats if `trace.profiler.useHeartbeats` is true), \
    traces below threshold will not be activated"
}

register_builtin_option trace.profiler.useHeartbeats : Bool := {
  defValue := false
  descr    :=
    "if true, measure and report heartbeats instead of seconds"
}

register_builtin_option trace.profiler.output : String := {
  defValue := ""
  descr    :=
    "output `trace.profiler` data in Firefox Profiler-compatible format to given file path"
}

register_builtin_option trace.profiler.serve : Bool := {
  defValue := false
  descr    :=
    "serve the `trace.profiler` data over HTTP and open it in `https://profiler.firefox.com`; \
     blocks until interrupted with Ctrl+C"
}

/--
True if the `trace.profiler` data should be retained for export - either to a file
(`trace.profiler.output`) or via the local HTTP server (`trace.profiler.serve`). When true, code
that would otherwise consume the trace state as messages must leave it intact.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variantb97a87dd10e31447a3da7c0da6dfb73d2ca20eb77268ef8cc4b5b8811283afe3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variantb97a87dd10e31447a3da7c0da6dfb73d2ca20eb77268ef8cc4b5b8811283afe3.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb6aea1431eef54da8295c675a31bcebb2ef16b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
