# InnerProductSpace.canonicalCovariantTensor_eq_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6c3197f1-2a0f-46cf-cd0b-78626bf96fc5",
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
  "slug": "innerproductspace-canonicalcovarianttensor-eq-sum--cd29ed642e14f910bc8077b0",
  "source": {
    "blob": "fb5a014a4bb9a2f8170b91626ba2b5d9cf5e4035",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 50,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/CanonicalTensor/Variant894ddc7d69b11ca3ad5671e653a475c39cc7386c1985cbacc4c43078c27f1ddd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd29ed642e14f910bc8077b0542f3af07d698823e12116f86775ff811020bbfd",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/CanonicalTensor/Variant894ddc7d69b11ca3ad5671e653a475c39cc7386c1985cbacc4c43078c27f1ddd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c3197f1-2a0f-46cf-cd0b-78626bf96fc5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–70.

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

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/CanonicalTensor/Variant894ddc7d69b11ca3ad5671e653a475c39cc7386c1985cbacc4c43078c27f1ddd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/CanonicalTensor/Variant894ddc7d69b11ca3ad5671e653a475c39cc7386c1985cbacc4c43078c27f1ddd.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb5a014a4bb9a2f8170b91626ba2b5d9cf5e4035` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
