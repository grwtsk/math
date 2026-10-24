# allOnesRectangularOperator_constant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:33058975-0da0-88cd-6539-89e4a5e9a44d",
  "kind": "theorem",
  "lexical_name": "allOnesRectangularOperator_constant",
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
  "slug": "allonesrectangularoperator-constant--e4e957a0f1c944dccf05f058",
  "source": {
    "blob": "5355a216d528948bb860349f8727fa445ea69a9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 76,
    "path": "GRWTSK/Algebra/LinearAlgebra/FullOperatorObstruction/Variant88836f49949563236df485f8dc704c7853ac9f25b00e1eab468ced38a583a5db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4e957a0f1c944dccf05f05843949d24f47b1a744c064471da9e9445422e3028",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FullOperatorObstruction/Variant88836f49949563236df485f8dc704c7853ac9f25b00e1eab468ced38a583a5db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:33058975-0da0-88cd-6539-89e4a5e9a44d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem allOnesRectangularOperator_constant
    (Left Right : Type*) [Fintype Left] [Fintype Right]
    [DecidableEq Right] :
    allOnesRectangularOperator Left Right (constantOneVector Right) =
      (Fintype.card Right : ℂ) • constantOneVector Left := by
  ext left
  simp [allOnesRectangularOperator, allOnesRectangularMatrix,
    constantOneVector, Matrix.toLpLin_apply, Matrix.mulVec,
    dotProduct]

/-- Squared norm of the constant-one Euclidean vector. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FullOperatorObstruction/Variant88836f49949563236df485f8dc704c7853ac9f25b00e1eab468ced38a583a5db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FullOperatorObstruction/Variant88836f49949563236df485f8dc704c7853ac9f25b00e1eab468ced38a583a5db.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5355a216d528948bb860349f8727fa445ea69a9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
