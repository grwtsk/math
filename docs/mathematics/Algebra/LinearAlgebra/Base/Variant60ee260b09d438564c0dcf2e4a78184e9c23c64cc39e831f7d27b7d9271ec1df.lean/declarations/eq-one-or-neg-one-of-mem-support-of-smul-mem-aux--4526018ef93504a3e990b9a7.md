# eq_one_or_neg_one_of_mem_support_of_smul_mem_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "97912283e44039cc02270c1f667fb87fc2b9d50b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 126,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/60/60ee260b09d438564c0dcf2e4a78184e9c23c64cc39e831f7d27b7d9271ec1df.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f90aba62-bdbb-8afb-42f4-320ee5072fd1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7feaf215-705f-78bd-cf0a-88e43346f74b",
  "kind": "lemma",
  "lexical_name": "eq_one_or_neg_one_of_mem_support_of_smul_mem_aux",
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
  "slug": "eq-one-or-neg-one-of-mem-support-of-smul-mem-aux--4526018ef93504a3e990b9a7",
  "source": {
    "blob": "97912283e44039cc02270c1f667fb87fc2b9d50b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 126,
    "path": "GRWTSK/Algebra/LinearAlgebra/Base/Variant60ee260b09d438564c0dcf2e4a78184e9c23c64cc39e831f7d27b7d9271ec1df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4526018ef93504a3e990b9a780603b88c40ab1fd20f1d54edf7dbf09eb34d5fc",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Base/Variant60ee260b09d438564c0dcf2e4a78184e9c23c64cc39e831f7d27b7d9271ec1df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7feaf215-705f-78bd-cf0a-88e43346f74b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eq_one_or_neg_one_of_mem_support_of_smul_mem_aux [Finite ι]
    [NoZeroSMulDivisors ℤ M] [NoZeroSMulDivisors ℤ N]
    (i : ι) (h : i ∈ b.support) (t : R) (ht : t • P.root i ∈ range P.root) :
    ∃ z : ℤ, z * t = 1 := by
  classical
  have : Fintype ι := Fintype.ofFinite ι
  obtain ⟨j, hj⟩ := ht
  obtain ⟨f, hf⟩ : ∃ f : b.support → ℤ, P.coroot i = ∑ i, (t * f i) • P.coroot i := by
    have : P.coroot j ∈ span ℤ (P.coroot '' b.support) := b.coroot_mem_span_int j
    rw [image_eq_range, mem_span_range_iff_exists_fun] at this
    refine this.imp fun f hf ↦ ?_
    simp_rw [mul_smul, ← Finset.smul_sum, Int.cast_smul_eq_zsmul, hf,
      coroot_eq_smul_coroot_iff.mpr hj]
  use f ⟨i, h⟩
  replace hf : P.coroot i = linearCombination R (fun k : b.support ↦ P.coroot k)
      (t • (linearEquivFunOnFinite R _ _).symm (fun x ↦ (f x : R))) := by
    rw [map_smul, linearCombination_eq_fintype_linearCombination_apply,
      Fintype.linearCombination_apply, hf]
    simp_rw [mul_smul, ← Finset.smul_sum]
  let g : b.support →₀ R := single ⟨i, h⟩ 1
  have hg : P.coroot i = linearCombination R (fun k : b.support ↦ P.coroot k) g := by simp [g]
  rw [hg] at hf
  have : Injective (linearCombination R fun k : b.support ↦ P.coroot k) := b.linearIndepOn_coroot
  simpa [g, linearEquivFunOnFinite, mul_comm t] using (DFunLike.congr_fun (this hf) ⟨i, h⟩).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Base/Variant60ee260b09d438564c0dcf2e4a78184e9c23c64cc39e831f7d27b7d9271ec1df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Base/Variant60ee260b09d438564c0dcf2e4a78184e9c23c64cc39e831f7d27b7d9271ec1df.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97912283e44039cc02270c1f667fb87fc2b9d50b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
