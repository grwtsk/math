# SolverExtension.markTerm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c08a51a5afdee4db470d03ab969b6543a39cc25dbb779d76a038d9e3c7204970",
  "kind": "def",
  "lexical_name": "SolverExtension.markTerm",
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
  "slug": "solverextension-markterm--34946acc8566117807d8a7ab",
  "source": {
    "blob": "319df85256f66e0b9295ed3113fcc6a61dd47bac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2080,
    "line": 2052,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Types/Variant8fa86456ec97e681709a89c4cb2033e32df166cfdc60e68c788518d5a75ed787.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:34946acc8566117807d8a7ab514482bffd460942d27d04c9b2fd2dfa846d6dd0",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Types/Variant8fa86456ec97e681709a89c4cb2033e32df166cfdc60e68c788518d5a75ed787.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c08a51a5afdee4db470d03ab969b6543a39cc25dbb779d76a038d9e3c7204970`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2052–2080.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def SolverExtension.markTerm (ext : SolverExtension σ) (e : Expr) : GoalM Unit := do
  let root ← getRootENode e
  let id := ext.id
  let rec go (sTerms : SolverTerms) : GoalM SolverTerms := do
    match sTerms with
    | .nil => return .next id e .nil
    | .next id' e' sTerms' =>
      if id == id' then
        -- Skip if `e` and `e'` have different types (e.g., they were merged via `HEq` from `cast`).
        -- This can happen when we have heterogeneous equalities in an equivalence class containing types such as `Fin n` and `Fin m`
        if (← pure !root.heqProofs <||> hasSameType e e') then
          (← solverExtensionsRef.get)[id]!.newEq e e'
        return sTerms
      else if id < id' then
        return .next id e sTerms
      else
        let sTermsNew ← go sTerms'
        if isSameSolverTerms sTermsNew sTerms' then
          return sTerms
        else
          return .next id' e' sTermsNew
  let sTermsNew ← go root.sTerms
  unless isSameSolverTerms sTermsNew root.sTerms do
    setENode root.self { root with sTerms := sTermsNew }
    forEachDiseq (← getParents root.self) (propagateDiseqOf id)

/--
Returns `some t` if `t` is the solver term for `ext` associated with `e`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Types/Variant8fa86456ec97e681709a89c4cb2033e32df166cfdc60e68c788518d5a75ed787.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Types/Variant8fa86456ec97e681709a89c4cb2033e32df166cfdc60e68c788518d5a75ed787.lean#L2052).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `319df85256f66e0b9295ed3113fcc6a61dd47bac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
