# Workspace.addDepPackage'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6163733f67233662a58a3e5a6040695b79775e80dab8a5fd963abe341674fa9f",
  "kind": "def",
  "lexical_name": "Workspace.addDepPackage'",
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
  "slug": "workspace-adddeppackage--bac5dade0e64862cbc14d8cf",
  "source": {
    "blob": "12bc63da52e494f596009abb873fad86cfda7530",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 64,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variantdd1bc95fc3b3a4b9cb12d01951ad9c63fc5343f41b81b408282f108a824bc2c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bac5dade0e64862cbc14d8cf67b84e073529e10c58daf167f45d887a4d8a76bf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variantdd1bc95fc3b3a4b9cb12d01951ad9c63fc5343f41b81b408282f108a824bc2c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6163733f67233662a58a3e5a6040695b79775e80dab8a5fd963abe341674fa9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Workspace.addDepPackage'
  (ws : Workspace) (dep : MaterializedDep)
  (lakeOpts : NameMap String) (leanOpts : Options) (reconfigure : Bool)
: LogIO {ws' : Workspace // ws'.packages.size = ws.packages.size + 1} := do
  let wsIdx := ws.packages.size
  let loadCfg := mkDepLoadConfig ws dep lakeOpts leanOpts reconfigure
  let ⟨loadCfg, h⟩ ← resolveConfigFile dep.prettyName loadCfg
  let fileCfg ← loadConfigFile loadCfg h
  let pkg := mkPackage loadCfg fileCfg wsIdx
  let ws := ws.addPackage' pkg wsIdx_mkPackage depIdxs_mkPackage |>.addFacetDecls fileCfg.facetDecls
  return ⟨ws, by simp [ws, packages_addFacetDecls, packages_addPackage']⟩


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variantdd1bc95fc3b3a4b9cb12d01951ad9c63fc5343f41b81b408282f108a824bc2c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variantdd1bc95fc3b3a4b9cb12d01951ad9c63fc5343f41b81b408282f108a824bc2c1.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12bc63da52e494f596009abb873fad86cfda7530` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
