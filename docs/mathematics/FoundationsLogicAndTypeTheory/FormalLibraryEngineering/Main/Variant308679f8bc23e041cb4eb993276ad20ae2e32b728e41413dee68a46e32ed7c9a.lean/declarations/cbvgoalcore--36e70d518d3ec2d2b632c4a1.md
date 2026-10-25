# cbvGoalCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8e86f21f01700b401e4a37c89cfaeb222c631b6e7a318bcc545b748980c51958",
  "kind": "def",
  "lexical_name": "cbvGoalCore",
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
  "slug": "cbvgoalcore--36e70d518d3ec2d2b632c4a1",
  "source": {
    "blob": "df120e845f040340f8a0d12afd3754fac549981a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 429,
    "line": 362,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant308679f8bc23e041cb4eb993276ad20ae2e32b728e41413dee68a46e32ed7c9a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:36e70d518d3ec2d2b632c4a121e15d51834f11faabc8c0757ac04314f7415e19",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant308679f8bc23e041cb4eb993276ad20ae2e32b728e41413dee68a46e32ed7c9a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8e86f21f01700b401e4a37c89cfaeb222c631b6e7a318bcc545b748980c51958`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 362–429.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def cbvGoalCore (mvarId : MVarId) (simplifyTarget : Bool := true)
    (fvarIdsToSimp : Array FVarId := #[]) : Sym.SymM (Option MVarId) := do
  -- See `cbvCore` for why the `shareCommon` invariant checks are disabled.
  Sym.withoutShareCommonChecks do
  let config : Sym.Simp.Config := { maxSteps := cbv.maxSteps.get (← getOptions) }
  mvarId.withContext do
    let mut mvarIdNew := mvarId
    let mut toAssert : Array Hypothesis := #[]
    -- Process hypotheses
    for fvarId in fvarIdsToSimp do
      let localDecl ← fvarId.getDecl
      let type := localDecl.type
      let result ← withTraceNode `Meta.Tactic.cbv (fun
          | .ok (Result.step type' ..) => return m!"hypothesis `{localDecl.userName}`:{indentExpr type}\n==>{indentExpr type'}"
          | .ok (Result.rfl ..)        => return m!"hypothesis `{localDecl.userName}`: no change"
          | .error err                 => return m!"hypothesis `{localDecl.userName}`: {err.toMessageData}") do
        cbvCore type config
      match result with
      | .rfl _ _ => pure ()
      | .step type' proof _ _ =>
        if type'.isFalse then
          let u ← Sym.getLevel type
          mvarIdNew.assign (← mkFalseElim (← mvarIdNew.getType) (mkApp4 (mkConst ``Eq.mp [u]) type type' proof (mkFVar fvarId)))
          return none
        else
          let u ← Sym.getLevel type
          toAssert := toAssert.push { userName := localDecl.userName, type := type', value := mkApp4 (mkConst ``Eq.mp [u]) type type' proof (mkFVar fvarId) }
    -- Process target
    if simplifyTarget then
      let target ← mvarIdNew.getType
      let result ← withTraceNode `Meta.Tactic.cbv (fun
          | .ok (Result.step target' ..) => return m!"target:{indentExpr target}\n==>{indentExpr target'}"
          | .ok (Result.rfl ..)          => return m!"target: no change"
          | .error err                   => return m!"target: {err.toMessageData}") do
        cbvCore target config
      match result with
      | .rfl _ _ => pure ()
      | .step target' proof _ _ =>
        if target'.isTrue then
          mvarIdNew.assign (← mkOfEqTrue proof)
          return none
        else
          mvarIdNew ← mvarIdNew.replaceTargetEq target' proof
    -- Assert new hypotheses and clear old ones
    let (_, mvarIdNew') ← mvarIdNew.assertHypotheses toAssert
    mvarIdNew := mvarIdNew'
    mvarIdNew ← mvarIdNew.tryClearMany fvarIdsToSimp
    -- Try refl to close equation goals
    let s ← Meta.saveState
    try mvarIdNew.refl; return none
    catch _ => s.restore; return some mvarIdNew

/--
Reduce goal target and/or hypothesis types using call-by-value evaluation.

Preprocesses the goal via `Sym.preprocessMVar` (instantiates metavariables, unfolds
reducibles, shares common subterms), then runs `cbvCore` on each selected hypothesis
and the target within a single `SymM` context.

For each hypothesis in `fvarIdsToSimp`, reduces its type via `cbvCore`. If the
reduced type is `False`, the goal is closed immediately. Otherwise, the hypothesis
is replaced with the reduced type.

If `simplifyTarget` is true, reduces the goal type via `cbvCore`. If the reduced
type is `True`, the goal is closed. Otherwise, the target is replaced.

After all reductions, attempts `refl` to close equation goals of the form `v = v`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant308679f8bc23e041cb4eb993276ad20ae2e32b728e41413dee68a46e32ed7c9a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant308679f8bc23e041cb4eb993276ad20ae2e32b728e41413dee68a46e32ed7c9a.lean#L362).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df120e845f040340f8a0d12afd3754fac549981a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
