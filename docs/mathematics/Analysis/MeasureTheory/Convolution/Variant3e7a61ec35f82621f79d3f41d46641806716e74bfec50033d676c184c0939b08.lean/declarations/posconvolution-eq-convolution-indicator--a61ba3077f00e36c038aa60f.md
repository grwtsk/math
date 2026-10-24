# posConvolution_eq_convolution_indicator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1ee6b93fa3151fc64ec813bc11d12698d80eac3c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1534,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3e/3e7a61ec35f82621f79d3f41d46641806716e74bfec50033d676c184c0939b08.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3a735fb8-fefa-1938-896e-587191a51d9e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c4e39e06-8b57-4dd3-5a5c-85841466f6b4",
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
  "slug": "posconvolution-eq-convolution-indicator--a61ba3077f00e36c038aa60f",
  "source": {
    "blob": "1ee6b93fa3151fc64ec813bc11d12698d80eac3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1581,
    "line": 1534,
    "path": "GRWTSK/Analysis/MeasureTheory/Convolution/Variant3e7a61ec35f82621f79d3f41d46641806716e74bfec50033d676c184c0939b08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a61ba3077f00e36c038aa60fda1c07a2cfc094985b3a9e434ecab039212e5256",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Convolution/Variant3e7a61ec35f82621f79d3f41d46641806716e74bfec50033d676c184c0939b08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4e39e06-8b57-4dd3-5a5c-85841466f6b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1534–1581.

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

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Convolution/Variant3e7a61ec35f82621f79d3f41d46641806716e74bfec50033d676c184c0939b08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Convolution/Variant3e7a61ec35f82621f79d3f41d46641806716e74bfec50033d676c184c0939b08.lean#L1534).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ee6b93fa3151fc64ec813bc11d12698d80eac3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
