# _root_.Lean.MVarId.apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:00be84834e1a5c0d9cc8e9e45fca75f5d03a1a13c7ead93746b03e4c7803f802",
  "kind": "def",
  "lexical_name": "_root_.Lean.MVarId.apply",
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
  "slug": "root-lean-mvarid-apply--13e607a0158774233ab67637",
  "source": {
    "blob": "0b1ce93f4b13e0507ca333baf895d38dd0cc77a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 169,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variantb29b1364e9f1e32f64d746d501c71ecf641ebd35270327623e6811cf487cd01d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:13e607a0158774233ab6763745a7ac3ce1a0196af644fdc468e7655a266cd227",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variantb29b1364e9f1e32f64d746d501c71ecf641ebd35270327623e6811cf487cd01d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:00be84834e1a5c0d9cc8e9e45fca75f5d03a1a13c7ead93746b03e4c7803f802`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def _root_.Lean.MVarId.apply (mvarId : MVarId) (e : Expr) (cfg : ApplyConfig := {})
    (term? : Option MessageData := none) : MetaM (List MVarId) :=
  mvarId.withContext do
    mvarId.checkNotAssigned `apply
    let targetType ← mvarId.getType
    let eType      ← inferType e
    let (numArgs, hasMVarHead) ← getExpectedNumArgsAux eType
    /-
    The `apply` tactic adds `_`s to `e`, and some of these `_`s become new goals.
    When `hasMVarHead` is `false` we try different numbers, until we find a type compatible with `targetType`.
    We used to try only `numArgs-targetTypeNumArgs` when `hasMVarHead = false`, but this is not always correct.
    For example, consider the following example
    ```
    example {α β} [LE_trans β] (x y z : α → β) (h₀ : x ≤ y) (h₁ : y ≤ z) : x ≤ z := by
      apply le_trans
      assumption
      assumption
    ```
    In this example, `targetTypeNumArgs = 1` because `LE` for functions is defined as
    ```
    instance {α : Type u} {β : Type v} [LE β] : LE (α → β) where
      le f g := ∀ i, f i ≤ g i
    ```
    -/
    let rangeNumArgs ← if hasMVarHead then
      pure numArgs...(numArgs+1)
    else
      let targetTypeNumArgs ← getExpectedNumArgs targetType
      pure (numArgs - targetTypeNumArgs)...(numArgs+1)
    /-
    Auxiliary function for trying to add `n` underscores where `n ∈ [i: rangeNumArgs.stop)`
    See comment above
    -/
    let rec go (i : Nat) : MetaM (Array Expr × Array BinderInfo) := do
      if i < rangeNumArgs.upper then
        let s ← saveState
        let (newMVars, binderInfos, eType) ← forallMetaTelescopeReducing eType i
        if (← isDefEqApply cfg.approx eType targetType) then
          return (newMVars, binderInfos)
        else
          s.restore
          go (i+1)
      else

        let conclusionType? ← if rangeNumArgs.lower = 0 then
          pure none
        else
          let (_, _, r) ← forallMetaTelescopeReducing eType (some rangeNumArgs.lower)
          pure (some r)
        throwApplyError mvarId eType conclusionType? targetType term?
      termination_by rangeNumArgs.upper - i
    let (newMVars, binderInfos) ← go rangeNumArgs.lower
    postprocessAppMVars `apply mvarId newMVars binderInfos cfg.synthAssignedInstances cfg.allowSynthFailures
    let e ← instantiateMVars e
    mvarId.assign (mkAppN e newMVars)
    let newMVars ← newMVars.filterM fun mvar => not <$> mvar.mvarId!.isAssigned
    appendParentTag mvarId newMVars binderInfos
    let otherMVarIds ← getMVarsNoDelayed e
    let newMVarIds ← reorderGoals newMVars cfg.newGoals
    let otherMVarIds := otherMVarIds.filter fun mvarId => !newMVarIds.contains mvarId
    let result := newMVarIds ++ otherMVarIds.toList
    result.forM (·.headBetaType)
    return result

/-- Short-hand for applying a constant to the goal. -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variantb29b1364e9f1e32f64d746d501c71ecf641ebd35270327623e6811cf487cd01d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variantb29b1364e9f1e32f64d746d501c71ecf641ebd35270327623e6811cf487cd01d.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b1ce93f4b13e0507ca333baf895d38dd0cc77a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
