# Path.ofSubExprPosArray

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:77d52406ba3ac634d28d8d7c4afae2f039fe11f2107c1fb5e19c9e4542a78490",
  "kind": "def",
  "lexical_name": "Path.ofSubExprPosArray",
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
  "slug": "path-ofsubexprposarray--d5e7dcdc33744104408233a4",
  "source": {
    "blob": "fd35bc52649d472583df0c04fbeca783a2eafcff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 66,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variant49742a120f71e8b3bb66dfab6bbc42e1a6956ca25f4665c3fef7cf5cbf1a73dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d5e7dcdc33744104408233a4ac311dac2a54f34a480caa51b5dac274554ee103",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variant49742a120f71e8b3bb66dfab6bbc42e1a6956ca25f4665c3fef7cf5cbf1a73dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:77d52406ba3ac634d28d8d7c4afae2f039fe11f2107c1fb5e19c9e4542a78490`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def Path.ofSubExprPosArray (expr : Expr) (pos : Array Nat) : MetaM Path :=
  go expr 0
where
  /--
  `Path.ofSubExprPosArray.go pos expr i` is the same as `Path.ofSubExprPosArray expr (pos.drop i)`
  -/
  go (expr : Expr) (i : Fin (pos.size + 1)) : MetaM Path :=
    if h : i = Fin.last pos.size then pure (Path.fun 0) else
    let i := i.castLT (Fin.val_lt_last h)
    if pos[i] = SubExpr.Pos.typeCoord then
      throwError m!"conv mode does not support entering types of expressions{indentExpr expr}" else
    let err := m!"{.ofConstName ``SubExpr.Pos (fullNames := true)} position {pos[i]} \
      is invalid for{indentExpr expr}"
    match expr with
    | .bvar i => throwError m!"unexpected bound variable #{i}"
    | .fvar _
    | .mvar _
    | .lit _
    | .const _ _
    | .sort _ => throwError err
    | .proj _ _ e =>
      throwError m!"conv mode does not yet support entering projections{indentExpr expr}"
    | .mdata _ e => go e i.castSucc
    | .letE n t _ b _ =>
      if pos[i] = 0 then -- let binder type
        throwError m!"conv mode does not yet support entering let types{indentExpr expr}"
      else if pos[i] = 1 then -- let binder value
        throwError m!"conv mode does not yet support entering let values{indentExpr expr}"
      else if pos[i] = 2 then -- let body
        withLocalDeclNoLocalInstanceUpdate n .default t fun fvar => do
          let e := b.instantiate1 fvar
          unless (← isTypeCorrect e) do
            throwError m!"conv mode does not support entering let expressions \
              for which the type-correctness of the body depends on the let value \n\
              failed to abstract let-expression, result is not type correct{indentExpr expr}"
          Path.body n <$> go e i.succ
      else throwError err
    | .forallE n t b bi =>
      if pos[i] = 0 then do -- forall binder type
        unless (← isProp t) || expr.isArrow do
          throwError m!"conv mode only supports rewriting forall binder types \
            when the binder type is a proposition or when the body of the forall \
            does not depend on the value of the bound variable{indentExpr expr}"
        Path.type <$> go t i.succ
      else if pos[i] = 1 then -- forall body
        withLocalDeclNoLocalInstanceUpdate n bi t fun fvar =>
          (Path.body n <$> go (b.instantiate1 fvar) i.succ)
      else throwError err
    | .lam n t b bi =>
      if pos[i] = 0 then -- lambda binder type
        throwError m!"conv mode does not support rewriting \
          the binder type of a lambda{indentExpr expr}"
      else if pos[i] = 1 then -- lambda body
        withLocalDeclNoLocalInstanceUpdate n bi t fun fvar =>
          (Path.body n <$> go (b.instantiate1 fvar) i.succ)
      else throwError err
    | .app .. => appT expr i.castSucc [] none
  /-- Traverse an application from argument to function, accumulating arguments and consuming `pos`
  (incrementing `i`) as we approach the head. If `pos[i]` tells us to enter the argument of `.app`
  instead of the function at some point, we stop consuming `pos` and start counting arguments
  (`some n`) until we hit the head. This gives us enough information to determine the value for
  `Path.arg` once we reach the head, and then enter the argument we encountered earlier.

  Note: if we instead run out of `pos` before reaching the head, the `Path` is a chain of `fun`s.

  Note: `conv` does not see through `.mdata` surrounding an `.app`, so we do not here either. -/
  appT (expr : Expr) (i : Fin (pos.size + 1))
      (acc : List Expr) (n : Option (Fin acc.length)) : MetaM Path :=
    match expr with
    | .app f a =>
      if let some n := n then -- found the argument (it is `acc[n]`)
        appT f i (a :: acc) (some n.succ)
      else if h : i = Fin.last pos.size then pure (Path.fun acc.length) -- ran out of `pos`
      else
        let i := i.castLT (Fin.val_lt_last h)
        if pos[i] = 0 then -- app fun
          appT f i.succ (a :: acc) none
        else if pos[i] = 1 then -- app arg
          appT f i.succ (a :: acc) (some ⟨0, acc.length.zero_lt_succ⟩)
        else
          throwError m!"{.ofConstName ``SubExpr.Pos (fullNames := true)} position {pos[i]} \
            is invalid for{indentExpr expr}"
    | _ =>
      if let some n := n then do -- found the argument (it is `acc[n]`)
        let bis : Array BinderInfo :=
          (← PrettyPrinter.Delaborator.getParamKinds expr acc.toArray).map (·.bInfo)
        if bis[n]? == some .default then -- explicit argument
          -- find the number of explicit arguments between the head and this arg (inclusive)
          arg ((bis.take n).count .default + 1)
            false <$> go acc[n] i
        else arg (n + 1) true <$> go acc[n] i -- implicit argument
      else -- ran out of `Expr.app` nodes
        arg 0 false <$> go expr i

/--
Given an `e : Expr` and `pos : SubExpr.Pos`, `Path.ofSubExprPos expr pos` generates
the `Path` corresponding to traversing `pos` starting at the reference expression `e`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variant49742a120f71e8b3bb66dfab6bbc42e1a6956ca25f4665c3fef7cf5cbf1a73dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variant49742a120f71e8b3bb66dfab6bbc42e1a6956ca25f4665c3fef7cf5cbf1a73dc.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd35bc52649d472583df0c04fbeca783a2eafcff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
