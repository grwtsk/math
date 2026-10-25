# catchLog

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a86191eae273f7266df9dc9be34415ba1eb9cc2ce441472fdec8f8a0e4660aee",
  "kind": "def",
  "lexical_name": "catchLog",
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
  "slug": "catchlog--2aa9cfed1d62de75d0a44b22",
  "source": {
    "blob": "6b2fc686a115c8da9127902b45ff3adcd06f7302",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 569,
    "line": 560,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variantb58b72d802d5f53b83ebb44d9fd2d78703f61ee249745cfe0f6b5e1a90fae118.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2aa9cfed1d62de75d0a44b22d09f0c1261ed73a109ed665543f40cff68604d96",
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

Occurrence: `declaration:a86191eae273f7266df9dc9be34415ba1eb9cc2ce441472fdec8f8a0e4660aee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 560–569.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[inline] public def catchLog [Monad m] (f : Log → LogT m α) (self : ELogT m α) : LogT m α := do
  self.catchExceptions fun errPos => do f (← takeLogFrom errPos)

/--
Run `self` with the log taken from the state of the monad `n`,

**Warning:** If lifting `self` from `m` to `n` fails, the log will be lost.
Thus, this is best used when the lift cannot fail. This excludes the
native log position failure of `ELogT`, which are lifted safely.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variantb58b72d802d5f53b83ebb44d9fd2d78703f61ee249745cfe0f6b5e1a90fae118.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variantb58b72d802d5f53b83ebb44d9fd2d78703f61ee249745cfe0f6b5e1a90fae118.lean#L560).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b2fc686a115c8da9127902b45ff3adcd06f7302` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
