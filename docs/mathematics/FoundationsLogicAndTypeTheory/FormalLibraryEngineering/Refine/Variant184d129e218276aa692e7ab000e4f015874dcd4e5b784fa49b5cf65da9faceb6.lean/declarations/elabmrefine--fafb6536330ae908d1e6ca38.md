# elabMRefine

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fa0887591813cc5cfdf13e496a28dbbc08ca6449ec750aa0ed610b5a5bd7306b",
  "kind": "def",
  "lexical_name": "elabMRefine",
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
  "slug": "elabmrefine--fafb6536330ae908d1e6ca38",
  "source": {
    "blob": "ae6a420dc028e7b66c4b9ad9efdd8feda244bf75",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 75,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refine/Variant184d129e218276aa692e7ab000e4f015874dcd4e5b784fa49b5cf65da9faceb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fafb6536330ae908d1e6ca385bb5d2d8e254b42d616e7c1a1603f8b29eb9f046",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refine/Variant184d129e218276aa692e7ab000e4f015874dcd4e5b784fa49b5cf65da9faceb6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fa0887591813cc5cfdf13e496a28dbbc08ca6449ec750aa0ed610b5a5bd7306b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabMRefine : Tactic
  | `(tactic| mrefine $pat:mrefinePat) => do
    let pat ← liftMacroM <| MRefinePat.parse pat
    let (mvar, goal) ← mStartMainGoal
    mvar.withContext do

    let goals ← IO.mkRef #[]
    let prf ← mRefineCore goal pat fun goal name => do
      let m ← mkFreshExprSyntheticOpaqueMVar goal.toExpr name.raw.getId
      goals.modify (·.push m.mvarId!)
      return m
    mvar.assign prf
    replaceMainGoal (← goals.get).toList
  | _ => throwUnsupportedSyntax

@[builtin_tactic Lean.Parser.Tactic.mexists]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refine/Variant184d129e218276aa692e7ab000e4f015874dcd4e5b784fa49b5cf65da9faceb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refine/Variant184d129e218276aa692e7ab000e4f015874dcd4e5b784fa49b5cf65da9faceb6.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae6a420dc028e7b66c4b9ad9efdd8feda244bf75` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
