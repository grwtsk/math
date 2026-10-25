# Anonymous builtin_initialize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a67812c246f6361f16ab3f18fe4798b721b3568636d8df4971b62c1b7a0dca64",
  "kind": "builtin_initialize",
  "lexical_name": null,
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
  "slug": "builtin-initialize--061dd7ba9dccc5b8028a6da9",
  "source": {
    "blob": "61d372630f94a66febd188f998aa81b1361a4ce0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 23,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoreM/Variant0e94919972c60e8f2bdc73ecc9845a745c9a3373fce4069b9e27ae52560c0a7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:061dd7ba9dccc5b8028a6da913cb571fab6039584338ce16cee3832f4453a2a7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoreM/Variant0e94919972c60e8f2bdc73ecc9845a745c9a3373fce4069b9e27ae52560c0a7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `builtin_initialize` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a67812c246f6361f16ab3f18fe4798b721b3568636d8df4971b62c1b7a0dca64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
builtin_initialize registerTraceClass `diagnostics

register_builtin_option diagnostics.threshold : Nat := {
  defValue := 20
  descr    := "only diagnostic counters above this threshold are reported by the definitional equality"
}

register_builtin_option maxHeartbeats : Nat := {
  defValue := 200000
  descr := "maximum amount of heartbeats per command. A heartbeat is number of (small) memory allocations (in thousands), 0 means no limit"
}

register_builtin_option Elab.async : Bool := {
  defValue := false
  descr := "perform elaboration using multiple threads where possible\
    \n\
    \nThis option defaults to `false` but (when not explicitly set) is overridden to `true` in \
      the Lean language server and cmdline. \
      Metaprogramming users driving elaboration directly via e.g. \
      `Lean.Elab.Command.elabCommandTopLevel` can opt into asynchronous elaboration by setting \
      this option but then are responsible for processing messages and other data not only in the \
      resulting command state but also from async tasks in `Lean.Command.Context.snap?` and \
      `Lean.Command.State.snapshotTasks`."
}

register_builtin_option Elab.inServer : Bool := {
  defValue := false
  descr := "true if elaboration is being run inside the Lean language server\
    \n\
    \nThis option is set by the file worker and should not be modified otherwise."
}

/-- Performance option used by cmdline driver. -/
register_builtin_option internal.cmdlineSnapshots : Bool := {
  defValue := false
  descr    := "reduce information stored in snapshots to the minimum necessary \
    for the cmdline driver: diagnostics per command and final full snapshot"
}

/--
If the `diagnostics` option is not already set, gives a message explaining this option.
Begins with a `\n\n`, so an error message can look like `m!"some error occurred{useDiagnosticMsg}"`.
The double newline gives better visual separation from the main error message
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoreM/Variant0e94919972c60e8f2bdc73ecc9845a745c9a3373fce4069b9e27ae52560c0a7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoreM/Variant0e94919972c60e8f2bdc73ecc9845a745c9a3373fce4069b9e27ae52560c0a7a.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61d372630f94a66febd188f998aa81b1361a4ce0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
