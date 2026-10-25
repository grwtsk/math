# resetForNextMessage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7f0f95d3da72f9bc8596dca02e24f770e3dff1433d47c7c31aa6fcd9f933c5ed",
  "kind": "def",
  "lexical_name": "resetForNextMessage",
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
  "slug": "resetfornextmessage--1fbe18513572768a485c736e",
  "source": {
    "blob": "ebfa37bf07bbdf9ecde9e0ba367ba6db9b9b9c35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 629,
    "line": 593,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/H1/Varianta41b71cf0d32018f66ec40eba22afb2975608beee1d3330db8b953e67120c3cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1fbe18513572768a485c736ec25a19365fdff64934f20d4b7238a62e59c729a9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/H1/Varianta41b71cf0d32018f66ec40eba22afb2975608beee1d3330db8b953e67120c3cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7f0f95d3da72f9bc8596dca02e24f770e3dff1433d47c7c31aa6fcd9f933c5ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 593–629.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def resetForNextMessage (machine : Machine dir) : Machine dir :=

  if machine.keepAlive then
    { machine with
      reader := {
        state := match dir with | .receiving => .needStartLine | .sending => .pending,
        input := machine.reader.input,
        messageHead := {},
        messageCount := machine.reader.messageCount + 1,
        bodyBytesRead := 0,
        noMoreInput := machine.reader.noMoreInput
      },
      writer := {
        userData := .empty,
        userDataBytes := 0,
        outputData := machine.writer.outputData,
        state := match dir with | .receiving => .pending | .sending => .waitingHeaders,
        knownSize := none,
        messageHead := {},
        userClosedBody := false,
        sentMessage := false,
        omitBody := false
      },
      events := machine.events.push .next,
      error := none,
      pullBodyStalled := false
    }
  else
    machine.addEvent .close
    |>.setWriterState .closed
    |>.setReaderState .closed

/--
Checks whether the initial framing mode already exceeds `maxBodySize` before any
body bytes are read.
-/
@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/H1/Varianta41b71cf0d32018f66ec40eba22afb2975608beee1d3330db8b953e67120c3cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/H1/Varianta41b71cf0d32018f66ec40eba22afb2975608beee1d3330db8b953e67120c3cb.lean#L593).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebfa37bf07bbdf9ecde9e0ba367ba6db9b9b9c35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
