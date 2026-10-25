# Package.mkLeanConfig

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:194599daf71976acffe3acb29ba38f4f29c886fdcb55be4ec453cbe70d99da9b",
  "kind": "def",
  "lexical_name": "Package.mkLeanConfig",
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
  "slug": "package-mkleanconfig--b223aef7d8d1e2fcdc088a92",
  "source": {
    "blob": "df0f3ae67fe392b6879fe7439d1e2c5a07db7677",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 383,
    "line": 370,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lean/Variantd0af113ee3d6524ad9ab60d7cc9bae1b92f80e159b87e80a74cd404c7b9d4b29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b223aef7d8d1e2fcdc088a92f8da87f74f590b4e3119d269fa8e3d43a33339dd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lean/Variantd0af113ee3d6524ad9ab60d7cc9bae1b92f80e159b87e80a74cd404c7b9d4b29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:194599daf71976acffe3acb29ba38f4f29c886fdcb55be4ec453cbe70d99da9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 370–383.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def Package.mkLeanConfig (pkg : Package) : TSyntax ``module := Unhygienic.run do
  let pkgConfig : PackageConfig pkg.keyName pkg.origName :=
    {pkg.config with testDriver := pkg.testDriver, lintDriver := pkg.lintDriver}
  let defaultTargets := pkg.defaultTargets.foldl NameSet.insert NameSet.empty
  `(module|
  import $(mkIdent `Lake)
  open $(mkIdent `System) $(mkIdent `Lake) $(mkIdent `DSL)
  $(pkgConfig.mkCommand):command
  $[$(pkg.depConfigs.map (·.mkRequire)):command]*
  $[$(pkg.mkTargetCommands defaultTargets LeanLib.configKind LeanLibConfig.mkCommand):command]*
  $[$(pkg.mkTargetCommands defaultTargets LeanExe.configKind LeanExeConfig.mkCommand):command]*
  $[$(pkg.mkTargetCommands defaultTargets InputFile.configKind InputFileConfig.mkCommand):command]*
  $[$(pkg.mkTargetCommands defaultTargets InputDir.configKind InputDirConfig.mkCommand):command]*
  )
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lean/Variantd0af113ee3d6524ad9ab60d7cc9bae1b92f80e159b87e80a74cd404c7b9d4b29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lean/Variantd0af113ee3d6524ad9ab60d7cc9bae1b92f80e159b87e80a74cd404c7b9d4b29.lean#L370).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df0f3ae67fe392b6879fe7439d1e2c5a07db7677` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
