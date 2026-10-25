# mkDTExprAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b23881f39e6ca27102d93840c6a60b08bce8684299b9ecb3250546f1be48af9f",
  "kind": "def",
  "lexical_name": "mkDTExprAux",
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
  "slug": "mkdtexpraux--cf7d92652fc52fe01a5bcc16",
  "source": {
    "blob": "a5c49e2a3d408534c220f491f4002a64ff903eeb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 353,
    "line": 280,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant464578c2372c039530e58bca9636e5b8a2e868902e1654f91ac08d483fa733eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cf7d92652fc52fe01a5bcc16151f994be55ac7b00e7486b92f092e6fcdb08588",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant464578c2372c039530e58bca9636e5b8a2e868902e1654f91ac08d483fa733eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b23881f39e6ca27102d93840c6a60b08bce8684299b9ecb3250546f1be48af9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 280–353.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def mkDTExprAux (e : Expr) (root : Bool) : ReaderT Context MetaM DTExpr := do
  lambdaTelescopeReduce e [] fun e lambdas =>
  e.withApp fun fn args => do

  let argDTExpr (arg : Expr) (ignore : Bool) : ReaderT Context MetaM DTExpr :=
    if ignore then pure (.star none) else mkDTExprAux arg false

  let argDTExprs : ReaderT Context MetaM (Array DTExpr) := do
    let ignores ← getIgnores fn args
    args.mapIdxM fun i arg =>
      argDTExpr arg ignores[i]!

  match fn with
  | .const n _ =>
    unless root do
      if let some (type, lhs, rhs, lambdas') ← reduceHBinOp n args lambdas then
        return ← withLams lambdas' do
          let type ← mkDTExprAux type false
          let lhs ← mkDTExprAux lhs false
          let rhs ← mkDTExprAux rhs false
          return .const n #[type, type, .star none, .star none, lhs, rhs]

      if let some (type, arg, lambdas') ← reduceUnOp n e.getAppArgs lambdas then
        return ← withLams lambdas' do
          let type ← mkDTExprAux type false
          let arg ← mkDTExprAux arg false
          return .const n #[type, .star none, arg]

      /- since `(fun _ => 0) = 0` and `(fun _ => 1) = 1`,
      we don't index lambdas before literals -/
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
      if let some idx := (← read).bvars.findIdx? (· == fvarId) then
        return .bvar idx (← argDTExprs)
      if (← read).fvarInContext fvarId then
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
      let d' ← mkDTExprAux d false
      let b' ← withLocalDecl n bi d fun fvar =>
        withReader (fun c => { c with bvars := fvar.fvarId! :: c.bvars }) do
          mkDTExprAux (b.instantiate1 fvar) false
      return .forall d' b'
  | .lit v      => withLams lambdas do return .lit v
  | .sort _     => withLams lambdas do return .sort
  | .letE ..    => withLams lambdas do return .opaque
  | .lam ..     => withLams lambdas do return .opaque
  | _           => unreachable!

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant464578c2372c039530e58bca9636e5b8a2e868902e1654f91ac08d483fa733eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant464578c2372c039530e58bca9636e5b8a2e868902e1654f91ac08d483fa733eb.lean#L280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5c49e2a3d408534c220f491f4002a64ff903eeb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
