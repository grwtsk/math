# enumsPass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d856717cacf99e80c4ce8f0a7f84119624fc2f67ca5435969fc9fe43023c41d0",
  "kind": "def",
  "lexical_name": "enumsPass",
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
  "slug": "enumspass--2dccdf3dd3c577f64c64aa65",
  "source": {
    "blob": "b37e4c52daed475848b6a9476a0104e5d0afc101",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 498,
    "line": 405,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Enums/Variantd99569b864ae4a7947433cf6dff952a4be5d6d096c9758566f0c254df3a49b25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2dccdf3dd3c577f64c64aa652bf731ac1af6cb8d405fdb11bfdc6c54b7274df1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Enums/Variantd99569b864ae4a7947433cf6dff952a4be5d6d096c9758566f0c254df3a49b25.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d856717cacf99e80c4ce8f0a7f84119624fc2f67ca5435969fc9fe43023c41d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 405–498.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public partial def enumsPass : Pass where
  name := `enums
  run' goal :=
    goal.withContext do
      let analysis ← PreProcessM.getTypeAnalysis
      let interestingEnums := analysis.interestingEnums
      -- invariant: if there is no interesting enums there also can't be interesting matchers
      if interestingEnums.isEmpty then return goal

      let mut simprocs : Simprocs := {}
      let mut relevantLemmas : SimpTheoremsArray := #[]
      for type in interestingEnums do
        let lemma ← getEqIffEnumToBitVecEqFor type
        relevantLemmas ← relevantLemmas.addTheorem (.decl lemma) (mkConst lemma)

        let enumToBitVec ← getEnumToBitVecFor type
        let path := #[.const enumToBitVec 1, .star]
        simprocs := simprocs.addCore path ``enumToBitVecCtor true (.inl enumToBitVecCtor)

        let path := mkApplyUnaryControlDiscrPath type 0 enumToBitVec ``ite 5
        simprocs := simprocs.addCore path ``applyIteSimproc false (.inl applyIteSimproc)
        let path := mkApplyUnaryControlDiscrPath type 0 enumToBitVec ``cond 4
        simprocs := simprocs.addCore path ``applyCondSimproc false (.inl applyCondSimproc)

      let interestingMatchers := analysis.interestingMatchers
      for (matcher, kind) in interestingMatchers do
        let lemma ← getMatchEqCondForAux matcher kind
        relevantLemmas ← relevantLemmas.addTheorem (.decl lemma) (mkConst lemma)

      -- Desugaring matches could have potentially revealed new opportunities to do stuff with
      -- structures. Thus we must also re run lemmas that handle structure projections in the
      -- presence of control flow.
      let cfg ← PreProcessM.getConfig
      relevantLemmas ← addDefaultTypeAnalysisLemmas relevantLemmas
      if cfg.structures then
        (simprocs, relevantLemmas) ← addStructureSimpLemmas simprocs relevantLemmas

      -- same for fixed integers
      if cfg.fixedInt then
        relevantLemmas := relevantLemmas.push (← metaIntToBitVecExt.getTheorems)

      let simpCtx ← Simp.mkContext
        (config := {
          failIfUnchanged := false,
          implicitDefEqProofs := false, -- leanprover/lean4/pull/7509
          maxSteps := cfg.maxSteps,
          instances := true
        })
        (simpTheorems := relevantLemmas)
        (congrTheorems := ← getSimpCongrTheorems)

      let ⟨result?, _⟩ ←
        simpGoal
          goal
          (ctx := simpCtx)
          (simprocs := #[simprocs])
          (fvarIdsToSimp := ← getPropHyps)
      let some (_, newGoal) := result? | return none
      postprocess newGoal |>.run' {}
where
  postprocess (goal : MVarId) : StateRefT PostProcessState MetaM MVarId :=
    goal.withContext do
      let filter e :=
        if let .app (.const (.str _ s) ..) _ := e then
          s == enumToBitVecSuffix && !e.hasLooseBVars
        else
          false

      let processor e := do
        /-
        It is important that we maintain our own cache here in addition to the one of
        `forEachWhere`. This is because we call `forEachWhere` on multiple hypotheses and two
        hypotheses could contain the same term but we still do not want to duplicate bounds
        hypotheses for it.
        -/
        if (← get).seen.contains e then return ()
        let .app (.const (.str enumType _) ..) val := e | unreachable!
        let value ← mkAppM (← getEnumToBitVecLeFor enumType) #[val]
        let type ← inferType value
        let hyp := { userName := .anonymous, type, value }
        modify fun s => { s with hyps := s.hyps.push hyp, seen := s.seen.insert e }

      for hyp in ← getPropHyps do
        (← instantiateMVars (← hyp.getType)).forEachWhere (stopWhenVisited := true) filter processor

      let newHyps := (← get).hyps
      if newHyps.isEmpty then
        return goal
      else
        let (_, goal) ← goal.assertHypotheses newHyps
        return goal

end Normalize
end Lean.Meta.Tactic.BVDecide
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Enums/Variantd99569b864ae4a7947433cf6dff952a4be5d6d096c9758566f0c254df3a49b25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Enums/Variantd99569b864ae4a7947433cf6dff952a4be5d6d096c9758566f0c254df3a49b25.lean#L405).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b37e4c52daed475848b6a9476a0104e5d0afc101` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
