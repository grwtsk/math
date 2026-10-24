# IsLocalRing.linearIndependent_of_flat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c16cfcda1bbace1e4924272bc680d111823a2467",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 249,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/18/1803213ce7adc5da9d0683af915ef7040a7658dc142f478f5d90a6ce82efc110.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:51864efb-4f1a-72f2-c8ac-e08f6b98df78",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:32cbbef5-161f-98d2-ab6b-201d3c1a7099",
  "kind": "theorem",
  "lexical_name": "IsLocalRing.linearIndependent_of_flat",
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
  "slug": "islocalring-linearindependent-of-flat--7dbf83bf4661c03122029b3b",
  "source": {
    "blob": "c16cfcda1bbace1e4924272bc680d111823a2467",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 249,
    "path": "GRWTSK/Algebra/LinearAlgebra/Module/Variant1803213ce7adc5da9d0683af915ef7040a7658dc142f478f5d90a6ce82efc110.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7dbf83bf4661c03122029b3b4a700b15e46900ce4714e1e81a477f5c4e6747ae",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Module/Variant1803213ce7adc5da9d0683af915ef7040a7658dc142f478f5d90a6ce82efc110.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32cbbef5-161f-98d2-ab6b-201d3c1a7099`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 249–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsLocalRing.linearIndependent_of_flat [Flat R M] {ι : Type u} (v : ι → M)
    (h : LinearIndependent k (TensorProduct.mk R k M 1 ∘ v)) : LinearIndependent R v := by
  rw [linearIndependent_iff']; intro s f hfv
  classical
  induction' s using Finset.induction with n s hn ih generalizing v <;> intro i hi
  · exact (Finset.notMem_empty _ hi).elim
  rw [← Finset.sum_coe_sort] at hfv
  have ⟨l, a, y, hay, hfa⟩ := Flat.isTrivialRelation_of_sum_smul_eq_zero hfv
  have : v n ∉ 𝔪 • (⊤ : Submodule R M) := by
    simpa only [← LinearMap.ker_tensorProductMk] using h.ne_zero n
  set n : ↥(insert n s) := ⟨n, Finset.mem_insert_self ..⟩ with n_def
  obtain ⟨j, hj⟩ : ∃ j, IsUnit (a n j) := by
    contrapose! this
    rw [show v n = _ from hay n]
    exact sum_mem fun _ _ ↦ Submodule.smul_mem_smul (this _) ⟨⟩
  let a' (i : ι) : R := if hi : _ then a ⟨i, hi⟩ j else 0
  have a_eq i : a i j = a' i.1 := by simp_rw [a', dif_pos i.2]
  have hfn : f n = -(∑ i ∈ s, f i * a' i) * hj.unit⁻¹ := by
    rw [← hj.mul_left_inj, mul_assoc, hj.val_inv_mul, mul_one, eq_neg_iff_add_eq_zero]
    convert hfa j
    simp_rw [a_eq, Finset.sum_coe_sort _ (fun i ↦ f i * a' i), s.sum_insert hn, n_def]
  let c (i : ι) : R := -(if i = n then 0 else a' i) * hj.unit⁻¹
  specialize ih (v + (c · • v n)) ?_ ?_
  · convert (linearIndependent_add_smul_iff (c := Ideal.Quotient.mk _ ∘ c) (i := n.1) ?_).mpr h
    · ext; simp [tmul_add]; rfl
    simp_rw [Function.comp_def, c, if_pos, neg_zero, zero_mul, map_zero]
  · rw [Finset.sum_coe_sort _ (fun i ↦ f i • v i), s.sum_insert hn, add_comm, hfn] at hfv
    simp_rw [Pi.add_apply, smul_add, s.sum_add_distrib, c, smul_smul, ← s.sum_smul, ← mul_assoc,
      ← s.sum_mul, mul_neg, s.sum_neg_distrib, ← hfv]
    congr 4
    exact s.sum_congr rfl fun i hi ↦ by rw [if_neg (ne_of_mem_of_not_mem hi hn)]
  obtain hi | hi := Finset.mem_insert.mp hi
  · rw [hi, hfn, Finset.sum_eq_zero, neg_zero, zero_mul]
    intro i hi; rw [ih i hi, zero_mul]
  · exact ih i hi

@[stacks 00NZ]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Module/Variant1803213ce7adc5da9d0683af915ef7040a7658dc142f478f5d90a6ce82efc110.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Module/Variant1803213ce7adc5da9d0683af915ef7040a7658dc142f478f5d90a6ce82efc110.lean#L249).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c16cfcda1bbace1e4924272bc680d111823a2467` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
