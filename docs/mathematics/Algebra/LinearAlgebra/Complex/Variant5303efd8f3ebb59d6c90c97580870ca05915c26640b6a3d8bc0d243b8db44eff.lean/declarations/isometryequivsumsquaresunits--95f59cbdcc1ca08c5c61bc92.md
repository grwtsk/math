# isometryEquivSumSquaresUnits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8e319777b056c042b2282c0615d1542e040469f0969fc7c5a3c80800c7db6bb4",
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
  "slug": "isometryequivsumsquaresunits--95f59cbdcc1ca08c5c61bc92",
  "source": {
    "blob": "599d8c47caf6c2d2e57e23a383eafef455c34e20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 65,
    "path": "GRWTSK/Algebra/LinearAlgebra/Complex/Variant5303efd8f3ebb59d6c90c97580870ca05915c26640b6a3d8bc0d243b8db44eff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:95f59cbdcc1ca08c5c61bc92d32cc06ee9443047f898201d626d93c94123663c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Complex/Variant5303efd8f3ebb59d6c90c97580870ca05915c26640b6a3d8bc0d243b8db44eff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8e319777b056c042b2282c0615d1542e040469f0969fc7c5a3c80800c7db6bb4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def isometryEquivSumSquaresUnits (w : ι → Units ℂ) :
    IsometryEquiv (weightedSumSquares ℂ w) (weightedSumSquares ℂ (1 : ι → ℂ)) := by
  simpa using isometryEquivSumSquares ((↑) ∘ w)

/-- A nondegenerate quadratic form on the complex numbers is equivalent to
the sum of squares, i.e. `weightedSumSquares` with weight `fun (i : ι) => 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Complex/Variant5303efd8f3ebb59d6c90c97580870ca05915c26640b6a3d8bc0d243b8db44eff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Complex/Variant5303efd8f3ebb59d6c90c97580870ca05915c26640b6a3d8bc0d243b8db44eff.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `599d8c47caf6c2d2e57e23a383eafef455c34e20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
