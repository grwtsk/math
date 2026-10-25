# mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:71f819d5ce20bf6f1314d245a6b93e106e95d8f334f9efa1a9dee344db2d696c",
  "kind": "opaque",
  "lexical_name": "mk",
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
  "slug": "mk--e5ef3b0d791ee5c7a6e9ae04",
  "source": {
    "blob": "3a9a3f60b47e8c36605a577b956b9b3b0736a10c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 53,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Timer/Variant8a4cd0d8cdeed7f0afe75a27c91ede85679b9ade6f5b57e4fbc3bfb864af311f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e5ef3b0d791ee5c7a6e9ae045ba120d79afd356b8f932aa0cc208b7b7417b9e9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Timer/Variant8a4cd0d8cdeed7f0afe75a27c91ede85679b9ade6f5b57e4fbc3bfb864af311f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `opaque` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:71f819d5ce20bf6f1314d245a6b93e106e95d8f334f9efa1a9dee344db2d696c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
opaque mk (timeout : UInt64) (repeating : Bool) : IO Timer

/--
This function has different behavior depending on the state and configuration of the `Timer`:
- if `repeating` is `false` and:
  - it is initial, run it and return a new `IO.Promise` that is set to resolve once `timeout`
    milliseconds have elapsed. After this `IO.Promise` is resolved the `Timer` is finished.
  - it is running or finished, return the same `IO.Promise` that the first call to `next` returned.
- if `repeating` is `true` and:
  - it is initial, run it and return a new `IO.Promise` that resolves right away
    (as it is the 0th multiple of `timeout`).
  - it is running, check whether the last returned `IO.Promise` is already resolved:
     - If it is, return a new `IO.Promise` that resolves upon finishing the next cycle
     - If it is not, return the last `IO.Promise`
     This ensures that the returned `IO.Promise` resolves at the next repetition of the timer.
  - if it is finished, return the last `IO.Promise` created by `next`. Notably this could be one
    that never resolves if the timer was stopped before fulfilling the last one.
-/
@[extern "lean_uv_timer_next"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Timer/Variant8a4cd0d8cdeed7f0afe75a27c91ede85679b9ade6f5b57e4fbc3bfb864af311f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Timer/Variant8a4cd0d8cdeed7f0afe75a27c91ede85679b9ade6f5b57e4fbc3bfb864af311f.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a9a3f60b47e8c36605a577b956b9b3b0736a10c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
