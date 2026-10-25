# ResourceUsageStats

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:35cb967bd551d8971077eb92635e838392bc16a6faf49219e07584450c4a39b5",
  "kind": "structure",
  "lexical_name": "ResourceUsageStats",
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
  "slug": "resourceusagestats--91d86f6c1c60710d757acfaa",
  "source": {
    "blob": "9e0372e4f2bdce3a13ad5a54b76e82fd3237f8d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 28,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Process/Variantdd3d95269cfd245390c446e7fb8ce9473f4fdb6c465173a23c51708049bd7bf8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:91d86f6c1c60710d757acfaa50a4dc8d5936fda62ba09752ef6316f5cdb16d9e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Process/Variantdd3d95269cfd245390c446e7fb8ce9473f4fdb6c465173a23c51708049bd7bf8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:35cb967bd551d8971077eb92635e838392bc16a6faf49219e07584450c4a39b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ResourceUsageStats where
  /--
  CPU time spent in user mode (milliseconds)
  -/
  cpuUserTime : Time.Millisecond.Offset

  /--
  CPU time spent in kernel mode (milliseconds)
  -/
  cpuSystemTime : Time.Millisecond.Offset

  /--
  Peak resident set size (max physical memory usage) in kilobytes
  -/
  peakResidentSetSizeKb : UInt64

  /--
  Size of shared memory segments (kilobytes)
  -/
  sharedMemorySizeKb : UInt64

  /--
  Size of unshared data segment (kilobytes)
  -/
  unsharedDataSizeKb : UInt64

  /--
  Size of unshared stack segment (kilobytes)
  -/
  unsharedStackSizeKb : UInt64

  /--
  Number of minor (soft) page faults (no disk I/O)
  -/
  minorPageFaults : UInt64

  /--
  Number of major (hard) page faults (disk I/O required)
  -/
  majorPageFaults : UInt64

  /--
  Number of swap ins or swap outs
  -/
  swapOperations : UInt64

  /--
  Number of block input operations (disk reads)
  -/
  blockInputOps : UInt64

  /--
  Number of block output operations (disk writes)
  -/
  blockOutputOps : UInt64

  /--
  Number of IPC messages sent
  -/
  messagesSent : UInt64

  /--
  Number of IPC messages received
  -/
  messagesReceived : UInt64

  /--
  Number of signals received
  -/
  signalsReceived : UInt64

  /--
  Number of voluntary context switches (process yielded CPU)
  -/
  voluntaryContextSwitches : UInt64

  /--
  Number of involuntary context switches (process preempted)
  -/
  involuntaryContextSwitches : UInt64
deriving Repr, Inhabited


/--
A process identifier, represented by a numeric ID in UNIX systems (e.g. 1000).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Process/Variantdd3d95269cfd245390c446e7fb8ce9473f4fdb6c465173a23c51708049bd7bf8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Process/Variantdd3d95269cfd245390c446e7fb8ce9473f4fdb6c465173a23c51708049bd7bf8.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e0372e4f2bdce3a13ad5a54b76e82fd3237f8d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
