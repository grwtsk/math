# BuildType

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ef0c981c907c4b3675d2d9446ce6ca3a692633783a6707285a57c2a1db421b6c",
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
  "slug": "buildtype--f152f436b1b0fcb6abdfe792",
  "source": {
    "blob": "027b01fbec510ff17708a625387d7f1a3d635cd4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 80,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanConfig/Variant24e6f58e68820288d1849c2e01a31d8d22275f9ebba122295a4ed4eec6eb248c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f152f436b1b0fcb6abdfe792541c1f1f2a33d5b9b424a47772a98358eec4d401",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanConfig/Variant24e6f58e68820288d1849c2e01a31d8d22275f9ebba122295a4ed4eec6eb248c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ef0c981c907c4b3675d2d9446ce6ca3a692633783a6707285a57c2a1db421b6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–110.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanConfig/Variant24e6f58e68820288d1849c2e01a31d8d22275f9ebba122295a4ed4eec6eb248c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanConfig/Variant24e6f58e68820288d1849c2e01a31d8d22275f9ebba122295a4ed4eec6eb248c.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `027b01fbec510ff17708a625387d7f1a3d635cd4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
