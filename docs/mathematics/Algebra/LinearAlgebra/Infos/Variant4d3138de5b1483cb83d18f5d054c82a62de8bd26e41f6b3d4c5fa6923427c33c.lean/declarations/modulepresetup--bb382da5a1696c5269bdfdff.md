# ModulePreSetup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5c6b7fdef1a78269262bce11df148e0240da26d311ff0f6fab2eef49cd8b58ba",
  "kind": "structure",
  "lexical_name": "ModulePreSetup",
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
  "slug": "modulepresetup--bb382da5a1696c5269bdfdff",
  "source": {
    "blob": "cc9e9d546b7eb3ca18aa4261dbcb6f4e003a416b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 84,
    "path": "GRWTSK/Algebra/LinearAlgebra/Infos/Variant4d3138de5b1483cb83d18f5d054c82a62de8bd26e41f6b3d4c5fa6923427c33c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bb382da5a1696c5269bdfdff82270954399e44e89b1b002619e4cc9c87919dd5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Infos/Variant4d3138de5b1483cb83d18f5d054c82a62de8bd26e41f6b3d4c5fa6923427c33c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5c6b7fdef1a78269262bce11df148e0240da26d311ff0f6fab2eef49cd8b58ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public structure ModulePreSetup where
  trace : BuildTrace
  srcMTime : MTime
  srcFile : FilePath
  isModule : Bool
  directImports : Array ModuleImport
  directImportArts : NameMap ImportArtifacts
  plugins : Array Dynlib
  dynlibs : Array Dynlib
  leanOptions : LeanOptions

/--
The computed dynamic configuration of a module.

In the process, this facet will build all of a module's dependencies,
including transitive imports, plugins, and those specified by `needs`.

**For internal use only.**
-/
builtin_facet presetup : Module => ModulePreSetup

/-- The transitive local imports of the Lean module. -/
builtin_facet transImports : Module => Array Module

/-- The transitive local imports of the Lean module. -/
builtin_facet precompileImports : Module => Array Module

/-- Shared library for `--load-dynlib`. -/
builtin_facet dynlib : Module => Dynlib

/-- A Lean library's Lean modules. -/
builtin_facet modules : LeanLib => Array Module

/-- The package's array of dependencies. -/
builtin_facet deps : Package => Array Package

/-- The package's complete array of transitive dependencies. -/
builtin_facet transDeps : Package => Array Package

/-!
### Facet Build Info Helper Constructors

Definitions to easily construct `BuildInfo` values for module, package,
and target facets.
-/

/-! #### Module Infos -/

/--
Build info for applying the specified facet to the module.
It is the user's obligation to ensure the facet in question is a module facet.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Infos/Variant4d3138de5b1483cb83d18f5d054c82a62de8bd26e41f6b3d4c5fa6923427c33c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Infos/Variant4d3138de5b1483cb83d18f5d054c82a62de8bd26e41f6b3d4c5fa6923427c33c.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc9e9d546b7eb3ca18aa4261dbcb6f4e003a416b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
