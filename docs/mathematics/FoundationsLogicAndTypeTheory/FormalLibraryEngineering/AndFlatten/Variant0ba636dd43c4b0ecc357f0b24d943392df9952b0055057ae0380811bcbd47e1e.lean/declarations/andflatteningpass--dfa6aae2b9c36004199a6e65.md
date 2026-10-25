# andFlatteningPass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:53825e31c31a486666cd125c6d40e371d24e72288bccbcab85d30ac9470f3769",
  "kind": "def",
  "lexical_name": "andFlatteningPass",
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
  "slug": "andflatteningpass--dfa6aae2b9c36004199a6e65",
  "source": {
    "blob": "45ba4df4c5dd757a28b320cccbb6cdb3ba6f02b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 35,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AndFlatten/Variant0ba636dd43c4b0ecc357f0b24d943392df9952b0055057ae0380811bcbd47e1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dfa6aae2b9c36004199a6e6550131606eb1231d7dfacdbef02183235c76b6d0f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AndFlatten/Variant0ba636dd43c4b0ecc357f0b24d943392df9952b0055057ae0380811bcbd47e1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:53825e31c31a486666cd125c6d40e371d24e72288bccbcab85d30ac9470f3769`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public partial def andFlatteningPass : Pass where
  name := `andFlattening
  run' goal := do
    let (_, { hypsToDelete, hypsToAdd, .. }) ← processGoal goal |>.run {}
    if hypsToAdd.isEmpty then
      return goal
    else
      let (newFVars, goal) ← goal.assertHypotheses <| hypsToAdd.map (·.hyp)
      for h : i in 0...hypsToAdd.size do
        let orig := hypsToAdd[i].original
        let new := newFVars[i]!
        if ← PreProcessM.checkRewritten orig then
          PreProcessM.rewriteFinished new
        if ← PreProcessM.checkAcNf orig then
          PreProcessM.acNfFinished new

      -- Given that we collected the hypotheses in the correct order above the invariant is given
      let goal ← goal.tryClearMany hypsToDelete
      return goal
where
  processGoal (goal : MVarId) : StateRefT AndFlattenState MetaM Unit := do
    goal.withContext do
      let hyps ← getPropHyps
      hyps.forM processFVar

  processFVar (fvar : FVarId) : StateRefT AndFlattenState MetaM Unit := do
    let type ← fvar.getType
    if (← get).cache.contains type then
      modify (fun s => { s with hypsToDelete := s.hypsToDelete.push fvar })
    else
      let hyp := {
        hyp := {
          userName := (← fvar.getDecl).userName
          type := type
          value := mkFVar fvar
        },
        original := fvar
      }
      let some (lhs, rhs) ← trySplit hyp | return ()
      modify (fun s => { s with hypsToDelete := s.hypsToDelete.push fvar })
      splitAnds fvar [lhs, rhs]

  splitAnds (fvar : FVarId)  (worklist : List AndHyp) : StateRefT AndFlattenState MetaM Unit := do
    match worklist with
    | [] => return ()
    | hyp :: worklist =>
      match ← trySplit hyp with
      | some (left, right) => splitAnds fvar <| left :: right :: worklist
      | none =>
        modify (fun s => { s with hypsToAdd := s.hypsToAdd.push hyp })
        splitAnds fvar worklist

  trySplit (hyp : AndHyp) :
      StateRefT AndFlattenState MetaM (Option (AndHyp × AndHyp)) := do
    let typ := hyp.hyp.type
    if (← get).cache.contains typ then
      return none
    else
      modify (fun s => { s with cache := s.cache.insert typ })
      let_expr Eq _ eqLhs eqRhs := typ | return none
      let_expr Bool.and lhs rhs := eqLhs | return none
      let_expr Bool.true := eqRhs | return none
      let mkEqTrue (lhs : Expr) : Expr :=
        mkApp3 (mkConst ``Eq [1]) (mkConst ``Bool) lhs (mkConst ``Bool.true)
      let leftHyp : Hypothesis := {
        userName := hyp.hyp.userName,
        type := mkEqTrue lhs,
        value := mkApp3 (mkConst ``Std.Tactic.BVDecide.Normalize.Bool.and_left) lhs rhs hyp.hyp.value
      }
      let rightHyp : Hypothesis := {
        userName := hyp.hyp.userName,
        type := mkEqTrue rhs,
        value := mkApp3 (mkConst ``Std.Tactic.BVDecide.Normalize.Bool.and_right) lhs rhs hyp.hyp.value
      }
      return some (⟨leftHyp, hyp.original⟩, ⟨rightHyp, hyp.original⟩)


end Normalize
end Lean.Meta.Tactic.BVDecide
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AndFlatten/Variant0ba636dd43c4b0ecc357f0b24d943392df9952b0055057ae0380811bcbd47e1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AndFlatten/Variant0ba636dd43c4b0ecc357f0b24d943392df9952b0055057ae0380811bcbd47e1e.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45ba4df4c5dd757a28b320cccbb6cdb3ba6f02b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
