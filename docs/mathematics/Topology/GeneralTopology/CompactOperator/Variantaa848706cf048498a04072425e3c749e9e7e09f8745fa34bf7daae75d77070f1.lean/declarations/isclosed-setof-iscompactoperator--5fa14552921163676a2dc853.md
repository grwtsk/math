# isClosed_setOf_isCompactOperator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ad6f20323928ec80e6345c793fe419bff2da9f6c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 399,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/aa/aa848706cf048498a04072425e3c749e9e7e09f8745fa34bf7daae75d77070f1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:001702fb-454f-7ec1-3864-c21484b15552",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:53356053-28dd-4bbb-ddfb-600e688b9817",
  "kind": "theorem",
  "lexical_name": "isClosed_setOf_isCompactOperator",
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
  "slug": "isclosed-setof-iscompactoperator--5fa14552921163676a2dc853",
  "source": {
    "blob": "ad6f20323928ec80e6345c793fe419bff2da9f6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 435,
    "line": 399,
    "path": "GRWTSK/Topology/GeneralTopology/CompactOperator/Variantaa848706cf048498a04072425e3c749e9e7e09f8745fa34bf7daae75d77070f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5fa14552921163676a2dc8533c784de2451d9dfcdf3885b033c350591b989b56",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompactOperator/Variantaa848706cf048498a04072425e3c749e9e7e09f8745fa34bf7daae75d77070f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53356053-28dd-4bbb-ddfb-600e688b9817`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 399–435.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isClosed_setOf_isCompactOperator {𝕜₁ 𝕜₂ : Type*} [NontriviallyNormedField 𝕜₁]
    [NormedField 𝕜₂] {σ₁₂ : 𝕜₁ →+* 𝕜₂} {M₁ M₂ : Type*} [SeminormedAddCommGroup M₁]
    [AddCommGroup M₂] [NormedSpace 𝕜₁ M₁] [Module 𝕜₂ M₂] [UniformSpace M₂] [UniformAddGroup M₂]
    [ContinuousConstSMul 𝕜₂ M₂] [T2Space M₂] [CompleteSpace M₂] :
    IsClosed { f : M₁ →SL[σ₁₂] M₂ | IsCompactOperator f } := by
  refine' isClosed_of_closure_subset _
  rintro u hu
  rw [mem_closure_iff_nhds_zero] at hu
  suffices TotallyBounded (u '' Metric.closedBall 0 1) by
    change IsCompactOperator (u : M₁ →ₛₗ[σ₁₂] M₂)
    rw [isCompactOperator_iff_isCompact_closure_image_closedBall (u : M₁ →ₛₗ[σ₁₂] M₂) zero_lt_one]
    exact isCompact_of_totallyBounded_isClosed this.closure isClosed_closure
  rw [totallyBounded_iff_subset_finite_iUnion_nhds_zero]
  intro U hU
  rcases exists_nhds_zero_half hU with ⟨V, hV, hVU⟩
  let SV : Set M₁ × Set M₂ := ⟨closedBall 0 1, -V⟩
  rcases hu { f | ∀ x ∈ SV.1, f x ∈ SV.2 }
      (ContinuousLinearMap.hasBasis_nhds_zero.mem_of_mem
        ⟨NormedSpace.isVonNBounded_closedBall _ _ _, neg_mem_nhds_zero M₂ hV⟩) with
    ⟨v, hv, huv⟩
  rcases totallyBounded_iff_subset_finite_iUnion_nhds_zero.mp
      (hv.isCompact_closure_image_closedBall 1).totallyBounded V hV with
    ⟨T, hT, hTv⟩
  have hTv : v '' closedBall 0 1 ⊆ _ := subset_closure.trans hTv
  refine' ⟨T, hT, _⟩
  rw [image_subset_iff, preimage_iUnion₂] at hTv ⊢
  intro x hx
  specialize hTv hx
  rw [mem_iUnion₂] at hTv ⊢
  rcases hTv with ⟨t, ht, htx⟩
  refine' ⟨t, ht, _⟩
  rw [mem_preimage, mem_vadd_set_iff_neg_vadd_mem, vadd_eq_add, neg_add_eq_sub] at htx ⊢
  convert hVU _ htx _ (huv x hx) using 1
  rw [ContinuousLinearMap.sub_apply]
  abel
#align is_closed_set_of_is_compact_operator isClosed_setOf_isCompactOperator

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactOperator/Variantaa848706cf048498a04072425e3c749e9e7e09f8745fa34bf7daae75d77070f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactOperator/Variantaa848706cf048498a04072425e3c749e9e7e09f8745fa34bf7daae75d77070f1.lean#L399).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad6f20323928ec80e6345c793fe419bff2da9f6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
