# setHasTrivialStructure?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4732464fcdd11ded17571e5a8d888856197cdd878947148977a3d525e61b5f3d",
  "kind": "def",
  "lexical_name": "setHasTrivialStructure?",
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
  "slug": "sethastrivialstructure--c73a1a621c0f73d6e4f85e6c",
  "source": {
    "blob": "d8c0b5b9c2d7260745791af2897a2014cc94b407",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 29,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonoTypes/Variant5da93bc1ce4ce9bc610a7ef637dd2c9fb20da8196012e01a2c9e15ad436fa6a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c73a1a621c0f73d6e4f85e6cf3363bcd48a9af2ede7b079ccdcf0e2f10d1f83f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonoTypes/Variant5da93bc1ce4ce9bc610a7ef637dd2c9fb20da8196012e01a2c9e15ad436fa6a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4732464fcdd11ded17571e5a8d888856197cdd878947148977a3d525e61b5f3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def setHasTrivialStructure? (declName : Name) : CoreM Unit :=
  Irrelevant.setHasTrivialStructure? trivialStructureInfoExt
    (fun type => Meta.isProp type <||> Meta.isTypeFormerType type) declName

/--
Return `some fieldIdx` if `declName` is the name of an inductive datatype s.t.
- It does not have builtin support in the runtime.
- It has only one constructor.
- This constructor has only one computationally relevant field.

Requires `compileDecls` to have been run for inductive `declName`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonoTypes/Variant5da93bc1ce4ce9bc610a7ef637dd2c9fb20da8196012e01a2c9e15ad436fa6a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonoTypes/Variant5da93bc1ce4ce9bc610a7ef637dd2c9fb20da8196012e01a2c9e15ad436fa6a4.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8c0b5b9c2d7260745791af2897a2014cc94b407` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
