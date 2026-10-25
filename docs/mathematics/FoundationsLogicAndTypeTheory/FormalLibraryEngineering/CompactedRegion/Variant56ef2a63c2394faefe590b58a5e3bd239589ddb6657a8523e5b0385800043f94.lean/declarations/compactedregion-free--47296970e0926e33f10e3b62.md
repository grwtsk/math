# CompactedRegion.free

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:60888f8e711d2ae393f557073be96827700a6560b8b63f2198b7e607deede6e7",
  "kind": "opaque",
  "lexical_name": "CompactedRegion.free",
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
  "slug": "compactedregion-free--47296970e0926e33f10e3b62",
  "source": {
    "blob": "4fc00fa480154e5e1b2dbcf83dd2a2255fb64487",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 69,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompactedRegion/Variant56ef2a63c2394faefe590b58a5e3bd239589ddb6657a8523e5b0385800043f94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:47296970e0926e33f10e3b629938205475d445483353944c9f4aee98c2b51146",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompactedRegion/Variant56ef2a63c2394faefe590b58a5e3bd239589ddb6657a8523e5b0385800043f94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `opaque` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:60888f8e711d2ae393f557073be96827700a6560b8b63f2198b7e607deede6e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public unsafe opaque CompactedRegion.free (region : CompactedRegion) : IO Unit

/--
Saves arbitrary data to a compacted region on disk.

The `α` type parameter is erased at the runtime/extern boundary: the compactor walks the live
object graph rooted at `data` regardless of its Lean type. `α` is purely a hint for the caller to
align save and load sites. Mismatched types between save and load yield undefined behavior on use.

`key` is hashed to derive a deterministic mmap base address; for module saves, pass the module
`Name`. `depRegions` are loaded compacted regions (typically from imports) whose objects should
not be re-serialized. `prev`, when present, likewise allows for reuse of objects from prior saves
in the same session.

If `allowClosures` is `true`, closures in the compacted data are tolerated and the file is written
in the extended `v3` olean format (which may become the default in the future). This is an
EXPERIMENTAL option. The saving and loading process must be using identical executables, including
dependent libraries. When `false`, encountering a closure is an error and the file is written in the
old `v2` format.

Returns a `Compactor` that may be passed as `prev` to subsequent saves. Unsafe because the
returned `Compactor` carries thread-safety and `depRegions` lifetime contracts the type system
cannot enforce; see `Compactor`.
-/
@[extern "lean_compacted_region_save"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompactedRegion/Variant56ef2a63c2394faefe590b58a5e3bd239589ddb6657a8523e5b0385800043f94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompactedRegion/Variant56ef2a63c2394faefe590b58a5e3bd239589ddb6657a8523e5b0385800043f94.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4fc00fa480154e5e1b2dbcf83dd2a2255fb64487` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
