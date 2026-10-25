# tacticCheckInstances

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ab0c369f1d2bbc15d56e15e3f0155c13f44f99f6b9361a008592078eb1ba8c17",
  "kind": "def",
  "lexical_name": "tacticCheckInstances",
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
  "slug": "tacticcheckinstances--5c236a4ac0be1b9ef7aea029",
  "source": {
    "blob": "c1e0228870add4395d1376590ae972632f3a891f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 30,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticTypeCheck/Variant65c3fb6cb8bf5dd88d7e5cddda3b7ea0c60bf1dcc52721eba4f84bc1e9343330.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5c236a4ac0be1b9ef7aea029b7cbc119813393b0df3368ea8c712fbd0343ba22",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticTypeCheck/Variant65c3fb6cb8bf5dd88d7e5cddda3b7ea0c60bf1dcc52721eba4f84bc1e9343330.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ab0c369f1d2bbc15d56e15e3f0155c13f44f99f6b9361a008592078eb1ba8c17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def tacticCheckInstances : Linter where
  run _cmdStx := do
    -- Do *not* check `linter.all` here, this linter is purely for debugging
    unless (← linter.tacticCheckInstances.getM) do
      return
    let infoTrees := (← get).infoState.trees.toArray
    -- Once any tactic step in this command has produced a warning, suppress
    -- all further checks: a bad lctx typically persists across many tactic
    -- steps
    let warned : IO.Ref Bool ← IO.mkRef false
    for tree in infoTrees do
      -- `postNode` so children are visited before parents: leaf tactic infos
      -- (the actual user-written `unfold`, `rw`, ...) fire before the
      -- enclosing tactic-sequence node, which has the syntax of the whole
      -- `by` block and would otherwise be the warning location.
      tree.visitM' (postNode := fun ci info _ => do
        if (← warned.get) then return
        let .ofTacticInfo ti := info | return
        -- Check `goalsBefore` then `goalsAfter`.
        -- - `goalsBefore` catches an initially-bad goal at the first tactic.
        -- - `goalsAfter` catches the result of this tactic — so `unfold foo`
        --   gets blamed, not the next tactic whose `goalsBefore` inherits it.
        --
        -- For each goal, we run `check` first at `.default` transparency
        -- (bailing out if it fails — that's a more fundamental problem), then
        -- (after resetting the unfold counter) at `.implicit`. If the
        -- `.implicit` check fails, the defs unfolded at `.default` but not at
        -- `.implicit` are the candidates for `@[implicit_reducible]` and get
        -- reported to the user. The pattern mirrors `mkUnfoldAxiomsNote` in
        -- `Lean.Meta.Check`.
        -- `kind` selects the wording of the warning:
        --   * "initial" — the failure is in `goalsBefore` of the first tactic
        --     (i.e. the `by` block started with a bad goal).
        --   * "produced" — the failure is in `goalsAfter` of this tactic
        --     (i.e. this tactic left the goal in a bad state).
        let checkGoal (kind : String) (g : MVarId) : MetaM (Option MessageData) := do
          let some mdecl := (← getMCtx).findDecl? g | return none
          let target ← instantiateMVars mdecl.type
          let origDiag := (← get).diag
          let result : Option MessageData ← Meta.withLCtx mdecl.lctx #[] <|
              withOptions (diagnostics.set · true) do
            -- If the goal is not even type-correct at `.default`, bail out —
            -- this is a different (more fundamental) problem.
            try Meta.check target .default catch _ => return none
            let counterDefault := (← get).diag.unfoldCounter
            -- Reset and try at `.implicit`.
            modify ({ · with diag := origDiag })
            try
              Meta.check target .implicit
              return none
            catch e =>
              let counterInst := (← get).diag.unfoldCounter
              let diff := Meta.subCounters counterDefault counterInst
              let env ← getEnv
              let candidates : List MessageData :=
                diff.toList.filterMap fun (n, count) => do
                  guard <| count > 0
                  guard <| getReducibilityStatusCore env n matches .semireducible
                  guard <| !Meta.isInstanceCore env n
                  return m!"{.ofConstName n}"
              if candidates.isEmpty then
                return none
              let remedy : MessageData := match kind with
                | "initial" => "consider rephrasing the goal or marking"
                | _         => "consider using propositional rewriting or marking"
              return some m!"{kind} tactic goal is not type-correct at \
                `.implicit` transparency; {remedy} some of the following as \
                `@[implicit_reducible]`:\
                {indentD (.joinSep candidates Format.line)}\n\
                Full error:\
                {indentD e.toMessageData}"
          -- Always restore the original diagnostics snapshot.
          modify ({ · with diag := origDiag })
          return result
        let check (kind : String) (goals : List MVarId) : MetaM (Option MessageData) := do
          for g in goals do
            if let some msg ← checkGoal kind g then
              return some msg
          return none
        let ctxBefore : ContextInfo := { ci with mctx := ti.mctxBefore }
        let ctxAfter  : ContextInfo := { ci with mctx := ti.mctxAfter }
        let failure : Option MessageData ← liftM do
          let m₁ ← ctxBefore.runMetaM {} (check "initial" ti.goalsBefore)
          if m₁.isSome then return m₁
          ctxAfter.runMetaM {} (check "produced" ti.goalsAfter)
        if let some msg := failure then
          warned.set true
          logLint linter.tacticCheckInstances ti.stx msg)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticTypeCheck/Variant65c3fb6cb8bf5dd88d7e5cddda3b7ea0c60bf1dcc52721eba4f84bc1e9343330.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticTypeCheck/Variant65c3fb6cb8bf5dd88d7e5cddda3b7ea0c60bf1dcc52721eba4f84bc1e9343330.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1e0228870add4395d1376590ae972632f3a891f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
