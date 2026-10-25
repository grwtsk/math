# addEqvStep

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b019a666e03ffe82485f209719f06e46a815a8d2a7ee5b75fc18184c26931fff",
  "kind": "def",
  "lexical_name": "addEqvStep",
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
  "slug": "addeqvstep--17ff77207d09ce8a32d08a6e",
  "source": {
    "blob": "cab91cdf92ef91ceb61392d33d99236b369fae4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1406,
    "line": 1247,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addition/Variant902778e6fd8294f44c0167500dcbf3b6fd60a27378024c3d3ffaf1b68640f7de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:17ff77207d09ce8a32d08a6e01174695f77663f6e89d295ed9e376743d35ef1c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addition/Variant902778e6fd8294f44c0167500dcbf3b6fd60a27378024c3d3ffaf1b68640f7de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b019a666e03ffe82485f209719f06e46a815a8d2a7ee5b75fc18184c26931fff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1247–1406.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def addEqvStep (e₁ e₂ : Expr) (H : EntryExpr) (heqProof : Bool) : CCM Unit := do
  let some n₁ ← getEntry e₁ | return -- `e₁` have not been internalized
  let some n₂ ← getEntry e₂ | return -- `e₂` have not been internalized
  if n₁.root == n₂.root then return -- they are already in the same equivalence class.
  let some r₁ ← getEntry n₁.root | failure
  let some r₂ ← getEntry n₂.root | failure

  -- We want `r₂` to be the root of the combined class.

  /-
    We swap `(e₁,n₁,r₁)` with `(e₂,n₂,r₂)` when
    1- `r₁.interpreted && !r₂.interpreted`.
      Reason: to decide when to propagate we check whether the root of the equivalence class
      is `True`/`False`. So, this condition is to make sure if `True`/`False` is in an equivalence
      class, then one of them is the root. If both are, it doesn't matter, since the state is
      inconsistent anyway.
    2- `r₁.constructor && !r₂.interpreted && !r₂.constructor`
      Reason: we want constructors to be the representative of their equivalence classes.
    3- `r₁.size > r₂.size && !r₂.interpreted && !r₂.constructor`
      Reason: performance.
  -/
  if (r₁.interpreted && !r₂.interpreted) ||
      (r₁.constructor && !r₂.interpreted && !r₂.constructor) ||
      (decide (r₁.size > r₂.size) && !r₂.interpreted && !r₂.constructor) then
    go e₂ e₁ n₂ n₁ r₂ r₁ true H heqProof
  else
    go e₁ e₂ n₁ n₂ r₁ r₂ false H heqProof
where
  /-- The auxiliary definition for `addEqvStep` to flip the input. -/
  go (e₁ e₂: Expr) (n₁ n₂ r₁ r₂ : Entry) (flipped : Bool) (H : EntryExpr) (heqProof : Bool) :
      CCM Unit := do
    -- Interpreted values are already in the correct equivalence class,
    -- so merging two different classes means we found an inconsistency.
    let mut valueInconsistency := false
    if r₁.interpreted && r₂.interpreted then
      if n₁.root.isConstOf ``True || n₂.root.isConstOf ``True then
        modify fun ccs => { ccs with inconsistent := true }
      else if n₁.root.int?.isSome && n₂.root.int?.isSome then
        valueInconsistency := n₁.root.int? != n₂.root.int?
      else
        valueInconsistency := true

    let e₁Root := n₁.root
    let e₂Root := n₂.root
    trace[Debug.Meta.Tactic.cc] "merging\n{e₁} ==> {e₁Root}\nwith\n{e₂Root} <== {e₂}"

    /-
    Following target/proof we have
    `e₁ → ... → r₁`
    `e₂ → ... → r₂`
    We want
    `r₁ → ... → e₁ → e₂ → ... → r₂`
    -/
    invertTrans e₁
    let newN₁ : Entry :=
      { n₁ with
        target := e₂
        proof := H
        flipped }
    modify fun ccs => { ccs with entries := ccs.entries.insert e₁ newN₁ }

    -- The hash code for the parents is going to change
    let parentsToPropagate ← removeParents e₁Root

    let lambdas₁ ← getEqcLambdas e₁Root
    let lambdas₂ ← getEqcLambdas e₂Root
    let fnRoots₂ ← if !lambdas₁.isEmpty then collectFnRoots e₂Root else pure #[]
    let fnRoots₁ ← if !lambdas₂.isEmpty then collectFnRoots e₁Root else pure #[]

    -- force all `root` fields in `e₁` equivalence class to point to `e₂Root`
    let propagate := e₂Root.isConstOf ``True || e₂Root.isConstOf ``False
    let mut toPropagate : Array Expr := #[]
    let mut it := e₁
    repeat
      let some itN ← getEntry it | failure
      if propagate then
        toPropagate := toPropagate.push it
      let newItN : Entry := { itN with root := e₂Root }
      modify fun ccs => { ccs with entries := ccs.entries.insert it newItN }
      it := newItN.next
    until it == e₁

    reinsertParents e₁Root

    -- update next of `e₁Root` and `e₂Root`, ac representative, and size of `e₂Root`
    let some r₁ ← getEntry e₁Root | failure
    let some r₂ ← getEntry e₂Root | failure
    guard (r₁.root == e₂Root)

    let acVar?₁ := r₁.acVar
    let acVar?₂ := r₂.acVar
    let newR₁ : Entry :=
      { r₁ with
        next := r₂.next }
    let newR₂ : Entry :=
      { r₂ with
        next := r₁.next
        size := r₂.size + r₁.size
        hasLambdas := r₂.hasLambdas || r₁.hasLambdas
        heqProofs := r₂.heqProofs || heqProof
        acVar := acVar?₂ <|> acVar?₁ }
    modify fun ccs =>
      { ccs with
        entries :=
          ccs.entries.insert e₁Root newR₁ |>.insert e₂Root newR₂ }
    checkInvariant

    let lambdaAppsToInternalize ← propagateBetaToEqc fnRoots₂ lambdas₁
    let lambdaAppsToInternalize ← propagateBetaToEqc fnRoots₁ lambdas₂ lambdaAppsToInternalize

    -- copy `e₁Root` parents to `e₂Root`
    let constructorEq := r₁.constructor && r₂.constructor
    if let some ps₁ := (← get).parents[e₁Root]? then
      let mut ps₂ : ParentOccSet := ∅
      if let some it' := (← get).parents[e₂Root]? then
        ps₂ := it'
      for p in ps₁ do
        if ← pure p.expr.isApp <||> isCgRoot p.expr then
          if !constructorEq && r₂.constructor then
            propagateProjectionConstructor p.expr e₂Root
          ps₂ := ps₂.insert p
      modify fun ccs =>
        { ccs with
          parents := ccs.parents.erase e₁Root |>.insert e₂Root ps₂ }

    if !(← get).inconsistent then
      if let some acVar₁ := acVar?₁ then
      if let some acVar₂ := acVar?₂ then
        addACEq acVar₁ acVar₂

    if !(← get).inconsistent && constructorEq then
      propagateConstructorEq e₁Root e₂Root

    if !(← get).inconsistent && valueInconsistency then
      propagateValueInconsistency e₁Root e₂Root

    if !(← get).inconsistent then
      updateMT e₂Root
      checkNewSubsingletonEq e₁Root e₂Root

    if !(← get).inconsistent then
      for p in parentsToPropagate do
        propagateUp p

    if !(← get).inconsistent && !toPropagate.isEmpty then
      for e in toPropagate do
        propagateDown e
      if let some phandler := (← get).phandler then
        phandler.propagated toPropagate

    if !(← get).inconsistent then
      for e in lambdaAppsToInternalize do
        internalizeCore e none

    let ccs ← get
    trace[Meta.Tactic.cc.merge] "{e₁Root} = {e₂Root}"
    trace[Debug.Meta.Tactic.cc] "merged: {e₁Root} = {e₂Root}\n{ccs.ppEqcs}"
    trace[Debug.Meta.Tactic.cc.parentOccs] ccs.ppParentOccs

/-- Process the tasks in the `todo` field. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addition/Variant902778e6fd8294f44c0167500dcbf3b6fd60a27378024c3d3ffaf1b68640f7de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addition/Variant902778e6fd8294f44c0167500dcbf3b6fd60a27378024c3d3ffaf1b68640f7de.lean#L1247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cab91cdf92ef91ceb61392d33d99236b369fae4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
