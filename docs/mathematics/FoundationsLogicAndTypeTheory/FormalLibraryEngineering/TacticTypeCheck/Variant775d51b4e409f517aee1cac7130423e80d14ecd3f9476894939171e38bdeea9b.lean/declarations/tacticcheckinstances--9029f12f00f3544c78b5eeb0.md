# tacticCheckInstances

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dfbb8f8f01ccf8d3116743b7ad6a5fb81ca521d53bca0a582996e1958d98e95e",
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
  "slug": "tacticcheckinstances--9029f12f00f3544c78b5eeb0",
  "source": {
    "blob": "4839eddf88296bd9d4492adb5808c1680c7e922b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 38,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticTypeCheck/Variant775d51b4e409f517aee1cac7130423e80d14ecd3f9476894939171e38bdeea9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9029f12f00f3544c78b5eeb00d76522f377c260f430dca4a7fd6eae23c2e153a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticTypeCheck/Variant775d51b4e409f517aee1cac7130423e80d14ecd3f9476894939171e38bdeea9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dfbb8f8f01ccf8d3116743b7ad6a5fb81ca521d53bca0a582996e1958d98e95e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–126.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticTypeCheck/Variant775d51b4e409f517aee1cac7130423e80d14ecd3f9476894939171e38bdeea9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticTypeCheck/Variant775d51b4e409f517aee1cac7130423e80d14ecd3f9476894939171e38bdeea9b.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4839eddf88296bd9d4492adb5808c1680c7e922b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
