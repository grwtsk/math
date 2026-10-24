# measure_limsup_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d405e580-e21e-2c30-b87a-f5deb85414a7",
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
  "slug": "measure-limsup-eq-one--317f12b63d53b63e08a0bdfa",
  "source": {
    "blob": "49659ab170c2664f7e372018be0badfc792e4663",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 77,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BorelCantelli/Variant5f36df5a3721e7fb52e4b0ba7c4677c66d58a296ba3d45ab0f7eafcbf8ecac27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:317f12b63d53b63e08a0bdfa59b7eedfed6bd36dc5c501d6fdce867049e8e069",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BorelCantelli/Variant5f36df5a3721e7fb52e4b0ba7c4677c66d58a296ba3d45ab0f7eafcbf8ecac27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d405e580-e21e-2c30-b87a-f5deb85414a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_limsup_eq_one {s : ℕ → Set Ω} (hsm : ∀ n, MeasurableSet (s n)) (hs : iIndepSet s μ)
    (hs' : (∑' n, μ (s n)) = ∞) : μ (limsup s atTop) = 1 := by
  have : IsProbabilityMeasure μ := hs.isProbabilityMeasure
  rw [measure_congr (eventuallyEqSet_iff.2 (ae_mem_limsup_atTop_iff μ <|
    measurableSet_filtrationOfSet' hsm) : limsup s atTop =ᵐ[μ]
      {ω | Tendsto (fun n => ∑ k ∈ Finset.range n,
        (μ[(s (k + 1)).indicator (1 : Ω → ℝ)|filtrationOfSet hsm k]) ω) atTop atTop})]
  suffices {ω | Tendsto (fun n => ∑ k ∈ Finset.range n,
      (μ[(s (k + 1)).indicator (1 : Ω → ℝ)|filtrationOfSet hsm k]) ω) atTop atTop} =ᵐ[μ] Set.univ by
    rw [measure_congr this, measure_univ]
  have : ∀ᵐ ω ∂μ, ∀ n, (μ[(s (n + 1)).indicator (1 : Ω → ℝ) | filtrationOfSet hsm n]) ω = _ :=
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

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BorelCantelli/Variant5f36df5a3721e7fb52e4b0ba7c4677c66d58a296ba3d45ab0f7eafcbf8ecac27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BorelCantelli/Variant5f36df5a3721e7fb52e4b0ba7c4677c66d58a296ba3d45ab0f7eafcbf8ecac27.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49659ab170c2664f7e372018be0badfc792e4663` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
