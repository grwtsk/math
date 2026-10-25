# cancelChildren

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a3c680205d2660838fa0aee90d863d4fdc944edf7246865f3fce8398c15e64c3",
  "kind": "def",
  "lexical_name": "cancelChildren",
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
  "slug": "cancelchildren--ce55c94194c917bcea1c3d99",
  "source": {
    "blob": "8b5ecc29c3f8cac782895de0c83572e43b06e618",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 88,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CancellationContext/Variantb1338b6e333adba2059b86ffcb1b405b56bba9d098069cf159ef7e0e00be010a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ce55c94194c917bcea1c3d99abcff6c352f3af663ccb8a2f6c93bbfdab1e030a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CancellationContext/Variantb1338b6e333adba2059b86ffcb1b405b56bba9d098069cf159ef7e0e00be010a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a3c680205d2660838fa0aee90d863d4fdc944edf7246865f3fce8398c15e64c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def cancelChildren (state : CancellationContext.State) (id : UInt64) (reason : CancellationReason) : BaseIO CancellationContext.State := do
  let mut state := state

  let some (token, children) := state.tokens.get? id
    | return state

  for tokenId in children do
    state ← cancelChildren state tokenId reason

  token.cancel reason

  pure { state with tokens := state.tokens.erase id }

/--
Cancels this context and all child contexts with the given reason.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CancellationContext/Variantb1338b6e333adba2059b86ffcb1b405b56bba9d098069cf159ef7e0e00be010a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CancellationContext/Variantb1338b6e333adba2059b86ffcb1b405b56bba9d098069cf159ef7e0e00be010a.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b5ecc29c3f8cac782895de0c83572e43b06e618` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
