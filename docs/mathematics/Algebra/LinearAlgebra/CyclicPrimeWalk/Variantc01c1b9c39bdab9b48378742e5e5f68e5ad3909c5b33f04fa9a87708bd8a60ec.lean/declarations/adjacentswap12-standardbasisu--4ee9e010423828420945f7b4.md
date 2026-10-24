# adjacentSwap12_standardBasisU

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:79c1b35d-cfd7-0ad1-4f6c-7c78846b6e7d",
  "kind": "theorem",
  "lexical_name": "adjacentSwap12_standardBasisU",
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
  "slug": "adjacentswap12-standardbasisu--4ee9e010423828420945f7b4",
  "source": {
    "blob": "e013e54f9abfe05000b09d959283b052865b7e9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 360,
    "line": 350,
    "path": "GRWTSK/Algebra/LinearAlgebra/CyclicPrimeWalk/Variantc01c1b9c39bdab9b48378742e5e5f68e5ad3909c5b33f04fa9a87708bd8a60ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ee9e010423828420945f7b48789783f2e7bbc84ed295b8b8e633796771f30b7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CyclicPrimeWalk/Variantc01c1b9c39bdab9b48378742e5e5f68e5ad3909c5b33f04fa9a87708bd8a60ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79c1b35d-cfd7-0ad1-4f6c-7c78846b6e7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 350–360.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem adjacentSwap12_standardBasisU :
    permutationRepresentation adjacentSwap12 standardBasisU =
      (-1 / 2 : ℝ) • standardBasisU + (sqrtThree / 2) • standardBasisV := by
  funext i
  fin_cases i <;>
    simp [permutationRepresentation, permuteFiber, adjacentSwap12,
      standardBasisU, standardBasisV, Equiv.swap_apply_def,
      Matrix.cons_val_two] <;> nlinarith [sqrtThree_sq]

/-- Second column of the `5 mod 6` reflection matrix in the `(u,v)` basis. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CyclicPrimeWalk/Variantc01c1b9c39bdab9b48378742e5e5f68e5ad3909c5b33f04fa9a87708bd8a60ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CyclicPrimeWalk/Variantc01c1b9c39bdab9b48378742e5e5f68e5ad3909c5b33f04fa9a87708bd8a60ec.lean#L350).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e013e54f9abfe05000b09d959283b052865b7e9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
