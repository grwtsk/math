# BaseRecursiveMutex.lock

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4f85fe851b57175279d6f08986e0f4abdfea1b797b5f37c6dcfe5f58aa426ed3",
  "kind": "opaque",
  "lexical_name": "BaseRecursiveMutex.lock",
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
  "slug": "baserecursivemutex-lock--2d64639bb91f715a25e0d0ed",
  "source": {
    "blob": "9f00431a1e676d1c15ee3fb0c488ba37e912f1d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 43,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveMutex/Variantfe350e51680569b7b809ae52c01fd05950d31c1d16cb7f4c7723c22344369c36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2d64639bb91f715a25e0d0ed30ad8060c827e3f6589ae2a57b9a7cab2e3d7360",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveMutex/Variantfe350e51680569b7b809ae52c01fd05950d31c1d16cb7f4c7723c22344369c36.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `opaque` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4f85fe851b57175279d6f08986e0f4abdfea1b797b5f37c6dcfe5f58aa426ed3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
opaque BaseRecursiveMutex.lock (mutex : @& BaseRecursiveMutex) : BaseIO Unit

/--
Attempts to lock a `BaseRecursiveMutex`. If the mutex is not available return `false`, otherwise
lock it and return `true`.

This function does not block. Furthermore the same thread may acquire the lock multiple times
through this function.
-/
@[extern "lean_io_baserecmutex_try_lock"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveMutex/Variantfe350e51680569b7b809ae52c01fd05950d31c1d16cb7f4c7723c22344369c36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveMutex/Variantfe350e51680569b7b809ae52c01fd05950d31c1d16cb7f4c7723c22344369c36.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f00431a1e676d1c15ee3fb0c488ba37e912f1d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
