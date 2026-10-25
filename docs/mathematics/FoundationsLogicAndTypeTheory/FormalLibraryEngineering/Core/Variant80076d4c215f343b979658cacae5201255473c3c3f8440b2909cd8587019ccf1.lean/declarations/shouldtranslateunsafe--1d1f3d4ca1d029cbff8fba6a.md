# shouldTranslateUnsafe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:507701f4206897adda6613d10957c358e0a74be035ee79559aa57933afcecb07",
  "kind": "def",
  "lexical_name": "shouldTranslateUnsafe",
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
  "slug": "shouldtranslateunsafe--1d1f3d4ca1d029cbff8fba6a",
  "source": {
    "blob": "b666c64abc5bdecd2b7cbf8a39b6630e0227a986",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 441,
    "line": 384,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant80076d4c215f343b979658cacae5201255473c3c3f8440b2909cd8587019ccf1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1d1f3d4ca1d029cbff8fba6abba48581bc6bdee2067a7c5777a262ba48d77318",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant80076d4c215f343b979658cacae5201255473c3c3f8440b2909cd8587019ccf1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:507701f4206897adda6613d10957c358e0a74be035ee79559aa57933afcecb07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 384–441.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private unsafe def shouldTranslateUnsafe (env : Environment) (t : TranslateData) (e : Expr) :
    ReplacementM (Option Expr) := do
  let visitedFVars : IO.Ref (Array FVarId) ← IO.mkRef #[]
  let dontTranslate ← read
  let lctx ← getLCtx
  let rec visit (e : Expr) : ExceptT Expr (StateT (PtrSet Expr) BaseIO) Unit := do
    if (← get).contains e then
      return
    modify fun s => s.insert e
    match e with
    | .app .. => e.withApp fun f args ↦ do
      match f with
      | .const n _ =>
        -- A constant in an application, e.g. `Prod` in `α × β`, is translated by default.
        let doTranslate := (t.doTranslateAttr.find? env n).getD true
        unless doTranslate do throw e
        let l := (t.ignoreArgsAttr.find? env n).getD []
        args.size.forM fun i _ ↦ do
          if !l.contains i then visit args[i]
      | .fvar .. => visit f -- We don't look in the arguments of free variables.
      | _ => visit f; args.forM visit
    | .const n _ =>
      -- A constant not in an application, e.g. `ℕ`, is not translated by default.
      let doTranslate := (t.doTranslateAttr.find? env n).getD (findTranslation? env t n).isSome
      unless doTranslate do throw e
    | .lam _ _ t _       => visit t
    | .forallE _ _ t _   => visit t
    | .letE _ _ e body _ => visit e; visit body
    | .mdata _ b         => visit b
    | .proj _ _ b        => visit b
    | .fvar fvarId       =>
      if dontTranslate.contains fvarId then
        throw e
      if let some value := (lctx.get! fvarId).value? (allowNondep := true) then
        visit value
      else
        visitedFVars.modify (·.push fvarId)
    /- We do not translate the order on `Prop`.
    TODO: We also don't want to translate the category on `Type u`. Unfortunately, replacing
    `.sort 0` with `.sort _` here breaks some uses of `to_additive` on `MonCat`. -/
    | .sort 0            => throw e
    | _                  => pure ()
  match ← (visit e).run' mkPtrSet with
  | .error e => return some e
  | .ok () =>
    /- In the case that we do translate, we mark the visited free variables as relevant for
    the translation by inserting them into the state. -/
    modify (·.insertMany (← visitedFVars.get))
    return none

/-- `shouldTranslate e` tests whether the expression `e` contains a constant
that is not applied to any arguments and that doesn't have a translation itself.
This is used for deciding which subexpressions to translate: we only translate
constants if `shouldTranslate` applied to their relevant argument returns `true`.
This means we will replace expression applied to e.g. `α` or `α × β`, but not when applied to
e.g. `ℕ` or `ℝ × α`.
We ignore all arguments specified by the `ignore` `NameMap`. -/
@[implemented_by shouldTranslateUnsafe]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant80076d4c215f343b979658cacae5201255473c3c3f8440b2909cd8587019ccf1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant80076d4c215f343b979658cacae5201255473c3c3f8440b2909cd8587019ccf1.lean#L384).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b666c64abc5bdecd2b7cbf8a39b6630e0227a986` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
