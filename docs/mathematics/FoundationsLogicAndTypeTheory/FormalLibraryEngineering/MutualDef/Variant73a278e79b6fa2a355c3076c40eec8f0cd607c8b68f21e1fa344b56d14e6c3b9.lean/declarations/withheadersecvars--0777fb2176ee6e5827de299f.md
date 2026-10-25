# withHeaderSecVars

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3df81061b0eb65c0e2b907d63ccb063b2c7357e2ef420522f022fa5d7c3faa98",
  "kind": "def",
  "lexical_name": "withHeaderSecVars",
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
  "slug": "withheadersecvars--0777fb2176ee6e5827de299f",
  "source": {
    "blob": "81f3d84a62a9cfc1ef4502eb8c2e6b69618d9b2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 507,
    "line": 455,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualDef/Variant73a278e79b6fa2a355c3076c40eec8f0cd607c8b68f21e1fa344b56d14e6c3b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0777fb2176ee6e5827de299fe938e208318de942987e4013de07eeb95f194bda",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualDef/Variant73a278e79b6fa2a355c3076c40eec8f0cd607c8b68f21e1fa344b56d14e6c3b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3df81061b0eb65c0e2b907d63ccb063b2c7357e2ef420522f022fa5d7c3faa98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 455–507.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def withHeaderSecVars {α} (vars : Array Expr) (sc : Command.Scope) (headers : Array DefViewElabHeader)
    (k : Array Expr → TermElabM α) (check := true) : TermElabM α := do
  let mut revSectionFVars : Std.HashMap FVarId Name := {}
  for (uid, var) in (← read).sectionFVars do
    revSectionFVars := revSectionFVars.insert var.fvarId! uid
  let (_, used) ← collectUsed revSectionFVars |>.run {}
  let (lctx, localInsts, vars) ← removeUnused vars used
  withLCtx lctx localInsts <| k vars
where
  collectUsed revSectionFVars : StateRefT CollectFVars.State MetaM Unit := do
    -- directly referenced in headers
    headers.forM (·.type.collectFVars)
    -- included by `include`
    for var in vars do
      if let some uid := revSectionFVars[var.fvarId!]? then
        if sc.includedVars.contains uid then
          modify (·.add var.fvarId!)
    -- transitively referenced
    get >>= (·.addDependencies) >>= set
    if check then
      for var in (← get).fvarIds do
        if let some uid := revSectionFVars[var]? then
          if sc.omittedVars.contains uid then
            throwError "cannot omit referenced section variable `{Expr.fvar var}`"
    -- instances (`addDependencies` unnecessary as by definition they may only reference variables
    -- already included)
    for var in vars do
      let ldecl ← getFVarLocalDecl var
      if let some uid := revSectionFVars[var.fvarId!]? then
        if sc.omittedVars.contains uid then
          continue
      let st ← get
      if ldecl.binderInfo.isInstImplicit && (← getFVars ldecl.type).all st.fvarSet.contains then
        modify (·.add ldecl.fvarId)
  getFVars (e : Expr) : MetaM (Array FVarId) :=
    (·.2.fvarIds) <$> e.collectFVars.run {}

register_builtin_option deprecated.oldSectionVars : Bool := {
  defValue := false
  descr    := "re-enable deprecated behavior of including exactly the section variables used in a declaration"
}

register_builtin_option linter.unusedSectionVars : Bool := {
  defValue := true
  descr := "enable the 'unused section variables in theorem body' linter"
}

register_builtin_option debug.proofAsSorry : Bool := {
  defValue := false
  descr    := "replace the bodies (proofs) of theorems with `sorry`"
}

/-- Returns true if `k` is a theorem, option `debug.proofAsSorry` is set to true, and the environment contains the axiom `sorryAx`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualDef/Variant73a278e79b6fa2a355c3076c40eec8f0cd607c8b68f21e1fa344b56d14e6c3b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualDef/Variant73a278e79b6fa2a355c3076c40eec8f0cd607c8b68f21e1fa344b56d14e6c3b9.lean#L455).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81f3d84a62a9cfc1ef4502eb8c2e6b69618d9b2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
