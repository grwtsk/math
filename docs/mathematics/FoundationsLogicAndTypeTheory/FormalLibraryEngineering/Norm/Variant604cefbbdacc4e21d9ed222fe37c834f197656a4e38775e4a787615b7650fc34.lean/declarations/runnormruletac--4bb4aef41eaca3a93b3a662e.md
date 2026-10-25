# runNormRuleTac

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:25a5fbc30bfe70c23f333247a7f1f77fa4f55859c9334ca943b09ddf1d698193",
  "kind": "def",
  "lexical_name": "runNormRuleTac",
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
  "slug": "runnormruletac--4bb4aef41eaca3a93b3a662e",
  "source": {
    "blob": "a4c199528916edf72b76d44e1050733b11a0399e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 113,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant604cefbbdacc4e21d9ed222fe37c834f197656a4e38775e4a787615b7650fc34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4bb4aef41eaca3a93b3a662e526a69146b7a7e22bf7784227ba0b96c695132be",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant604cefbbdacc4e21d9ed222fe37c834f197656a4e38775e4a787615b7650fc34.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:25a5fbc30bfe70c23f333247a7f1f77fa4f55859c9334ca943b09ddf1d698193`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def runNormRuleTac (rule : NormRule) (input : RuleTacInput) (fs : ForwardState)
    (rs : LocalRuleSet) :
    NormM $
      Option (NormRuleResult × ForwardState × Std.HashSet FVarId) ×
      Array ForwardRuleMatch := do
  let preMetaState ← show MetaM _ from saveState
  let result? ← runRuleTac rule.tac.run rule.name preMetaState input
  let forwardRuleMatches := rule.tac.forwardRuleMatches? |>.getD #[]
  match result? with
  | .error e =>
    aesop_trace[steps] e.toMessageData
    return (none, forwardRuleMatches)
  | .ok result =>
    let #[rapp] := result.applications
      | err m!"rule did not produce exactly one rule application."
    show MetaM _ from restoreState rapp.postState
    if rapp.goals.isEmpty then
      return (some (.proved rapp.scriptSteps?, fs, ∅), forwardRuleMatches)
    let (#[{ diff }]) := rapp.goals
      | err m!"rule produced more than one subgoal."
    let fs ← fs.applyGoalDiff rs diff
    let g := diff.newGoal
    if ← Check.rules.isEnabled then
      let mvars := .ofArray input.mvars.toArray
      let actualMVars ← rapp.postState.runMetaM' g.getMVarDependencies
      if ! actualMVars == mvars then
         err "the goal produced by the rule depends on different metavariables than the original goal."
    let result := .succeeded g rapp.scriptSteps?
    return (some (result, fs, diff.removedFVars), forwardRuleMatches)
  where
    err {α} (msg : MessageData) : MetaM α := throwError
      "aesop: error while running norm rule {rule.name}: {msg}\nThe rule was run on this goal:{indentD $ MessageData.ofGoal input.goal}"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant604cefbbdacc4e21d9ed222fe37c834f197656a4e38775e4a787615b7650fc34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant604cefbbdacc4e21d9ed222fe37c834f197656a4e38775e4a787615b7650fc34.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4c199528916edf72b76d44e1050733b11a0399e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
