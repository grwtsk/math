# CancelToken

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:beab97092fa4d133421bf856e481e7da94cbec8fded9209c1daa8f75d7481426",
  "kind": "structure",
  "lexical_name": "CancelToken",
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
  "slug": "canceltoken--160bff1a0b6b7d12831fd7d8",
  "source": {
    "blob": "6062e53f00ed3d602e61bd7b34d125bebdde275f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 39,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CancelToken/Variantd1c8b48cae66db0b07ef93cd6f29f1f0b0b7c5916184202e9fd15fca680f6adc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:160bff1a0b6b7d12831fd7d81bb411b16a6e22f0d78b142c60729568a1472e82",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CancelToken/Variantd1c8b48cae66db0b07ef93cd6f29f1f0b0b7c5916184202e9fd15fca680f6adc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:beab97092fa4d133421bf856e481e7da94cbec8fded9209c1daa8f75d7481426`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CancelToken where
  private promise : IO.Promise Unit
  /-- Plain `Bool` flag set after `promise.resolve` so that observing `isSet = true` implies the
      promise has already fired (and thus any `onSet` callback has already run). Read by the cheap
      `isSet` fast path (e.g. on the hot `Core.checkInterrupted` C++ path) without walking the
      promise. -/
  private setRef : IO.Ref Bool
deriving Nonempty

namespace CancelToken

/--
Creates a new cancellation token.

Note: cannot be called from `initialize` blocks because the underlying task manager is not yet
running at that point. Construct lazily on first use instead.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CancelToken/Variantd1c8b48cae66db0b07ef93cd6f29f1f0b0b7c5916184202e9fd15fca680f6adc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CancelToken/Variantd1c8b48cae66db0b07ef93cd6f29f1f0b0b7c5916184202e9fd15fca680f6adc.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6062e53f00ed3d602e61bd7b34d125bebdde275f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
