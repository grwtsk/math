# mkCongrOfCHole?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a51aaafef08f2d6ff80617aa7dab4ffc41779bfc640f043a29727cf849fc5685",
  "kind": "def",
  "lexical_name": "mkCongrOfCHole?",
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
  "slug": "mkcongrofchole--4ef95d3bd806b2b621b985cc",
  "source": {
    "blob": "c76112d1f1a838af5b3d3645665dd0eea3b0ada1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 461,
    "line": 433,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variant2f58de9a0e38aa548aa4f8f22a712e1d67faae4ce4f16bd14af16a204d78f714.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4ef95d3bd806b2b621b985cc80ce83489d72449c1a40855dcb6ee03cc51c7f66",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variant2f58de9a0e38aa548aa4f8f22a712e1d67faae4ce4f16bd14af16a204d78f714.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a51aaafef08f2d6ff80617aa7dab4ffc41779bfc640f043a29727cf849fc5685`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 433–461.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkCongrOfCHole? (mvarCounterSaved : Nat) (lhs rhs : Expr) : MetaM (Option CongrResult) := do
  match cHole? lhs mvarCounterSaved, cHole? rhs mvarCounterSaved with
  | some (isLhs1, val1, pf1), some (isLhs2, val2, pf2) =>
    trace[Elab.congr] "mkCongrOfCHole, both holes"
    unless isLhs1 == true do
      throwCongrEx lhs rhs "A RHS congruence hole leaked into the LHS"
    unless isLhs2 == false do
      throwCongrEx lhs rhs "A LHS congruence hole leaked into the RHS"
    -- Defeq checks to unify the lhs and rhs congruence holes.
    unless ← isDefEq (← inferType pf1) (← inferType pf2) do
      throwCongrEx lhs rhs "Elaborated types of congruence holes are not defeq."
    if let some (_, lhsVal, _, rhsVal) := (← whnf <| ← inferType pf1).sides? then
      unless ← isDefEq val1 lhsVal do
        throwError "Left-hand side of congruence hole is{indentD lhsVal}\n\
          but is expected to be{indentD val1}"
      unless ← isDefEq val2 rhsVal do
        throwError "Right-hand side of congruence hole is{indentD rhsVal}\n\
          but is expected to be{indentD val2}"
    return some <| CongrResult.mk' val1 val2 pf1
  | some .., none =>
    throwCongrEx lhs rhs "Right-hand side lost its congruence hole annotation."
  | none, some .. =>
    throwCongrEx lhs rhs "Left-hand side lost its congruence hole annotation."
  | none, none => return none

/--
Given two applications of the same arity, gives `Expr.getAppFn` of both,
but if these functions are equal, gives the longest common prefix.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variant2f58de9a0e38aa548aa4f8f22a712e1d67faae4ce4f16bd14af16a204d78f714.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variant2f58de9a0e38aa548aa4f8f22a712e1d67faae4ce4f16bd14af16a204d78f714.lean#L433).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c76112d1f1a838af5b3d3645665dd0eea3b0ada1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
