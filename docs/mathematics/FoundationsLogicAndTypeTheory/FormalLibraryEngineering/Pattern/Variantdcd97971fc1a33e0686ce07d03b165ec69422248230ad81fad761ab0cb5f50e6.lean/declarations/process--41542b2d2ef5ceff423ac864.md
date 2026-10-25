# process

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8b6b76f4544f46b75e1974bab02ae3b57075c6f6093e7c6ea658c9e56d8f71ea",
  "kind": "def",
  "lexical_name": "process",
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
  "slug": "process--41542b2d2ef5ceff423ac864",
  "source": {
    "blob": "171627a1f2c4709561f698cb175364ff4dc27c54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 629,
    "line": 503,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantdcd97971fc1a33e0686ce07d03b165ec69422248230ad81fad761ab0cb5f50e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:41542b2d2ef5ceff423ac86483e38c2f1c67ae95940d765fb6f5b9c38686efb0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantdcd97971fc1a33e0686ce07d03b165ec69422248230ad81fad761ab0cb5f50e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8b6b76f4544f46b75e1974bab02ae3b57075c6f6093e7c6ea658c9e56d8f71ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 503–629.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def process (p : Expr) (e : Expr) : UnifyM Bool := do
  -- A pattern subterm internalized into the same table as the target shares its pointer, so a
  -- pointer match is a closed term equal to the target with no variables left to bind.
  if isSameExpr p e then return true
  let e' := etaReduce e
  if !isSameExpr e e' then
    -- **Note**: We eagerly eta reduce patterns
    process p e'
  else match p with
  | .bvar bidx => assignExpr bidx e
  | .mdata _ p => process p e
  | .const declName us =>
    processConst declName us e <||> checkLetVar p e <||> checkMVar p e
  | .sort u =>
    processSort u e <||> checkLetVar p e <||> checkMVar p e
  | .app .. =>
    processApp p e <||> checkMVar p e
  | .forallE .. | .lam .. =>
    pushPending p e
    return true
  | .proj .. =>
    throwError "unexpected kernel projection term during unification/matching{indentExpr e}\npre-process and fold them as projection applications"
  | .fvar _ =>
    /-
    **Note**: Most patterns do not have free variables since they are created from
    top-level theorems. That said, some user may want to create patterns using local hypotheses, and they
    may contain free variables. This is not the common case. So, we just push to pending an continue.
    -/
    pushPending p e
    return true
  | .mvar _ | .lit _ =>
    pure (p == e) <||> checkLetVar p e <||> checkMVar p e
  | .letE .. => unreachable!
where
  checkMVar (p : Expr) (e : Expr) : UnifyM Bool := do
    if (← isAssignedMVar e) then
      process p (← instantiateMVarsS e)
    else if (← read).unify && e.getAppFn.isMVar then
      pushPending p e
      return true
    else
      return false

  checkLetVar (p : Expr) (e : Expr) : UnifyM Bool := do
    unless (← read).zetaDelta do return false
    let .fvar fvarId := e | return false
    let some value ← fvarId.getValue? | return false
    process p value

  processOffset (p : Offset) (e : Offset) : UnifyM Bool := do
   -- **Note** Recall that we don't assume patterns are maximally shared terms.
    match p, e with
    | .num _, .num _ => unreachable!
    | .num k₁, .add e k₂ =>
      if k₁ < k₂ then return false
      process (mkNatLit (k₁ - k₂)) e
    | .add p k₁, .num k₂ =>
      if k₂ < k₁ then return false
      process p (← share (mkNatLit (k₂ - k₁)))
    | .add p k₁, .add e k₂ =>
      if k₁ == k₂ then
        process p e
      else if k₁ < k₂ then
        if k₁ == 0 then return false
        process p (← share (mkNatAdd e (mkNatLit (k₂ - k₁))))
      else
        if k₂ == 0 then return false
        process (mkNatAdd p (mkNatLit (k₁ - k₂))) e

  processConstApp (declName : Name) (p : Expr) (e : Expr) : UnifyM Bool := do
    let some info := (← read).pattern.fnInfos.find? declName | process.processAppDefault p e
    let numArgs := p.getAppNumArgs
    processAppWithInfo p e (numArgs - 1) info

  processApp (p : Expr) (e : Expr) : UnifyM Bool := withIncRecDepth do
    let f := p.getAppFn
    let .const declName _ := f | processAppDefault p e
    if (← processConstApp declName p e) then
      return true
    else if let some p' := isOffset?' declName p then
      processOffset p' (toOffset e)
    else if let some e' := isOffset? e then
      processOffset (toOffset p) e'
    else
      return false

  processAppWithInfo (p : Expr) (e : Expr) (i : Nat) (info : ProofInstInfo) : UnifyM Bool := do
    let .app fp ap := p | if e.isApp then return false else process p e
    let .app fe ae := e | checkLetVar p e
    unless (← processAppWithInfo fp fe (i - 1) info) do return false
    if h : i < info.argsInfo.size then
      let argInfo := info.argsInfo[i]
      if argInfo.isInstance then
        if let .bvar bidx := ap then
          assignExprIfUnassigned bidx ae
        else
          pushInstPending ap ae
        return true
      else if argInfo.isProof then
        if let .bvar bidx := ap then
          assignExprIfUnassigned bidx ae
        return true
      else
        process ap ae
    else
      process ap ae

  processAppDefault (p : Expr) (e : Expr) : UnifyM Bool := do
    let .app fp ap := p | if e.isApp then return false else process p e
    let .app fe ae := e | checkLetVar p e
    unless (← processAppDefault fp fe) do return false
    process ap ae

  processConst (declName : Name) (us : List Level) (e : Expr) : UnifyM Bool := do
    let .const declName' us' := e | return false
    unless declName == declName' do return false
    processLevels us us'

  processSort (u : Level) (e : Expr) : UnifyM Bool := do
    let .sort v := e | return false
    processLevel u v

/--
Attempts to assign a level metavariable `u` to value `v`.
Returns `true` if `u` is an assignable level metavariable and the assignment succeeds.
Returns `false` if `u` is not a metavariable or is not assignable.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantdcd97971fc1a33e0686ce07d03b165ec69422248230ad81fad761ab0cb5f50e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantdcd97971fc1a33e0686ce07d03b165ec69422248230ad81fad761ab0cb5f50e6.lean#L503).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `171627a1f2c4709561f698cb175364ff4dc27c54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
