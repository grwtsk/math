# ModuleExportInfo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dea164af07b46eeb8fad9e41fe1ccdfa29578b847f0dca869f9492d92b8158b1",
  "kind": "structure",
  "lexical_name": "ModuleExportInfo",
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
  "slug": "moduleexportinfo--bd5b46eb135881e9b1fd0b3a",
  "source": {
    "blob": "d54c53a7e7f16ed236f03f0d54c692217a45ae96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 97,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Facets/Variantc7f85e0ce9abb2fdf99c9bfef38bc110c8919c98355229d1376e3d2555fd6654.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bd5b46eb135881e9b1fd0b3a252c07631729ecd48cf4ac1e935fab6b0a9f3e45",
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

Occurrence: `declaration:dea164af07b46eeb8fad9e41fe1ccdfa29578b847f0dca869f9492d92b8158b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public structure ModuleExportInfo where
  /-- The trace of the module's source file. -/
  srcTrace : BuildTrace
  /-- Artifacts directly needed for an `import` of the module with the module system enabled. -/
  arts : ImportArtifacts
  /-- The trace of the module's public olean. -/
  artsTrace : BuildTrace
  /-- The trace of the module's public olean and IR. -/
  metaArtsTrace : BuildTrace
  /--
  Artifacts directly needed for an `import` of the module from a module without the module
  system enabled or `import all` of the module from a module with it enabled.
  -/
  allArts : ImportArtifacts
  /-- The trace produced by mixing the traces of `allArts`. -/
  allArtsTrace : BuildTrace
  /-- Transitive import trace for an `import` of the module with the module system enabled. -/
  transTrace : BuildTrace
  /-- Transitive import trace for a `meta import` of the module. -/
  metaTransTrace : BuildTrace
  /-- Transitive import trace for an `import all` of the module. -/
  allTransTrace : BuildTrace
  /-- Transitive import trace for an `import` of the module without the module system enabled. -/
  legacyTransTrace : BuildTrace
  deriving Inhabited

/-- **For internal use only.** Information useful to importers of this module. -/
builtin_facet exportInfo : Module => ModuleExportInfo

/-- Artifacts directly needed for an `import` of this module with the module system enabled. -/
builtin_facet importArts : Module => ImportArtifacts

/--
Artifacts directly needed for an `import` of this module from a module without the module
system enabled or `import all` of this module from a module with it enabled.
-/
builtin_facet importAllArts : Module => ImportArtifacts

/--
The core build facet of a Lean file.
Elaborates the Lean file via `lean` and produces all the Lean artifacts
of the module (e.g., `olean`, `ilean`, `c`).
Its trace just includes its dependencies.
-/
builtin_facet leanArts : Module => ModuleOutputArtifacts

/-- A compressed archive (produced via `leantar`) of the module's build artifacts. -/
builtin_facet ltar : Module => FilePath

/-- The `olean` file produced by `lean`. -/
builtin_facet olean : Module => FilePath

/-- The `olean.server` file produced by `lean` (with the module system enabled). -/
builtin_facet oleanServerFacet @ olean.server : Module => FilePath

/-- The `olean.private` file produced by `lean` (with the module system enabled). -/
builtin_facet oleanPrivateFacet @ olean.private : Module => FilePath

/-- The `ilean` file produced by `lean`. -/
builtin_facet ilean : Module => FilePath

/-- The `ir.sig` file produced by `lean` (with the module system enabled). -/
builtin_facet irSigFacet @ ir.sig : Module => FilePath

/-- The `ir` file produced by `lean` (with the module system enabled). -/
builtin_facet ir : Module => FilePath

/-- The C file produced by `lean`. -/
builtin_facet c : Module => FilePath

/-- The LLVM bitcode (`bc`) file produced by `lean`. -/
builtin_facet bc : Module => FilePath

/--
The object file `.c.o` built from `c`.
On Windows, this is `c.o.noexport`, on other systems it is `c.o.export`).
-/
builtin_facet coFacet @ c.o : Module => FilePath

/-- The object file `.c.o.export` built from `c` (with `-DLEAN_EXPORTING`). -/
builtin_facet coExportFacet @ c.o.export : Module => FilePath

/-- The object file `.c.o.noexport` built from `c` (without `-DLEAN_EXPORTING`). -/
builtin_facet coNoExportFacet @ c.o.noexport : Module => FilePath

/-- The object file `.bc.o` built from `bc`. -/
builtin_facet bcoFacet @ bc.o : Module => FilePath

/--
The object file built from `c`/`bc`.
On Windows with the C backend, no Lean symbols are exported.
On every other configuration, symbols are exported.
-/
builtin_facet o : Module => FilePath

/-- The object file built from `c`/`bc` (with Lean symbols exported). -/
builtin_facet oExportFacet @ o.export : Module => FilePath

/-- The object file built from `c`/`bc` (without Lean symbols exported). -/
builtin_facet oNoExportFacet @ o.noexport : Module => FilePath

/-- Information useful for linking to a module and its dependencies. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Facets/Variantc7f85e0ce9abb2fdf99c9bfef38bc110c8919c98355229d1376e3d2555fd6654.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Facets/Variantc7f85e0ce9abb2fdf99c9bfef38bc110c8919c98355229d1376e3d2555fd6654.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d54c53a7e7f16ed236f03f0d54c692217a45ae96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
