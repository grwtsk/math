# Workspace.updateToolchain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3ca8106759b056a7dca41804b95c9cbbaa80505e3552c09beabd208365a24638",
  "kind": "def",
  "lexical_name": "Workspace.updateToolchain",
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
  "slug": "workspace-updatetoolchain--a94c6f2df7673c923da483b8",
  "source": {
    "blob": "65f8fed0afd70a439a4e611a1d9aa029e0f7f523",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 461,
    "line": 359,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variant9c8d3a0c27b06e650ba643bc6a4b82373ba572da051b3b33e516b4014ff0d2f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a94c6f2df7673c923da483b8b8950cc005f615000cf28054ae97eccdc06d6bea",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variant9c8d3a0c27b06e650ba643bc6a4b82373ba572da051b3b33e516b4014ff0d2f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3ca8106759b056a7dca41804b95c9cbbaa80505e3552c09beabd208365a24638`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 359–461.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def Workspace.updateToolchain
  (ws : Workspace) (rootDeps : Array MaterializedDep)
: LoggerIO PUnit := do
  let rootToolchainFile := ws.root.dir / toolchainFileName
  let rootTc? ← ToolchainVer.ofDir? ws.dir
  let s : ToolchainState := ⟨ws.root.baseName, rootTc?, #[], ws.root.fixedToolchain⟩
  let ⟨src, tc?, tcs, fixed⟩ ← rootDeps.foldlM (init := s) fun s dep => do
    let depTc? ← ToolchainVer.ofDir? (ws.dir / dep.relPkgDir)
    let some depTc := depTc?
      | return s
    let some tc := s.tc?
      | return s.replace dep.name depTc? dep.fixedToolchain
    if dep.fixedToolchain then
      if s.fixed then
        if tc = depTc then
          return s
        else
          return s.addClash dep.name depTc dep.fixedToolchain -- true
      else
        if tc ≤ depTc then
          return s.replace dep.name depTc dep.fixedToolchain -- true
        else
          return s.addClash dep.name depTc dep.fixedToolchain -- true
    else
      if depTc ≤ tc then
        return s
      else if !s.fixed && tc < depTc then
        return s.replace dep.name depTc dep.fixedToolchain -- false
      else
        return s.addClash dep.name depTc dep.fixedToolchain -- false
  if 0 < tcs.size then
    let s := "toolchain not updated; multiple toolchain candidates:"
    let addEntry s tc src fixed :=
      let fixed := if fixed then " (fixed toolchain)" else ""
      s!"{s}\n  {tc}\n    from {src}{fixed}"
    let s := if let some tc := tc? then addEntry s tc src fixed else s
    let s := tcs.foldl (init := s) fun s ⟨src, tc, fixed⟩ => addEntry s tc src fixed
    logWarning s
  else if let some tc := tc? then
    if rootTc?.any (· == tc) then
      logInfo "toolchain not updated; already up-to-date"
      return
    logInfo s!"updating toolchain to '{tc}'"
    IO.FS.writeFile rootToolchainFile tc.toString
    let some lakeArgs := ws.lakeArgs?
      | logInfo s!"cannot auto-restart; you will need to manually restart Lake"
        IO.Process.exit restartCode.toUInt8
    let some elanInstall := ws.lakeEnv.elan?
      | logInfo s!"no Elan detected; you will need to manually restart Lake"
        IO.Process.exit restartCode.toUInt8
    logInfo s!"restarting Lake via Elan"
    let child ← IO.Process.spawn {
      cmd := elanInstall.elan.toString
      args := #["run", "--install", tc.toString, "lake"] ++ lakeArgs
      env := ws.lakeEnv.noToolchainVars
    }
    IO.Process.exit (← child.wait).toUInt8
  else
    logInfo s!"toolchain not updated; no toolchain information found"

/--
Updates the workspace, materializing and reconfiguring dependencies.

Dependencies are updated to latest specific revision matching that in `require`
(e.g., if the `require` is `@master`, update to latest commit on master) or
removed if the `require` is removed.
If `tuUpdate` is empty, all direct dependencies of the workspace's root will be
updated and/or remove. Otherwise, only those specified will be updated.

If `updateToolchain := true`, the workspace's toolchain is also updated to the
latest toolchain compatible with the root and its direct dependencies.
If there are multiple incomparable toolchain versions across them,
a warning will be issued and no update performed.
If an update is performed, Lake will automatically restart the update on the new
toolchain (via `elan`). If `elan` is missing, it will instead request a manual
restart from the user and exit immediately with `restartCode`.

**Dependency Traversal Order**

All dependencies of a package are visited in reverse order before recursing
to the dependencies' dependencies. For example, given the dependency graph:

```
R
|- A
|- B
 |- X
 |- Y
|- C
```

Lake follows the order `R`, `C`, `B`, `A`, `Y`, `X`.

The reason for this is two-fold:
1. Like targets, later requires should shadow earlier definitions.
2. Requires written by a user should take priority over those inherited
from dependencies.

Were Lake to use a depth-first traversal, for example, Lake would follow
the order `R`, `A`, `B`, `X`, `Y`, `C`. If `X` and `C` are both the package
`foo`, Lake would use the configuration of `foo` found in `B` rather than in
the root `R`, which would likely confuse the user.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variant9c8d3a0c27b06e650ba643bc6a4b82373ba572da051b3b33e516b4014ff0d2f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variant9c8d3a0c27b06e650ba643bc6a4b82373ba572da051b3b33e516b4014ff0d2f1.lean#L359).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65f8fed0afd70a439a4e611a1d9aa029e0f7f523` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
