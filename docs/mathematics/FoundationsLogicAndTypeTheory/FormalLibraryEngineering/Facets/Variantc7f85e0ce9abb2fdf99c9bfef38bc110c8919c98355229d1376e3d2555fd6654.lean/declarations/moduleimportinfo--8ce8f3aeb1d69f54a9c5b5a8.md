# ModuleImportInfo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4dce638364806af42ff39cbb7fa879008b4e00ecf6e7747666925780f1fb65eb",
  "kind": "structure",
  "lexical_name": "ModuleImportInfo",
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
  "slug": "moduleimportinfo--8ce8f3aeb1d69f54a9c5b5a8",
  "source": {
    "blob": "d54c53a7e7f16ed236f03f0d54c692217a45ae96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 78,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Facets/Variantc7f85e0ce9abb2fdf99c9bfef38bc110c8919c98355229d1376e3d2555fd6654.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8ce8f3aeb1d69f54a9c5b5a89d2187e0c054c9587d2decd0622ba7691e2e96e9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Facets/Variantc7f85e0ce9abb2fdf99c9bfef38bc110c8919c98355229d1376e3d2555fd6654.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4dce638364806af42ff39cbb7fa879008b4e00ecf6e7747666925780f1fb65eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public structure ModuleImportInfo where
  /-- Artifacts directly needed for the imports of the module. -/
  directArts : NameMap ImportArtifacts
  /-- The trace produced by mixing the traces of `directArts` with their transitive imports. -/
  trace : BuildTrace
  /-- Transitive import trace for an `import` of the module with the module system enabled. -/
  transTrace : BuildTrace
  /-- Transitive import trace for a `meta import` of the module. -/
  metaTransTrace : BuildTrace
  /-- Transitive import trace for an `import all` of the module. -/
  allTransTrace : BuildTrace
  /-- Transitive import trace for an `import` of the module without the module system enabled. -/
  legacyTransTrace : BuildTrace
  deriving Inhabited

/-- **For internal use only.** Information about the imports of this module. -/
builtin_facet importInfo : Module => ModuleImportInfo

/-- Information useful to importers of a module. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Facets/Variantc7f85e0ce9abb2fdf99c9bfef38bc110c8919c98355229d1376e3d2555fd6654.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Facets/Variantc7f85e0ce9abb2fdf99c9bfef38bc110c8919c98355229d1376e3d2555fd6654.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d54c53a7e7f16ed236f03f0d54c692217a45ae96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
