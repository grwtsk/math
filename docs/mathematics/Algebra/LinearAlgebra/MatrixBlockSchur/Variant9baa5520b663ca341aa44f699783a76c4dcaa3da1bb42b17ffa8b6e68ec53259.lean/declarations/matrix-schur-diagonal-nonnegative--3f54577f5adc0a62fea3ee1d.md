# matrix_schur_diagonal_nonnegative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8983389fa63285e609ec36eff4e4808420c59e60",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 114,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9b/9baa5520b663ca341aa44f699783a76c4dcaa3da1bb42b17ffa8b6e68ec53259.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:556b931c-d264-dde1-707a-d97d448cd528",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c4a452b9-0de6-9d39-5ce6-e067b847b22a",
  "kind": "theorem",
  "lexical_name": "matrix_schur_diagonal_nonnegative",
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
  "slug": "matrix-schur-diagonal-nonnegative--3f54577f5adc0a62fea3ee1d",
  "source": {
    "blob": "8983389fa63285e609ec36eff4e4808420c59e60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 114,
    "path": "GRWTSK/Algebra/LinearAlgebra/MatrixBlockSchur/Variant9baa5520b663ca341aa44f699783a76c4dcaa3da1bb42b17ffa8b6e68ec53259.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f54577f5adc0a62fea3ee1d794564d378efa8cbe945ac112436410cbc2ddb82",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixBlockSchur/Variant9baa5520b663ca341aa44f699783a76c4dcaa3da1bb42b17ffa8b6e68ec53259.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4a452b9-0de6-9d39-5ce6-e067b847b22a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem matrix_schur_diagonal_nonnegative
    (D : MatrixBlockRealization G) (u : κ → ℝ) :
    0 ≤
      u ⬝ᵥ D.autonomousMatrix.mulVec u -
        (D.inverseProvenanceMatrix.mulVec (D.crossMatrix.mulVec u)) ⬝ᵥ
          D.crossMatrix.mulVec u := by
  rw [← D.schur_eq_matrix_coordinates u u]
  exact D.blockSchurSolver.schurForm_nonnegative u

/-- The pure autonomous block energy decomposes into explained provenance energy
plus the positive matrix Schur residual. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MatrixBlockSchur/Variant9baa5520b663ca341aa44f699783a76c4dcaa3da1bb42b17ffa8b6e68ec53259.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/MatrixBlockSchur/Variant9baa5520b663ca341aa44f699783a76c4dcaa3da1bb42b17ffa8b6e68ec53259.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8983389fa63285e609ec36eff4e4808420c59e60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
