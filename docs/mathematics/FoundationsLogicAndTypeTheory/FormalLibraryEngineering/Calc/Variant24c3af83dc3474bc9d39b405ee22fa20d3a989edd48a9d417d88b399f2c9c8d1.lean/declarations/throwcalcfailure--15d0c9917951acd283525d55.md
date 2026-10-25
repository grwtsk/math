# throwCalcFailure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a8c416d8a55e98b179e28620cb171ea576345686ee9aafd05d599b4fd478df95",
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
  "slug": "throwcalcfailure--15d0c9917951acd283525d55",
  "source": {
    "blob": "470686476a2289f65e2025cbe6bed7e7962b13f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 139,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calc/Variant24c3af83dc3474bc9d39b405ee22fa20d3a989edd48a9d417d88b399f2c9c8d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:15d0c9917951acd283525d55deef95eda3d14259ba63ff3c2c268149d568a5c3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calc/Variant24c3af83dc3474bc9d39b405ee22fa20d3a989edd48a9d417d88b399f2c9c8d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a8c416d8a55e98b179e28620cb171ea576345686ee9aafd05d599b4fd478df95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–176.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calc/Variant24c3af83dc3474bc9d39b405ee22fa20d3a989edd48a9d417d88b399f2c9c8d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calc/Variant24c3af83dc3474bc9d39b405ee22fa20d3a989edd48a9d417d88b399f2c9c8d1.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `470686476a2289f65e2025cbe6bed7e7962b13f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
