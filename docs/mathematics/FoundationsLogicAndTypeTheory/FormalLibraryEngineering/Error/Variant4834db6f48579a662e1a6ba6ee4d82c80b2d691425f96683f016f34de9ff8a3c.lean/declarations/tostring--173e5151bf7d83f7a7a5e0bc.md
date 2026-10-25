# toString

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f9a854ecbd6d789e28d3e1af11bcdbf7547e468f8ab2457399406bdd461caa1f",
  "kind": "def",
  "lexical_name": "toString",
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
  "slug": "tostring--173e5151bf7d83f7a7a5e0bc",
  "source": {
    "blob": "c17a3e8255af812bc1a32e5a03b61e7dc3b76e56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 59,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Error/Variant4834db6f48579a662e1a6ba6ee4d82c80b2d691425f96683f016f34de9ff8a3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:173e5151bf7d83f7a7a5e0bcf180a59f0344a2b2107072681485edb6bd8fafd0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Error/Variant4834db6f48579a662e1a6ba6ee4d82c80b2d691425f96683f016f34de9ff8a3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f9a854ecbd6d789e28d3e1af11bcdbf7547e468f8ab2457399406bdd461caa1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public protected def toString : CliError → String
| missingCommand          => "missing command"
| unknownCommand cmd      => s!"unknown command '{cmd}'"
| missingArg arg          => s!"missing {arg}"
| missingOptArg opt arg   => s!"missing {arg} for {opt}"
| invalidOptArg opt arg   => s!"invalid argument for {opt}; expected {arg}"
| unknownShortOption opt  => s!"unknown short option '-{opt}'"
| unknownLongOption opt   => s!"unknown long option '{opt}'"
| unexpectedArguments as  => s!"unexpected arguments: {" ".intercalate as}"
| unexpectedPlus          =>
  s!"the `+` option is an Elan feature; \
    rerun Lake via Elan and ensure this option comes first."
| unknownTemplate spec    => s!"unknown package template `{spec}`"
| unknownConfigLang spec  => s!"unknown configuration language `{spec}`"
| unknownModule mod       => s!"unknown module `{mod.toString false}`"
| unknownModulePath p     => s!"unknown module source path `{p}`"
| unknownPackage spec     => s!"unknown package `{spec}`"
| unknownFacet ty f       => s!"unknown {ty} facet `{f.toString false}`"
| unknownTarget t         => s!"unknown target `{t.toString false}`"
| missingModule pkg mod   => s!"package '{pkg.toString false}' has no module '{mod.toString false}'"
| missingTarget pkg spec  => s!"package '{pkg.toString false}' has no target '{spec}'"
| invalidBuildTarget t    => s!"'{t}' is not a build target (perhaps you meant 'lake query'?)"
| invalidTargetSpec s c   => s!"invalid target specifier '{s}' (too many '{c}')"
| invalidFacet t f        => s!"invalid facet `{f.toString false}`; target {t.toString false} has no facets"
| unknownExe s            => s!"unknown executable {s}"
| unknownScript s         => s!"unknown script {s}"
| missingScriptDoc s      => s!"no documentation provided for `{s}`"
| invalidScriptSpec s     => s!"invalid script specifier '{s}' (too many '/')"
| outputConfigExists f    => s!"output configuration file already exists: {f}"
| unknownLeanInstall      => "could not detect a Lean installation"
| unknownLakeInstall      => "could not detect the configuration of the Lake installation"
| leanRevMismatch e a     => s!"expected Lean commit {e}, but got {if a.isEmpty then "nothing" else a}"
| invalidEnv msg          => msg
| missingRootDir p        => s!"workspace directory not found: {p}"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Error/Variant4834db6f48579a662e1a6ba6ee4d82c80b2d691425f96683f016f34de9ff8a3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Error/Variant4834db6f48579a662e1a6ba6ee4d82c80b2d691425f96683f016f34de9ff8a3c.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c17a3e8255af812bc1a32e5a03b61e7dc3b76e56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
