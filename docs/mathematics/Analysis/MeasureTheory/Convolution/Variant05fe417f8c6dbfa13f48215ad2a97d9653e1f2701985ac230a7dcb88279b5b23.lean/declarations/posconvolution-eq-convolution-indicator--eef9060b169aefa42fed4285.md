# posConvolution_eq_convolution_indicator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a0916557-1b22-d67e-7337-5b84d5350a72",
  "kind": "theorem",
  "lexical_name": "posConvolution_eq_convolution_indicator",
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
  "slug": "posconvolution-eq-convolution-indicator--eef9060b169aefa42fed4285",
  "source": {
    "blob": "4a985c84eb8940462e2fb30431e25d9e19d34b38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1589,
    "line": 1542,
    "path": "GRWTSK/Analysis/MeasureTheory/Convolution/Variant05fe417f8c6dbfa13f48215ad2a97d9653e1f2701985ac230a7dcb88279b5b23.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eef9060b169aefa42fed42854e22908cb4cba29d9be7394e90d41c3fcb103d6e",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Convolution/Variant05fe417f8c6dbfa13f48215ad2a97d9653e1f2701985ac230a7dcb88279b5b23.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0916557-1b22-d67e-7337-5b84d5350a72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1542–1589.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem posConvolution_eq_convolution_indicator (f : ℝ → E) (g : ℝ → E') (L : E →L[ℝ] E' →L[ℝ] F)
    (ν : MeasureTheory.Measure ℝ := by volume_tac) [NoAtoms ν] :
    posConvolution f g L ν = convolution (indicator (Ioi 0) f) (indicator (Ioi 0) g) L ν := by
  ext1 x
  -- porting note: was `rw [convolution, posConvolution, indicator]`, now `rw` can't do it
  -- the `rw` unfolded only one `indicator`; now we unfold it everywhere, so we need to adjust
  -- `rw`s below
  unfold convolution posConvolution indicator; simp only
  split_ifs with h
  · rw [intervalIntegral.integral_of_le (le_of_lt h), integral_Ioc_eq_integral_Ioo, ←
      integral_indicator (measurableSet_Ioo : MeasurableSet (Ioo 0 x))]
    congr 1 with t : 1
    have : t ≤ 0 ∨ t ∈ Ioo 0 x ∨ x ≤ t := by
      rcases le_or_lt t 0 with (h | h)
      · exact Or.inl h
      · rcases lt_or_le t x with (h' | h')
        exacts [Or.inr (Or.inl ⟨h, h'⟩), Or.inr (Or.inr h')]
    rcases this with (ht | ht | ht)
    · -- Porting note: was
      -- rw [indicator_of_not_mem (not_mem_Ioo_of_le ht), indicator_of_not_mem (not_mem_Ioi.mpr ht),
      --   ContinuousLinearMap.map_zero, ContinuousLinearMap.zero_apply]
      rw [indicator_of_not_mem (not_mem_Ioo_of_le ht), if_neg (not_mem_Ioi.mpr ht),
        ContinuousLinearMap.map_zero, ContinuousLinearMap.zero_apply]
    · -- Porting note: was
      -- rw [indicator_of_mem ht, indicator_of_mem (mem_Ioi.mpr ht.1),
      --     indicator_of_mem (mem_Ioi.mpr <| sub_pos.mpr ht.2)]
      rw [indicator_of_mem ht, if_pos (mem_Ioi.mpr ht.1),
        if_pos (mem_Ioi.mpr <| sub_pos.mpr ht.2)]
    · -- Porting note: was
      -- rw [indicator_of_not_mem (not_mem_Ioo_of_ge ht),
      --     indicator_of_not_mem (not_mem_Ioi.mpr (sub_nonpos_of_le ht)),
      --     ContinuousLinearMap.map_zero]
      rw [indicator_of_not_mem (not_mem_Ioo_of_ge ht),
        if_neg (not_mem_Ioi.mpr (sub_nonpos_of_le ht)), ContinuousLinearMap.map_zero]
  · convert (integral_zero ℝ F).symm with t
    by_cases ht : 0 < t
    · -- Porting note: was
      -- rw [indicator_of_not_mem (_ : x - t ∉ Ioi 0), ContinuousLinearMap.map_zero]
      rw [if_neg (_ : x - t ∉ Ioi 0), ContinuousLinearMap.map_zero]
      rw [not_mem_Ioi] at h ⊢
      exact sub_nonpos.mpr (h.trans ht.le)
    · -- Porting note: was
      -- rw [indicator_of_not_mem (mem_Ioi.not.mpr ht), ContinuousLinearMap.map_zero,
      --  ContinuousLinearMap.zero_apply]
      rw [if_neg (mem_Ioi.not.mpr ht), ContinuousLinearMap.map_zero,
        ContinuousLinearMap.zero_apply]
#align pos_convolution_eq_convolution_indicator posConvolution_eq_convolution_indicator

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Convolution/Variant05fe417f8c6dbfa13f48215ad2a97d9653e1f2701985ac230a7dcb88279b5b23.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Convolution/Variant05fe417f8c6dbfa13f48215ad2a97d9653e1f2701985ac230a7dcb88279b5b23.lean#L1542).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a985c84eb8940462e2fb30431e25d9e19d34b38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
