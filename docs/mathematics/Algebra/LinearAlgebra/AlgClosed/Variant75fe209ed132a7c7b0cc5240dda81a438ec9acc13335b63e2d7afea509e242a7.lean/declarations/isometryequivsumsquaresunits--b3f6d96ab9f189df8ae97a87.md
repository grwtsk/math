# isometryEquivSumSquaresUnits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b339b50ce3356adbbbb8d3285e176c0ddeb3a0de81a0ac59b3bdd4cf5c1b194f",
  "kind": "def",
  "lexical_name": "isometryEquivSumSquaresUnits",
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
  "slug": "isometryequivsumsquaresunits--b3f6d96ab9f189df8ae97a87",
  "source": {
    "blob": "326c57433841d7d3f181c5f9e90303599ac29987",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 51,
    "path": "GRWTSK/Algebra/LinearAlgebra/AlgClosed/Variant75fe209ed132a7c7b0cc5240dda81a438ec9acc13335b63e2d7afea509e242a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b3f6d96ab9f189df8ae97a874435480c2ea2c234e7289151b47a2aca3536f2c7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/AlgClosed/Variant75fe209ed132a7c7b0cc5240dda81a438ec9acc13335b63e2d7afea509e242a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b339b50ce3356adbbbb8d3285e176c0ddeb3a0de81a0ac59b3bdd4cf5c1b194f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def isometryEquivSumSquaresUnits [DecidableEq K] (w : ι → Kˣ) :
    IsometryEquiv (weightedSumSquares K w) (weightedSumSquares K (1 : ι → K)) :=
  (isometryEquivSumSquares (fun i ↦ (w i).val)).trans (weightedSumSquaresCongr (by ext; simp))

/-- A nondegenerate quadratic form on an algebraically closed field of characteristic not equal to 2
is equivalent to the sum of squares, i.e. `weightedSumSquares` with weight `fun (i : ι) => 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/AlgClosed/Variant75fe209ed132a7c7b0cc5240dda81a438ec9acc13335b63e2d7afea509e242a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/AlgClosed/Variant75fe209ed132a7c7b0cc5240dda81a438ec9acc13335b63e2d7afea509e242a7.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `326c57433841d7d3f181c5f9e90303599ac29987` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
