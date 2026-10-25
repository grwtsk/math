# mkCongrOfApp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0d4b3b5968daf1223f59ae34a59768a8784bb8d3d07ea91ef63e9c9fc1d56d91",
  "kind": "def",
  "lexical_name": "mkCongrOfApp",
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
  "slug": "mkcongrofapp--71f8ac40e2e8a677f75fc2e3",
  "source": {
    "blob": "c76112d1f1a838af5b3d3645665dd0eea3b0ada1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 696,
    "line": 575,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variant2f58de9a0e38aa548aa4f8f22a712e1d67faae4ce4f16bd14af16a204d78f714.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:71f8ac40e2e8a677f75fc2e3fb600497d2ee727c1787c0a07f2223988163c9b7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variant2f58de9a0e38aa548aa4f8f22a712e1d67faae4ce4f16bd14af16a204d78f714.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0d4b3b5968daf1223f59ae34a59768a8784bb8d3d07ea91ef63e9c9fc1d56d91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 575–696.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def mkCongrOfApp (depth : Nat) (mvarCounterSaved : Nat) (lhs rhs : Expr) :
    M CongrResult := do
  -- Even if a function is being rewritten (e.g. with `f x = g`), both sides should have the same
  -- number of arguments since there will be a cHole around both `f x` and `g`.
  let arity := lhs.getAppNumArgs
  trace[Elab.congr] "app, arity {arity}"
  unless arity == rhs.getAppNumArgs do
    trace[Elab.congr] "app desync (arity)"
    return ← CongrResult.mkDefault' mvarCounterSaved lhs rhs
  -- Optimization: congruences often have a shared prefix (e.g. some type parameters an instances)
  -- so if there's a shared prefix we use it.
  let mut (f, f') := getJointAppFns lhs rhs
  let arity := arity - f.getAppNumArgs
  trace[Elab.congr] "app, updated arity {arity}"
  if f != f' then
    unless ← isDefEq (← inferType f) (← inferType f') do
      trace[Elab.congr] "app desync (function types)"
      return ← CongrResult.mkDefault' mvarCounterSaved lhs rhs
  -- First try using `congr`/`congrFun` to build a proof as far as possible.
  -- We update `f`, `f'`, and `finfo` as we go.
  let lhsArgs := lhs.getBoundedAppArgs arity
  let rhsArgs := rhs.getBoundedAppArgs arity
  let rec
    /--
    Argument processing loop
    - `i` is index into `lhsArgs`/`rhsArgs`.
    - `finfo` is the funinfo of `f` applied to the first `finfoIdx` arguments
    - `f` and `f'` are the current head functions, after the first `i` arguments have been applied.
    -/
    go (i : Nat) (finfo : FunInfo) (finfoIdx : Nat) (f f' : Expr) (pf : Expr) :
        M CongrResult := do
      if i ≥ arity then
        return CongrResult.mk' f f' pf
      else
        let mut finfo := finfo
        let mut finfoIdx := finfoIdx
        unless i - finfoIdx < finfo.getArity do
          finfo ← getFunInfoNArgs f (arity - finfoIdx)
          finfoIdx := i
        let info := finfo.paramInfo[i - finfoIdx]!
        let a := lhsArgs[i]!
        let a' := rhsArgs[i]!
        let ra ← mkCongrOfAux (depth + 1) mvarCounterSaved a a'
        if ra.isRfl then
          trace[Elab.congr] "app, arg {i} by rfl"
          go (i + 1) finfo finfoIdx (.app f ra.lhs) (.app f' ra.rhs) (← mkCongrFun pf ra.lhs)
        else if !info.hasFwdDeps then
          trace[Elab.congr] "app, arg {i} by eq"
          go (i + 1) finfo finfoIdx (.app f ra.lhs) (.app f' ra.rhs) (← mkCongr pf (← ra.eq))
        else
          -- Otherwise, we can make progress with an hcongr lemma.
          if (isRefl? pf).isNone then
            trace[Elab.congr] "app, hcongr needs transitivity"
            -- If there's a nontrivial proof, then since `mkHCongrWithArity'` fixes the function,
            -- we need to use transitivity to make the functions be the same.
            let lhsArgs' := (lhsArgs.extract i).map removeCHoles
            let lhs := mkAppN f lhsArgs'
            let lhs' := mkAppN f' lhsArgs'
            let mut pf' := pf
            for arg in lhsArgs' do
              pf' ← mkCongrFun pf' arg
            let res1 := CongrResult.mk' lhs lhs' pf'
            let res2 ← go i finfo finfoIdx f' f' (← mkEqRefl f')
            return res1.trans res2
          else
            -- Get an accurate measure of the arity of `f`, following `getFunInfoNArgs`.
            -- No need to update `finfo` itself.
            let fArity ←
              if finfoIdx == i then pure finfo.getArity
              else withAtLeastTransparency .default do
                forallBoundedTelescope (← inferType f) (some (arity - i)) fun xs _ => pure xs.size
            trace[Elab.congr] "app, args {i}-{i+arity-1} by hcongr, {arity} arguments"
            let thm ← mkHCongrWithArity' f fArity
            let mut args := #[]
            let mut lhsArgs' := #[]
            let mut rhsArgs' := #[]
            for lhs' in lhsArgs[i:], rhs' in rhsArgs[i:], kind in thm.argKinds do
              match kind with
              | .eq =>
                let ares ← mkCongrOfAux (depth + 1) mvarCounterSaved lhs' rhs'
                args := args |>.push ares.lhs |>.push ares.rhs |>.push (← ares.eq)
                lhsArgs' := lhsArgs'.push ares.lhs
                rhsArgs' := rhsArgs'.push ares.rhs
              | .heq =>
                let ares ← mkCongrOfAux (depth + 1) mvarCounterSaved lhs' rhs'
                args := args |>.push ares.lhs |>.push ares.rhs |>.push (← ares.heq)
                lhsArgs' := lhsArgs'.push ares.lhs
                rhsArgs' := rhsArgs'.push ares.rhs
              | .subsingletonInst =>
                -- Warning: we're not processing any congruence holes here.
                -- Users shouldn't be intentionally placing them in such arguments anyway.
                -- We can't throw an error because these arguments might incidentally have
                -- congruence holes by unification.
                let lhs' := removeCHoles lhs'
                let rhs' := removeCHoles rhs'
                args := args |>.push lhs' |>.push rhs'
                lhsArgs' := lhsArgs'.push lhs'
                rhsArgs' := rhsArgs'.push rhs'
              | _ => panic! "unexpected hcongr argument kind"
            let lhs' := mkAppN f lhsArgs'
            let rhs' := mkAppN f' rhsArgs'
            let res := CongrResult.mk' lhs' rhs' (mkAppN thm.proof args)
            if i + fArity < arity then
              -- There are more arguments after this. The only way this can work is if
              -- `res` can prove an equality.
              go (i + fArity) finfo finfoIdx lhs' rhs' (← res.eq)
            else
              -- Otherwise, we can return `res`, which might only be a HEq.
              return res
  let res ← mkCongrOfAux (depth + 1) mvarCounterSaved f f'
  let pf ← res.eq
  go 0 (← getFunInfoNArgs f arity) 0 res.lhs res.rhs pf

end

/--
Walks along both `lhs` and `rhs` simultaneously to create a congruence lemma between them.

Where they are desynchronized, we fall back to the base case (using `CongrResult.mkDefault'`)
since it's likely due to unification with the expected type,
from `_` placeholders or implicit arguments being filled in.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variant2f58de9a0e38aa548aa4f8f22a712e1d67faae4ce4f16bd14af16a204d78f714.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variant2f58de9a0e38aa548aa4f8f22a712e1d67faae4ce4f16bd14af16a204d78f714.lean#L575).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c76112d1f1a838af5b3d3645665dd0eea3b0ada1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
