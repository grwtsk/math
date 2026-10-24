# measure_limsup_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4fab6bba9ce51e70d4f4a7befc213819a090de7c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 72,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/03/033046517cdc893d6c849aa77f04b039e9e12cabc83eb46cfb8130cc5f6020ea.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c2aa0fc8-2600-e0a7-81de-5e75b7b7c3f1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3b8c6495-7fc5-a2fb-64e8-92b793f74c59",
  "kind": "theorem",
  "lexical_name": "measure_limsup_eq_one",
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
  "slug": "measure-limsup-eq-one--2f285b793add88404d7c1669",
  "source": {
    "blob": "4fab6bba9ce51e70d4f4a7befc213819a090de7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 72,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BorelCantelli/Variant033046517cdc893d6c849aa77f04b039e9e12cabc83eb46cfb8130cc5f6020ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f285b793add88404d7c1669d149285be5fe9ad6704dcf5a70628b06d61fb802",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BorelCantelli/Variant033046517cdc893d6c849aa77f04b039e9e12cabc83eb46cfb8130cc5f6020ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b8c6495-7fc5-a2fb-64e8-92b793f74c59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_limsup_eq_one {s : ℕ → Set Ω} (hsm : ∀ n, MeasurableSet (s n)) (hs : iIndepSet s μ)
    (hs' : (∑' n, μ (s n)) = ∞) : μ (limsup s atTop) = 1 := by
  have : IsProbabilityMeasure μ := hs.isProbabilityMeasure
  rw [measure_congr (eventuallyEq_set.2 (ae_mem_limsup_atTop_iff μ <|
    measurableSet_filtrationOfSet' hsm) : (limsup s atTop : Set Ω) =ᵐ[μ]
      {ω | Tendsto (fun n => ∑ k ∈ Finset.range n,
        (μ[(s (k + 1)).indicator (1 : Ω → ℝ)|filtrationOfSet hsm k]) ω) atTop atTop})]
  suffices {ω | Tendsto (fun n => ∑ k ∈ Finset.range n,
      (μ[(s (k + 1)).indicator (1 : Ω → ℝ)|filtrationOfSet hsm k]) ω) atTop atTop} =ᵐ[μ] Set.univ by
    rw [measure_congr this, measure_univ]
  have : ∀ᵐ ω ∂μ, ∀ n, (μ[(s (n + 1)).indicator (1 : Ω → ℝ)|filtrationOfSet hsm n]) ω = _ :=
    ae_all_iff.2 fun n => hs.condExp_indicator_filtrationOfSet_ae_eq hsm n.lt_succ_self
  filter_upwards [this] with ω hω
  refine eq_true (?_ : Tendsto _ _ _)
  simp_rw [hω]
  have htends : Tendsto (fun n => ∑ k ∈ Finset.range n, μ (s (k + 1))) atTop (𝓝 ∞) := by
    rw [← ENNReal.tsum_add_one_eq_top hs' (measure_ne_top _ _)]
    exact ENNReal.tendsto_nat_tsum _
  rw [ENNReal.tendsto_nhds_top_iff_nnreal] at htends
  refine tendsto_atTop_atTop_of_monotone' ?_ ?_
  · refine monotone_nat_of_le_succ fun n => ?_
    rw [← sub_nonneg, Finset.sum_range_succ_sub_sum]
    exact ENNReal.toReal_nonneg
  · rintro ⟨B, hB⟩
    refine not_eventually.2 (Frequently.of_forall fun n => ?_) (htends B.toNNReal)
    rw [mem_upperBounds] at hB
    specialize hB (∑ k ∈ Finset.range n, μ (s (k + 1))).toReal _
    · refine ⟨n, ?_⟩
      rw [ENNReal.toReal_sum (by finiteness)]
      rfl
    · rwa [not_lt, ENNReal.ofNNReal_toNNReal, ENNReal.le_ofReal_iff_toReal_le]
      · simp
      · exact le_trans (by positivity) hB

end BorelCantelli

end ProbabilityTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BorelCantelli/Variant033046517cdc893d6c849aa77f04b039e9e12cabc83eb46cfb8130cc5f6020ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BorelCantelli/Variant033046517cdc893d6c849aa77f04b039e9e12cabc83eb46cfb8130cc5f6020ea.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4fab6bba9ce51e70d4f4a7befc213819a090de7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
