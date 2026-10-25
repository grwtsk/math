# reifyBirdDet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:768ba6527c8297a4c025a4cea6182b5e6bd59c28fe5783c949b8369996ee0f76",
  "kind": "def",
  "lexical_name": "reifyBirdDet",
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
  "slug": "reifybirddet--c5867d12eba4051b5dbff74c",
  "source": {
    "blob": "32ce264f20bd86f6425eca9dff4266f75748fc19",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 75,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variant3f7bfd9e83c86d68815ec2658a483d7653be04302810e7095457449e7361f07e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c5867d12eba4051b5dbff74c9b675d72cc1506da179f57475fd9a7fdbd1f2ffe",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variant3f7bfd9e83c86d68815ec2658a483d7653be04302810e7095457449e7361f07e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:768ba6527c8297a4c025a4cea6182b5e6bd59c28fe5783c949b8369996ee0f76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def reifyBirdDet (e : Expr) : MetaM ReifiedBirdDet := do
  let e ← instantiateMVars e
  let ⟨_, α, _⟩ ← inferTypeQ' e
  let_expr BirdDet.birdDet _ birdRingInst dimensionExpr arrayExpr := e
    | throwError "expected an application of `birdDet, got {e}"
  let some rα ← checkTypeQ birdRingInst q(CommRing $α)
    | throwError "expected `birdDet` ring instance to have type {q(CommRing $α)}"
  let dimensionExpr ← whnf dimensionExpr
  let some dimensionLit ← checkTypeQ dimensionExpr q(ℕ)
    | throwError "expected the dimension to have type `ℕ`, got {dimensionExpr}"
  let some dimension ← getNatValue? dimensionLit
    | throwError "expected the dimension to be a `ℕ` literal, got {dimensionLit}"
  let some arrayExpr ← checkTypeQ arrayExpr q(Array $α)
    | throwError "expected the array to have type {q(Array $α)}"
  let some arrayEntries ← arrayLiteral? arrayExpr
    | throwError "expected an array literal matrix, got {arrayExpr}"
  unless arrayEntries.size == dimension * dimension do
    throwError "matrix size mismatch: array has {arrayEntries.size} entries, \
      expected {dimension * dimension}"
  let arrayEntries ← arrayEntries.mapM fun entry => do
    let some entry ← checkTypeQ entry α
      | throwError "expected array entry to have type {α}"
    return entry
  let sα := commSemiringOfCommRing rα
  let cα : Common.Cache sα := {
    rα := some rα
    dsα := none
    czα := none
  }
  return {
    rα
    ctx := {
      cα
      rc := ringCompute cα
      dimension
      dimensionLit
      arrayExpr
      arrayEntries
    }
  }

end Mathlib.Tactic.Determinant

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variant3f7bfd9e83c86d68815ec2658a483d7653be04302810e7095457449e7361f07e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variant3f7bfd9e83c86d68815ec2658a483d7653be04302810e7095457449e7361f07e.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32ce264f20bd86f6425eca9dff4266f75748fc19` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
