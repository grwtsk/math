# getLakeEnv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7efb88ddd6de4470f53028dcb034bf18b4c2d0fe69a6de3b9dd6d229cae23c4b",
  "kind": "def",
  "lexical_name": "getLakeEnv",
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
  "slug": "getlakeenv--4f5a7d081259fe2878aead02",
  "source": {
    "blob": "d50bb193ecc6e855be6320efd26c0e05d8037c38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 227,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Monad/Variant52d0400be07bcd480d9216f35e848324bd5d2f32d3022d1f3d234eb99d3532f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4f5a7d081259fe2878aead021ba9ff25e9469a9c90405155b76f7a8442194b9f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Monad/Variant52d0400be07bcd480d9216f35e848324bd5d2f32d3022d1f3d234eb99d3532f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7efb88ddd6de4470f53028dcb034bf18b4c2d0fe69a6de3b9dd6d229cae23c4b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[inline] public def getLakeEnv : m Lake.Env :=
  read

variable [Functor m]

/-- Returns the {lit}`LAKE_NO_CACHE`/{lit}`--no-cache` Lake configuration. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Monad/Variant52d0400be07bcd480d9216f35e848324bd5d2f32d3022d1f3d234eb99d3532f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Monad/Variant52d0400be07bcd480d9216f35e848324bd5d2f32d3022d1f3d234eb99d3532f7.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d50bb193ecc6e855be6320efd26c0e05d8037c38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
