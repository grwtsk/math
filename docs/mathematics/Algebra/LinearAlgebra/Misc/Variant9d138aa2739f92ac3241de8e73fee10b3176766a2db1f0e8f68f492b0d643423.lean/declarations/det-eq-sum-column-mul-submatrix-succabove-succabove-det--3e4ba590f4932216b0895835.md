# det_eq_sum_column_mul_submatrix_succAbove_succAbove_det

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:11f347fa-1737-5a18-36e8-5f7b81e75d29",
  "kind": "theorem",
  "lexical_name": "det_eq_sum_column_mul_submatrix_succAbove_succAbove_det",
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
  "slug": "det-eq-sum-column-mul-submatrix-succabove-succabove-det--3e4ba590f4932216b0895835",
  "source": {
    "blob": "a523e6187fca0eb93092c4e5def8d640d32dd607",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 81,
    "path": "GRWTSK/Algebra/LinearAlgebra/Misc/Variant9d138aa2739f92ac3241de8e73fee10b3176766a2db1f0e8f68f492b0d643423.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e4ba590f4932216b089583587c1d83e7cf7dbd2da4ca6619d2ce604eb04ea7a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Misc/Variant9d138aa2739f92ac3241de8e73fee10b3176766a2db1f0e8f68f492b0d643423.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11f347fa-1737-5a18-36e8-5f7b81e75d29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem det_eq_sum_column_mul_submatrix_succAbove_succAbove_det {n : ℕ}
    (M : Matrix (Fin (n + 1)) (Fin (n + 1)) R) (i₀ j₀ : Fin (n + 1))
    (hv : ∀ j ≠ j₀, ∑ i, M i j = 0) :
    M.det = (-1) ^ (i₀ + j₀ : ℕ) *
      (∑ i, M i j₀) * (M.submatrix (Fin.succAbove i₀) (Fin.succAbove j₀)).det := by
  rw [← one_smul R M.det, ← Matrix.det_updateRow_sum _ i₀ (fun _ ↦ 1), Matrix.det_succ_row _ i₀]
  simp only [updateRow_apply, ite_true, one_smul, submatrix_updateRow_succAbove, Finset.sum_apply]
  rw [Fintype.sum_eq_add_sum_subtype_ne _ j₀]
  conv_lhs =>
    enter [2, 2, i]
    rw [hv _ i.prop, mul_zero, zero_mul]
  simp [Finset.sum_const_zero, add_zero]

/-- Let `M` be a `(n+1) × (n+1)` matrix. Assume that all rows, but the `i₀`-row, sums to zero.
Then its determinant is, up to sign, the sum of the `i₀`-row times the determinant of the
matrix obtained by deleting the `i₀`-row and any column. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Misc/Variant9d138aa2739f92ac3241de8e73fee10b3176766a2db1f0e8f68f492b0d643423.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Misc/Variant9d138aa2739f92ac3241de8e73fee10b3176766a2db1f0e8f68f492b0d643423.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a523e6187fca0eb93092c4e5def8d640d32dd607` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
