# Workspace.updateAndMaterializeCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:690dcd9a78ff14a785716e8588ab9dbe03165fdcd91801aebec4dc1e5fdf3025",
  "kind": "def",
  "lexical_name": "Workspace.updateAndMaterializeCore",
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
  "slug": "workspace-updateandmaterializecore--be029308b0a2603baa843b8d",
  "source": {
    "blob": "12bc63da52e494f596009abb873fad86cfda7530",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 502,
    "line": 454,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variantdd1bc95fc3b3a4b9cb12d01951ad9c63fc5343f41b81b408282f108a824bc2c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:be029308b0a2603baa843b8d97cc081e44cd6395c0576fdf38734af76e1cb106",
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

Occurrence: `declaration:690dcd9a78ff14a785716e8588ab9dbe03165fdcd91801aebec4dc1e5fdf3025`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 454–502.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Workspace.updateAndMaterializeCore
  (ws : Workspace)
  (toUpdate : NameSet := {}) (leanOpts : Options := {})
  (updateToolchain := true)
: LoggerIO (Workspace × NameMap PackageEntry) := UpdateT.run do
  reuseManifest ws toUpdate
  if updateToolchain then
    let numDeps := ws.root.depConfigs.size
    -- Update and materialize the top-level dependenciess
    let deps : Vector _ numDeps := Vector.mk ws.root.depConfigs.reverse (by simp [numDeps])
    let matDeps ← deps.mapM fun dep => do
      logVerbose s!"{ws.root.prettyName}: updating '{dep.name}' with {toJson dep.opts}"
      updateAndMaterializeDep ws ws.root dep
    -- Update the toolchain based on the top-level dependenciess
    ws.updateToolchain matDeps.toArray
    -- Load the top-level dependenciess
    let start := ws.packages.size
    let ⟨ws, start_le⟩ ← id do
      let mut ws' : {ws : Workspace // start ≤ ws.packages.size} := ⟨ws, Nat.le_refl _⟩
      for h : i in 0...<numDeps do
        let matDep := matDeps[i]
        addDependencyEntries matDep
        let lakeOpts := deps[i].opts
        let ⟨ws, h⟩ ← ws'.val.addDepPackage' matDep lakeOpts leanOpts true
        ws' := ⟨ws, Nat.le_trans ws'.property <| by simp [h]⟩
      return ws'
    let stop := ws.packages.size
    let ws := ws.setDepIdxs ws.root (start...<stop).toArray ws.wsIdx_root_lt <| by
      simp [Std.Rco.mem_toArray_iff_mem, Std.Rco.mem_iff, stop]
    if start_ne : start ≠ stop then
      -- Resolve the top-level dependencies' dependencies'
      have start_lt : start < ws.packages.size := by
        simpa [ws] using Nat.lt_of_le_of_ne start_le start_ne
      ws.resolveDepsCore updateAndAddDep
        start start_lt (start+1) (Nat.lt_add_one start)
        (leanOpts := leanOpts) (reconfigure := true)
    else
      return ws.updateDepPkgs
  else
    ws.resolveDepsCore updateAndAddDep
      ws.root.wsIdx ws.wsIdx_root_lt ws.packages.size ws.wsIdx_root_lt
      (leanOpts := leanOpts) (reconfigure := true)
where
  @[inline] updateAndAddDep pkg dep ws := do
    let matDep ← updateAndMaterializeDep ws pkg dep
    addDependencyEntries matDep
    return matDep

/-- Write package entries to the workspace manifest. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variantdd1bc95fc3b3a4b9cb12d01951ad9c63fc5343f41b81b408282f108a824bc2c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variantdd1bc95fc3b3a4b9cb12d01951ad9c63fc5343f41b81b408282f108a824bc2c1.lean#L454).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12bc63da52e494f596009abb873fad86cfda7530` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
