# RecursiveMutex.atomically

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0917e5cfc9d7f2c113b9bf460595accce8a6ae1b480b412c4209c839836c1a78",
  "kind": "def",
  "lexical_name": "RecursiveMutex.atomically",
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
  "slug": "recursivemutex-atomically--0049d59dec47704ed287aa96",
  "source": {
    "blob": "9f00431a1e676d1c15ee3fb0c488ba37e912f1d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 89,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveMutex/Variantfe350e51680569b7b809ae52c01fd05950d31c1d16cb7f4c7723c22344369c36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0049d59dec47704ed287aa969f6e7ed70dd1ab93bed350fc5bfa55fa4117cc0c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveMutex/Variantfe350e51680569b7b809ae52c01fd05950d31c1d16cb7f4c7723c22344369c36.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0917e5cfc9d7f2c113b9bf460595accce8a6ae1b480b412c4209c839836c1a78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def RecursiveMutex.atomically [Monad m] [MonadLiftT BaseIO m] [MonadFinally m]
    (mutex : RecursiveMutex α) (k : AtomicT α m β) : m β := do
  try
    mutex.mutex.lock
    k mutex.ref
  finally
    mutex.mutex.unlock

/--
`mutex.tryAtomically k` tries to lock `mutex` and runs `k` on it if it succeeds. On success the
return value of `k` is returned as `some`, on failure `none` is returned.

This function does not block on the `mutex`. Additionally `mutex.tryAtomically`, while already
holding the underlying `BaseRecursiveMutex` in the same thread, does not block.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveMutex/Variantfe350e51680569b7b809ae52c01fd05950d31c1d16cb7f4c7723c22344369c36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveMutex/Variantfe350e51680569b7b809ae52c01fd05950d31c1d16cb7f4c7723c22344369c36.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f00431a1e676d1c15ee3fb0c488ba37e912f1d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
