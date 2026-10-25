# StateFactory.mkImpl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ac639e53a63dab6598d00501e2ae6167ee4e3dea1249060d686ef4291853e493",
  "kind": "def",
  "lexical_name": "StateFactory.mkImpl",
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
  "slug": "statefactory-mkimpl--05397c707fd5a384b1c68be9",
  "source": {
    "blob": "4692b83a1939718e215918261cb5666e2ef9c88a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 58,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShareCommon/Variantd2ead15f9f6a875d42c789c7a6db3bb3cbf5b87d0d06262d104b6c64ae99cd6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:05397c707fd5a384b1c68be958b2305065fd58517ceaa072a98c898e8153d7e5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShareCommon/Variantd2ead15f9f6a875d42c789c7a6db3bb3cbf5b87d0d06262d104b6c64ae99cd6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ac639e53a63dab6598d00501e2ae6167ee4e3dea1249060d686ef4291853e493`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
unsafe def StateFactory.mkImpl : StateFactoryBuilder → StateFactory
  | { Map, mkMap, mapFind?, mapInsert, Set, mkSet, setFind?, setInsert } =>
    unsafeCast {
      Map := @Map Object Object ⟨Object.ptrEq⟩ ⟨Object.ptrHash⟩
      Set := @Set Object ⟨Object.eq⟩ ⟨Object.hash⟩
      mkState := fun _ => (
        @mkMap Object Object ⟨Object.ptrEq⟩ ⟨Object.ptrHash⟩ 1024,
        @mkSet Object ⟨Object.eq⟩ ⟨Object.hash⟩ 1024)
      mapFind? := @mapFind? Object Object ⟨Object.ptrEq⟩ ⟨Object.ptrHash⟩
      mapInsert := @mapInsert Object Object ⟨Object.ptrEq⟩ ⟨Object.ptrHash⟩
      setFind? := @setFind? Object ⟨Object.eq⟩ ⟨Object.hash⟩
      setInsert := @setInsert Object ⟨Object.eq⟩ ⟨Object.hash⟩
    : StateFactoryImpl }

@[implemented_by StateFactory.mkImpl]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShareCommon/Variantd2ead15f9f6a875d42c789c7a6db3bb3cbf5b87d0d06262d104b6c64ae99cd6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShareCommon/Variantd2ead15f9f6a875d42c789c7a6db3bb3cbf5b87d0d06262d104b6c64ae99cd6d.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4692b83a1939718e215918261cb5666e2ef9c88a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
