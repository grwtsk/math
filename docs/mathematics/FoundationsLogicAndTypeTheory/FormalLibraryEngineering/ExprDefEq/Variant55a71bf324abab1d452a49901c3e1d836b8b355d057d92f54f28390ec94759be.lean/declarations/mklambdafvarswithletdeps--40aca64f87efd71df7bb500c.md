# mkLambdaFVarsWithLetDeps

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d5f5e6c61bc0254cefeec750d4ff145a1aeb1c2533133eda10a9ff1a8625da81",
  "kind": "def",
  "lexical_name": "mkLambdaFVarsWithLetDeps",
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
  "slug": "mklambdafvarswithletdeps--40aca64f87efd71df7bb500c",
  "source": {
    "blob": "8bbd010584f31382615499820e7b562d16998fee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 807,
    "line": 557,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant55a71bf324abab1d452a49901c3e1d836b8b355d057d92f54f28390ec94759be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:40aca64f87efd71df7bb500c3a3407b2afe133debda4525c033442202f56133a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant55a71bf324abab1d452a49901c3e1d836b8b355d057d92f54f28390ec94759be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d5f5e6c61bc0254cefeec750d4ff145a1aeb1c2533133eda10a9ff1a8625da81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 557–807.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private partial def mkLambdaFVarsWithLetDeps (xs : Array Expr) (v : Expr) : MetaM (Option Expr) := do
  if !(← hasLetDeclsInBetween) then
    mkLambdaFVars xs v (etaReduce := true)
  else
    let ys ← addLetDeps
    mkLambdaFVars ys v (etaReduce := true)

where
  /-- Return true if there are let-declarations between `xs[0]` and `xs[xs.size-1]`.
     We use it a quick-check to avoid the more expensive collection procedure. -/
  hasLetDeclsInBetween : MetaM Bool := do
    let check (lctx : LocalContext) : Bool := Id.run do
      let start := lctx.getFVar! xs[0]! |>.index
      let stop  := lctx.getFVar! xs.back! |>.index
      for i in (start+1)...stop do
        match lctx.getAt? i with
        | some localDecl =>
          if localDecl.isLet then
            return true
        | _ => pure ()
      return false
    if xs.size <= 1 then
      return false
    else
      return check (← getLCtx)

  /-- Traverse `e` and stores in the state `NameHashSet` any let-declaration with index greater than `(← read)`.
     The context `Nat` is the position of `xs[0]` in the local context. -/
  collectLetDeclsFrom (e : Expr) : ReaderT Nat (StateRefT FVarIdHashSet MetaM) Unit := do
    let rec visit (e : Expr) : MonadCacheT Expr Unit (ReaderT Nat (StateRefT FVarIdHashSet MetaM)) Unit :=
      checkCache e fun _ => do
        match e with
        | .forallE _ d b _   => visit d; visit b
        | .lam _ d b _       => visit d; visit b
        | .letE _ t v b _    => visit t; visit v; visit b
        | .app f a           => visit f; visit a
        | .mdata _ b         => visit b
        | .proj _ _ b        => visit b
        | .fvar fvarId       =>
          let localDecl ← fvarId.getDecl
          if localDecl.isLet && localDecl.index > (← read) then
            modify fun s => s.insert localDecl.fvarId
        | _ => pure ()
    visit (← instantiateMVars e) |>.run

  /--
    Auxiliary definition for traversing all declarations between `xs[0]` ... `xs.back` backwards.
    The `Nat` argument is the current position in the local context being visited, and it is less than
    or equal to the position of `xs.back` in the local context.
    The `Nat` context `(← read)` is the position of `xs[0]` in the local context.
  -/
  collectLetDepsAux : Nat → ReaderT Nat (StateRefT FVarIdHashSet MetaM) Unit
    | 0   => return ()
    | i+1 => do
      if i+1 == (← read) then
        return ()
      else
        match (← getLCtx).getAt? (i+1) with
        | none => collectLetDepsAux i
        | some localDecl =>
          if (← get).contains localDecl.fvarId then
            collectLetDeclsFrom localDecl.type
            match localDecl.value? with
            | some val => collectLetDeclsFrom val
            | _ =>  pure ()
          collectLetDepsAux i

  /-- Computes the set `ys`. It is a set of `FVarId`s, -/
  collectLetDeps : MetaM FVarIdHashSet := do
    let lctx ← getLCtx
    let start := lctx.getFVar! xs[0]! |>.index
    let stop  := lctx.getFVar! xs.back! |>.index
    let s := xs.foldl (init := {}) fun s x => s.insert x.fvarId!
    let (_, s) ← collectLetDepsAux stop |>.run start |>.run s
    return s

  /-- Computes the array `ys` containing let-decls between `xs[0]` and `xs.back` that
     some `x` in `xs` depends on. -/
  addLetDeps : MetaM (Array Expr) := do
    let lctx ← getLCtx
    let s ← collectLetDeps
    /- Convert `s` into the array `ys` -/
    let start := lctx.getFVar! xs[0]! |>.index
    let stop  := lctx.getFVar! xs.back! |>.index
    let mut ys := #[]
    for i in start...=stop do
      match lctx.getAt? i with
      | none => pure ()
      | some localDecl =>
        if s.contains localDecl.fvarId then
          ys := ys.push localDecl.toExpr
    return ys

/-!
  Each metavariable is declared in a particular local context.
  We use the notation `C |- ?m : t` to denote a metavariable `?m` that
  was declared at the local context `C` with type `t` (see `MetavarDecl`).
  We also use `?m@C` as a shorthand for `C |- ?m : t` where `t` is the type of `?m`.

  The following method process the unification constraint

       ?m@C a₁ ... aₙ =?= t

  We say the unification constraint is a pattern IFF

    1) `a₁ ... aₙ` are pairwise distinct free variables that are ​*not*​ let-variables.
    2) `a₁ ... aₙ` are not in `C`
    3) `t` only contains free variables in `C` and/or `{a₁, ..., aₙ}`
    4) For every metavariable `?m'@C'` occurring in `t`, `C'` is a subprefix of `C`
    5) `?m` does not occur in `t`

  Claim: we don't have to check free variable declarations. That is,
  if `t` contains a reference to `x : A := v`, we don't need to check `v`.
  Reason: The reference to `x` is a free variable, and it must be in `C` (by 1 and 3).
  If `x` is in `C`, then any metavariable occurring in `v` must have been defined in a strict subprefix of `C`.
  So, condition 4 and 5 are satisfied.

  If the conditions above have been satisfied, then the
  solution for the unification constrain is

    ?m := fun a₁ ... aₙ => t

  Now, we consider some workarounds/approximations.

 A1) Suppose `t` contains a reference to `x : A := v` and `x` is not in `C` (failed condition 3)
     (precise) solution: unfold `x` in `t`.

 A2) Suppose some `aᵢ` is in `C` (failed condition 2)
     (approximated) solution (when `config.quasiPatternApprox` is set to true) :
     ignore condition and also use

        ?m := fun a₁ ... aₙ => t

   Here is an example where this approximation fails:
   Given `C` containing `a : nat`, consider the following two constraints
         ?m@C a =?= a
         ?m@C b =?= a

   If we use the approximation in the first constraint, we get
         ?m := fun x => x
   when we apply this solution to the second one we get a failure.

   IMPORTANT: When applying this approximation we need to make sure the
   abstracted term `fun a₁ ... aₙ => t` is type correct. The check
   can only be skipped in the pattern case described above. Consider
   the following example. Given the local context

      (α : Type) (a : α)

   we try to solve

     ?m α =?= @id α a

   If we use the approximation above we obtain:

     ?m := (fun α' => @id α' a)

   which is a type incorrect term. `a` has type `α` but it is expected to have
   type `α'`.

   The problem occurs because the right hand side contains a free variable
   `a` that depends on the free variable `α` being abstracted. Note that
   this dependency cannot occur in patterns.

   We can address this by type checking
   the term after abstraction. This is not a significant performance
   bottleneck because this case doesn't happen very often in practice
   (262 times when compiling stdlib on Jan 2018). The second example
   is trickier, but it also occurs less frequently (8 times when compiling
   stdlib on Jan 2018, and all occurrences were at Init/Control when
   we define monads and auxiliary combinators for them).
   We considered three options for the addressing the issue on the second example:

 A3) `a₁ ... aₙ` are not pairwise distinct (failed condition 1).
   In Lean3, we would try to approximate this case using an approach similar to A2.
   However, this approximation complicates the code, and is never used in the
   Lean3 stdlib and mathlib.

 A4) `t` contains a metavariable `?m'@C'` where `C'` is not a subprefix of `C`.
   If `?m'` is assigned, we substitute.
   If not, we create an auxiliary metavariable with a smaller scope.
   Actually, we let `elimMVarDeps` at `MetavarContext.lean` to perform this step.

 A5) If some `aᵢ` is not a free variable,
     then we use first-order unification (if `config.foApprox` is set to true)

       ?m a_1 ... a_i a_{i+1} ... a_{i+k} =?= f b_1 ... b_k

   reduces to

       ?M a_1 ... a_i =?= f
       a_{i+1}        =?= b_1
       ...
       a_{i+k}        =?= b_k


 A6) If (m =?= v) is of the form

        ?m a_1 ... a_n =?= ?m b_1 ... b_k

     then we use first-order unification (if `config.foApprox` is set to true)

 A7) When `foApprox`, we may use another approximation (`constApprox`) for solving constraints of the form
     ```
     ?m s₁ ... sₙ =?= t
     ```
     where `s₁ ... sₙ` are arbitrary terms. We solve them by assigning the constant function to `?m`.
     ```
     ?m := fun _ ... _ => t
     ```

     In general, this approximation may produce bad solutions, and may prevent coercions from being tried.
     For example, consider the term `pure (x > 0)` with inferred type `?m Prop` and expected type `IO Bool`.
     In this situation, the
     elaborator generates the unification constraint
     ```
     ?m Prop =?= IO Bool
     ```
     It is not a higher-order pattern, nor first-order approximation is applicable. However, constant approximation
     produces the bogus solution `?m := fun _ => IO Bool`, and prevents the system from using the coercion from
     the decidable proposition `x > 0` to `Bool`.

     On the other hand, the constant approximation is desirable for elaborating the term
     ```
     let f (x : _) := pure "hello"; f ()
     ```
     with expected type `IO String`.
     In this example, the following unification constraint is generated.
     ```
     ?m () String =?= IO String
     ```
     It is not a higher-order pattern, first-order approximation reduces it to
     ```
     ?m () =?= IO
     ```
     which fails to be solved. However, constant approximation solves it by assigning
     ```
     ?m := fun _ => IO
     ```
     Note that `f`s type is `(x : ?α) -> ?m x String`. The metavariable `?m` may depend on `x`.
     If `constApprox` is set to true, we use constant approximation. Otherwise, we use a heuristic to decide
     whether we should apply it or not. The heuristic is based on observing where the constraints above come from.
     In the first example, the constraint `?m Prop =?= IO Bool` come from polymorphic method where `?m` is expected to
     be a **function** of type `Type -> Type`. In the second example, the first argument of `?m` is used to model
     a **potential** dependency on `x`. By using constant approximation here, we are just saying the type of `f`
     does **not** depend on `x`. We claim this is a reasonable approximation in practice. Moreover, it is expected
     by any functional programmer used to non-dependently type languages (e.g., Haskell).
     We distinguish the two cases above by using the field `numScopeArgs` at `MetavarDecl`. This field tracks
     how many metavariable arguments are representing dependencies.
-/

````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant55a71bf324abab1d452a49901c3e1d836b8b355d057d92f54f28390ec94759be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant55a71bf324abab1d452a49901c3e1d836b8b355d057d92f54f28390ec94759be.lean#L557).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8bbd010584f31382615499820e7b562d16998fee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
