# parseWith

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fe7768272af4b44b00757e2e88154141498e416c7516aad74438f6b343d427c9",
  "kind": "def",
  "lexical_name": "parseWith",
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
  "slug": "parsewith--a73249022fb1e2def08e7c71",
  "source": {
    "blob": "ebfa37bf07bbdf9ecde9e0ba367ba6db9b9b9c35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 592,
    "line": 554,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/H1/Varianta41b71cf0d32018f66ec40eba22afb2975608beee1d3330db8b953e67120c3cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a73249022fb1e2def08e7c715bd5c7bfa6d3159383a28c0e9f8fe954bf2cf842",
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

Occurrence: `declaration:fe7768272af4b44b00757e2e88154141498e416c7516aad74438f6b343d427c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 554–592.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def parseWith (machine : Machine dir) (parser : Parser α) (limit : Option Nat)
    (expect : Option Nat := none)
    (onHardError : Std.Internal.Parsec.Error → H1.Error := fun _ => .badMessage) :
    Machine dir × Option α :=
  let remaining := machine.reader.input.remainingBytes

  match parser machine.reader.input with
  | .success buffer result =>
    let usedBytes := remaining - buffer.remainingBytes

    if let some limit := limit then
      if usedBytes > limit then
        (machine.setFailure .badMessage, none)
      else
        ({ machine with reader := machine.reader.setInput buffer }, some result)
    else
      ({ machine with reader := machine.reader.setInput buffer }, some result)
  | .error it .eof =>
    let usedBytesUntilFailure := remaining - it.remainingBytes
    if machine.reader.noMoreInput then
      (machine.setFailure .connectionClosed, none)
    else if let some limit := limit then
      if usedBytesUntilFailure ≥ limit
        then (machine.setFailure .badMessage, none)
        else (machine.addEvent (.needMoreData expect), none)
    else
      (machine.addEvent (.needMoreData expect), none)
  | .error _ err =>
    (machine.setFailure (onHardError err), none)

-- Message Processing

/--
Resets per-message reader/writer state for the next pipelined message when
keep-alive remains enabled.

Unconsumed input and already-produced output are preserved. If keep-alive is
disabled, closes reader/writer and emits `.close` instead.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/H1/Varianta41b71cf0d32018f66ec40eba22afb2975608beee1d3330db8b953e67120c3cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/H1/Varianta41b71cf0d32018f66ec40eba22afb2975608beee1d3330db8b953e67120c3cb.lean#L554).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebfa37bf07bbdf9ecde9e0ba367ba6db9b9b9c35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
