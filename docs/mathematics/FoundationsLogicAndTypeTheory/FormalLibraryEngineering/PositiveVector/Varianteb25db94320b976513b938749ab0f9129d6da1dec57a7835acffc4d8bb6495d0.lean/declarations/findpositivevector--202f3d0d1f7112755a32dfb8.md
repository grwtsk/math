# findPositiveVector

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4149d302c8b419251e9df3e9994b47c900b9e4f1f3440b201c8e75b834815ac0",
  "kind": "def",
  "lexical_name": "findPositiveVector",
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
  "slug": "findpositivevector--202f3d0d1f7112755a32dfb8",
  "source": {
    "blob": "93e127138ac712bb9d7695600818d5e9ee8b6cd3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 86,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PositiveVector/Varianteb25db94320b976513b938749ab0f9129d6da1dec57a7835acffc4d8bb6495d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:202f3d0d1f7112755a32dfb8b2d4b55af82d2cf5eef2a72a5c30c3ccde48e986",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PositiveVector/Varianteb25db94320b976513b938749ab0f9129d6da1dec57a7835acffc4d8bb6495d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4149d302c8b419251e9df3e9994b47c900b9e4f1f3440b201c8e75b834815ac0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def findPositiveVector {n m : Nat} {matType : Nat → Nat → Type} [UsableInSimplexAlgorithm matType]
    (A : matType n m) (strictIndexes : List Nat) : Lean.Meta.MetaM <| Array Rat := do
  /- State the linear programming problem. -/
  let B := stateLP A strictIndexes

  /- Using Gaussian elimination split variable into free and basic forming the tableau that will be
  operated by the Simplex Algorithm. -/
  let initTableau ← Gauss.getTableau B

  /- Run the Simplex Algorithm and extract the solution. -/
  let res ← runSimplexAlgorithm.run initTableau
  if res.fst.isOk then
    return extractSolution res.snd
  else
    throwError "Simplex Algorithm failed"

end SimplexAlgorithm

end Linarith
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PositiveVector/Varianteb25db94320b976513b938749ab0f9129d6da1dec57a7835acffc4d8bb6495d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PositiveVector/Varianteb25db94320b976513b938749ab0f9129d6da1dec57a7835acffc4d8bb6495d0.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93e127138ac712bb9d7695600818d5e9ee8b6cd3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
