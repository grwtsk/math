# BuildType

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d8fc74ec2ec8fa1e07ca10508717030352ea670f65be36b4212f0fe86a55f3ff",
  "kind": "inductive",
  "lexical_name": "BuildType",
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
  "slug": "buildtype--267fd4111bbf154b168c8bc7",
  "source": {
    "blob": "250774084427fa4e4771a437806516ac52df2ee0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 88,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanConfig/Variant41914f1d31fb8bc219bd4bb11d4326ad134bedf3c055eceef066e9cfafba4d39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:267fd4111bbf154b168c8bc7ed03c07367f846c2793b296dc2e321d19815f55e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanConfig/Variant41914f1d31fb8bc219bd4bb11d4326ad134bedf3c055eceef066e9cfafba4d39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d8fc74ec2ec8fa1e07ca10508717030352ea670f65be36b4212f0fe86a55f3ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public inductive BuildType
  /--
  Debug optimization, asserts enabled, custom debug code enabled, and
  debug info included in executable (so you can step through the code with a
  debugger and have address to source-file:line-number translation).
  For example, passes `-O0 -g` when compiling C code.
  -/
  | debug
  /--
  Optimized, *with* debug info, but no debug code or asserts
  (e.g., passes `-O3 -g -DNDEBUG` when compiling C code).
  -/
  | relWithDebInfo
  /--
  Same as `release` but optimizing for size rather than speed
  (e.g., passes `-Os -DNDEBUG` when compiling C code).
  -/
  | minSizeRel
  /--
  High optimization level and no debug info, code, or asserts
  (e.g., passes `-O3 -DNDEBUG` when compiling C code).
  -/
  | release
deriving Inhabited, Repr, DecidableEq, Ord

namespace BuildType

/--
Ordering on build types. The ordering is used to determine
the *minimum* build version that is necessary for a build.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanConfig/Variant41914f1d31fb8bc219bd4bb11d4326ad134bedf3c055eceef066e9cfafba4d39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanConfig/Variant41914f1d31fb8bc219bd4bb11d4326ad134bedf3c055eceef066e9cfafba4d39.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `250774084427fa4e4771a437806516ac52df2ee0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
