# ofExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9d37918902beeb789ee474bd10eb4db0f175e5286fe02c5320d5dd0ba98fe7ad",
  "kind": "def",
  "lexical_name": "ofExpr",
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
  "slug": "ofexpr--fdd5bd89ef0ef5c27e1e9efb",
  "source": {
    "blob": "ea797bd973bd43707d6984a462ba3f2921a1fc6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 82,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RuleInfo/Variant7e612777abcbaf7672774f10abff8bc1f87ae52ffdeeaca0a528e1567699a66a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fdd5bd89ef0ef5c27e1e9efbb0f834a3ae2fe46c33eec442abb373f5a10f51e6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RuleInfo/Variant7e612777abcbaf7672774f10abff8bc1f87ae52ffdeeaca0a528e1567699a66a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9d37918902beeb789ee474bd10eb4db0f175e5286fe02c5320d5dd0ba98fe7ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofExpr (thm : Expr) (rulePattern? : Option RulePattern)
    (immediate : UnorderedArraySet PremiseIndex) : MetaM ForwardRuleInfo :=
  withNewMCtxDepth do
  let e ← instantiateMVars (← inferType thm)
  let numLevelParams :=
    (collectLevelParams {} e).params.size +
    (collectLevelMVars {} e).result.size
  let (premises, binderInfos, conclusion) ← withReducible do forallMetaTelescope e
  let premises := premises.map (·.mvarId!)
  let mut premiseToIdx : Std.HashMap MVarId PremiseIndex := ∅
  for h : i in [:premises.size] do
    premiseToIdx := premiseToIdx.insert premises[i] ⟨i⟩
  let mut slots : Array Slot := Array.mkEmpty premises.size
  let mut allDeps : Std.HashSet PremiseIndex := ∅
  for h : i in [:premises.size] do
    -- We never generate slots for instance arguments, and we also don't
    -- count dependencies of instance arguments. Hence, for the rule type
    -- `∀ {S} [Cls S], T`, a slot is created for `S`, because only instance
    -- arguments depend on it.
    if binderInfos[i]! matches .instImplicit then
      continue
    let mvarId := premises[i]
    let typeDiscrTreeKeys ← mkDiscrTreePath (← mvarId.getType)
    let mut deps : Std.HashSet PremiseIndex := ∅
    for dep in ← mvarId.getMVarDependencies do
      if let some idx := premiseToIdx[dep]? then
        deps := deps.insert idx
    -- We update the `default` fields with correct info later.
    slots := slots.push {
      typeDiscrTreeKeys? := typeDiscrTreeKeys
      index := default
      premiseIndex := ⟨i⟩
      common := default
      forwardDeps := default
      deps
    }
    allDeps := allDeps.insertMany deps
  -- Slots are created only for premises which are maximal, i.e. which do not
  -- appear in any other premises, and which are not bound by the rule pattern.
  let patBoundPremises : Std.HashSet PremiseIndex :=
    rulePattern?.map (.ofArray $ ·.boundPremises.map (⟨·⟩)) |>.getD ∅
  slots := slots.filter λ s =>
    let idx := s.premiseIndex
    ! allDeps.contains idx && ! patBoundPremises.contains idx &&
    immediate.contains idx
  -- If the rule has a pattern, an additional slot is created for the rule
  -- pattern substitution. Again, we update the `default` fields with correct
  -- info later.
  if rulePattern?.isSome then
    slots := slots.push {
      typeDiscrTreeKeys? := none
      index := default
      premiseIndex := ⟨premises.size⟩
      common := default
      deps := patBoundPremises
      forwardDeps := default
    }
  -- Slots are clustered into metavariable clusters and sorted as indicated
  -- below.
  let slotClusters := cluster (·.deps.toArray) slots |>.map sortSlots
  -- The sorting ensures that for each slot in a cluster (except the first), the
  -- slot has some variables in common with the previous slots.
  assert! ! slotClusters.any λ cluster => cluster.any λ slot =>
    slot.index.toNat > 0 && slot.common.isEmpty
  let conclusionDeps := (← getMVars conclusion).filterMap (premiseToIdx[·]?)
  let rulePatternInfo? := rulePattern?.map (·, ⟨premises.size⟩)
  return {
    numPremises := premises.size
    slotClusters, rulePatternInfo?, conclusionDeps, numLevelParams
  }
where
  /-- Sort slots such that each slot has at least one variable in common with
  the previous slots. -/
  sortSlots (slots : Array Slot) : Array Slot := Id.run do
    if slots.isEmpty then
      panic! "empty slot cluster"
    -- Slots with more dependencies are preferred. In case of a tie, later slots
    -- are preferred since they tend to be more specific.
    have : Ord Slot := ⟨λ x y =>
      compareOn (·.deps.size) x y
      |>.then (compareOn (·.premiseIndex) x y)
    ⟩
    -- Needed after https://github.com/leanprover/lean4/pull/11936
    have : Max Slot := ⟨fun a b => if compare a b == .lt then b else a⟩
    let firstSlot := slots.rangeMaxI
    let mut unseen := slots |>.erase firstSlot
    let firstSlotForwardDeps : Std.HashSet PremiseIndex :=
      unseen.foldl (init := ∅) λ deps s => deps.insertMany s.deps
    let firstSlot := {
      firstSlot with
      index := ⟨0⟩
      common := ∅
      forwardDeps := firstSlotForwardDeps.toArray
    }
    let mut newSlots := Array.mkEmpty slots.size |>.push firstSlot
    let mut previousDeps := firstSlot.deps
    let mut i := 1
    while newSlots.size != slots.size do
      let candidates := unseen.filter (·.deps.any (previousDeps.contains ·))
      let some slot := candidates.max?
        | panic! "no suitable slot found"
      unseen := unseen.erase slot
      let common := previousDeps.filter (slot.deps.contains ·)
      let forwardDeps : Std.HashSet PremiseIndex :=
        unseen.foldl (init := ∅) λ deps s => deps.insertMany s.deps
      let forwardDeps := forwardDeps.toArray
      newSlots := newSlots.push { slot with index := ⟨i⟩, common, forwardDeps }
      previousDeps := previousDeps.insertMany slot.deps
      i := i + 1
    return newSlots

end ForwardRuleInfo
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RuleInfo/Variant7e612777abcbaf7672774f10abff8bc1f87ae52ffdeeaca0a528e1567699a66a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RuleInfo/Variant7e612777abcbaf7672774f10abff8bc1f87ae52ffdeeaca0a528e1567699a66a.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea797bd973bd43707d6984a462ba3f2921a1fc6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
