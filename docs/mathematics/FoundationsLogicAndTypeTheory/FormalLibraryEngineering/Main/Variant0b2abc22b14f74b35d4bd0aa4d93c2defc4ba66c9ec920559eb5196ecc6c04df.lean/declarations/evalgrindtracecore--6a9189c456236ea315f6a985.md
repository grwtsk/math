# evalGrindTraceCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bbf5cc9d93f5b56770b216d8aad05d37471d390e6187d565abcb7ce21d417583",
  "kind": "def",
  "lexical_name": "evalGrindTraceCore",
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
  "slug": "evalgrindtracecore--6a9189c456236ea315f6a985",
  "source": {
    "blob": "93798e57a87dfaf7967adb2e3d16f3091a812a55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 453,
    "line": 375,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant0b2abc22b14f74b35d4bd0aa4d93c2defc4ba66c9ec920559eb5196ecc6c04df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6a9189c456236ea315f6a985c33fbba96634f3199f07b3fd82a45aa28f259adc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant0b2abc22b14f74b35d4bd0aa4d93c2defc4ba66c9ec920559eb5196ecc6c04df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bbf5cc9d93f5b56770b216d8aad05d37471d390e6187d565abcb7ce21d417583`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 375–453.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalGrindTraceCore (stx : Syntax) (trace := true) (verbose := true) (useSorry := true) : TacticM (Array (TSyntax `tactic)) := withMainContext do
  let `(tactic| grind? $configStx:optConfig $[only%$only]?  $[ [$params?:grindParam,*] ]?) := stx
    | throwUnsupportedSyntax
  let config ← elabGrindConfig configStx
  let config := { config with clean := false, trace, verbose, useSorry }
  let only := only.isSome
  let paramStxs := if let some params := params? then params.getElems else #[]
  -- Extract term parameters (non-ident params) to include in the suggestion.
  -- These are not tracked via E-matching, so we conservatively include them all.
  -- Plain ident params that resolve to global declarations are tracked via E-matching.
  -- But idents with local variable dot notation (e.g., `cs.getD_rightInvSeq` where `cs`
  -- is a local variable) must be preserved because they produce anchors that need
  -- the original term to be loaded during replay.
  -- Non-ident terms (like `show P by tac`) need to be preserved explicitly.
  -- Params that mark types for case-splitting (e.g., `[EqvGen]` where `EqvGen` is an
  -- inductive predicate, or `[cases T]`) must also be preserved: the marking is not
  -- representable in the generated script, and without it `cases` steps on facts of
  -- these types fail during replay.
  -- **TODO**: This syntactic filtering is a stopgap: it duplicates parameter-elaboration
  -- logic and silently depends on which side effects are representable in scripts.
  -- A more robust solution is to make the script self-contained, e.g., a script step that
  -- marks a type for case-splitting, and tracking which parameters were actually used.
  let keepIdentParam (mod? : Option (TSyntax ``Parser.Attr.grindMod)) (id : Ident) : TacticM Bool := do
    if let some (_, _ :: _) := (← resolveLocalName id.getId) then
      return true
    else if let some mod := mod? then
      return (← Grind.getAttrKindCore mod) matches .cases _
    else
      let declName? ← try pure (some (← realizeGlobalConstNoOverload id)) catch _ => pure none
      if let some declName := declName? then
        Grind.isCasesAttrCandidate declName false
      else
        return false
  let termParamStxs : Array Grind.TParam ← paramStxs.filterM fun p => do
    match p with
    | `(Parser.Tactic.grindParam| $[$mod?:grindMod]? $id:ident) => keepIdentParam mod? id
    | `(Parser.Tactic.grindParam| ! $[$mod?:grindMod]? $id:ident) => keepIdentParam mod? id
    | `(Parser.Tactic.grindParam| - $_:ident) => return false
    | `(Parser.Tactic.grindParam| #$_:hexnum) => return false
    | _ => return true
  let mvarId ← getMainGoal
  let params ← mkGrindParams config only paramStxs mvarId
  Grind.withProtectedMCtx config mvarId fun mvarId' => do
    let (tacs, _) ← Grind.GrindTacticM.runAtGoal mvarId' params do
      let finish ← Grind.Action.mkFinish
      let goal :: _ ← Grind.getGoals
        | -- Goal was closed during initialization
          let configStx' := filterSuggestionsAndLocalsFromGrindConfig configStx
          if termParamStxs.isEmpty then
            let tac ← `(tactic| grind $configStx':optConfig only)
            return #[tac]
          else
            let tac ← `(tactic| grind $configStx':optConfig only [$termParamStxs,*])
            return #[tac]
      Grind.liftGrindM do
        -- **Note**: If we get failures when using the first suggestion, we should test is using `saved`
        -- let saved ← saveState
        match (← finish.run goal) with
        | .closed seq =>
          let configStx' := filterSuggestionsAndLocalsFromGrindConfig configStx
          let tacs ← Grind.mkGrindOnlyTactics configStx' seq termParamStxs
          let seq := Grind.Action.mkGrindSeq seq
          /-
          **Note**: The script must carry the preserved parameters (e.g., types marked for
          case-splitting). The tactic was verified with these parameters active, and `cases`
          steps may fail without them.
          -/
          let tac ← if termParamStxs.isEmpty then
            `(tactic| grind $configStx':optConfig => $seq:grindSeq)
          else
            `(tactic| grind $configStx':optConfig [$termParamStxs,*] => $seq:grindSeq)
          let tacs := tacs.push tac
          return tacs
        | .stuck gs =>
          let goal :: _ := gs | throwError "`grind?` failed, but resulting goal is not available"
          let result ← Grind.mkResult params (some goal)
          throwError "`grind?` failed\n{← result.toMessageData}"
    return tacs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant0b2abc22b14f74b35d4bd0aa4d93c2defc4ba66c9ec920559eb5196ecc6c04df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant0b2abc22b14f74b35d4bd0aa4d93c2defc4ba66c9ec920559eb5196ecc6c04df.lean#L375).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93798e57a87dfaf7967adb2e3d16f3091a812a55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
