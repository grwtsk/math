# withHeaderSecVars

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:40c99bcd80d1538acce87c20fed41fc0dc27ecde5b6089220f4bcf0a6d6a7a93",
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
  "slug": "withheadersecvars--01ab60260929991ed5003b59",
  "source": {
    "blob": "95524f4693dae3016627447f92c8871548cdca73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 515,
    "line": 463,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualDef/Variant2d76c3300c8c3963cee5cc589e2dbdda87f32fd1f096a4f8804a525910b9bb1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:01ab60260929991ed5003b590f37c041fb103d89545f50bf9d3d0312062b18ec",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualDef/Variant2d76c3300c8c3963cee5cc589e2dbdda87f32fd1f096a4f8804a525910b9bb1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:40c99bcd80d1538acce87c20fed41fc0dc27ecde5b6089220f4bcf0a6d6a7a93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 463–515.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualDef/Variant2d76c3300c8c3963cee5cc589e2dbdda87f32fd1f096a4f8804a525910b9bb1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualDef/Variant2d76c3300c8c3963cee5cc589e2dbdda87f32fd1f096a4f8804a525910b9bb1e.lean#L463).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95524f4693dae3016627447f92c8871548cdca73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
