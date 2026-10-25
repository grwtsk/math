# mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:668a6926fb470855466fd62194da6283407da4ff6a3f4ed50ab06685944707e7",
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
  "slug": "mk--f14a923bdd9e88ed01da4bf1",
  "source": {
    "blob": "28d483d6bb852576b7c0b1a3d66d7b076438e4a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 45,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Timer/Variantb4d347666606086b8cd6288e2401b0181977639f31e09116cbf5fe950757a7ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f14a923bdd9e88ed01da4bf13956c0a3abd2d998e60be1a6ce3fab808f15fc35",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Timer/Variantb4d347666606086b8cd6288e2401b0181977639f31e09116cbf5fe950757a7ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `opaque` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:668a6926fb470855466fd62194da6283407da4ff6a3f4ed50ab06685944707e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–63.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Timer/Variantb4d347666606086b8cd6288e2401b0181977639f31e09116cbf5fe950757a7ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Timer/Variantb4d347666606086b8cd6288e2401b0181977639f31e09116cbf5fe950757a7ec.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28d483d6bb852576b7c0b1a3d66d7b076438e4a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
