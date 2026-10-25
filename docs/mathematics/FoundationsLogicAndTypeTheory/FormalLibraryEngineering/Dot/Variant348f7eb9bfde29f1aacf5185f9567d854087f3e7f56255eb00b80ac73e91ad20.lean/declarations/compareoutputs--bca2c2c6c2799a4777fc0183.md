# compareOutputs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:94b2492bc7fbabcb3a0a6d0788d8e1a712f7529107aec7d88d19d14ce852592e",
  "kind": "def",
  "lexical_name": "compareOutputs",
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
  "slug": "compareoutputs--bca2c2c6c2799a4777fc0183",
  "source": {
    "blob": "86b25e5a0e4cfac3fed74884420feda190f7b6d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 18,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dot/Variant348f7eb9bfde29f1aacf5185f9567d854087f3e7f56255eb00b80ac73e91ad20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bca2c2c6c2799a4777fc0183f37392fc3de6ad852b87f18c7a20ffdc909a207d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dot/Variant348f7eb9bfde29f1aacf5185f9567d854087f3e7f56255eb00b80ac73e91ad20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:94b2492bc7fbabcb3a0a6d0788d8e1a712f7529107aec7d88d19d14ce852592e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def compareOutputs (expected : String) (actual : String) : IO Bool := do
  let expectedLines := expected.splitOn "\n" |>.filter (·.trimAscii.toString.length > 0) |>.map (·.trimAscii.toString)
  let actualLines := actual.splitOn "\n" |>.filter (·.trimAscii.toString.length > 0) |>.map (·.trimAscii.toString)
  pure (expectedLines == actualLines)

/-- info: Test passed: The graph command output matches the expected.dot file. -/
#guard_msgs in
#eval show IO Unit from do
  runGraphCommand
  let expectedOutput ← readFile "ImportGraphTest/expected.dot"
  let actualOutput ← readFile "ImportGraphTest/produced.dot"
  let isEqual ← compareOutputs expectedOutput actualOutput
  if isEqual then
    IO.println "Test passed: The graph command output matches the expected.dot file."
  else
    IO.println "Test failed: The graph command output does not match the expected.dot file."
    IO.println s!"Expected:\n{expectedOutput}"
    IO.println s!"Actual:\n{actualOutput}"
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dot/Variant348f7eb9bfde29f1aacf5185f9567d854087f3e7f56255eb00b80ac73e91ad20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dot/Variant348f7eb9bfde29f1aacf5185f9567d854087f3e7f56255eb00b80ac73e91ad20.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86b25e5a0e4cfac3fed74884420feda190f7b6d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
