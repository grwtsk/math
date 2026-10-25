# tryCloseRpowSideGoal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b751621aff0c72444e9b274faab42bb5ab77f5b62a1bea033e4c1e8712c3cf97",
  "kind": "def",
  "lexical_name": "tryCloseRpowSideGoal",
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
  "slug": "trycloserpowsidegoal--659166d26601c4bda06d04fe",
  "source": {
    "blob": "b8c3b6297aa59c2899d86a9994a7e02a695475b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 305,
    "line": 244,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveCommon/Variant571d5b97f7f5b0b45fc4a1f52c8546f8e0ccd1ce138865dad97c26908af1cde2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:659166d26601c4bda06d04fe2ea6603c92bc7b5ee367d46f61d54a77a1a13ea8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveCommon/Variant571d5b97f7f5b0b45fc4a1f52c8546f8e0ccd1ce138865dad97c26908af1cde2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b751621aff0c72444e9b274faab42bb5ab77f5b62a1bea033e4c1e8712c3cf97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–305.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def tryCloseRpowSideGoal : TacticM Bool := do
  let saved ← saveState
  let goal ← getMainGoal
  goal.withContext do
    try
      evalTactic (← `(tactic| try intros))
      -- Unfold the reflected RHS into plain real operations.
      evalTactic (← `(tactic|
        simp only [LeanCert.Core.Expr.eval_exp, LeanCert.Core.Expr.eval_mul,
          LeanCert.Core.Expr.eval_log, LeanCert.Core.Expr.eval_var, LeanCert.Core.Expr.eval_const]))

      let goal ← getMainGoal
      let goalTy ← instantiateMVars (← goal.getType)
      let some (_eqTy, lhs, rhs) := goalTy.eq?
        | saved.restore; return false

      let orientationAndPow? : Option (Bool × Lean.Expr × Lean.Expr) :=
        match parsePow? lhs with
        | some (base, exp) => some (true, base, exp)
        | none =>
          match parsePow? rhs with
          | some (base, exp) => some (false, base, exp)
          | none => none
      let some (powOnLeft, base, _exp) := orientationAndPow?
        | saved.restore; return false

      -- Prove positivity of the rpow base from interval/domain hypotheses.
      let hPos? ←
        match parseLogArg? base with
        | some arg =>
          -- For `(log arg)^q`, we need `1 < arg`.
          proveLogPositiveFromBounds? arg
        | none =>
          provePositiveFromBounds? base
      let some hPos := hPos?
        | saved.restore; return false

      let hPosSyn ← Lean.Elab.Term.exprToSyntax hPos
      let zeroReal ← mkAppOptM ``OfNat.ofNat #[some (mkConst ``Real), some (mkNatLit 0), none]
      let hPos0Ty ← mkAppM ``LT.lt #[zeroReal, base]
      let some hPos0 ← solveByTactic? hPos0Ty (← `(tactic| simpa [Rat.cast_zero] using $hPosSyn))
        | saved.restore; return false
      let hPos0Syn ← Lean.Elab.Term.exprToSyntax hPos0
      if powOnLeft then
        evalTactic (← `(tactic|
          simpa [Real.rpow_def_of_pos $hPos0Syn, Rat.divInt_eq_div,
            mul_comm, mul_left_comm, mul_assoc]))
      else
        evalTactic (← `(tactic|
          symm;
          simpa [Real.rpow_def_of_pos $hPos0Syn, Rat.divInt_eq_div,
            mul_comm, mul_left_comm, mul_assoc]))

      if (← getGoals).isEmpty then
        return true
      saved.restore
      return false
    catch _ =>
      saved.restore
      return false

/-- Close all remaining side goals -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveCommon/Variant571d5b97f7f5b0b45fc4a1f52c8546f8e0ccd1ce138865dad97c26908af1cde2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveCommon/Variant571d5b97f7f5b0b45fc4a1f52c8546f8e0ccd1ce138865dad97c26908af1cde2.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8c3b6297aa59c2899d86a9994a7e02a695475b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
