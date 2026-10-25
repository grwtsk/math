# propagateUniversesToConstructors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c79649d5c3a9cd9ab3e836b0adf45e14c8c11d25645b9fde63e3ed708dbf6474",
  "kind": "def",
  "lexical_name": "propagateUniversesToConstructors",
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
  "slug": "propagateuniversestoconstructors--8038f7b70169b30e571351c4",
  "source": {
    "blob": "2f896ef31359aad0ee273d30032f02e843781076",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1112,
    "line": 1051,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualInductive/Variant5d510aa534a7a42de3e25431679648117d3fab593998d1a961a62ee50a0a7611.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8038f7b70169b30e571351c498ec7881485ac4d4b29417c5960448730c1073e7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualInductive/Variant5d510aa534a7a42de3e25431679648117d3fab593998d1a961a62ee50a0a7611.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c79649d5c3a9cd9ab3e836b0adf45e14c8c11d25645b9fde63e3ed708dbf6474`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1051–1112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def propagateUniversesToConstructors
    (numParams : Nat) (indTypes : List InductiveType) (inferResult : ResultingUniverseResult):
    TermElabM Unit := do
  let u := (← instantiateLevelMVars inferResult.u).normalize
  if u.isZero then
    return
  let u' := simplifyResultingUniverse u
  let r := u'.getLevelOffset
  let k := u'.getOffset
  unless r matches .param .. | .mvar .. | .zero do
    trace[Elab.inductive] "skipping propagating universe levels to constructors, simplified resulting type {u'} is not of form u+k or k"
    return
  trace[Elab.inductive] "propagating universe levels to constructors using simplified resulting type {u'}"
  let (_, constraints, loConstraint) ← collectConstraints r k |>.run ({}, {})
  trace[Elab.inductive] "collected constraints: {constraints.levels.toList}; positive: {loConstraint.toList.map Level.mvar}"
  for (v, k') in constraints.levels do
    -- `v ≤ r + k'` has solutions `v ∈ {r, r + 1, ..., r + k'}`,
    -- excluding the constant solutions when `r` is a parameter.
    -- If `hasLo` is true, then we want `1 ≤ v` as well.
    -- There's a unique solution if `k'=0` or `k'=1`, depending on the value of `hasLo`.
    let hasLo := loConstraint.contains v.mvarId!
    if k' == (if hasLo then 1 else 0) then
      assignLevelMVar v.mvarId! (r.addOffset k'.toNat)
where
  collectConstraints (r : Level) (k : Int) :
      StateT (AccLevelState × LMVarIdSet) MetaM Unit := do
    indTypes.forM fun indType => indType.ctors.forM fun ctor =>
      forallTelescopeReducing ctor.type fun ctorArgs _ => do
        for ctorArg in ctorArgs[numParams...*] do
          let v := (← instantiateLevelMVars (← getLevel (← inferType ctorArg))).normalize
          extractConstraints v r k 1
  /--
  Extract level constraints from `v ≤ r + k` for metavariables in `v`.
  `Level.imax` can repush itself onto the `LevelConstraintForPropagate` work list.
  -/
  extractConstraints (v : Level) (r : Level) (k : Int) (lo : Nat) :
      StateT (AccLevelState × LMVarIdSet) MetaM Unit := do
    if v.hasMVar then
      match v with
      | .zero | .param .. => pure ()
      | .succ _ => extractConstraints v.getLevelOffset r (k - v.getOffset) 0
      | .max a b => extractConstraints a r k lo; extractConstraints b r k lo
      /-
      Given `imax a b ≤ r + k`, then certainly `b ≤ r + k`.
      We only get the additional constraint `a ≤ r + k` when `b > 0`.
      However, for our simple constraint propagation system, we do not want to be
      responsible for deciding whether or not we need `b = 0` for the purpose of satisfying constraints.
      Heuristic: Since we're aiming for `b ≥ lo`, if `lo > 0` then we assume the `imax` will simplify to `max`.
      -/
      | .imax a b =>
        if lo > 0 then
          extractConstraints a r k lo
        extractConstraints b r k lo
      | .mvar mvarId =>
        if v != r then
          modify fun (acc, los) => (acc.push v k, if lo > 0 then los.insert mvarId else los)

/--
Converts universe metavariables in the type (not the constructors) into new parameters.
The additional level parameters in `typeLMVarIds` can be promoted to level metavariables
if they appear among the constructors.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualInductive/Variant5d510aa534a7a42de3e25431679648117d3fab593998d1a961a62ee50a0a7611.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualInductive/Variant5d510aa534a7a42de3e25431679648117d3fab593998d1a961a62ee50a0a7611.lean#L1051).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f896ef31359aad0ee273d30032f02e843781076` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
