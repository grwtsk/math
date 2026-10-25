# BaseRecursiveMutex.unlock

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:88b590260f6243d71e857d4d21257935dffc4306e7f9934ed94b08680663de02",
  "kind": "opaque",
  "lexical_name": "BaseRecursiveMutex.unlock",
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
  "slug": "baserecursivemutex-unlock--f81f2a2ce5e58948f76d6a6f",
  "source": {
    "blob": "4e4ea284dc57ed1781e00e149579d2032f1d81a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 55,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveMutex/Variant5fb88d9dd7c8034a1c9ae54a60395f0c2648db1ecb97c7cb3bcb6d16ca5c4f40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f81f2a2ce5e58948f76d6a6fcb9b3db977ae597bb42f68e11112401bcbd5ff79",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveMutex/Variant5fb88d9dd7c8034a1c9ae54a60395f0c2648db1ecb97c7cb3bcb6d16ca5c4f40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `opaque` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:88b590260f6243d71e857d4d21257935dffc4306e7f9934ed94b08680663de02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
opaque BaseRecursiveMutex.unlock (mutex : @& BaseRecursiveMutex) : BaseIO Unit

/--
Recursive (or reentrant) mutual exclusion primitive (lock) guarding shared state of type `α`.

The type `RecursiveMutex α` is similar to `IO.Ref α`, except that concurrent accesses are guarded
by a mutex instead of atomic pointer operations and busy-waiting. Additionally locking a
`RecursiveMutex` multiple times from the same thread does not block, unlike `Mutex`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveMutex/Variant5fb88d9dd7c8034a1c9ae54a60395f0c2648db1ecb97c7cb3bcb6d16ca5c4f40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveMutex/Variant5fb88d9dd7c8034a1c9ae54a60395f0c2648db1ecb97c7cb3bcb6d16ca5c4f40.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e4ea284dc57ed1781e00e149579d2032f1d81a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
