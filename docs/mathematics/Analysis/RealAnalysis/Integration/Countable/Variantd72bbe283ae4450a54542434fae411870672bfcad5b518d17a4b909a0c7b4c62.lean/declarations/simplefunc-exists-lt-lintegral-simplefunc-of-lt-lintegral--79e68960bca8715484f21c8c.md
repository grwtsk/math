# SimpleFunc.exists_lt_lintegral_simpleFunc_of_lt_lintegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1519b055d08db8b5eb81d1ed023720362ef03ff8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 281,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d7/d72bbe283ae4450a54542434fae411870672bfcad5b518d17a4b909a0c7b4c62.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1c236138-944d-8000-f3fa-fceaa91c8cdf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1f4fea90-e4e5-7c17-f2af-57d50477b2c7",
  "kind": "theorem",
  "lexical_name": "SimpleFunc.exists_lt_lintegral_simpleFunc_of_lt_lintegral",
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
  "slug": "simplefunc-exists-lt-lintegral-simplefunc-of-lt-lintegral--79e68960bca8715484f21c8c",
  "source": {
    "blob": "1519b055d08db8b5eb81d1ed023720362ef03ff8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 335,
    "line": 281,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Countable/Variantd72bbe283ae4450a54542434fae411870672bfcad5b518d17a4b909a0c7b4c62.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:79e68960bca8715484f21c8cca583f0cbbac229fe7dcdf79b8b9d923f502ca73",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Countable/Variantd72bbe283ae4450a54542434fae411870672bfcad5b518d17a4b909a0c7b4c62.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f4fea90-e4e5-7c17-f2af-57d50477b2c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–335.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem SimpleFunc.exists_lt_lintegral_simpleFunc_of_lt_lintegral {m : MeasurableSpace α}
    {μ : Measure α} [SigmaFinite μ] {f : α →ₛ ℝ≥0} {L : ℝ≥0∞} (hL : L < ∫⁻ x, f x ∂μ) :
    ∃ g : α →ₛ ℝ≥0, (∀ x, g x ≤ f x) ∧ ∫⁻ x, g x ∂μ < ∞ ∧ L < ∫⁻ x, g x ∂μ := by
  induction f using MeasureTheory.SimpleFunc.induction generalizing L with
  | @const c s hs =>
    simp only [hs, const_zero, coe_piecewise, coe_const, SimpleFunc.coe_zero, univ_inter,
      piecewise_eq_indicator, lintegral_indicator, lintegral_const, Measure.restrict_apply',
      ENNReal.coe_indicator, Function.const_apply] at hL
    have c_ne_zero : c ≠ 0 := by
      intro hc
      simp only [hc, ENNReal.coe_zero, zero_mul, not_lt_zero] at hL
    have : L / c < μ s := by
      rwa [ENNReal.div_lt_iff, mul_comm]
      · simp only [c_ne_zero, Ne, ENNReal.coe_eq_zero, not_false_iff, true_or]
      · simp only [Ne, coe_ne_top, not_false_iff, true_or]
    obtain ⟨t, ht, ts, mlt, t_top⟩ :
      ∃ t : Set α, MeasurableSet t ∧ t ⊆ s ∧ L / ↑c < μ t ∧ μ t < ∞ :=
      Measure.exists_subset_measure_lt_top hs this
    refine ⟨piecewise t ht (const α c) (const α 0), fun x => ?_, ?_, ?_⟩
    · refine indicator_le_indicator_of_subset ts (fun x => ?_) x
      exact zero_le _
    · simp only [ht, const_zero, coe_piecewise, coe_const, SimpleFunc.coe_zero, univ_inter,
        piecewise_eq_indicator, ENNReal.coe_indicator, Function.const_apply, lintegral_indicator,
        lintegral_const, Measure.restrict_apply', ENNReal.mul_lt_top ENNReal.coe_lt_top t_top]
    · simp only [ht, const_zero, coe_piecewise, coe_const, SimpleFunc.coe_zero,
        piecewise_eq_indicator, ENNReal.coe_indicator, Function.const_apply, lintegral_indicator,
        lintegral_const, Measure.restrict_apply', univ_inter]
      rwa [mul_comm, ← ENNReal.div_lt_iff]
      · simp only [c_ne_zero, Ne, ENNReal.coe_eq_zero, not_false_iff, true_or]
      · simp only [Ne, coe_ne_top, not_false_iff, true_or]
  | @add f₁ f₂ _ h₁ h₂ =>
    replace hL : L < ∫⁻ x, f₁ x ∂μ + ∫⁻ x, f₂ x ∂μ := by
      rwa [← lintegral_add_left f₁.measurable.coe_nnreal_ennreal]
    by_cases hf₁ : ∫⁻ x, f₁ x ∂μ = 0
    · simp only [hf₁, zero_add] at hL
      rcases h₂ hL with ⟨g, g_le, g_top, gL⟩
      refine ⟨g, fun x => (g_le x).trans ?_, g_top, gL⟩
      simp only [SimpleFunc.coe_add, Pi.add_apply, le_add_iff_nonneg_left, zero_le']
    by_cases hf₂ : ∫⁻ x, f₂ x ∂μ = 0
    · simp only [hf₂, add_zero] at hL
      rcases h₁ hL with ⟨g, g_le, g_top, gL⟩
      refine ⟨g, fun x => (g_le x).trans ?_, g_top, gL⟩
      simp only [SimpleFunc.coe_add, Pi.add_apply, le_add_iff_nonneg_right, zero_le']
    obtain ⟨L₁, hL₁, L₂, hL₂, hL⟩ : ∃ L₁ < ∫⁻ x, f₁ x ∂μ, ∃ L₂ < ∫⁻ x, f₂ x ∂μ, L < L₁ + L₂ :=
      ENNReal.exists_lt_add_of_lt_add hL hf₁ hf₂
    rcases h₁ hL₁ with ⟨g₁, g₁_le, g₁_top, hg₁⟩
    rcases h₂ hL₂ with ⟨g₂, g₂_le, g₂_top, hg₂⟩
    refine ⟨g₁ + g₂, fun x => add_le_add (g₁_le x) (g₂_le x), ?_, ?_⟩
    · apply lt_of_le_of_lt _ (add_lt_top.2 ⟨g₁_top, g₂_top⟩)
      rw [← lintegral_add_left g₁.measurable.coe_nnreal_ennreal]
      exact le_rfl
    · apply hL.trans ((ENNReal.add_lt_add hg₁ hg₂).trans_le _)
      rw [← lintegral_add_left g₁.measurable.coe_nnreal_ennreal]
      simp only [coe_add, Pi.add_apply, ENNReal.coe_add, le_rfl]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Countable/Variantd72bbe283ae4450a54542434fae411870672bfcad5b518d17a4b909a0c7b4c62.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Countable/Variantd72bbe283ae4450a54542434fae411870672bfcad5b518d17a4b909a0c7b4c62.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1519b055d08db8b5eb81d1ed023720362ef03ff8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
