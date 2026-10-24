# prodEquivTensor_symm_apply_tmul_ιMulti

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e7b62b09-c561-f4db-7899-70d8641318f1",
  "kind": "lemma",
  "lexical_name": "prodEquivTensor_symm_apply_tmul_ιMulti",
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
  "slug": "prodequivtensor-symm-apply-tmul-multi--b5c624151fe495c63597779d",
  "source": {
    "blob": "38edf6dbcb4e8714d99af70842ec998da8e0c623",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 122,
    "path": "GRWTSK/Algebra/LinearAlgebra/Product/Variant0150763ed2a59518a6da2126f97a43053fc2c090f8d15f00f578570d2b174809.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5c624151fe495c63597779dfd144d557bdaf861d6464477325e07a4b7690ecd",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Product/Variant0150763ed2a59518a6da2126f97a43053fc2c090f8d15f00f578570d2b174809.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7b62b09-c561-f4db-7899-70d8641318f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma prodEquivTensor_symm_apply_tmul_ιMulti (i j : ℕ) (m : Fin i → M) (n : Fin j → N) :
    (prodEquivTensor R M N).symm (ιMulti R i m ᵍ⊗ₜ[R] ιMulti R j n) =
      ιMulti R (i + j) (Fin.append (LinearMap.inl R M N ∘ m) (LinearMap.inr R M N ∘ n)) := by
  simp [prodEquivTensor, prodEquivTensorInverse, ExteriorAlgebra.ιMulti_mul_ιMulti]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Product/Variant0150763ed2a59518a6da2126f97a43053fc2c090f8d15f00f578570d2b174809.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Product/Variant0150763ed2a59518a6da2126f97a43053fc2c090f8d15f00f578570d2b174809.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38edf6dbcb4e8714d99af70842ec998da8e0c623` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
