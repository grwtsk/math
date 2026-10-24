# Solvers.mergeTerms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:81986d9071e988a226377573a8ee84b5734a44ba9cfef9ab264e82effd1880fe",
  "kind": "def",
  "lexical_name": "Solvers.mergeTerms",
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
  "slug": "solvers-mergeterms--065777a43556de01755fcae7",
  "source": {
    "blob": "319df85256f66e0b9295ed3113fcc6a61dd47bac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2135,
    "line": 2107,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Types/Variant8fa86456ec97e681709a89c4cb2033e32df166cfdc60e68c788518d5a75ed787.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:065777a43556de01755fcae75140f90b77de8433161f631992d0444b50882228",
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

Occurrence: `declaration:81986d9071e988a226377573a8ee84b5734a44ba9cfef9ab264e82effd1880fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2107–2135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Solvers.mergeTerms (rhsRoot lhsRoot : ENode) : GoalM PendingSolverPropagations := do
  let (sTerms, data) ← go rhsRoot.sTerms lhsRoot.sTerms
  unless sTerms matches .nil do
    -- We have to retrieve the node because other fields have been updated
    let rhsRoot ← getENode rhsRoot.self
    setENode rhsRoot.self { rhsRoot with sTerms }
  return { data }
where
  toPendingDiseqs (sTerms : SolverTerms) (ps : ParentSet) : PendingSolverPropagationsData :=
    match sTerms with
    | .nil => .nil
    | .next id _ sTerms => .diseqs id ps (toPendingDiseqs sTerms ps)

  go (rhsTerms : SolverTerms) (lhsTerms : SolverTerms) : GoalM (SolverTerms × PendingSolverPropagationsData) := do
    match rhsTerms, lhsTerms with
    | .nil,     .nil     => return (.nil, .nil)
    | .nil,     .next .. => return (lhsTerms, toPendingDiseqs lhsTerms (← getParents rhsRoot.self))
    | .next .., .nil     => return (rhsTerms, toPendingDiseqs rhsTerms (← getParents lhsRoot.self))
    | .next id₁ rhs rhsTerms, .next id₂ lhs lhsTerms =>
      if id₁ == id₂ then
        let (s, p) ← go rhsTerms lhsTerms
        return (.next id₁ rhs s, .eq id₁ lhs rhs p)
      else if id₁ < id₂ then
        let (s, p) ← go rhsTerms (.next id₂ lhs lhsTerms)
        return (.next id₁ rhs s, .diseqs id₁ (← getParents lhsRoot.self) p)
      else
        let (s, p) ← go (.next id₁ rhs rhsTerms) lhsTerms
        return (.next id₂ lhs s, .diseqs id₂ (← getParents rhsRoot.self) p)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Types/Variant8fa86456ec97e681709a89c4cb2033e32df166cfdc60e68c788518d5a75ed787.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Types/Variant8fa86456ec97e681709a89c4cb2033e32df166cfdc60e68c788518d5a75ed787.lean#L2107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `319df85256f66e0b9295ed3113fcc6a61dd47bac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
