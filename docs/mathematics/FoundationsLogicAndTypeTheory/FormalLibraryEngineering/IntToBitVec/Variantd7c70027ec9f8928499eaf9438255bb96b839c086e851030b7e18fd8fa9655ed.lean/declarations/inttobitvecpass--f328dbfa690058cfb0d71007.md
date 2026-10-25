# intToBitVecPass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:343a31eb26a29bb4e6a34cfa05d502fa28d5e715e61976e8ff167a946f8fc7ec",
  "kind": "def",
  "lexical_name": "intToBitVecPass",
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
  "slug": "inttobitvecpass--f328dbfa690058cfb0d71007",
  "source": {
    "blob": "a6ae3158ac2657b8c6e89a774941f8a4dd81a5cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 53,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntToBitVec/Variantd7c70027ec9f8928499eaf9438255bb96b839c086e851030b7e18fd8fa9655ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f328dbfa690058cfb0d7100704afc3f4812d2adf0134beb11c708f1eda4ea592",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntToBitVec/Variantd7c70027ec9f8928499eaf9438255bb96b839c086e851030b7e18fd8fa9655ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:343a31eb26a29bb4e6a34cfa05d502fa28d5e715e61976e8ff167a946f8fc7ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def intToBitVecPass : Pass where
  name := `intToBitVec
  run' goal := do
    let intToBvThms ← metaIntToBitVecExt.getTheorems
    let cfg ← PreProcessM.getConfig
    let simpCtx ← Simp.mkContext
      (config := {
        failIfUnchanged := false,
        zetaDelta := true,
        implicitDefEqProofs := false, -- leanprover/lean4/pull/7509
        maxSteps := cfg.maxSteps,
        instances := true
      })
      (simpTheorems := #[intToBvThms])
      (congrTheorems := (← getSimpCongrTheorems))

    let numBitsEq? ← findNumBitsEq goal
    let discharge? :=
      if let some (width, proof) := numBitsEq? then
        some <| fun prop => do
          let prop ← instantiateMVars prop
          let_expr Eq _ lhs rhs := prop | return none
          unless lhs.isConstOf ``System.Platform.numBits do return none
          let some val ← getNatValue? rhs | return none
          unless width == val do return none
          return some proof
      else
        none

    let hyps ← goal.getNondepPropHyps
    let ⟨result?, _⟩ ← simpGoal goal (ctx := simpCtx) (fvarIdsToSimp := hyps) (discharge? := discharge?)
    let some (_, goal) := result? | return none
    return goal
where
  /--
  Builds an expression of type: `System.Platform.numBits = const` from the hypotheses in the context
  if possible.
  -/
  findNumBitsEq (goal : MVarId) : MetaM (Option (Nat × Expr)) := do
    goal.withContext do
      for hyp in ← getPropHyps do
        match_expr ← instantiateMVars (← hyp.getType) with
        | Eq eqTyp lhs rhs =>
          if lhs.isConstOf ``System.Platform.numBits then
            let some val ← getNatValue? rhs | return none
            return some (val, mkFVar hyp)
          else if rhs.isConstOf ``System.Platform.numBits then
            let some val ← getNatValue? lhs | return none
            return some (val, mkApp4 (mkConst ``Eq.symm [1]) eqTyp lhs rhs (mkFVar hyp))
        | _ => continue
      return none

end Normalize
end Lean.Meta.Tactic.BVDecide
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntToBitVec/Variantd7c70027ec9f8928499eaf9438255bb96b839c086e851030b7e18fd8fa9655ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntToBitVec/Variantd7c70027ec9f8928499eaf9438255bb96b839c086e851030b7e18fd8fa9655ed.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6ae3158ac2657b8c6e89a774941f8a4dd81a5cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
