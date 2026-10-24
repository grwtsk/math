# _root_.tendsto_tsum_div_pow_atTop_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "35313037decf6ef9b9d7127d1e9ffc27c67d14f5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 422,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6b/6b1e4e0e500ec8e14744c8b8c75560b872895caf1b0c2588af26afaa67f62f09.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f4961ec5-4ab1-5805-1e07-46ab63af525c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ee7fa023-d673-44b8-f3ae-148dd1b891c1",
  "kind": "theorem",
  "lexical_name": "_root_.tendsto_tsum_div_pow_atTop_integral",
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
  "slug": "root-tendsto-tsum-div-pow-attop-integral--f8dc11501e01fd7b7f0b6da8",
  "source": {
    "blob": "35313037decf6ef9b9d7127d1e9ffc27c67d14f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 457,
    "line": 422,
    "path": "GRWTSK/Topology/GeneralTopology/UnitPartition/Variant6b1e4e0e500ec8e14744c8b8c75560b872895caf1b0c2588af26afaa67f62f09.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8dc11501e01fd7b7f0b6da86d9a7f01f4b524599196feeefb57b672bd9a2afa",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UnitPartition/Variant6b1e4e0e500ec8e14744c8b8c75560b872895caf1b0c2588af26afaa67f62f09.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee7fa023-d673-44b8-f3ae-148dd1b891c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 422–457.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.tendsto_tsum_div_pow_atTop_integral (hF : Continuous F) (hs₁ : IsBounded s)
    (hs₂ : MeasurableSet s) (hs₃ : volume (frontier s) = 0) :
    Tendsto (fun n : ℕ ↦ (∑' x : ↑(s ∩ (n : ℝ)⁻¹ • L), F x) / n ^ card ι)
      atTop (nhds (∫ x in s, F x)) := by
  obtain ⟨B, hB, hs₀⟩ := le_hasIntegralVertices_of_isBounded hs₁
  refine Metric.tendsto_atTop.mpr fun ε hε ↦ ?_
  have h₁ : ∃ C, ∀ x ∈ Box.Icc B, ‖Set.indicator s F x‖ ≤ C := by
    obtain ⟨C₀, h₀⟩ := (Box.isCompact_Icc B).exists_bound_of_continuousOn hF.continuousOn
    refine ⟨max 0 C₀, fun x hx ↦ ?_⟩
    rw [Set.indicator]
    split_ifs with hs
    · exact le_max_of_le_right (h₀ x hx)
    · exact norm_zero.trans_le <| le_max_left 0 _
  have h₂ : ∀ᵐ x, ContinuousAt (s.indicator F) x := by
    filter_upwards [compl_mem_ae_iff.mpr hs₃] with _ h
      using (hF.continuousOn).continuousAt_indicator h
  obtain ⟨r, hr₁, hr₂⟩ := (hasIntegral_iff.mp <|
      AEContinuous.hasBoxIntegral (volume : Measure (ι → ℝ)) h₁ h₂
        IntegrationParams.Riemann) (ε / 2) (half_pos hε)
  refine ⟨⌈(r 0 0 : ℝ)⁻¹⌉₊, fun n hn ↦ lt_of_le_of_lt ?_ (half_lt_self_iff.mpr hε)⟩
  have : NeZero n :=
    ⟨Nat.ne_zero_iff_zero_lt.mpr <| (Nat.ceil_pos.mpr (inv_pos.mpr (r 0 0).prop)).trans_le hn⟩
  rw [← integralSum_eq_tsum_div _ s F hB hs₀, ← Measure.restrict_restrict_of_subset hs₀,
    ← integral_indicator hs₂]
  refine hr₂ 0 _ ⟨?_, fun _ ↦ ?_, fun h ↦ ?_, fun h ↦ ?_⟩ (prepartition_isPartition _ hB)
  · rw [show r 0 = fun _ ↦ r 0 0 from funext_iff.mpr (hr₁ 0 rfl)]
    apply prepartition_isSubordinate n B
    rw [one_div, inv_le_comm₀ (mod_cast (Nat.pos_of_neZero n)) (r 0 0).prop]
    exact le_trans (Nat.le_ceil _) (Nat.cast_le.mpr hn)
  · exact prepartition_isHenstock n B
  · simp only [IntegrationParams.Riemann, Bool.false_eq_true] at h
  · simp only [IntegrationParams.Riemann, Bool.false_eq_true] at h

/-- Let `s` be a bounded, measurable set of `ι → ℝ` whose frontier has zero volume. Then the limit
as `n → ∞` of `card (s ∩ n⁻¹ • (ι → ℤ)) / n ^ card ι` tends to the volume of `s`. This is a
special case of `tendsto_card_div_pow` with `F = 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UnitPartition/Variant6b1e4e0e500ec8e14744c8b8c75560b872895caf1b0c2588af26afaa67f62f09.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UnitPartition/Variant6b1e4e0e500ec8e14744c8b8c75560b872895caf1b0c2588af26afaa67f62f09.lean#L422).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35313037decf6ef9b9d7127d1e9ffc27c67d14f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
