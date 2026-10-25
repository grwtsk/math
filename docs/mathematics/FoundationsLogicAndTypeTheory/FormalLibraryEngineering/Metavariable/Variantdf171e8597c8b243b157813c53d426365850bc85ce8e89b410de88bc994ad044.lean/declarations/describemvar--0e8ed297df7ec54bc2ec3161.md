# describeMVar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9db2d593b30a3a9c361184c7da79c950200a85b2e9f6bd814d2dc391143ffc19",
  "kind": "def",
  "lexical_name": "describeMVar",
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
  "slug": "describemvar--0e8ed297df7ec54bc2ec3161",
  "source": {
    "blob": "da2cd1a2fd561b484459d897e806f7754d9b9782",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 110,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Metavariable/Variantdf171e8597c8b243b157813c53d426365850bc85ce8e89b410de88bc994ad044.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0e8ed297df7ec54bc2ec3161cf7f25db22590962b1eb624c0e42f8f4afd3bf3f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Metavariable/Variantdf171e8597c8b243b157813c53d426365850bc85ce8e89b410de88bc994ad044.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9db2d593b30a3a9c361184c7da79c950200a85b2e9f6bd814d2dc391143ffc19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def describeMVar (mvarId : MVarId) (lctxInitIndices : Nat) (fromDelayed : Bool := false) : MetaM String := do
  let delayedExpl :=
    "Substitution is delayed until the metavariable's value contains no metavariables, \
     since all occurrences of the variables from its local context will need to be \
     replaced with expressions that are valid in the current context."
  let some decl ← mvarId.findDecl? | return "[Error: This metavariable is not present in the metavariable context. Please report this issue.]"
  let mut msg := ""
  if let some { mvarIdPending, .. } ← getDelayedMVarAssignment? mvarId then
    let mvarIdPending' ← getDelayedMVarIdPending mvarIdPending
    if let some declPending' ← mvarIdPending'.findDecl? then
      msg := s!"Part of the encoding of the *delayed assignment* mechanism. \
        Represents the metavariable {← wrap <$> delabMVarAsStr mvarIdPending'}, \
        which has additional local context variables. \
        {delayedExpl}"
      if let some e ← getExprMVarAssignment? mvarIdPending' then
        msg := msg ++ (← collectAwaiting e)
      msg := msg ++ (← extraLCtxVars declPending')
    else
      msg := "[Error: This delayed assignment refers to a metavariable not present in the metavariable context. Please report this issue.]"
    return msg
  else
    match decl.kind with
    | .natural =>
      msg := "A metavariable representing an expression that should be solved for \
        by unification during the elaboration process. \
        They are created during elaboration as placeholders for implicit arguments \
        and by `_` placeholder syntax."
    | .synthetic =>
      msg := "A metavariable representing a typeclass instance whose synthesis is still pending. \
        They can be solved for by unification during the elaboration process, \
        but the inferred expression and the synthesized instance must be definitionally equal."
    | .syntheticOpaque =>
      msg := "A metavariable representing a tactic goal or an expression whose elaboration is still pending. \
        They usually act like constants until they are completely solved for. \
        They can be created using `?_` and `?n` synthetic placeholder syntax."
  unless decl.userName.isAnonymous || some mvarId == (← getMCtx).findUserName? decl.userName do
    msg := msg ++ "\n\nThis metavariable has a name but it is unreachable."
  if let some e ← getExprMVarAssignment? mvarId then
    if !fromDelayed then
      msg := msg ++ "\n\nThis metavariable has been assigned."
    else
      msg := msg ++ "\n\nThis metavariable has been assigned, but it appears here via a *delayed assignment*. " ++ delayedExpl
      msg := msg ++ (← collectAwaiting e)
  else if !(← mvarId.isAssignable) then
    msg := msg ++ "\n\nThis metavariable cannot be assigned due to the current metavariable context depth."
  else if fromDelayed then
    msg := msg ++ "\n\nThis metavariable appears here via a *delayed assignment*. " ++ delayedExpl
  if fromDelayed && !decl.lctx.isSubPrefixOf (← getLCtx) then
    msg := msg ++ (← extraLCtxVars decl)
  else
    msg := msg ++ (← absentLCtxVars decl)
  return msg
where
  wrap (n : String) := s!"`{n}`"
  namesToString (ns : List Name) : String :=
    String.intercalate ", " <| ns.map fun n => wrap <|
      if n.hasMacroScopes then
        n.eraseMacroScopes.toString ++ " (unreachable)"
      else
        n.toString
  extraLCtxVars (mdecl : MetavarDecl) : MetaM String := do
    let lctx ← getLCtx
    let ns := mdecl.lctx.foldr (init := []) fun decl ns =>
      if lctx.contains decl.fvarId then ns else decl.userName :: ns
    if ns.isEmpty then
      return ""
    else
      return s!"\n\nAdditional {ns.length.plural "variable"} in this metavariable's local context: " ++ namesToString ns
  absentLCtxVars (mdecl : MetavarDecl) : MetaM String := do
    let lctx ← getLCtx
    let lctxInitIndices := lctxInitIndices
    let ns := lctx.foldr (init := []) fun decl ns =>
      if decl.index ≥ lctxInitIndices || mdecl.lctx.contains decl.fvarId then ns else decl.userName :: ns
    if ns.isEmpty then
      return ""
    else
      return s!"\n\n{ns.length.plural "Variable"} absent from this metavariable's local context: " ++ namesToString ns
  collectAwaiting (e : Expr) : MetaM String := do
    -- Collect metavariables to diagnose why it is pending.
    let mut awaitingMVars ← getMVarsNoDelayed e
    -- Prefer reporting just the metavariables that refer to free variables not in the current context.
    let lctx ← getLCtx
    let awaitingMVars' ← awaitingMVars.filterM fun mvar => do
      let mdecl ← mvar.getDecl
      return !mdecl.lctx.isSubPrefixOf lctx
    unless awaitingMVars'.isEmpty do
      awaitingMVars := awaitingMVars'
    if awaitingMVars.isEmpty then
      return ""
    else
      let awaitingStrs ← awaitingMVars.mapM (wrap <$> delabMVarAsStr ·)
      return s!" Substitution is awaiting assignment of the following {awaitingStrs.size.plural "metavariable"}: "
        ++ String.intercalate ", " awaitingStrs.toList

/--
Creates an action that creates a description of the metavariable and its status in Markdown format,
for use in the docstring in `DelabTermInfo`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Metavariable/Variantdf171e8597c8b243b157813c53d426365850bc85ce8e89b410de88bc994ad044.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Metavariable/Variantdf171e8597c8b243b157813c53d426365850bc85ce8e89b410de88bc994ad044.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da2cd1a2fd561b484459d897e806f7754d9b9782` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
