# Anonymous elab_rules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f436e6a985b6afb212dd5dc8a66c23edd875cc03118d3a514d557299eec36b77",
  "kind": "elab_rules",
  "lexical_name": null,
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
  "slug": "elab-rules--a1c667737d9e88dcaa4ed1b4",
  "source": {
    "blob": "ba2e8c8da198f8aee873714934135d9e06d6bb94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 496,
    "line": 450,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ComputeDegree/Variantf4811a5a7a6fe9202f14886a6b39e9b9f24906ab6df260a2c4e34dcafa3585c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a1c667737d9e88dcaa4ed1b44aae1c526b0ba2cc918f1a8b318d64d4573ea8a2",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ComputeDegree/Variantf4811a5a7a6fe9202f14886a6b39e9b9f24906ab6df260a2c4e34dcafa3585c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab_rules` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f436e6a985b6afb212dd5dc8a66c23edd875cc03118d3a514d557299eec36b77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 450–496.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
elab_rules : tactic | `(tactic| compute_degree $[!%$bang]?) => focus <| withMainContext do
  let goal ← getMainGoal
  let gt ← goal.getType''
  let deg? := match gt.eq? with
    | some (_, _, rhs) => some rhs
    | _ => none
  let twoH := twoHeadsArgs gt
  match twoH with
    | (_, .anonymous, _) => throwError m!"'compute_degree' inapplicable. \
        The goal{indentD gt}\nis expected to be '≤' or '='."
    | (.anonymous, _, _) => throwError m!"'compute_degree' inapplicable. \
        The LHS must be an application of 'natDegree', 'degree', or 'coeff'."
    | _ =>
      let lem := dispatchLemma twoH
      trace[Tactic.compute_degree]
        f!"'compute_degree' first applies lemma '{lem.lastComponentAsString}'"
      let mut (gls, static) := (← goal.applyConst lem, [])
      while gls != [] do (gls, static) ← splitApply gls static
      let rfled ← try_rfl static
      setGoals rfled
      --  simplify the left-hand sides, since this is where the degree computations leave
      --  expressions such as `max (0 * 1) (max (1 + 0 + 3 * 4) (7 * 0))`
      evalTactic
        (← `(tactic| try any_goals conv_lhs =>
                       (simp +decide only [Nat.cast_withBot]; norm_num)))
      if bang.isSome then
        let mut false_goals : Array MVarId := #[]
        let mut new_goals : Array MVarId := #[]
        for g in ← getGoals do
          let gs' ← run g do evalTactic (←
            `(tactic| try (any_goals norm_num <;> norm_cast <;> try assumption)))
          new_goals := new_goals ++ gs'.toArray
          if ← gs'.anyM fun g' => g'.withContext do return (← g'.getType'').isConstOf ``False then
            false_goals := false_goals.push g
        setGoals new_goals.toList
        if let some deg := deg? then
          let errors := miscomputedDegree? deg (← false_goals.mapM (MVarId.getType'' ·)).toList
          unless errors.isEmpty do
            throwError Lean.MessageData.joinSep
              (m!"The given degree is '{deg}'.  However,\n" :: errors) "\n"

/-- `monicity` tries to solve a goal of the form `Monic f`.
It converts the goal into a goal of the form `natDegree f ≤ n` and one of the form `f.coeff n = 1`
and calls `compute_degree` on those two goals.

The variant `monicity!` starts like `monicity`, but calls `compute_degree!` on the two side-goals.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ComputeDegree/Variantf4811a5a7a6fe9202f14886a6b39e9b9f24906ab6df260a2c4e34dcafa3585c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ComputeDegree/Variantf4811a5a7a6fe9202f14886a6b39e9b9f24906ab6df260a2c4e34dcafa3585c7.lean#L450).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba2e8c8da198f8aee873714934135d9e06d6bb94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
