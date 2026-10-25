# proveForallLtSubdiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:11dd985f8d08b15fe67690462f74b56ea96190e5b9406aec85f5b8da4e2d4815",
  "kind": "def",
  "lexical_name": "proveForallLtSubdiv",
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
  "slug": "proveforallltsubdiv--109b6fae1ba1e7755e2bcd11",
  "source": {
    "blob": "d6a6700a430de62391daa9ef13940fd0aacffecc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 460,
    "line": 415,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subdiv/Variantee65fb10c72ad3316e4b1db1c5bdee12d7cc10820f133beac0b8c39f8ab66c55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:109b6fae1ba1e7755e2bcd1159f51db0696875107f3c2ecd291bcd4baa2f5e37",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subdiv/Variantee65fb10c72ad3316e4b1db1c5bdee12d7cc10820f133beac0b8c39f8ab66c55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:11dd985f8d08b15fe67690462f74b56ea96190e5b9406aec85f5b8da4e2d4815`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 415–460.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def proveForallLtSubdiv (goal : MVarId) (intervalInfo : IntervalInfo)
    (func bound : Lean.Expr) (taylorDepth maxSubdiv : Nat) : TacticM Unit := do
  goal.withContext do
    let ast ← getAst func
    let boundRat ← extractRatBound bound
    let (supportProof, _useWithInv) ← getSupportProof ast
    let cfgExpr ← mkAppM ``EvalConfig.mk #[toExpr taylorDepth]

    let some bounds ← getSubdivBounds intervalInfo
      | throwError "interval_bound_subdiv: Only literal Set.Icc or IntervalRat intervals supported for subdivision"
    let (_lo, _hi, loRatExpr, hiRatExpr, leProof, fromSetIcc) := bounds

    let savedGoals ← getGoals

    let some proof ← proveStrictUpperBoundWithSubdiv ast supportProof loRatExpr hiRatExpr
        leProof boundRat cfgExpr taylorDepth maxSubdiv
      | throwError "interval_bound_subdiv: Failed even with subdivision (strict upper bound)"

    setGoals savedGoals
    let conclusionTerm ← Lean.Elab.Term.exprToSyntax proof
    if fromSetIcc then
      evalTactic (← `(tactic| convert ($conclusionTerm) using 3))
    else
      evalTactic (← `(tactic| simpa [IntervalRat.mem_iff_mem_Icc] using $conclusionTerm))

    let goals ← getGoals
    for g in goals do
      setGoals [g]
      let tryClose (tac : TacticM Unit) : TacticM Bool := do
        try
          tac
          let goalsEmpty := (← getGoals).isEmpty
          return goalsEmpty
        catch _ => return false
      if ← tryClose (evalTactic (← `(tactic| rfl))) then continue
      if ← tryClose (evalTactic (← `(tactic| norm_num))) then continue
      if ← tryClose (evalTactic (← `(tactic| norm_cast))) then continue
      if ← tryClose (evalTactic (← `(tactic| norm_num; simp only [Rat.divInt_eq_div]; push_cast; rfl))) then continue
      if ← tryClose (evalTactic (← `(tactic| simp only [Rat.divInt_eq_div]; push_cast; rfl))) then continue
      if ← tryClose (evalTactic (← `(tactic| simp only [Rat.divInt_eq_div]; push_cast; ring))) then continue
      if ← tryClose (evalTactic (← `(tactic| congr 1 <;> norm_num))) then continue
      if ← tryClose (evalTactic (← `(tactic| simp only [sq, pow_two, pow_succ, pow_zero, pow_one, one_mul, mul_one]))) then continue
      if ← tryClose (evalTactic (← `(tactic| field_simp; ring))) then continue
      logWarning m!"interval_bound_subdiv: Could not close side goal: {← g.getType}"

/-- Prove ∀ x ∈ I, c < f x using subdivision as fallback -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subdiv/Variantee65fb10c72ad3316e4b1db1c5bdee12d7cc10820f133beac0b8c39f8ab66c55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subdiv/Variantee65fb10c72ad3316e4b1db1c5bdee12d7cc10820f133beac0b8c39f8ab66c55.lean#L415).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6a6700a430de62391daa9ef13940fd0aacffecc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
