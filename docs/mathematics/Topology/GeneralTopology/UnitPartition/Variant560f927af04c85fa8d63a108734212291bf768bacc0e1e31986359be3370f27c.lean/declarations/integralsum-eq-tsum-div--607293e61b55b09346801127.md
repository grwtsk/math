# integralSum_eq_tsum_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e1f40f740a00f169e051af4accc3a0fd54d6230a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 348,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/56/560f927af04c85fa8d63a108734212291bf768bacc0e1e31986359be3370f27c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:deeaa717-0162-3273-9a2a-ac8dacb663a0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6918aa55-5905-21a2-7738-9069f54a506f",
  "kind": "theorem",
  "lexical_name": "integralSum_eq_tsum_div",
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
  "slug": "integralsum-eq-tsum-div--607293e61b55b09346801127",
  "source": {
    "blob": "e1f40f740a00f169e051af4accc3a0fd54d6230a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 384,
    "line": 348,
    "path": "GRWTSK/Topology/GeneralTopology/UnitPartition/Variant560f927af04c85fa8d63a108734212291bf768bacc0e1e31986359be3370f27c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:607293e61b55b0934680112768546819fc7708e502eb6958f21f25012d9d0569",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UnitPartition/Variant560f927af04c85fa8d63a108734212291bf768bacc0e1e31986359be3370f27c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6918aa55-5905-21a2-7738-9069f54a506f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 348–384.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integralSum_eq_tsum_div {B : Box ι} (hB : hasIntegralVertices B) (hs₀ : s ≤ B) :
    integralSum (Set.indicator s F) (BoxAdditiveMap.toSMul (Measure.toBoxAdditive volume))
      (prepartition n B) = (∑' x : ↑(s ∩ (n : ℝ)⁻¹ • L), F x) / n ^ card ι := by
  classical
  unfold integralSum
  have : Fintype ↑(s ∩ (n : ℝ)⁻¹ • L) := by
    apply Set.Finite.fintype
    rw [← coe_pointwise_smul, ZSpan.smul _ (inv_ne_zero (NeZero.ne _))]
    exact ZSpan.setFinite_inter _ (B.isBounded.subset hs₀)
  rw [tsum_fintype, Finset.sum_set_coe, Finset.sum_div, eq_comm]
  simp_rw [Set.indicator_apply, apply_ite, BoxAdditiveMap.toSMul_apply, Measure.toBoxAdditive_apply,
    smul_eq_mul, mul_zero, Finset.sum_ite, Finset.sum_const_zero, add_zero]
  refine Finset.sum_bij (fun x _ ↦ box n (index n x)) (fun _ hx ↦ Finset.mem_filter.mpr ?_)
    (fun _ hx _ hy h ↦ ?_) (fun I hI ↦ ?_) (fun _ hx ↦ ?_)
  · rw [Set.mem_toFinset] at hx
    refine ⟨mem_prepartition_boxes_iff.mpr
      ⟨index n _, mem_admissibleIndex_of_mem_box n hB (hs₀ hx.1), rfl⟩, ?_⟩
    simp_rw [prepartition_tag n (mem_admissibleIndex_of_mem_box n hB (hs₀ hx.1)),
      tag_index_eq_self_of_mem_smul_span n hx.2, hx.1]
  · rw [Set.mem_toFinset] at hx hy
    exact eq_of_mem_smul_span_of_index_eq_index n hx.2 hy.2 (box_injective n h)
  · rw [Finset.mem_filter] at hI
    refine ⟨(prepartition n B).tag I, Set.mem_toFinset.mpr ⟨hI.2, ?_⟩, box_index_tag_eq_self n hI.1⟩
    rw [← box_index_tag_eq_self n hI.1, prepartition_tag n
      (mem_admissibleIndex_of_mem_box n hB (hs₀ hI.2))]
    exact tag_mem_smul_span _ _
  · rw [Set.mem_toFinset] at hx
    rw [measureReal_def, volume_box,
      prepartition_tag n (mem_admissibleIndex_of_mem_box n hB (hs₀ hx.1)),
      tag_index_eq_self_of_mem_smul_span n hx.2, ENNReal.toReal_div,
      ENNReal.toReal_one, ENNReal.toReal_pow, ENNReal.toReal_natCast, mul_comm_div, one_mul]

open Filter

/-- Let `s` be a bounded, measurable set of `ι → ℝ` whose frontier has zero volume and let `F`
be a continuous function. Then the limit as `n → ∞` of `∑ F x / n ^ card ι`, where the sum is
over the points in `s ∩ n⁻¹ • (ι → ℤ)`, tends to the integral of `F` over `s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UnitPartition/Variant560f927af04c85fa8d63a108734212291bf768bacc0e1e31986359be3370f27c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UnitPartition/Variant560f927af04c85fa8d63a108734212291bf768bacc0e1e31986359be3370f27c.lean#L348).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1f40f740a00f169e051af4accc3a0fd54d6230a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
