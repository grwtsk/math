# evalIntro

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2bba6187caa82614f0c1e74980e79f4e5df1c6f8f9f144ed937f57e464e26e89",
  "kind": "def",
  "lexical_name": "evalIntro",
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
  "slug": "evalintro--c254feb83d61b078edad39de",
  "source": {
    "blob": "9ac72035c41bb6175b7b6f262220e570d44586cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 381,
    "line": 313,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c254feb83d61b078edad39de6d5a3357ec9ae0bed76e836525085b4fa5b4d422",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2bba6187caa82614f0c1e74980e79f4e5df1c6f8f9f144ed937f57e464e26e89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 313–381.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[builtin_tactic Lean.Parser.Tactic.intro] def evalIntro : Tactic := fun stx => do
  match stx with
  | `(tactic| intro) =>
    -- `intro` is implicitly `intro _`
    introStep stx `_
  | `(tactic| intro%$tk $ts:term*) =>
    for t in ts, i in 0...* do
      -- We want `intro` and `intro h` to have similar tactic info so that the goal states
      -- are similar at each position, so we include `intro` with the first argument for the tactic info range.
      let ctxRef := if i == 0 then mkNullNode #[tk, t] else t
      withTacticInfoContext ctxRef <| withRef t do evalArg t
  | _ => throwUnsupportedSyntax
where
  /--
  Evaluates an `intro` argument.
  -/
  evalArg (t : Term) : TacticM Unit := do
    match t with
    | `($h:ident) => introStep h h.getId
    | `(_%$h)     => introStep h `_
    /- Type ascription -/
    | `(($h:ident : $[$type?:term]?)) => introStep h h.getId type?
    | `((_%$h     : $[$type?:term]?)) => introStep h `_      type?
    /- Pattern -/
    | _ =>
      -- Using `mkIdentFrom` guarantees that errors are localized on `t`.
      let h := mkIdentFrom t (← mkFreshUserName `h)
      /- We use `@h` at the match-discriminant to disable the implicit lambda feature -/
      evalTactic (← `(tactic| intro $h:ident; match @$h:ident with | $t:term => ?_; try clear $h:ident))
  /--
  Performs an `intro` step.
  - `nref` is a ref for the introduced hypothesis
  - `n` is the name to use for the introduced hypothesis, `_` means to use a hygienic name
    and `rfl` means to use a hygienic name and `subst`
  - `typeStx?` is used to change the type of the introduced hypothesis
  -/
  introStep (nref : Syntax) (n : Name) (typeStx? : Option Syntax := none) : TacticM Unit := do
    let mvarIdOrig ← getMainGoal
    let subst := n == `rfl
    let n := if subst then `_ else n
    let fvarId ← liftMetaTacticAux fun mvarId => do
      let (fvarId, mvarId) ← mvarId.intro n
      pure (fvarId, [mvarId])
    let fvar := mkFVar fvarId
    if let some typeStx := typeStx? then
      withMainContext do
        let mvarCounterSaved := (← getMCtx).mvarCounter
        let fvarType ← inferType fvar
        let type ← runTermElab do
          -- Use the original context, to prevent `type` from referring to the introduced hypothesis
          let type ← mvarIdOrig.withContext <| Term.elabType typeStx
          Term.synthesizeSyntheticMVars
          discard <| isDefEqGuarded type fvarType
          pure type
        unless (← isDefEqGuarded type fvarType) do
          throwError m!"Type mismatch: Hypothesis `{fvar}` " ++
            (← mkHasTypeButIsExpectedMsg fvarType type (trailing? := "due to the provided type annotation"))
        let type ← instantiateMVars type
        let mvars ← filterOldMVars (← getMVars type) mvarCounterSaved
        logUnassignedAndAbort mvars
        liftMetaTactic1 fun mvarId => mvarId.replaceLocalDeclDefEq fvarId type
    withMainContext do
      if subst then
        -- Note: the mdata prevents `rfl` from getting highlighted like a variable
        Term.addTermInfo' nref (.mdata {} fvar)
        liftMetaTactic1 fun mvarId => return (← substEq mvarId fvarId).2
      else
        Term.addLocalVarInfo nref fvar

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean#L313).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ac72035c41bb6175b7b6f262220e570d44586cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
