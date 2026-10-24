# InnerProductSpace.canonicalCovariantTensor_eq_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "61863683f0ebaff975e8c9ea23a51b6a1f4dc15a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 42,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5e/5eca1d5e1f95ba8f258dff66ddaf9f29f99c91b49ac6be61f2833500e88c309a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5de32e7b-8fa9-bf9b-e412-a4ad9d7c27fa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ac5168cf-1f3e-5900-4d5d-1713c33a8372",
  "kind": "theorem",
  "lexical_name": "InnerProductSpace.canonicalCovariantTensor_eq_sum",
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
  "slug": "innerproductspace-canonicalcovarianttensor-eq-sum--67ddcd28155ca5e99e51505e",
  "source": {
    "blob": "61863683f0ebaff975e8c9ea23a51b6a1f4dc15a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 42,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/CanonicalTensor/Variant5eca1d5e1f95ba8f258dff66ddaf9f29f99c91b49ac6be61f2833500e88c309a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67ddcd28155ca5e99e51505ec623dae2066ff42e24aaff686b3ee40eee464285",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/CanonicalTensor/Variant5eca1d5e1f95ba8f258dff66ddaf9f29f99c91b49ac6be61f2833500e88c309a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac5168cf-1f3e-5900-4d5d-1713c33a8372`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem InnerProductSpace.canonicalCovariantTensor_eq_sum [FiniteDimensional ℝ E]
    {ι : Type*} [Fintype ι] (v : OrthonormalBasis ι ℝ E) :
    InnerProductSpace.canonicalCovariantTensor E = ∑ i, (v i) ⊗ₜ[ℝ] (v i) := by
  let w := stdOrthonormalBasis ℝ E
  calc ∑ m, w m ⊗ₜ[ℝ] w m
  _ = ∑ m, ∑ n, ⟪w m, w n⟫_ℝ • w m ⊗ₜ[ℝ] w n := by
    congr 1 with m
    rw [Fintype.sum_eq_single m _, orthonormal_iff_ite.1 w.orthonormal]
    · simp only [↓reduceIte, one_smul]
    simp only [orthonormal_iff_ite.1 w.orthonormal, ite_smul, one_smul, zero_smul,
      ite_eq_right_iff]
    tauto
  _ = ∑ m, ∑ n, (∑ i, ⟪w m, v i⟫_ℝ * ⟪v i, w n⟫_ℝ) • w m ⊗ₜ[ℝ] w n := by
    simp_rw [OrthonormalBasis.sum_inner_mul_inner v]
  _ = ∑ m, ∑ n, (∑ i, ⟪w m, v i⟫_ℝ * ⟪w n, v i⟫_ℝ) • w m ⊗ₜ[ℝ] w n := by
    simp only [real_inner_comm (w _)]
  _ = ∑ i, (∑ m, ⟪w m, v i⟫_ℝ • w m) ⊗ₜ[ℝ] ∑ n, ⟪w n, v i⟫_ℝ • w n := by
    simp only [sum_tmul, tmul_sum, smul_tmul_smul, Finset.sum_comm (γ := ι), Finset.sum_smul]
    rw [Finset.sum_comm]
  _ = ∑ i, v i ⊗ₜ[ℝ] v i := by
    simp only [w.sum_repr' (v _)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/CanonicalTensor/Variant5eca1d5e1f95ba8f258dff66ddaf9f29f99c91b49ac6be61f2833500e88c309a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/CanonicalTensor/Variant5eca1d5e1f95ba8f258dff66ddaf9f29f99c91b49ac6be61f2833500e88c309a.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61863683f0ebaff975e8c9ea23a51b6a1f4dc15a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
