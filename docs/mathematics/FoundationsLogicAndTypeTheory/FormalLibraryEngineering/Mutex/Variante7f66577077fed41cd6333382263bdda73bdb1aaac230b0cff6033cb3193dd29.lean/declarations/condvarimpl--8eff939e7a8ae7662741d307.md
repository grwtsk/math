# CondvarImpl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0f8c8279d9784fa6e1fba6446d9aafd7aba164cd550f167f98c8e7bc4e98d925",
  "kind": "opaque",
  "lexical_name": "CondvarImpl",
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
  "slug": "condvarimpl--8eff939e7a8ae7662741d307",
  "source": {
    "blob": "668308c898823a2afcf1522fd4d32209f6c948fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 64,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mutex/Variante7f66577077fed41cd6333382263bdda73bdb1aaac230b0cff6033cb3193dd29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8eff939e7a8ae7662741d307125a1f74fdb2b63ff1e38f65986cf3154c2a31d8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mutex/Variante7f66577077fed41cd6333382263bdda73bdb1aaac230b0cff6033cb3193dd29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `opaque` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0f8c8279d9784fa6e1fba6446d9aafd7aba164cd550f167f98c8e7bc4e98d925`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private opaque CondvarImpl : NonemptyType.{0}

/--
Condition variable, a synchronization primitive to be used with a `BaseMutex` or `Mutex`.

The thread that wants to modify the shared variable must:
1. Lock the `BaseMutex` or `Mutex`
2. Work on the shared variable
3. Call `Condvar.notifyOne` or `Condvar.notifyAll` after it is done. Note that this may be done
   before or after the mutex is unlocked.

If working with a `Mutex` the thread that waits on the `Condvar` can use `Mutex.atomicallyOnce`
to wait until a condition is true. If working with a `BaseMutex` it must:
1. Lock the `BaseMutex`.
2. Do one of the following:
  - Use `Condvar.waitUntil` to (potentially repeatedly wait) on the condition variable until
     the condition is true.
  - Implement the waiting manually by:
    1. Checking the condition
    2. Calling `Condvar.wait` which releases the `BaseMutex` and suspends execution until the
       condition variable is notified.
    3. Check the condition and resume waiting if not satisfied.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mutex/Variante7f66577077fed41cd6333382263bdda73bdb1aaac230b0cff6033cb3193dd29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mutex/Variante7f66577077fed41cd6333382263bdda73bdb1aaac230b0cff6033cb3193dd29.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `668308c898823a2afcf1522fd4d32209f6c948fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
