# loadWorkspaceRoot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2e99e73b6dc0b6816d7d05f56f9fd86375001ba477f3ed76088f5c2866e6671d",
  "kind": "def",
  "lexical_name": "loadWorkspaceRoot",
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
  "slug": "loadworkspaceroot--a8a71ce8cb37bd5bc2454263",
  "source": {
    "blob": "1a42a44a0cc5034e83668c83e2c95ecaf5fe3bd2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 31,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Workspace/Variantdd23a173478243833d443dae8ffd28695f9a9b0ca00dd03ee88d039d1f6dd129.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a8a71ce8cb37bd5bc2454263ee6eb2f81fbe1af0477fe82dadb51c6e3f405985",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Workspace/Variantdd23a173478243833d443dae8ffd28695f9a9b0ca00dd03ee88d039d1f6dd129.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2e99e73b6dc0b6816d7d05f56f9fd86375001ba477f3ed76088f5c2866e6671d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def loadWorkspaceRoot (config : LoadConfig) : LogIO Workspace := do
  Lean.searchPathRef.set config.lakeEnv.leanSearchPath
  let lakeConfig ← loadLakeConfig config.lakeEnv
  let config := {config with pkgIdx := 0}
  let ⟨config, h⟩ ← resolveConfigFile "[root]" config
  let fileCfg ← loadConfigFile config h
  let root := mkPackage config fileCfg 0
  have wsIdx_root : root.wsIdx = 0 := wsIdx_mkPackage
  let facetConfigs := fileCfg.facetDecls.foldl (·.insert ·.config) initFacetConfigs
  return {
    lakeEnv := config.lakeEnv
    lakeCache := computeLakeCache root config.lakeEnv
    lakeConfig
    lakeArgs? := config.lakeArgs?
    facetConfigs
    packages := #[root]
    packageMap := DNameMap.empty.insert root.keyName root
    size_packages_pos := by simp
    packages_wsIdx {i} h := by
      cases i with
      | zero => simp [wsIdx_root]
      | succ => simp at h
    depIdxs_packages := by simp [root]
  }

/--
Load a `Workspace` for a Lake package by
elaborating its configuration file and resolving its dependencies.
If `updateDeps` is true, updates the manifest before resolving dependencies.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Workspace/Variantdd23a173478243833d443dae8ffd28695f9a9b0ca00dd03ee88d039d1f6dd129.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Workspace/Variantdd23a173478243833d443dae8ffd28695f9a9b0ca00dd03ee88d039d1f6dd129.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a42a44a0cc5034e83668c83e2c95ecaf5fe3bd2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
