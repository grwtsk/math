# elabMatchAltViews

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:476cf22a73d03fc68a00d15f4cdbc34864149ac8e5caffafffb17c6bfd2adb92",
  "kind": "def",
  "lexical_name": "elabMatchAltViews",
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
  "slug": "elabmatchaltviews--9b566733977757f204424b6f",
  "source": {
    "blob": "4df90954a89531a08e5cf1aac0d9095d7a7009ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1031,
    "line": 927,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant265619dfc38c223d2395bac98ce23dd6375f5f7892ce8613c80471aa87ee26d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9b566733977757f204424b6f502287e11d7fb0b65c545cd50b5b9f6bd6fb3e8c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant265619dfc38c223d2395bac98ce23dd6375f5f7892ce8613c80471aa87ee26d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:476cf22a73d03fc68a00d15f4cdbc34864149ac8e5caffafffb17c6bfd2adb92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 927–1031.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def elabMatchAltViews (generalizing? : Option Bool) (discrs : Array Discr) (matchType : Expr) (altViews : Array TermMatchAltView) : TermElabM (Array Discr × Expr × Array (AltLHS × Expr) × Bool) := do
  loop discrs #[] matchType altViews none
where
  /--
    "Discriminant refinement" main loop.
    `first?` contains the first error message we found before updated the `discrs`. -/
  loop (discrs : Array Discr) (toClear : Array FVarId) (matchType : Expr) (altViews : Array TermMatchAltView) (first? : Option (SavedState × Exception))
      : TermElabM (Array Discr × Expr × Array (AltLHS × Expr) × Bool) := do
    let s ← saveState
    let { discrs := discrs', toClear := toClear', matchType := matchType', altViews := altViews', refined } ← generalize discrs matchType altViews generalizing?
    match (← altViews'.mapM (fun altView => elabMatchAltView discrs' altView matchType' (toClear ++ toClear')) |>.run) with
    | Except.ok alts => return (discrs', matchType', alts, first?.isSome || refined)
    | Except.error { patternIdx := patternIdx, pathToIndex := pathToIndex, ex := ex } =>
      let discr := discrs[patternIdx]!
      let some index ← getIndexToInclude? discr.expr pathToIndex
        | throwEx (← updateFirst first? ex)
      trace[Elab.match] "index to include: {index}"
      if (← discrs.anyM fun discr => isDefEq discr.expr index) then
        throwEx (← updateFirst first? ex)
      let first ← updateFirst first? ex
      s.restore (restoreInfo := true)
      let indices ← collectDeps #[index] (discrs.map (·.expr))
      let matchType ← try
        updateMatchType indices matchType
      catch _ => throwEx first
      let ref ← getRef
      trace[Elab.match] "new indices to add as discriminants: {indices}"
      let wildcards ← indices.mapM fun index => do
        if index.isFVar then
          let localDecl ← index.fvarId!.getDecl
          if localDecl.userName.hasMacroScopes then
            return mkHole ref
          else
            let id := mkIdentFrom ref localDecl.userName
            `(?$id)
        else
          return mkHole ref
      let altViews  := altViews.map fun altView => { altView with patterns := wildcards ++ altView.patterns }
      let indDiscrs ← indices.mapM fun i => do
        match discr.h? with
        | none => return { expr := i : Discr }
        | some h =>
          -- If the discriminant that introduced this index is annotated with `h : discr`, then we should annotate the new discriminant too.
          let h ← mkFreshDiscrIdentFrom h
          return { expr := i, h? := h : Discr }
      let discrs    := indDiscrs ++ discrs
      let indexFVarIds := indices.filterMap fun | .fvar fvarId .. => some fvarId | _  => none
      loop discrs (toClear ++ indexFVarIds) matchType altViews first

  throwEx {α} (p : SavedState × Exception) : TermElabM α := do
    p.1.restore (restoreInfo := true); throw p.2

  updateFirst (first? : Option (SavedState × Exception)) (ex : Exception) : TermElabM (SavedState × Exception) := do
    match first? with
    | none       => return (← saveState, ex)
    | some first => return first

  containsFVar (es : Array Expr) (fvarId : FVarId) : Bool :=
    es.any fun e => e.isFVar && e.fvarId! == fvarId

  /-- Update `indices` by including any free variable `x` s.t.
     - Type of some `discr` depends on `x`.
     - Type of `x` depends on some free variable in `indices`.

     If we don't include these extra variables in indices, then
     `updateMatchType` will generate a type incorrect term.
     For example, suppose `discr` contains `h : @HEq α a α b`, and
     `indices` is `#[α, b]`, and `matchType` is `@HEq α a α b → B`.
     `updateMatchType indices matchType` produces the type
     `(α' : Type) → (b : α') → @HEq α' a α' b → B` which is type incorrect
     because we have `a : α`.
     The method `collectDeps` will include `a` into `indices`.

     This method does not handle dependencies among non-free variables.
     We rely on the type checking method `check` at `updateMatchType`.

     Remark: `indices : Array Expr` does not need to be an array anymore.
     We should cleanup this code, and use `index : Expr` instead.
   -/
  collectDeps (indices : Array Expr) (discrs : Array Expr) : TermElabM (Array Expr) := do
    let mut s : CollectFVars.State := {}
    for discr in discrs do
      s := collectFVars s (← instantiateMVars (← inferType discr))
    let (indicesFVar, indicesNonFVar) := indices.partition Expr.isFVar
    let indicesFVar := indicesFVar.map Expr.fvarId!
    let mut toAdd := #[]
    for fvarId in s.fvarSet.toList do
      unless containsFVar discrs fvarId || containsFVar indices fvarId do
        let localDecl ← fvarId.getDecl
        for indexFVarId in indicesFVar do
          if (← localDeclDependsOn localDecl indexFVarId) then
            toAdd := toAdd.push fvarId
    let indicesFVar ← sortFVarIds (indicesFVar ++ toAdd)
    return indicesFVar.map mkFVar ++ indicesNonFVar

  updateMatchType (indices : Array Expr) (matchType : Expr) : TermElabM Expr := do
    let matchType ← indices.foldrM (init := matchType) fun index matchType => do
      let indexType ← inferType index
      let matchTypeBody ← kabstract matchType index
      let userName ← mkUserNameFor index
      return Lean.mkForall userName BinderInfo.default indexType matchTypeBody
    check matchType
    return matchType


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant265619dfc38c223d2395bac98ce23dd6375f5f7892ce8613c80471aa87ee26d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant265619dfc38c223d2395bac98ce23dd6375f5f7892ce8613c80471aa87ee26d6.lean#L927).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4df90954a89531a08e5cf1aac0d9095d7a7009ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
