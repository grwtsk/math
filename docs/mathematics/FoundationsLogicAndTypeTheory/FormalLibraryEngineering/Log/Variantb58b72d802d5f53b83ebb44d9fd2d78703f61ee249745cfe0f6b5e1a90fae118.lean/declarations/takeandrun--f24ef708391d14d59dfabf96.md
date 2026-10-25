# takeAndRun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d46e600d1c56baa4bb7788d3fd082777fc4c3cb4deb64d9b91d0283c84f5e4cc",
  "kind": "def",
  "lexical_name": "takeAndRun",
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
  "slug": "takeandrun--f24ef708391d14d59dfabf96",
  "source": {
    "blob": "6b2fc686a115c8da9127902b45ff3adcd06f7302",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 582,
    "line": 570,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variantb58b72d802d5f53b83ebb44d9fd2d78703f61ee249745cfe0f6b5e1a90fae118.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f24ef708391d14d59dfabf9648b56a09af45089e22d771ce2f3a40134949b872",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variantb58b72d802d5f53b83ebb44d9fd2d78703f61ee249745cfe0f6b5e1a90fae118.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d46e600d1c56baa4bb7788d3fd082777fc4c3cb4deb64d9b91d0283c84f5e4cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 570–582.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[inline] public def takeAndRun
  [Monad n] [MonadStateOf Log n] [MonadExceptOf Log.Pos n] [MonadLiftT m n]
  (self : ELogT m α)
: n α := do
  match (← self.run (← takeLog)) with
  | .ok a log => set log; return a
  | .error e log => set log; throw e

/--
Runs `self` in `n` and then replays the entries of the resulting log
using the new monad's `logger`. Translates an exception in this monad
to a `none` result.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variantb58b72d802d5f53b83ebb44d9fd2d78703f61ee249745cfe0f6b5e1a90fae118.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variantb58b72d802d5f53b83ebb44d9fd2d78703f61ee249745cfe0f6b5e1a90fae118.lean#L570).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b2fc686a115c8da9127902b45ff3adcd06f7302` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
