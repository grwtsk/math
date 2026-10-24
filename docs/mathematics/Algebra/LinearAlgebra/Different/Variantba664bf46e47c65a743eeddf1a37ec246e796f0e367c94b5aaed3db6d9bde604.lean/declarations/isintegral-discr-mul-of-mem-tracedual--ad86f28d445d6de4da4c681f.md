# isIntegral_discr_mul_of_mem_traceDual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3ec12de3aaa151a4eb2b414e8e2373dfd9b75e57",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 170,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ba/ba664bf46e47c65a743eeddf1a37ec246e796f0e367c94b5aaed3db6d9bde604.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:48a39055-3201-5c95-cb2d-ca1d9f4a3a22",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c235755d-de4a-8518-c8db-f03c26219db1",
  "kind": "lemma",
  "lexical_name": "isIntegral_discr_mul_of_mem_traceDual",
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
  "slug": "isintegral-discr-mul-of-mem-tracedual--ad86f28d445d6de4da4c681f",
  "source": {
    "blob": "3ec12de3aaa151a4eb2b414e8e2373dfd9b75e57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 170,
    "path": "GRWTSK/Algebra/LinearAlgebra/Different/Variantba664bf46e47c65a743eeddf1a37ec246e796f0e367c94b5aaed3db6d9bde604.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad86f28d445d6de4da4c681f2a195afe2f10f0215c75848519b147ca1c93db3d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Different/Variantba664bf46e47c65a743eeddf1a37ec246e796f0e367c94b5aaed3db6d9bde604.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c235755d-de4a-8518-c8db-f03c26219db1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isIntegral_discr_mul_of_mem_traceDual
    (I : Submodule B L) {ι} [DecidableEq ι] [Fintype ι]
    {b : Basis ι K L} (hb : ∀ i, IsIntegral A (b i))
    {a x : L} (ha : a ∈ I) (hx : x ∈ Iᵛ) :
    IsIntegral A ((discr K b) • a * x) := by
  have hinv : IsUnit (traceMatrix K b).det := by
    simpa [← discr_def] using discr_isUnit_of_basis _ b
  have H := mulVec_cramer (traceMatrix K b) fun i => trace K L (x * a * b i)
  have : Function.Injective (traceMatrix K b).mulVec := by
    rwa [mulVec_injective_iff_isUnit, isUnit_iff_isUnit_det]
  rw [← traceMatrix_of_basis_mulVec, ← mulVec_smul, this.eq_iff,
    traceMatrix_of_basis_mulVec] at H
  rw [← b.equivFun.symm_apply_apply (_ * _), b.equivFun_symm_apply]
  apply IsIntegral.sum
  intro i _
  rw [smul_mul_assoc, b.equivFun.map_smul, discr_def, mul_comm, ← H, Algebra.smul_def]
  refine RingHom.IsIntegralElem.mul _ ?_ (hb _)
  apply IsIntegral.algebraMap
  rw [cramer_apply]
  apply IsIntegral.det
  intros j k
  rw [updateCol_apply]
  split
  · rw [mul_assoc]
    rw [mem_traceDual_iff_isIntegral] at hx
    apply hx
    have ⟨y, hy⟩ := (IsIntegralClosure.isIntegral_iff (A := B)).mp (hb j)
    rw [mul_comm, ← hy, ← Algebra.smul_def]
    exact I.smul_mem _ (ha)
  · exact isIntegral_trace (RingHom.IsIntegralElem.mul _ (hb j) (hb k))

variable (A K)

variable [IsDomain A] [IsFractionRing B L] [Nontrivial B] [NoZeroDivisors B]

namespace FractionalIdeal

open scoped Classical in
/-- The dual of a non-zero fractional ideal is the dual of the submodule under the traceform. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Different/Variantba664bf46e47c65a743eeddf1a37ec246e796f0e367c94b5aaed3db6d9bde604.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Different/Variantba664bf46e47c65a743eeddf1a37ec246e796f0e367c94b5aaed3db6d9bde604.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ec12de3aaa151a4eb2b414e8e2373dfd9b75e57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
