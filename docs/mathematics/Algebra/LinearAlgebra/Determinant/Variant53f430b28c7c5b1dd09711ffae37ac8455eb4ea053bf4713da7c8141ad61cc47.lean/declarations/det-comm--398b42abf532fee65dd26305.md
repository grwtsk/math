# det_comm'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "986ae30a9d7245d1525fb35f1ffc55e0c22209f5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 89,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/53/53f430b28c7c5b1dd09711ffae37ac8455eb4ea053bf4713da7c8141ad61cc47.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eb81bb1c-edaa-526f-239d-60217d5e6228",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:13146d2f-37d1-2a31-ce2b-88d04d9fc5c3",
  "kind": "theorem",
  "lexical_name": "det_comm'",
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
  "slug": "det-comm--398b42abf532fee65dd26305",
  "source": {
    "blob": "986ae30a9d7245d1525fb35f1ffc55e0c22209f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 89,
    "path": "GRWTSK/Algebra/LinearAlgebra/Determinant/Variant53f430b28c7c5b1dd09711ffae37ac8455eb4ea053bf4713da7c8141ad61cc47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:398b42abf532fee65dd26305ada38ee342d76d6ab755414c70f51ad87111e258",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Determinant/Variant53f430b28c7c5b1dd09711ffae37ac8455eb4ea053bf4713da7c8141ad61cc47.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13146d2f-37d1-2a31-ce2b-88d04d9fc5c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem det_comm' [DecidableEq m] [DecidableEq n] {M : Matrix n m A} {N : Matrix m n A}
    {M' : Matrix m n A} (hMM' : M * M' = 1) (hM'M : M' * M = 1) : det (M * N) = det (N * M) := by
  nontriviality A
  -- Although `m` and `n` are different a priori, we will show they have the same cardinality.
  -- This turns the problem into one for square matrices, which is easy.
  let e := indexEquivOfInv hMM' hM'M
  rw [← det_submatrix_equiv_self e, ← submatrix_mul_equiv _ _ _ (Equiv.refl n) _, det_comm,
    submatrix_mul_equiv, Equiv.coe_refl, submatrix_id_id]

/-- If `M'` is a two-sided inverse for `M` (indexed differently), `det (M * N * M') = det N`.

See `Matrix.det_conj` and `Matrix.det_conj'` for the case when `M' = M⁻¹` or vice versa. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Determinant/Variant53f430b28c7c5b1dd09711ffae37ac8455eb4ea053bf4713da7c8141ad61cc47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Determinant/Variant53f430b28c7c5b1dd09711ffae37ac8455eb4ea053bf4713da7c8141ad61cc47.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `986ae30a9d7245d1525fb35f1ffc55e0c22209f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
