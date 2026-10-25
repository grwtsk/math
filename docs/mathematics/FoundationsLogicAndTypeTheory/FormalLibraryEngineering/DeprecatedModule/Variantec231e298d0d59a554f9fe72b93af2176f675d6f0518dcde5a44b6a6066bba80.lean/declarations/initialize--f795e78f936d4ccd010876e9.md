# Anonymous initialize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f89844c408f5743248ce04290175c3e6b3e541e84f1feaef122ef806ff477fa5",
  "kind": "initialize",
  "lexical_name": null,
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
  "slug": "initialize--f795e78f936d4ccd010876e9",
  "source": {
    "blob": "4c06dd7f4a94c8363ba5c038064f4ae9b82f1e40",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 59,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedModule/Variantec231e298d0d59a554f9fe72b93af2176f675d6f0518dcde5a44b6a6066bba80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f795e78f936d4ccd010876e9c930b5fd1489758f3fb736b7b32779fdb77e83fe",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedModule/Variantec231e298d0d59a554f9fe72b93af2176f675d6f0518dcde5a44b6a6066bba80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `initialize` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f89844c408f5743248ce04290175c3e6b3e541e84f1feaef122ef806ff477fa5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
initialize deprecatedModuleExt :
    SimplePersistentEnvExtension
      (Name × Array Name × Option String) (Std.HashSet (Name × Array Name × Option String)) ←
  registerSimplePersistentEnvExtension {
    addImportedFn := (·.foldl Std.HashSet.insertMany {})
    addEntryFn := .insert
  }

/--
`addModuleDeprecation` adds to the `deprecatedModuleExt` extension the pair consisting of the
current module name and the array of its direct imports.

It ignores the `Init` import, since this is a special module that is expected to be imported
by all files.

It also ignores the `Mathlib/Tactic/Linter/DeprecatedModule.lean` import (namely, the current file),
since there is no need to import this module.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedModule/Variantec231e298d0d59a554f9fe72b93af2176f675d6f0518dcde5a44b6a6066bba80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedModule/Variantec231e298d0d59a554f9fe72b93af2176f675d6f0518dcde5a44b6a6066bba80.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c06dd7f4a94c8363ba5c038064f4ae9b82f1e40` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
