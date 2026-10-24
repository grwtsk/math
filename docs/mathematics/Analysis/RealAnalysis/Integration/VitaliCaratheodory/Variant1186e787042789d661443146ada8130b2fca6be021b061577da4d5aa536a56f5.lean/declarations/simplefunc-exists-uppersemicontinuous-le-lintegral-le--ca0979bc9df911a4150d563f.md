# SimpleFunc.exists_upperSemicontinuous_le_lintegral_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d80913873fa0b783accfad293d215b8870aad78b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 324,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/11/1186e787042789d661443146ada8130b2fca6be021b061577da4d5aa536a56f5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c3c99237-6e05-fee5-ba69-fe6ead87c299",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b47c5628-a09f-3d1f-ecda-dbfb8355b14f",
  "kind": "theorem",
  "lexical_name": "SimpleFunc.exists_upperSemicontinuous_le_lintegral_le",
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
  "slug": "simplefunc-exists-uppersemicontinuous-le-lintegral-le--ca0979bc9df911a4150d563f",
  "source": {
    "blob": "d80913873fa0b783accfad293d215b8870aad78b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 387,
    "line": 324,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant1186e787042789d661443146ada8130b2fca6be021b061577da4d5aa536a56f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca0979bc9df911a4150d563f9123a8f17225924fe45d0caac4a7fa547ae0fb5a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant1186e787042789d661443146ada8130b2fca6be021b061577da4d5aa536a56f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b47c5628-a09f-3d1f-ecda-dbfb8355b14f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 324–387.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem SimpleFunc.exists_upperSemicontinuous_le_lintegral_le (f : α →ₛ ℝ≥0)
    (int_f : (∫⁻ x, f x ∂μ) ≠ ∞) {ε : ℝ≥0∞} (ε0 : ε ≠ 0) :
    ∃ g : α → ℝ≥0, (∀ x, g x ≤ f x) ∧ UpperSemicontinuous g ∧
      (∫⁻ x, f x ∂μ) ≤ (∫⁻ x, g x ∂μ) + ε := by
  induction' f using MeasureTheory.SimpleFunc.induction with c s hs f₁ f₂ _ h₁ h₂ generalizing ε
  · by_cases hc : c = 0
    · refine' ⟨fun _ => 0, _, upperSemicontinuous_const, _⟩
      · classical
        simp only [hc, Set.indicator_zero', Pi.zero_apply, SimpleFunc.const_zero, imp_true_iff,
          eq_self_iff_true, SimpleFunc.coe_zero, Set.piecewise_eq_indicator,
          SimpleFunc.coe_piecewise, le_zero_iff]
      · classical
        simp only [hc, Set.indicator_zero', lintegral_const, zero_mul, Pi.zero_apply,
          SimpleFunc.const_zero, zero_add, zero_le', SimpleFunc.coe_zero,
          Set.piecewise_eq_indicator, ENNReal.coe_zero, SimpleFunc.coe_piecewise, zero_le]
    have μs_lt_top : μ s < ∞ := by
      classical
      simpa only [hs, hc, lt_top_iff_ne_top, true_and_iff, SimpleFunc.coe_const, or_false_iff,
        lintegral_const, ENNReal.coe_indicator, Set.univ_inter, ENNReal.coe_ne_top,
        Measure.restrict_apply MeasurableSet.univ, ENNReal.mul_eq_top, SimpleFunc.const_zero,
        Function.const_apply, lintegral_indicator, ENNReal.coe_eq_zero, Ne.def, not_false_iff,
        SimpleFunc.coe_zero, Set.piecewise_eq_indicator, SimpleFunc.coe_piecewise,
        false_and_iff] using int_f
    have : (0 : ℝ≥0∞) < ε / c := ENNReal.div_pos_iff.2 ⟨ε0, ENNReal.coe_ne_top⟩
    obtain ⟨F, Fs, F_closed, μF⟩ : ∃ (F : _), F ⊆ s ∧ IsClosed F ∧ μ s < μ F + ε / c :=
      hs.exists_isClosed_lt_add μs_lt_top.ne this.ne'
    refine'
      ⟨Set.indicator F fun _ => c, fun x => _, F_closed.upperSemicontinuous_indicator (zero_le _),
        _⟩
    · simp only [SimpleFunc.coe_const, SimpleFunc.const_zero, SimpleFunc.coe_zero,
        Set.piecewise_eq_indicator, SimpleFunc.coe_piecewise]
      exact Set.indicator_le_indicator_of_subset Fs (fun x => zero_le _) _
    · suffices (c : ℝ≥0∞) * μ s ≤ c * μ F + ε by
        classical
        simpa only [hs, F_closed.measurableSet, SimpleFunc.coe_const, Function.const_apply,
          lintegral_const, ENNReal.coe_indicator, Set.univ_inter, MeasurableSet.univ,
          SimpleFunc.const_zero, lintegral_indicator, SimpleFunc.coe_zero,
          Set.piecewise_eq_indicator, SimpleFunc.coe_piecewise, Measure.restrict_apply]
      calc
        (c : ℝ≥0∞) * μ s ≤ c * (μ F + ε / c) := mul_le_mul_left' μF.le _
        _ = c * μ F + ε := by
          simp_rw [mul_add]
          rw [ENNReal.mul_div_cancel' _ ENNReal.coe_ne_top]
          simpa using hc
  · have A : ((∫⁻ x : α, f₁ x ∂μ) + ∫⁻ x : α, f₂ x ∂μ) ≠ ⊤ := by
      rwa [← lintegral_add_left f₁.measurable.coe_nnreal_ennreal]
    rcases h₁ (ENNReal.add_ne_top.1 A).1 (ENNReal.half_pos ε0).ne' with
      ⟨g₁, f₁_le_g₁, g₁cont, g₁int⟩
    rcases h₂ (ENNReal.add_ne_top.1 A).2 (ENNReal.half_pos ε0).ne' with
      ⟨g₂, f₂_le_g₂, g₂cont, g₂int⟩
    refine'
      ⟨fun x => g₁ x + g₂ x, fun x => add_le_add (f₁_le_g₁ x) (f₂_le_g₂ x), g₁cont.add g₂cont, _⟩
    simp only [SimpleFunc.coe_add, ENNReal.coe_add, Pi.add_apply]
    rw [lintegral_add_left f₁.measurable.coe_nnreal_ennreal,
      lintegral_add_left g₁cont.measurable.coe_nnreal_ennreal]
    convert add_le_add g₁int g₂int using 1
    conv_lhs => rw [← ENNReal.add_halves ε]
    abel
#align measure_theory.simple_func.exists_upper_semicontinuous_le_lintegral_le MeasureTheory.SimpleFunc.exists_upperSemicontinuous_le_lintegral_le

/-- Given an integrable function `f` with values in `ℝ≥0`, there exists an upper semicontinuous
function `g ≤ f` with integral arbitrarily close to that of `f`. Formulation in terms of
`lintegral`.
Auxiliary lemma for Vitali-Carathéodory theorem `exists_lt_lower_semicontinuous_integral_lt`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant1186e787042789d661443146ada8130b2fca6be021b061577da4d5aa536a56f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant1186e787042789d661443146ada8130b2fca6be021b061577da4d5aa536a56f5.lean#L324).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d80913873fa0b783accfad293d215b8870aad78b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
