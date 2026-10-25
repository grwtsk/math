# addDeclCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a4bb9922bc154235de2cb530962b3494f8f3d6c431c37f6a9aa221c364541f14",
  "kind": "def",
  "lexical_name": "addDeclCore",
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
  "slug": "adddeclcore--d3d885aef7df50224d89df1b",
  "source": {
    "blob": "a65ac0db1e833fa21a7c58867dc0ad11499340f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 109,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddDecl/Varianta1db194fde3db8e51e1d27b9026b62026808983595cc492ab95d2777f42e8c10.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d3d885aef7df50224d89df1b7c4110634d7519fd23fe6255b06ea7c748b5ec40",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddDecl/Varianta1db194fde3db8e51e1d27b9026b62026808983595cc492ab95d2777f42e8c10.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a4bb9922bc154235de2cb530962b3494f8f3d6c431c37f6a9aa221c364541f14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def addDeclCore (decl : Declaration) (forceExpose : Bool) : CoreM Unit :=
  withTraceNode `addDecl (fun _ => return m!"adding declarations {decl.getNames}") do
  -- register namespaces for newly added constants; this used to be done by the kernel itself
  -- but that is incompatible with moving it to a separate task
  -- NOTE: we do not use `getTopLevelNames` here so that inductive types are registered as
  -- namespaces
  modifyEnv (decl.getNames.foldl registerNamePrefixes)

  -- convert `Declaration` to `ConstantInfo` to use as a preliminary value in the environment until
  -- kernel checking has finished; not all cases are supported yet
  let mut exportedInfo? := none
  let (name, info, kind) ← match decl with
    | .thmDecl thm =>
      if !forceExpose && (← getEnv).header.isModule then
        trace[addDecl] "exporting theorem {thm.name} as axiom"
        exportedInfo? := some <| .axiomInfo { thm with isUnsafe := false }
      pure (thm.name, .thmInfo thm, .thm)
    | .defnDecl defn | .mutualDefnDecl [defn] =>
      if !forceExpose && (← getEnv).header.isModule && !(← getEnv).isExporting then
        trace[addDecl] "exporting definition {defn.name} as axiom"
        exportedInfo? := some <| .axiomInfo { defn with isUnsafe := defn.safety != .safe }
      pure (defn.name, .defnInfo defn, .defn)
    | .opaqueDecl op =>
      if !forceExpose && (← getEnv).header.isModule && !(← getEnv).isExporting then
        trace[addDecl] "exporting opaque {op.name} as axiom"
        exportedInfo? := some <| .axiomInfo { op with }
      pure (op.name, .opaqueInfo op, .opaque)
    | .axiomDecl ax => pure (ax.name, .axiomInfo ax, .axiom)
    | _ =>
      trace[addDecl] "no matching async adding rules, adding synchronously"
      return (← doAdd)

  -- Check early so we can avoid related env ext panics that would happen before the check in the
  -- kernel.
  if (← getEnv).containsOnBranch name then
    throwKernelException <| .alreadyDeclared (← getEnv).toKernelEnv name

  if decl.getTopLevelNames.all isPrivateName then
    if (← ResolveName.backward.privateInPublic.getM) then
      trace[addDecl] "private decl under `privateInPublic`, exporting as is"
      exportedInfo? := some info
    else
      trace[addDecl] "not exporting private declaration at all"
      exportedInfo? := none
  else
    -- preserve original constant kind in extension if different from exported one
    if exportedInfo?.isSome then
      modifyEnv (privateConstKindsExt.insert · name kind)
    else
      trace[addDecl] "no matching exporting rules, exporting as is"
      exportedInfo? := some info

  let env ← getEnv
  -- no environment extension changes to report after kernel checking; ensures we do not
  -- accidentally wait for this snapshot when querying extension states
  let async ← env.addConstAsync (reportExts := false) name kind
    (exportedKind? := exportedInfo?.map (.ofConstantInfo))
  -- report preliminary constant info immediately
  async.commitConst async.asyncEnv (some info) (exportedInfo? <|> info)
  setEnv async.mainEnv

  let doAddAndCommit := do
    setEnv async.asyncEnv
    try
      doAdd
    finally
      async.commitCheckEnv (← getEnv)

  if Elab.async.get (← getOptions) then
    let cancelTk ← IO.CancelToken.new
    let checkAct ← Core.wrapAsyncAsSnapshot (cancelTk? := cancelTk) fun _ => doAddAndCommit
    let t ← BaseIO.mapTask checkAct env.checked
    -- Do not display reporting range; most uses of `addDecl` are for registering auxiliary decls
    -- users should not worry about and other callers can add a separate task with ranges
    -- themselves, see `MutualDef`.
    Core.logSnapshotTask { stx? := none, reportingRange := .skip, task := t, cancelTk? := cancelTk }
  else
    try
      doAddAndCommit
    finally
      setEnv async.mainEnv
where
  doAdd := do
    profileitM Exception "type checking" (← getOptions) do
      withTraceNode `Kernel (fun _ => return m!"typechecking declarations {decl.getTopLevelNames}") do
        warnIfUsesSorry decl
        try
          let env ← (← getEnv).addDeclAux (← getOptions) decl (← read).cancelTk?
            |> ofExceptKernelException
          setEnv env
        catch ex =>
          -- avoid follow-up errors by (trying to) add broken decl as axiom
          addAsAxiom
          throw ex
  addAsAxiom := do
    -- try to add as axiom with given type for def/theorem
    match decl with
    | .defnDecl d | .thmDecl d =>
      let fallbackDecl := .axiomDecl {
        name := d.name, levelParams := d.levelParams, type := d.type, isUnsafe := false
      }
      try
        let env ← (← getEnv).addDeclAux (← getOptions) fallbackDecl (← read).cancelTk?
          |> ofExceptKernelException
        setEnv env
        return
      catch _ => pure ()
    | _ => pure ()

    -- otherwise, add as axiom with type `sorry`
    for n in decl.getNames do
      let fallbackDecl := .axiomDecl {
        name := n, levelParams := []
        type := mkApp2 (mkConst ``sorryAx [1]) (mkSort 0) (mkConst ``true), isUnsafe := false
      }
      try
        let env ← (← getEnv).addDeclAux (← getOptions) fallbackDecl (← read).cancelTk?
          |> ofExceptKernelException
        setEnv env
        return
      catch _ => pure ()

/--
Adds the given declaration to the environment's private scope, deriving a suitable presentation in
the public scope if under the module system and if the declaration is not private. If `forceExpose`
is true, exposes the declaration body, i.e. preserves the full representation in the public scope,
independently of `Environment.isExporting` and even for theorems.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddDecl/Varianta1db194fde3db8e51e1d27b9026b62026808983595cc492ab95d2777f42e8c10.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddDecl/Varianta1db194fde3db8e51e1d27b9026b62026808983595cc492ab95d2777f42e8c10.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a65ac0db1e833fa21a7c58867dc0ad11499340f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
