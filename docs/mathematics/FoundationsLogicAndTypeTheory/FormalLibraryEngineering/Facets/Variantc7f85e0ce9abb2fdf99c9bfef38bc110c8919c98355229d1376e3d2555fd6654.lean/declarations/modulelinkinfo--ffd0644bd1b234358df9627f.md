# ModuleLinkInfo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:67a1663b58d25f76788009cf3dd2a2bfe80ae722aa358a7e9ee00e3f0bc62155",
  "kind": "structure",
  "lexical_name": "ModuleLinkInfo",
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
  "slug": "modulelinkinfo--ffd0644bd1b234358df9627f",
  "source": {
    "blob": "d54c53a7e7f16ed236f03f0d54c692217a45ae96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 199,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Facets/Variantc7f85e0ce9abb2fdf99c9bfef38bc110c8919c98355229d1376e3d2555fd6654.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ffd0644bd1b234358df9627f885cf82483bc2748d3bfbbf0822585cd16bb20dd",
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

Occurrence: `declaration:67a1663b58d25f76788009cf3dd2a2bfe80ae722aa358a7e9ee00e3f0bc62155`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–304.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public structure ModuleLinkInfo where
  args : Array String
  objs : Array FilePath
  libs : Array Dynlib
  deriving Inhabited

/-- Link information for the module with Lean symbols exported. -/
builtin_facet linkInfoExport : Module => ModuleLinkInfo

/-- Link information for the module without Lean symbols exported. -/
builtin_facet linkInfoNoExport : Module => ModuleLinkInfo

/-! ## Package Facets -/

/--
A package's *optional* cached build archive (e.g., from Reservoir or GitHub).
Will NOT cause the whole build to fail if the archive cannot be fetched.
-/
builtin_facet optBuildCacheFacet @ optCache : Package => Bool

/--
A package's cached build archive (e.g., from Reservoir or GitHub).
Will cause the whole build to fail if the archive cannot be fetched.
-/
builtin_facet buildCacheFacet @ cache : Package => Unit

/--
A package's *optional* build archive from Reservoir.
Will NOT cause the whole build to fail if the barrel cannot be fetched.
-/
builtin_facet optReservoirBarrelFacet @ optBarrel : Package => Bool

/--
A package's Reservoir build archive from Reservoir.
Will cause the whole build to fail if the barrel cannot be fetched.
-/
builtin_facet reservoirBarrelFacet @ barrel : Package => Unit

/--
A package's *optional* build archive from a GitHub release.
Will NOT cause the whole build to fail if the release cannot be fetched.
-/
builtin_facet optGitHubReleaseFacet @ optRelease : Package => Bool

/--
A package's build archive from a GitHub release.
Will cause the whole build to fail if the release cannot be fetched.
-/
builtin_facet gitHubReleaseFacet @ release : Package => Unit

/-- A package's `extraDepTargets` mixed with its transitive dependencies'. -/
builtin_facet extraDep : Package => Unit

/-! ## Target Facets -/

/-- The library's default facets (as specified by its `defaultFacets` configuration). . -/
builtin_facet default : LeanLib => Unit

/-- A Lean library's Lean artifacts (e.g., `olean`, `ilean`, `c`). -/
builtin_facet leanArts : LeanLib => Unit

/-- A Lean library's static artifact. -/
builtin_facet static : LeanLib => FilePath

/--
A Lean library's static artifact (with exported symbols).

Static libraries with explicit exports are built as thin libraries.
Such libraries are usually used as part of the local build process of some
shared artifact and not publicly distributed. Standard static libraries are
much better for distribution.
-/
builtin_facet staticExportFacet @ static.export : LeanLib => FilePath

/-- A Lean library's shared artifact. -/
builtin_facet shared : LeanLib => Dynlib

/-- A Lean library's `extraDepTargets` mixed with its package's. -/
builtin_facet extraDep : LeanLib => Unit

/-- The executable's default facet (i.e., an alias for `exe`) -/
builtin_facet default : LeanExe => FilePath

/-- A Lean binary executable. -/
builtin_facet exe : LeanExe => FilePath

/-- The external library's default facet (i.e., an alias for `static`) -/
builtin_facet default : ExternLib => FilePath

/-- A external library's static binary. -/
builtin_facet static : ExternLib => FilePath

/-- A external library's shared binary. -/
builtin_facet shared : ExternLib => FilePath

/-- A external library's dynlib. -/
builtin_facet dynlib : ExternLib => Dynlib

/-- The default facet for an input file. Produces the file path. -/
builtin_facet default : InputFile => FilePath

/--
The default facet for an input directory.
Produces the matching files in the directory.
-/
builtin_facet default : InputDir => Array FilePath
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Facets/Variantc7f85e0ce9abb2fdf99c9bfef38bc110c8919c98355229d1376e3d2555fd6654.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Facets/Variantc7f85e0ce9abb2fdf99c9bfef38bc110c8919c98355229d1376e3d2555fd6654.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d54c53a7e7f16ed236f03f0d54c692217a45ae96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
