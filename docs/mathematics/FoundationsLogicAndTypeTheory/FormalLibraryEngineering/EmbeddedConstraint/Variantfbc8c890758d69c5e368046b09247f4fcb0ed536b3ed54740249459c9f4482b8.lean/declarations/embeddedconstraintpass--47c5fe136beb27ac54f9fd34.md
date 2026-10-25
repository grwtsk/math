# embeddedConstraintPass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:568adc1ac5c0d40a6ea4bd17ad3787037344d9564d6997420d3522a606ba8241",
  "kind": "def",
  "lexical_name": "embeddedConstraintPass",
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
  "slug": "embeddedconstraintpass--47c5fe136beb27ac54f9fd34",
  "source": {
    "blob": "b5c10582e4a7810b415770378aa4a5e02e3e6774",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 25,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmbeddedConstraint/Variantfbc8c890758d69c5e368046b09247f4fcb0ed536b3ed54740249459c9f4482b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:47c5fe136beb27ac54f9fd349e7696808ddc04a722b11a06de8bacb6a97e2b0f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmbeddedConstraint/Variantfbc8c890758d69c5e368046b09247f4fcb0ed536b3ed54740249459c9f4482b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:568adc1ac5c0d40a6ea4bd17ad3787037344d9564d6997420d3522a606ba8241`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def embeddedConstraintPass : Pass where
  name := `embeddedConstraintSubstitution
  run' goal := do
    goal.withContext do
      let hyps ← getPropHyps
      let mut relevantHyps : SimpTheoremsArray := #[]
      let mut seen : Std.HashSet Expr := {}
      let mut duplicates : Array FVarId := #[]
      for hyp in hyps do
        let typ ← hyp.getType
        let_expr Eq _ lhs rhs := typ | continue
        let_expr Bool.true := rhs | continue
        if seen.contains lhs then
          duplicates := duplicates.push hyp
        else
          seen := seen.insert lhs
          let localDecl ← hyp.getDecl
          let proof := localDecl.toExpr
          relevantHyps ← relevantHyps.addTheorem (.fvar hyp) proof

      let goal ← goal.tryClearMany duplicates

      if relevantHyps.isEmpty then
        return goal

      let cfg ← PreProcessM.getConfig
      let targets ← goal.withContext getPropHyps
      let simpCtx ← Simp.mkContext
        (config := {
          failIfUnchanged := false,
          implicitDefEqProofs := false, -- leanprover/lean4/pull/7509
          maxSteps := cfg.maxSteps,
          instances := true
        })
        (simpTheorems := relevantHyps)
        (congrTheorems := (← getSimpCongrTheorems))
      let ⟨result?, _⟩ ← simpGoal goal (ctx := simpCtx) (fvarIdsToSimp := targets)
      let some (_, newGoal) := result? | return none
      return newGoal


end Normalize
end Lean.Meta.Tactic.BVDecide
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmbeddedConstraint/Variantfbc8c890758d69c5e368046b09247f4fcb0ed536b3ed54740249459c9f4482b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmbeddedConstraint/Variantfbc8c890758d69c5e368046b09247f4fcb0ed536b3ed54740249459c9f4482b8.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5c10582e4a7810b415770378aa4a5e02e3e6774` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
