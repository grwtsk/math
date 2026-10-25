# mkPackage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:414bb2549b3789a7f1f3348219b84a37cbcf42a6dd5229aa8a74203493fd49e1",
  "kind": "def",
  "lexical_name": "mkPackage",
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
  "slug": "mkpackage--c5baa59a18620b30436cf224",
  "source": {
    "blob": "8c3ceb3c61c8b0bffb3035939baaa38f818d69ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 35,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Varianta4547c5fbe45bb7c38762dd8036f1897576599930d541b4121f4cb45808f63dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c5baa59a18620b30436cf224ad31a2b3fb816166a6641e57336cc453da38e2bf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Varianta4547c5fbe45bb7c38762dd8036f1897576599930d541b4121f4cb45808f63dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:414bb2549b3789a7f1f3348219b84a37cbcf42a6dd5229aa8a74203493fd49e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def mkPackage
  (loadCfg : LoadConfig) (fileCfg : LakefileConfig) (wsIdx := loadCfg.pkgIdx)
: Package :=
  let {
    pkgDir := dir, relPkgDir := relDir,
    configFile, relConfigFile, relManifestFile,
    scope, remoteUrl, ..} := loadCfg
  let {
    depConfigs, defaultTargets, scripts, defaultScripts, testDriver, lintDriver
    -- destructing needed for type-correctness
    pkgDecl, targetDecls, targetDeclMap, postUpdateHooks,
    ..} := fileCfg
  let {baseName, keyName, origName, config} := pkgDecl
  {
    wsIdx, baseName, keyName, origName, config
    dir, relDir, configFile, relConfigFile, relManifestFile
    scope, remoteUrl
    depConfigs
    targetDecls, targetDeclMap, defaultTargets
    scripts, defaultScripts
    testDriver, lintDriver
    postUpdateHooks
  }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Varianta4547c5fbe45bb7c38762dd8036f1897576599930d541b4121f4cb45808f63dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Varianta4547c5fbe45bb7c38762dd8036f1897576599930d541b4121f4cb45808f63dd.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c3ceb3c61c8b0bffb3035939baaa38f818d69ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
