# det_eq_sum_row_mul_submatrix_succAbove_succAbove_det

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2af97399-e2c6-a4e4-bbf5-231c0543e9e1",
  "kind": "theorem",
  "lexical_name": "det_eq_sum_row_mul_submatrix_succAbove_succAbove_det",
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
  "slug": "det-eq-sum-row-mul-submatrix-succabove-succabove-det--aac3f06ffb453c9cd273adc2",
  "source": {
    "blob": "a523e6187fca0eb93092c4e5def8d640d32dd607",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 97,
    "path": "GRWTSK/Algebra/LinearAlgebra/Misc/Variant9d138aa2739f92ac3241de8e73fee10b3176766a2db1f0e8f68f492b0d643423.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aac3f06ffb453c9cd273adc2efc73e6cf00dbf822f65dfcda43b9cd685e0d992",
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

Occurrence: `result:2af97399-e2c6-a4e4-bbf5-231c0543e9e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem det_eq_sum_row_mul_submatrix_succAbove_succAbove_det {n : ℕ}
    (M : Matrix (Fin (n + 1)) (Fin (n + 1)) R) (i₀ j₀ : Fin (n + 1))
    (hv : ∀ i ≠ i₀, ∑ j, M i j = 0) :
    M.det = (-1) ^ (i₀ + j₀ : ℕ) *
      (∑ j, M i₀ j) * (M.submatrix (Fin.succAbove i₀) (Fin.succAbove j₀)).det := by
  rw [← det_transpose, det_eq_sum_column_mul_submatrix_succAbove_succAbove_det _ j₀ i₀
    (by simpa using hv), ← det_transpose, transpose_submatrix, transpose_transpose, add_comm]
  simp_rw [transpose_apply]

end Matrix
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Misc/Variant9d138aa2739f92ac3241de8e73fee10b3176766a2db1f0e8f68f492b0d643423.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Misc/Variant9d138aa2739f92ac3241de8e73fee10b3176766a2db1f0e8f68f492b0d643423.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a523e6187fca0eb93092c4e5def8d640d32dd607` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
