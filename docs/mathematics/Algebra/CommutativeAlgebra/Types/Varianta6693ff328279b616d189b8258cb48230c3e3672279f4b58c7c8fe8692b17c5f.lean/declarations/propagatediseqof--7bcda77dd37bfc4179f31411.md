# propagateDiseqOf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1d62fda969521bf0277df360fe3637133a5337b010a66738d1de77724e01011f",
  "kind": "def",
  "lexical_name": "propagateDiseqOf",
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
  "slug": "propagatediseqof--7bcda77dd37bfc4179f31411",
  "source": {
    "blob": "7611e81d5fd7ed4d854ff760fa7d113b4fc42c6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2040,
    "line": 2015,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Types/Varianta6693ff328279b616d189b8258cb48230c3e3672279f4b58c7c8fe8692b17c5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7bcda77dd37bfc4179f31411821ae681d20e0fa27ac4775463dbccdf0368556b",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Types/Varianta6693ff328279b616d189b8258cb48230c3e3672279f4b58c7c8fe8692b17c5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1d62fda969521bf0277df360fe3637133a5337b010a66738d1de77724e01011f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2015–2040.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def propagateDiseqOf (id : Nat) (lhs rhs : Expr) : GoalM Unit := do
  visitLhs (← getRootENode lhs).sTerms
where
  visitLhs (sTerms : SolverTerms) : GoalM Unit := do
    match sTerms with
    | .nil => return ()
    | .next id' e sTerms =>
      if id == id' then
        visitRhs e (← getRootENode rhs).sTerms
      else if id < id' then
        return ()
      else
        visitLhs sTerms

  visitRhs (lhsTerm : Expr) (sTerms : SolverTerms) : GoalM Unit := do
    match sTerms with
    | .nil => return ()
    | .next id' e sTerms =>
      if id == id' then
        let rhsTerm := e
        (← solverExtensionsRef.get)[id]!.newDiseq lhsTerm rhsTerm
      else if id < id' then
        return ()
      else
        visitRhs lhsTerm sTerms

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Types/Varianta6693ff328279b616d189b8258cb48230c3e3672279f4b58c7c8fe8692b17c5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Types/Varianta6693ff328279b616d189b8258cb48230c3e3672279f4b58c7c8fe8692b17c5f.lean#L2015).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7611e81d5fd7ed4d854ff760fa7d113b4fc42c6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
