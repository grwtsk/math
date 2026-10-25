# throwCalcFailure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f0225c56eb2f0e920bb67ea607f19977c55def11a961ec245352a0150541e917",
  "kind": "def",
  "lexical_name": "throwCalcFailure",
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
  "slug": "throwcalcfailure--f93297d7b5e39d0f3e52d99c",
  "source": {
    "blob": "b90a49fba3b28eb0a6c55acea4ecabb8d654d959",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 131,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calc/Variant806a2780acd46053ac01527cdf0f815bc05b09540a9c88b99a9c56ebc3150441.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f93297d7b5e39d0f3e52d99c6e922a6d1117f749c933ef7120d6c184587845ad",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calc/Variant806a2780acd46053ac01527cdf0f815bc05b09540a9c88b99a9c56ebc3150441.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f0225c56eb2f0e920bb67ea607f19977c55def11a961ec245352a0150541e917`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def throwCalcFailure (steps : Array CalcStepView) (expectedType result : Expr) : MetaM α := do
  let resultType := (← instantiateMVars (← inferType result)).headBeta
  let some (r, lhs, rhs) ← getCalcRelation? resultType | unreachable!
  if let some (er, elhs, erhs) ← getCalcRelation? expectedType then
    if ← isDefEqGuarded r er then
      let mut failed := false
      unless ← isDefEqGuarded lhs elhs do
        let (lhs, elhs) ← addPPExplicitToExposeDiff lhs elhs
        let (lhsTy, elhsTy) ← addPPExplicitToExposeDiff (← inferType lhs) (← inferType elhs)
        logErrorAt steps[0]!.term m!"\
          invalid 'calc' step, left-hand side is{indentD m!"{lhs} : {lhsTy}"}\n\
          but is expected to be{indentD m!"{elhs} : {elhsTy}"}"
        failed := true
      unless ← isDefEqGuarded rhs erhs do
        let (rhs, erhs) ← addPPExplicitToExposeDiff rhs erhs
        let (rhsTy, erhsTy) ← addPPExplicitToExposeDiff (← inferType rhs) (← inferType erhs)
        logErrorAt steps.back!.term m!"\
          invalid 'calc' step, right-hand side is{indentD m!"{rhs} : {rhsTy}"}\n\
          but is expected to be{indentD m!"{erhs} : {erhsTy}"}"
        failed := true
      if failed then
        throwAbortTerm
  throwTypeMismatchError "'calc' expression" expectedType resultType result

/-!
Warning! It is *very* tempting to try to improve `calc` so that it makes use of the expected type
to unify with the LHS and RHS.
Two people have already re-implemented `elabCalcSteps` trying to do so and then reverted the changes,
not being aware of examples like https://github.com/leanprover/lean4/issues/2073

The problem is that the expected type might need to be unfolded to get an accurate LHS and RHS.
(Consider `≤` vs `≥`. Users expect to be able to use `calc` to prove `≥` using chained `≤`!)
Furthermore, the types of the LHS and RHS do not need to be the same (consider `x ∈ S` as a relation),
so we also cannot use the expected LHS and RHS as type hints.
-/

/-- Elaborator for the `calc` term mode variant. -/
@[builtin_term_elab Lean.calc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calc/Variant806a2780acd46053ac01527cdf0f815bc05b09540a9c88b99a9c56ebc3150441.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calc/Variant806a2780acd46053ac01527cdf0f815bc05b09540a9c88b99a9c56ebc3150441.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b90a49fba3b28eb0a6c55acea4ecabb8d654d959` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
