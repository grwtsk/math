# Anonymous elab_rules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4aedbf77dcda1ced2aac6fba0b44201c05e94725458716ad25ef341d2d30c8dc",
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
  "slug": "elab-rules--066d7ac69b2e134caad4f31a",
  "source": {
    "blob": "1df57ee8aca3403ebe07cdd32bea7113830bb7b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 525,
    "line": 479,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ComputeDegree/Variantd43f519b7895d696b6c6aab2ad2f45f5193be79ff5c15c3814bc70bb1676e6eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:066d7ac69b2e134caad4f31af16442b401127afd3a8cc505b587101bc9386069",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ComputeDegree/Variantd43f519b7895d696b6c6aab2ad2f45f5193be79ff5c15c3814bc70bb1676e6eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab_rules` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4aedbf77dcda1ced2aac6fba0b44201c05e94725458716ad25ef341d2d30c8dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 479–525.

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
        The goal{indentD gt}\nis expected to be '≤', '<' or '='."
    | (.anonymous, _, _) => throwError m!"'compute_degree' inapplicable. \
        The LHS must be an application of 'natDegree', 'degree', or 'coeff'."
    | _ =>
      let lem := dispatchLemma twoH
      trace[Tactic.compute_degree]
        f!"'compute_degree' first applies lemma '{lem.lastComponentAsString}'"
      let mut (gls, static) := (← goal.applyConst lem, [])
      while gls != [] do (gls, static) ← splitApply gls static
      let rfled ← tryRfl static
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

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ComputeDegree/Variantd43f519b7895d696b6c6aab2ad2f45f5193be79ff5c15c3814bc70bb1676e6eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ComputeDegree/Variantd43f519b7895d696b6c6aab2ad2f45f5193be79ff5c15c3814bc70bb1676e6eb.lean#L479).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1df57ee8aca3403ebe07cdd32bea7113830bb7b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
