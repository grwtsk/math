# exist_eLpNorm_sub_le_of_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "20848e62bcf7f06b80ee78461af3d1b7366ba77d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 39,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b7/b7cb39d5a8ac7287cfe6b7b3f9763978f80ca606269a19529f272c25f9d5c68e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aa050d35-0596-bf4f-a212-7d1867200b0f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aba9e3a2-995d-2a0b-be27-475214dab2e1",
  "kind": "theorem",
  "lexical_name": "exist_eLpNorm_sub_le_of_continuous",
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
  "slug": "exist-elpnorm-sub-le-of-continuous--387085ec8a5b3596367d415f",
  "source": {
    "blob": "20848e62bcf7f06b80ee78461af3d1b7366ba77d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 39,
    "path": "GRWTSK/Analysis/MeasureTheory/SmoothApprox/Variantb7cb39d5a8ac7287cfe6b7b3f9763978f80ca606269a19529f272c25f9d5c68e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:387085ec8a5b3596367d415f7ff22dd8de55b1c14ccbd400a8d437c8f8d5fd10",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SmoothApprox/Variantb7cb39d5a8ac7287cfe6b7b3f9763978f80ca606269a19529f272c25f9d5c68e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aba9e3a2-995d-2a0b-be27-475214dab2e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exist_eLpNorm_sub_le_of_continuous (μ : Measure E := by volume_tac)
    [IsFiniteMeasureOnCompacts μ] {p : ℝ≥0∞} {ε : ℝ} (hε : 0 < ε) {f : E → F}
    (h₁ : HasCompactSupport f) (h₂ : Continuous f) :
    ∃ (g : E → F), HasCompactSupport g ∧ ContDiff ℝ ∞ g ∧
    eLpNorm (f - g) p μ ≤ ENNReal.ofReal ε := by
  rcases eq_or_ne p ∞ with rfl | hp
  · obtain ⟨g, hg₁, hg₂, hg₃⟩ := h₂.exists_contDiff_approx ⊤ (ε := fun _ ↦ ε) (by fun_prop)
      (by intro; positivity)
    refine ⟨g, h₁.mono hg₃, hg₁, ?_⟩
    rw [eLpNorm_exponent_top (h₂.sub hg₁.continuous).aestronglyMeasurable]
    refine eLpNormEssSup_le_of_ae_bound (.of_forall fun x ↦ ?_)
    simpa [← dist_eq_norm_sub'] using (hg₂ x).le
  by_cases hf : f =ᵐ[μ] 0
  -- We will need that the support is non-empty, so we treat the trivial case `f = 0` first.
  · use 0
    refine ⟨HasCompactSupport.zero, contDiff_const, ?_⟩
    rw [eLpNorm_congr_ae (by simpa using hf)]
    simp
  have hs₁ : μ (tsupport f) ≠ ⊤ := h₁.measure_lt_top.ne
  have hs₂ : 0 < (μ <| tsupport f).toReal := by
    -- Since `f` is not the zero function `tsupport f` has positive measure
    rw [← Measure.measure_support_eq_zero_iff _] at hf
    exact toReal_pos (pos_mono (subset_tsupport f) (pos_of_ne_zero hf)).ne' hs₁
  set ε' := ε * (μ <| tsupport f).toReal ^ (-(1 / p.toReal)) with ε'_def
  have hε' : 0 < ε' := by positivity
  have hε₂ : ENNReal.ofReal ε' * μ (tsupport f) ^ (1 / p.toReal) ≤ ENNReal.ofReal ε := by
    rw [← ofReal_toReal hs₁, ofReal_rpow_of_pos hs₂, ← ofReal_mul hε'.le,
      ofReal_le_ofReal_iff hε.le, ε'_def, mul_assoc, ← Real.rpow_add hs₂, neg_add_cancel,
      Real.rpow_zero, mul_one]
  obtain ⟨g, hg₁, hg₂, hg₃⟩ := h₂.exists_contDiff_approx ⊤ (ε := fun _ ↦ ε') (by fun_prop)
    (by intro; positivity)
  refine ⟨g, h₁.mono hg₃, hg₁, (eLpNorm_sub_le_of_dist_bdd μ hp
    h₁.measurableSet.nullMeasurableSet hε'.le (h₂.sub hg₁.continuous).aestronglyMeasurable ?_
    (subset_tsupport f) (hg₃.trans (subset_tsupport f))).trans hε₂⟩
  intro x
  rw [dist_comm]
  exact (hg₂ x).le

end HasCompactSupport

namespace MeasureTheory.MemLp

variable [NormedAddCommGroup E] [NormedSpace ℝ E] [FiniteDimensional ℝ E] [BorelSpace E]
  [NormedSpace ℝ F]
  {μ : Measure E} [IsFiniteMeasureOnCompacts μ]

/-- Every `Lp` function can be approximated by a smooth compactly supported function provided that
`p < ∞`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SmoothApprox/Variantb7cb39d5a8ac7287cfe6b7b3f9763978f80ca606269a19529f272c25f9d5c68e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SmoothApprox/Variantb7cb39d5a8ac7287cfe6b7b3f9763978f80ca606269a19529f272c25f9d5c68e.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20848e62bcf7f06b80ee78461af3d1b7366ba77d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
