# det_eq_prod_eigenvalues

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1883f6f954f054d7dfe623e801432e7ba5137442",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 136,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b8/b863583f3c3bcf3b491bd381ec3988afdc82f50f72c795a5c2692bd641afcdab.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:38424a4e-27ac-a8a1-859a-170855969c46",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7df8c261-6c6e-2749-22a9-79059e9ecc49",
  "kind": "theorem",
  "lexical_name": "det_eq_prod_eigenvalues",
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
  "slug": "det-eq-prod-eigenvalues--ed4e3cf0349c298edc95d01a",
  "source": {
    "blob": "1883f6f954f054d7dfe623e801432e7ba5137442",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 136,
    "path": "GRWTSK/Algebra/LinearAlgebra/Spectrum/Variantb863583f3c3bcf3b491bd381ec3988afdc82f50f72c795a5c2692bd641afcdab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed4e3cf0349c298edc95d01a8e022a1cbfcbd05b0084ee2ec5dcaa25a5c1a5e6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Spectrum/Variantb863583f3c3bcf3b491bd381ec3988afdc82f50f72c795a5c2692bd641afcdab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7df8c261-6c6e-2749-22a9-79059e9ecc49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem det_eq_prod_eigenvalues : det A = ∏ i, (hA.eigenvalues i : 𝕜) := by
  convert congr_arg det hA.spectral_theorem
  rw [det_mul_right_comm]
  simp

/-- rank of a hermitian matrix is the rank of after diagonalization by the eigenvector unitary -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Spectrum/Variantb863583f3c3bcf3b491bd381ec3988afdc82f50f72c795a5c2692bd641afcdab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Spectrum/Variantb863583f3c3bcf3b491bd381ec3988afdc82f50f72c795a5c2692bd641afcdab.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1883f6f954f054d7dfe623e801432e7ba5137442` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
