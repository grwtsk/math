# getResourceUsage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1f2a8d9a3eaf9d6a30dca32eda38dcdf73bb456334d6d8765f8191c8fc4cf9d1",
  "kind": "def",
  "lexical_name": "getResourceUsage",
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
  "slug": "getresourceusage--d0d019305924438da4de7735",
  "source": {
    "blob": "85e596d35a6a5195c43f3e64eefece7a7ecb548c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 192,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Process/Variant55ece0f90b00c0e175dd3b53cec87ef38094e442ea956a7c806d0e3029ba0698.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d0d019305924438da4de7735045da40feb89ffae23c485a1ac7d24476f245b91",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Process/Variant55ece0f90b00c0e175dd3b53cec87ef38094e442ea956a7c806d0e3029ba0698.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1f2a8d9a3eaf9d6a30dca32eda38dcdf73bb456334d6d8765f8191c8fc4cf9d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getResourceUsage : IO ResourceUsageStats :=
  UV.System.getrusage <&> fun rusage =>
    {
      cpuUserTime := .ofNat <| UInt64.toNat rusage.userTime
      cpuSystemTime := .ofNat <| UInt64.toNat rusage.systemTime
      peakResidentSetSizeKb := rusage.maxRSS
      sharedMemorySizeKb := rusage.ixRSS
      unsharedDataSizeKb := rusage.idRSS
      unsharedStackSizeKb := rusage.isRSS
      minorPageFaults := rusage.minFlt
      majorPageFaults := rusage.majFlt
      swapOperations := rusage.nSwap
      blockInputOps := rusage.inBlock
      blockOutputOps := rusage.outBlock
      messagesSent := rusage.msgSent
      messagesReceived := rusage.msgRecv
      signalsReceived := rusage.signals
      voluntaryContextSwitches := rusage.voluntaryCS
      involuntaryContextSwitches := rusage.involuntaryCS
    }

/--
Returns the absolute path of the current executable.
-/
@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Process/Variant55ece0f90b00c0e175dd3b53cec87ef38094e442ea956a7c806d0e3029ba0698.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Process/Variant55ece0f90b00c0e175dd3b53cec87ef38094e442ea956a7c806d0e3029ba0698.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85e596d35a6a5195c43f3e64eefece7a7ecb548c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
