# mkDTExprsAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:19cf944e43ddc268635c7533b0e373a6fb315ab09e99f535de9b5379bb8791fc",
  "kind": "def",
  "lexical_name": "mkDTExprsAux",
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
  "slug": "mkdtexprsaux--46240c91556cfa356bb3d95e",
  "source": {
    "blob": "2409f656aa3e890785ae04694e94f248ee565da8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 491,
    "line": 409,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant7d1150920764925dd12afd6bd4bc25cf26928e2b7b7860120996ce6dbbd4484c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:46240c91556cfa356bb3d95e6f710b5ad4f27942f7abb2f7bed86c1172644b26",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant7d1150920764925dd12afd6bd4bc25cf26928e2b7b7860120996ce6dbbd4484c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:19cf944e43ddc268635c7533b0e373a6fb315ab09e99f535de9b5379bb8791fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 409–491.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def mkDTExprsAux (original : Expr) (root : Bool) : M DTExpr := do
  lambdaTelescopeReduce original [] fun e lambdas => do

  if !root then
    if let .const n _ := e.getAppFn then
      if let some (type, lhs, rhs, lambdas') ← reduceHBinOp n e.getAppArgs lambdas then
        return ← withLams lambdas' do
          let type ← mkDTExprsAux type false
          let lhs ← mkDTExprsAux lhs false
          let rhs ← mkDTExprsAux rhs false
          return .const n #[type, type, .star none, .star none, lhs, rhs]

      if let some (type, arg, lambdas') ← reduceUnOp n e.getAppArgs lambdas then
        return ← withLams lambdas' do
          let type ← mkDTExprsAux type false
          let arg ← mkDTExprsAux arg false
          return .const n #[type, .star none, arg]

  cacheEtaPossibilities e original lambdas fun e lambdas =>
  e.withApp fun fn args => do

  let argDTExpr (arg : Expr) (ignore : Bool) : M DTExpr :=
    if ignore then pure (.star none) else mkDTExprsAux arg false

  let argDTExprs : M (Array DTExpr) := do
    let ignores ← getIgnores fn args
    args.mapIdxM fun i arg =>
      argDTExpr arg ignores[i]!

  match fn with
  | .const n _ =>
      unless root do
        /- since `(fun _ => 0) = 0` and `(fun _ => 1) = 1`,
        we don't index lambdas before nat literals -/
        if let some v := toNatLit? e then
          return .lit v
      withLams lambdas do
        return .const n (← argDTExprs)
  | .proj s i a =>
    withLams lambdas do
    let a ← argDTExpr a (isClass (← getEnv) s)
    return .proj s i a (← argDTExprs)
  | .fvar fvarId =>
    /- we index `fun x => x` as `id` when not at the root -/
    if let fvarId' :: lambdas' := lambdas then
      if fvarId' == fvarId && args.isEmpty && !root then
        return ← withLams lambdas' do
          let type ← mkDTExprAux (← fvarId.getType) false
          return .const ``id #[type]
    withLams lambdas do
      let c ← read
      if let some idx := c.bvars.findIdx? (· == fvarId) then
        return .bvar idx (← argDTExprs)
      guard !(c.forbiddenVars.contains fvarId)
      if c.fvarInContext fvarId then
        return .fvar fvarId (← argDTExprs)
      else
        return .opaque
  | .mvar mvarId =>
    /- When the mvarId has arguments, index it with `[*]` instead of `[λ,*]`,
    because the star could depend on the bound variables. As a result,
    something indexed `[λ,*]` has that the `*` cannot depend on the λ-bound variables -/
    if args.isEmpty then
      withLams lambdas do return .star (some mvarId)
    else
      return .star none

  | .forallE n d b bi =>
    withLams lambdas do
    let d' ← mkDTExprsAux d false
    let b' ← withLocalDecl n bi d fun fvar =>
      withReader (fun c => { c with bvars := fvar.fvarId! :: c.bvars }) do
        mkDTExprsAux (b.instantiate1 fvar) false
    return .forall d' b'
  | .lit v      => withLams lambdas do return .lit v
  | .sort _     => withLams lambdas do return .sort
  | .letE ..    => withLams lambdas do return .opaque
  | .lam ..     => withLams lambdas do return .opaque
  | _           => unreachable!

end MkDTExpr

/-- Returns true if the `DTExpr` is not of the form `*` or `Eq * * *`". -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant7d1150920764925dd12afd6bd4bc25cf26928e2b7b7860120996ce6dbbd4484c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant7d1150920764925dd12afd6bd4bc25cf26928e2b7b7860120996ce6dbbd4484c.lean#L409).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2409f656aa3e890785ae04694e94f248ee565da8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
