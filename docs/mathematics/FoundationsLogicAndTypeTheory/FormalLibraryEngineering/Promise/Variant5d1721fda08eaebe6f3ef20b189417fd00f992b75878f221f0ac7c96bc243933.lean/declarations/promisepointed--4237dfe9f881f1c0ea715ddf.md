# PromisePointed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6bc3bb2737f03850993a6c24a728f103bb4c542646f97474947e2f35170a0211",
  "kind": "opaque",
  "lexical_name": "PromisePointed",
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
  "slug": "promisepointed--4237dfe9f881f1c0ea715ddf",
  "source": {
    "blob": "4dc359470d30a210ae30376a2a9be9f4a66ad0f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 25,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Promise/Variant5d1721fda08eaebe6f3ef20b189417fd00f992b75878f221f0ac7c96bc243933.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4237dfe9f881f1c0ea715ddfacd60e528b19308029545e6bc66efd2517e0bcd4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Promise/Variant5d1721fda08eaebe6f3ef20b189417fd00f992b75878f221f0ac7c96bc243933.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `opaque` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6bc3bb2737f03850993a6c24a728f103bb4c542646f97474947e2f35170a0211`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private opaque PromisePointed : NonemptyType.{0}

/--
`Promise α` allows you to create a `Task α` whose value is provided later by calling `resolve`.

Typical usage is as follows:
1. `let promise ← Promise.new` creates a promise
2. `promise.result? : Task (Option α)` can now be passed around
3. `promise.result?.get` blocks until the promise is resolved
4. `promise.resolve a` resolves the promise
5. `promise.result?.get` now returns `some a`

If the promise is dropped without ever being resolved, `promise.result?.get` will return `none`.
See `Promise.result!/resultD` for other ways to handle this case.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Promise/Variant5d1721fda08eaebe6f3ef20b189417fd00f992b75878f221f0ac7c96bc243933.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Promise/Variant5d1721fda08eaebe6f3ef20b189417fd00f992b75878f221f0ac7c96bc243933.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4dc359470d30a210ae30376a2a9be9f4a66ad0f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
