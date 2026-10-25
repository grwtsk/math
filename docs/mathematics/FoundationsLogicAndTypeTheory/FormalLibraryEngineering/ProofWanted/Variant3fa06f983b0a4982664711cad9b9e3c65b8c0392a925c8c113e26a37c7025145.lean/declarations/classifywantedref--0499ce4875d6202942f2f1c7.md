# classifyWantedRef

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:22b720c8addae49239addbe21f9431daba13822b251dbc7b7a71e9620f93b240",
  "kind": "def",
  "lexical_name": "classifyWantedRef",
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
  "slug": "classifywantedref--0499ce4875d6202942f2f1c7",
  "source": {
    "blob": "8e065e6f3824217f42b7f7610f4e2562d0d6c91b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 429,
    "line": 271,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofWanted/Variant3fa06f983b0a4982664711cad9b9e3c65b8c0392a925c8c113e26a37c7025145.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0499ce4875d6202942f2f1c79b04666f77be460943e1bdb7e2d563a8eab50547",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofWanted/Variant3fa06f983b0a4982664711cad9b9e3c65b8c0392a925c8c113e26a37c7025145.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:22b720c8addae49239addbe21f9431daba13822b251dbc7b7a71e9620f93b240`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–429.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def classifyWantedRef (nm : Name) (stx : Syntax) : CommandElabM WantedRefInfo := do
  Command.liftTermElabM <| open Lean.Meta in do
    let info ← getConstInfo nm
    -- How many of `nm`'s trailing binders are auto-generated (vs user-written).
    let numAuto := (wantedArityExt.getState (← getEnv)).find? nm |>.getD 0
    forallTelescope info.type fun fvars body => do
      if numAuto > fvars.size then
        throwError "internal: wanted `{nm}` records {numAuto} auto binders but has only \
          {fvars.size} binders"
      let userCount := fvars.size - numAuto
      -- Recover the referenced wanted and its kind from an auto binder's type
      -- `∀ …, ProofWanted.Stmt (@ref …)` / `… DefWanted.Val (@ref …)`.
      -- Non-reducing telescope: the body is `ProofWanted.Stmt (@ref …)` / `DefWanted.Val (@ref …)`
      -- with the (reducible) accessor intact, so we can read off the accessor and referenced name.
      let classifyAutoBinder (ty : Expr) : MetaM (Name × WantedRefKind) :=
        forallTelescope ty fun _ b => do
          let some accName := b.getAppFn.constName?
            | throwError "internal: malformed wanted dependency binder `{ty}`"
          let some refName := b.appArg!.getAppFn.constName?
            | throwError "internal: malformed wanted dependency binder `{ty}`"
          let kind ← if accName == ``ProofWanted.Stmt then pure .proofWanted
            else if accName == ``DefWanted.Val then pure .defWanted
            else throwError "internal: malformed wanted dependency binder `{ty}`"
          return (refName, kind)
      -- Try to unify `body` with `wrapper ?α`; if it succeeds, return `?α` for any extra checks.
      let matchesWrapper (wrapper : Name) : MetaM (Option Expr) := do
        let u ← mkFreshLevelMVar
        let α ← mkFreshExprMVar (some (Lean.mkSort u))
        if ← isDefEq body (Lean.mkApp (Lean.mkConst wrapper [u]) α) then
          return some (← Lean.instantiateMVars α)
        return none
      -- Shared builder for both reference flavours. The opaque path (`mkBinderSyn`) produces a *Π*
      -- binder type `∀ userargs, accessor (@nm args)`; the transparent path (`mkTransparentRef`)
      -- produces a *λ* term `fun userargs => (@nm args).val`. Everything else is identical, so they
      -- differ only in `mkHead` (how the applied `@nm` is turned into the reference's core)
      -- and `pi` (whether the user binders are quantified as a Π or abstracted as a λ). Keeping
      -- this in one
      -- place is what guarantees both flavours get the same `delabTy` — in particular the universe
      -- rewrite below, whose omission from a duplicated transparent copy was a real bug.
      let buildRef (mkHead : TSyntax `term → MetaM (TSyntax `term)) (pi : Bool) :
          MetaM (TSyntax `term × Array WantedDep) := do
        let fooIdent := mkIdent nm
        -- Each universe level is a hole `_` rather than `nm`'s own level name: a named level would
        -- auto-bind to a fresh, distinct param of the enclosing declaration, leaving the reference
        -- monomorphic at a universe that can never match the use site (e.g. referencing
        -- `exists_ulift.{w}` at universe `u`, or `❰foo❱ ℚ` at a concrete universe). A hole unifies
        -- with whatever universe the reference is used at. One reference at two different universes
        -- still can't be expressed by a single binder; see the `ulift`/`TODO` tests in
        -- `BatteriesTest/theorem_wanted.lean`.
        let levelStxs : Array (TSyntax `level) ←
          info.levelParams.toArray.mapM fun _ => `(level| _)
        let oldNames : Array Name ← fvars.mapM fun fvar => return (← fvar.fvarId!.getDecl).userName
        let freshNames : Array Name ← oldNames.mapM fun n => do
          let baseStr : String := match n.eraseMacroScopes.componentsRev.head? with
            | some (.str _ s) => s
            | _ => "arg"
          Lean.mkFreshUserName (Name.mkSimple baseStr)
        -- `nm`'s auto-generated binders (indices `≥ userCount`) are all *surfaced* as flat `deps` —
        -- including instance-valued ones (the ambient `instance_wanted` includes) — rather than
        -- leaving the class ones quantified inside the reference. Quantifying them nests `nm`'s
        -- transitive instance binders into the generated type, which compounds super-exponentially
        -- across a chain of `instance_wanted`s (each includes all earlier ones); surfacing + dedup
        -- keeps the binders flat and linear. We allocate the per-argument identifier for every
        -- binder *before* delaborating any type, because an auto binder's type may reference an
        -- earlier
        -- surfaced binder — that reference must resolve to the placeholder we add to the enclosing
        -- declaration, not to `nm`'s internal name.
        let mut appNames : Array Name := freshNames
        let mut surfaced : Array (Nat × Name) := #[]  -- (binder index, referenced wanted)
        for idx in [userCount:fvars.size] do
          let (refName, refK) ← classifyAutoBinder (← fvars[idx]!.fvarId!.getDecl).type
          let baseStr : String := match refName.eraseMacroScopes.componentsRev.head? with
            | some (.str _ s) => refK.hypPrefix ++ s
            | _ => refK.hypPrefix ++ "ref"
          appNames := appNames.set! idx (← Lean.mkFreshUserName (Name.mkSimple baseStr))
          surfaced := surfaced.push (idx, refName)
        let renameMap : Std.HashMap Name Name :=
          oldNames.zip appNames |>.foldl (fun m (o, n) => m.insert o n) {}
        -- Delaborate a binder type to round-trip-safe syntax, renaming `nm`'s binders to the fresh
        -- names and rewriting `nm`'s universe parameters (which appear as named levels, e.g.
        -- `Type u_1`) to level holes `_` so the reference resolves at the use site's universe.
        let delabTy (ty : Expr) : MetaM (TSyntax `term) := do
          let s ← withOptions (fun o =>
              ((((o.setBool `pp.explicit true).setBool
                  `pp.fieldNotation false).setBool
                `pp.fieldNotation.generalized false).setBool
                `pp.deepTerms true).setBool
                `pp.proofs true) <|
            PrettyPrinter.delab ty
          return ⟨← s.raw.replaceM fun s => do
            if s.isIdent then
              if let some n := renameMap[s.getId]? then return some (mkIdent n).raw
              if info.levelParams.contains s.getId.eraseMacroScopes then
                return some (← `(level| _)).raw
            return none⟩
        let deps : Array WantedDep ← surfaced.mapM fun (idx, refName) => do
          let decl ← fvars[idx]!.fvarId!.getDecl
          return { name := refName, ident := mkIdent appNames[idx]!,
                   binderType := ← delabTy decl.type,
                   isClass := decl.binderInfo == .instImplicit }
        let argIdents : Array (TSyntax `term) ← appNames.mapM fun n => `(@$(mkIdent n))
        let appliedSyn : TSyntax `term ←
          if levelStxs.isEmpty then `(@$fooIdent $argIdents*)
          else `(@$fooIdent:ident.{$levelStxs,*} $argIdents*)
        -- Wrap the head in the user binders (indices `[0:userCount]`; the surfaced auto binders are
        -- threaded into `appliedSyn` instead), outermost first, as a Π or λ per `pi`.
        let mut acc ← mkHead appliedSyn
        for i in [0:userCount] do
          let idx := userCount - 1 - i
          let decl ← fvars[idx]!.fvarId!.getDecl
          let nameId := mkIdent freshNames[idx]!
          let typeSyn ← delabTy decl.type
          acc ← if pi then
            match decl.binderInfo with
            | .default        => `(($nameId : $typeSyn) → $acc)
            | .implicit       => `({$nameId : $typeSyn} → $acc)
            | .strictImplicit => `(⦃$nameId : $typeSyn⦄ → $acc)
            | .instImplicit   => `([$nameId : $typeSyn] → $acc)
          else
            match decl.binderInfo with
            | .default        => `(fun ($nameId : $typeSyn) => $acc)
            | .implicit       => `(fun {$nameId : $typeSyn} => $acc)
            | .strictImplicit => `(fun ⦃$nameId : $typeSyn⦄ => $acc)
            | .instImplicit   => `(fun [$nameId : $typeSyn] => $acc)
        return (acc, deps)
      -- Opaque reference: a `d_nm`/`h_nm` hypothesis of Π type `∀ userargs, accessor (@nm args)`.
      let mkBinderSyn (refKind : WantedRefKind) : MetaM (TSyntax `term × Array WantedDep) :=
        buildRef (fun core => `($(mkIdent refKind.accessor) $core)) (pi := true)
      -- Transparent reference (`def_wanted` with a body): inline `nm` itself, projecting the
      -- carried value out of the `DerivedWanted` wrapper with `.val`. With `nm` `@[reducible]`,
      -- `(@nm … leafholes).val` βιδ-reduces to `nm`'s body, so `❰nm❱` is definitionally that body.
      -- No `d_nm` binder is introduced — `nm` is not a hole; only its surfaced leaf holes are.
      let mkTransparentRef : MetaM (TSyntax `term × Array WantedDep) :=
        buildRef (fun core => `(($core).val)) (pi := false)
      if let some _ ← matchesWrapper ``DerivedWanted then
        let (term, deps) ← mkTransparentRef
        return { kind := .defWanted, binderType := term, isClass := false, deps,
                 transparent := some term }
      let env ← getEnv
      let isCls (α : Expr) : Bool := match α.getAppFn with
        | .const n _ => Lean.isClass env n
        | _ => false
      if let some α ← matchesWrapper ``ProofWanted then
        unless ← isProp α do
          throwErrorAt stx
            "`{stx}` is a `ProofWanted`, but its statement is not a proposition"
        let (binderType, deps) ← mkBinderSyn .proofWanted
        return { kind := .proofWanted, binderType, isClass := isCls α, deps }
      if let some β ← matchesWrapper ``DefWanted then
        let (binderType, deps) ← mkBinderSyn .defWanted
        return { kind := .defWanted, binderType, isClass := isCls β, deps }
      throwErrorAt stx
        "`{stx}` is not a `theorem_wanted`, `proof_wanted`, or `def_wanted` declaration \
         (its type doesn't end in `ProofWanted _` or `DefWanted _`)"

/-- Shared elaborator for `theorem_wanted` and `def_wanted`. Walks the statement and (if
present) the body, rewriting each `❰x❱` to a fresh parameter; the parameter's type uses the
accessor (`ProofWanted.Stmt` or `DefWanted.Val`) appropriate to `x`'s own kind. If the
body has no `❰…❱` reference anywhere, emits a "Try this:" suggesting `theorem` / `def`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofWanted/Variant3fa06f983b0a4982664711cad9b9e3c65b8c0392a925c8c113e26a37c7025145.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofWanted/Variant3fa06f983b0a4982664711cad9b9e3c65b8c0392a925c8c113e26a37c7025145.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e065e6f3824217f42b7f7610f4e2562d0d6c91b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
