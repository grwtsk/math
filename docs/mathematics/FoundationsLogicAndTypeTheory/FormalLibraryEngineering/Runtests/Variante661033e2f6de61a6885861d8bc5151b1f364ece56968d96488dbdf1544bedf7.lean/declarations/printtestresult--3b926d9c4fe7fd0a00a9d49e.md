# printTestResult

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c1b0f11f2b58d35dadd37444e0a05bca181b189db658a0df5661b65c85b75ea2",
  "kind": "def",
  "lexical_name": "printTestResult",
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
  "slug": "printtestresult--3b926d9c4fe7fd0a00a9d49e",
  "source": {
    "blob": "d0d1366895d58988430dccb8f09c5861bea51c39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 142,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Runtests/Variante661033e2f6de61a6885861d8bc5151b1f364ece56968d96488dbdf1544bedf7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3b926d9c4fe7fd0a00a9d49eb8507e7e7b8cf8971db9fc85eb79eb919785758e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Runtests/Variante661033e2f6de61a6885861d8bc5151b1f364ece56968d96488dbdf1544bedf7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c1b0f11f2b58d35dadd37444e0a05bca181b189db658a0df5661b65c85b75ea2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def printTestResult (result : TestResult) : IO Unit := do
  match result with
  | .success name =>
    IO.println s!"✓ {name}: PASSED"
  | .failure name expected actual =>
    IO.println s!"✗ {name}: FAILED (expected exit code {expected}, got {actual})"
  | .error name msg =>
    IO.println s!"✗ {name}: ERROR - {msg}"

/-- Run comparator integration tests. When `args` is non-empty, only tests whose
project name contains one of the given strings (as a substring) are executed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Runtests/Variante661033e2f6de61a6885861d8bc5151b1f364ece56968d96488dbdf1544bedf7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Runtests/Variante661033e2f6de61a6885861d8bc5151b1f364ece56968d96488dbdf1544bedf7.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0d1366895d58988430dccb8f09c5861bea51c39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
