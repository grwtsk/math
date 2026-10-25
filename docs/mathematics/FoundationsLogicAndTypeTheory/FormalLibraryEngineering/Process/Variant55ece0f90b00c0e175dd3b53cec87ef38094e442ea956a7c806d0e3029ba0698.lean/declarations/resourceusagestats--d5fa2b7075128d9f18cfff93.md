# ResourceUsageStats

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:449f18204b5125302dafb4bab903e9bf34a817538d49da15b9f415a400d3826c",
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
  "slug": "resourceusagestats--d5fa2b7075128d9f18cfff93",
  "source": {
    "blob": "85e596d35a6a5195c43f3e64eefece7a7ecb548c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 36,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Process/Variant55ece0f90b00c0e175dd3b53cec87ef38094e442ea956a7c806d0e3029ba0698.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d5fa2b7075128d9f18cfff93e05e6c27caffc88308c127515942f21e09c02cd1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Process/Variant55ece0f90b00c0e175dd3b53cec87ef38094e442ea956a7c806d0e3029ba0698.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:449f18204b5125302dafb4bab903e9bf34a817538d49da15b9f415a400d3826c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–121.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Process/Variant55ece0f90b00c0e175dd3b53cec87ef38094e442ea956a7c806d0e3029ba0698.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Process/Variant55ece0f90b00c0e175dd3b53cec87ef38094e442ea956a7c806d0e3029ba0698.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85e596d35a6a5195c43f3e64eefece7a7ecb548c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
