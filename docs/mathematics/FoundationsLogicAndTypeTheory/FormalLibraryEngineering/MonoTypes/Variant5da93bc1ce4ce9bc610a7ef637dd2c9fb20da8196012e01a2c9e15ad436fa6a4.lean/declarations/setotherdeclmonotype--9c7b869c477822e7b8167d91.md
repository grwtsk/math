# setOtherDeclMonoType

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3acaed44c4d27033d7ddd6c5a32fe7dd31d3d0c9b5614f5b0711e45827a2c63e",
  "kind": "def",
  "lexical_name": "setOtherDeclMonoType",
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
  "slug": "setotherdeclmonotype--9c7b869c477822e7b8167d91",
  "source": {
    "blob": "d8c0b5b9c2d7260745791af2897a2014cc94b407",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 109,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonoTypes/Variant5da93bc1ce4ce9bc610a7ef637dd2c9fb20da8196012e01a2c9e15ad436fa6a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9c7b869c477822e7b8167d915f2593e8ad8626d5a83697871bed66684d0556a9",
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

Occurrence: `declaration:3acaed44c4d27033d7ddd6c5a32fe7dd31d3d0c9b5614f5b0711e45827a2c63e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def setOtherDeclMonoType (declName : Name) : CoreM Unit := do
  unless (monoTypeExt.find? (← getEnv) declName).isSome do
    modifyEnv (monoTypeExt.insert · declName (← toMonoType (← getOtherDeclBaseType declName [])))

/--
Returns the LCNF mono-phase type of `declName`, a declaration without associated code (constructor,
inductive type, foreign function, or `noncomputable` definition).

Inductive types and their constructors are compiled eagerly by `compileInductives` (their mono type
can depend on private constructor field types and so must be precomputed in the defining module); a
miss for those is reported as an error. Other declarations have their mono type computed from the
signature on demand and cached for the current module.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonoTypes/Variant5da93bc1ce4ce9bc610a7ef637dd2c9fb20da8196012e01a2c9e15ad436fa6a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonoTypes/Variant5da93bc1ce4ce9bc610a7ef637dd2c9fb20da8196012e01a2c9e15ad436fa6a4.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8c0b5b9c2d7260745791af2897a2014cc94b407` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
