# compareOutputs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:95c415a4d9ef6c3005bc2cb1b919413b3a39b49b79d4f64dab89b5f2123f0d36",
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
  "slug": "compareoutputs--8fe96e7076b31aa3b4783dcd",
  "source": {
    "blob": "754b502673f8916f7cc95c0f32a18fe763bacd86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 26,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dot/Variant66b0e0836e6d25ad6da8950b066af585297370c9ec5f28797ed25af048d9bbc7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8fe96e7076b31aa3b4783dcda46b474b0578b99cec15799e2065f47bc4c97def",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dot/Variant66b0e0836e6d25ad6da8950b066af585297370c9ec5f28797ed25af048d9bbc7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:95c415a4d9ef6c3005bc2cb1b919413b3a39b49b79d4f64dab89b5f2123f0d36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–43.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dot/Variant66b0e0836e6d25ad6da8950b066af585297370c9ec5f28797ed25af048d9bbc7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dot/Variant66b0e0836e6d25ad6da8950b066af585297370c9ec5f28797ed25af048d9bbc7.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `754b502673f8916f7cc95c0f32a18fe763bacd86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
