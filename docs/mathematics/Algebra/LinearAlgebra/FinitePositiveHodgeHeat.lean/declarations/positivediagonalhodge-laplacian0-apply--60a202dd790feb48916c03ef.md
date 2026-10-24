# positiveDiagonalHodge_laplacian0_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cd5fc34723c3dd9a8d09b3dce66f3bfa180998c0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 66,
      "path": "GRWTSK/LinearAlgebra/FinitePositiveHodgeHeat.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:920e43ac-010b-845e-3e3e-8967b4b16835",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5602a90f-e527-bdc9-58a1-ff4a6f19bb51",
  "kind": "theorem",
  "lexical_name": "positiveDiagonalHodge_laplacian0_apply",
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
  "slug": "positivediagonalhodge-laplacian0-apply--60a202dd790feb48916c03ef",
  "source": {
    "blob": "cd5fc34723c3dd9a8d09b3dce66f3bfa180998c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 66,
    "path": "GRWTSK/LinearAlgebra/FinitePositiveHodgeHeat.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60a202dd790feb48916c03ef9f078d6d6074aa88b7a5fc7c6fc6e9eb90bb550c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FinitePositiveHodgeHeat.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5602a90f-e527-bdc9-58a1-ff4a6f19bb51`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positiveDiagonalHodge_laplacian0_apply
    (a x : ι → ℝ) (i : ι) :
    (positiveDiagonalHodge a).laplacian0 x i = a i ^ 2 * x i := by
  change a i * (a i * x i) = a i ^ 2 * x i
  ring

/-- The degree-one Laplacian has the same diagonal formula in this two-term model. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LinearAlgebra/FinitePositiveHodgeHeat.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/LinearAlgebra/FinitePositiveHodgeHeat.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd5fc34723c3dd9a8d09b3dce66f3bfa180998c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
