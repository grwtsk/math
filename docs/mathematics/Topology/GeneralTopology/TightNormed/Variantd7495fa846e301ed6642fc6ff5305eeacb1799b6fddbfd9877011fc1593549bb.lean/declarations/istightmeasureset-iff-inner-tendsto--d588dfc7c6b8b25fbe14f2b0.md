# isTightMeasureSet_iff_inner_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6416fe90-7ac3-7686-3e2a-aad4f31f5f98",
  "kind": "lemma",
  "lexical_name": "isTightMeasureSet_iff_inner_tendsto",
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
  "slug": "istightmeasureset-iff-inner-tendsto--d588dfc7c6b8b25fbe14f2b0",
  "source": {
    "blob": "00bb98a6312309c2ac1f7a1558672b77199a7dcc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 146,
    "path": "GRWTSK/Topology/GeneralTopology/TightNormed/Variantd7495fa846e301ed6642fc6ff5305eeacb1799b6fddbfd9877011fc1593549bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d588dfc7c6b8b25fbe14f2b0ad5d01ba20db3b2c8a67832656918f6adda2f052",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TightNormed/Variantd7495fa846e301ed6642fc6ff5305eeacb1799b6fddbfd9877011fc1593549bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6416fe90-7ac3-7686-3e2a-aad4f31f5f98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isTightMeasureSet_iff_inner_tendsto :
    IsTightMeasureSet S
      ↔ ∀ y, Tendsto (fun r : ℝ ↦ ⨆ μ ∈ S, μ {x | r < ‖⟪y, x⟫_𝕜‖}) atTop (𝓝 0) := by
  refine ⟨fun h y ↦ ?_, isTightMeasureSet_of_inner_tendsto⟩
  have : ProperSpace E := FiniteDimensional.proper 𝕜 E
  rw [isTightMeasureSet_iff_tendsto_measure_norm_gt] at h
  by_cases hy : y = 0
  · simp only [hy, inner_zero_left, abs_zero]
    refine (tendsto_congr' ?_).mpr tendsto_const_nhds
    filter_upwards [eventually_ge_atTop 0] with r hr
    simp [not_lt.mpr hr]
  have h' : Tendsto (fun r ↦ ⨆ μ ∈ S, μ {x | r * ‖y‖⁻¹ < ‖x‖}) atTop (𝓝 0) :=
    h.comp <| (tendsto_mul_const_atTop_of_pos (by positivity)).mpr tendsto_id
  refine tendsto_of_tendsto_of_tendsto_of_le_of_le tendsto_const_nhds h' (fun _ ↦ zero_le') ?_
  intro r
  have h_le (μ : Measure E) : μ {x | r < ‖⟪y, x⟫_𝕜‖} ≤ μ {x | r * ‖y‖⁻¹ < ‖x‖} := by
    refine measure_mono fun x hx ↦ ?_
    simp only [Set.mem_setOf_eq] at hx ⊢
    rw [mul_inv_lt_iff₀]
    · rw [mul_comm]
      exact hx.trans_le (norm_inner_le_norm y x)
    · positivity
  refine iSup₂_le_iff.mpr fun μ hμS ↦ ?_
  exact le_iSup_of_le (i := μ) <| by simp [hμS, h_le]

end InnerProductSpace

end NormedAddCommGroup

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TightNormed/Variantd7495fa846e301ed6642fc6ff5305eeacb1799b6fddbfd9877011fc1593549bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TightNormed/Variantd7495fa846e301ed6642fc6ff5305eeacb1799b6fddbfd9877011fc1593549bb.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00bb98a6312309c2ac1f7a1558672b77199a7dcc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
