# set_other

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d5453224-0cda-d35f-f1a6-72da68190c10",
  "kind": "theorem",
  "lexical_name": "set_other",
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
  "slug": "set-other--75eefae35ce4d49769684e6c",
  "source": {
    "blob": "a8f4c538f72f52e183c31eceb1e9067b32cf6f76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 48,
    "path": "GRWTSK/Algebra/LinearAlgebra/MatrixTheory/CountableBooleanMatrixUpdates/Variant1f9358c5c3851fc9/SingleCoordinateUpdateAndEquations.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:75eefae35ce4d49769684e6cb554b8457217ea101744ce71578dcf4fa2c0563b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixTheory/CountableBooleanMatrixUpdates/Variant1f9358c5c3851fc9/SingleCoordinateUpdateAndEquations.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5453224-0cda-d35f-f1a6-72da68190c10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem set_other
    (matrix : Matrix)
    (targetRow targetColumn row column : Nat)
    (value : Bool)
    (different :
      row ≠ targetRow ∨ column ≠ targetColumn) :
    set matrix targetRow targetColumn value row column =
      matrix row column := by
  unfold set
  split
  · rename_i equal
    exact False.elim <|
      different.elim
        (fun hrow => hrow equal.1)
        (fun hcolumn => hcolumn equal.2)
  · rfl

end Matrix
end BooleanMatrix
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Algebra/LinearAlgebra/MatrixTheory/CountableBooleanMatrixUpdates/Variant1f9358c5c3851fc9/SingleCoordinateUpdateAndEquations.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/MatrixTheory/CountableBooleanMatrixUpdates/Variant1f9358c5c3851fc9/SingleCoordinateUpdateAndEquations.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8f4c538f72f52e183c31eceb1e9067b32cf6f76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
