# BaseSharedMutex.write

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f6937f8115e904c37df46cad6ba3576fe5c4e36f0edda6f20d33072ebb138a17",
  "kind": "opaque",
  "lexical_name": "BaseSharedMutex.write",
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
  "slug": "basesharedmutex-write--89e22d31a827c1fac15e37f5",
  "source": {
    "blob": "8e441a585a99424bbe2be6528c0d87ddf4aa983f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 46,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SharedMutex/Variant6a42e507b77f13d40d0526e13f0b1ff0ab97f0a37b5eef282115d7188e5947bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:89e22d31a827c1fac15e37f59f890e466bca4dc7846a53d6f32910cc4b2a7de8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SharedMutex/Variant6a42e507b77f13d40d0526e13f0b1ff0ab97f0a37b5eef282115d7188e5947bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `opaque` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f6937f8115e904c37df46cad6ba3576fe5c4e36f0edda6f20d33072ebb138a17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
opaque BaseSharedMutex.write (mutex : @& BaseSharedMutex) : BaseIO Unit

/--
Attempts to lock a `BaseSharedMutex` for exclusive write access. If the mutex is not available
return `false`, otherwise lock it and return `true`.

The current thread must not have already locked the mutex.
Reentrant locking is undefined behavior (inherited from the C++ implementation).
-/
@[extern "lean_io_basesharedmutex_try_write"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SharedMutex/Variant6a42e507b77f13d40d0526e13f0b1ff0ab97f0a37b5eef282115d7188e5947bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SharedMutex/Variant6a42e507b77f13d40d0526e13f0b1ff0ab97f0a37b5eef282115d7188e5947bb.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e441a585a99424bbe2be6528c0d87ddf4aa983f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
