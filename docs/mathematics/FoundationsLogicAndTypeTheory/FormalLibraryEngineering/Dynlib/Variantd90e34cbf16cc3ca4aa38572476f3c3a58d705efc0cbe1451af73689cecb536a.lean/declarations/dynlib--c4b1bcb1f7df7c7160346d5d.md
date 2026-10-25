# Dynlib

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e375f6c875b5f1b8000369e0db00e7cbdc7459e61fa784732cd2969ec7c696c7",
  "kind": "structure",
  "lexical_name": "Dynlib",
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
  "slug": "dynlib--c4b1bcb1f7df7c7160346d5d",
  "source": {
    "blob": "a8a8967a433e4939abc2634a3633385cff9cb061",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 24,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dynlib/Variantd90e34cbf16cc3ca4aa38572476f3c3a58d705efc0cbe1451af73689cecb536a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c4b1bcb1f7df7c7160346d5de603fbbe62631575a7508eca363743ea9ae39074",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dynlib/Variantd90e34cbf16cc3ca4aa38572476f3c3a58d705efc0cbe1451af73689cecb536a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e375f6c875b5f1b8000369e0db00e7cbdc7459e61fa784732cd2969ec7c696c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public structure Dynlib where
  /-- Library file path. -/
  path : FilePath
  /-- Library name without any platform-specific prefix/suffix (for `-l`). -/
  name : String
  /-- Whether this library can be loaded as a plugin. -/
  plugin := false
  /--
  Transitive dependencies of this library for situations that need them
  (e.g., linking on Windows, loading via `lean`).
  -/
  deps : Array Dynlib := #[]
  /--
  Non-link transitive dependencies of this library that are only required
  at runtime (e.g., libraries loaded dynamically via `dlopen`). Used by Lake
  to preload such dependencies for `lean` elaboration when precompiling.
  -/
  runtimeOnlyDeps : Array Dynlib := #[]
  deriving Inhabited, Repr

namespace Dynlib

/-- Optional library directory (for `-L`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dynlib/Variantd90e34cbf16cc3ca4aa38572476f3c3a58d705efc0cbe1451af73689cecb536a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dynlib/Variantd90e34cbf16cc3ca4aa38572476f3c3a58d705efc0cbe1451af73689cecb536a.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8a8967a433e4939abc2634a3633385cff9cb061` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
