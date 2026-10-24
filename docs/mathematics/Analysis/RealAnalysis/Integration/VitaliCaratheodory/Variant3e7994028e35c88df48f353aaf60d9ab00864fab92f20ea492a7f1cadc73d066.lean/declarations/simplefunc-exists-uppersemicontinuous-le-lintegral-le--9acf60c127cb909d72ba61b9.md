# SimpleFunc.exists_upperSemicontinuous_le_lintegral_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a42c3a5059361d28b5ed703db2510f7189b5cc99",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 309,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3e/3e7994028e35c88df48f353aaf60d9ab00864fab92f20ea492a7f1cadc73d066.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f39f69d4-62ed-a40a-0ea9-eecaf6920f8f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:17bb4be9-5250-d3db-d0d1-41377e641645",
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
  "slug": "simplefunc-exists-uppersemicontinuous-le-lintegral-le--9acf60c127cb909d72ba61b9",
  "source": {
    "blob": "a42c3a5059361d28b5ed703db2510f7189b5cc99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 373,
    "line": 309,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant3e7994028e35c88df48f353aaf60d9ab00864fab92f20ea492a7f1cadc73d066.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9acf60c127cb909d72ba61b901dd02b83ed887730f40365d8b599fb5f66b17b6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant3e7994028e35c88df48f353aaf60d9ab00864fab92f20ea492a7f1cadc73d066.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17bb4be9-5250-d3db-d0d1-41377e641645`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 309–373.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem SimpleFunc.exists_upperSemicontinuous_le_lintegral_le (f : α →ₛ ℝ≥0)
    (int_f : (∫⁻ x, f x ∂μ) ≠ ∞) {ε : ℝ≥0∞} (ε0 : ε ≠ 0) :
    ∃ g : α → ℝ≥0, (∀ x, g x ≤ f x) ∧ UpperSemicontinuous g ∧
      (∫⁻ x, f x ∂μ) ≤ (∫⁻ x, g x ∂μ) + ε := by
  induction f using MeasureTheory.SimpleFunc.induction generalizing ε with
  | @const c s hs =>
    by_cases hc : c = 0
    · refine ⟨fun _ => 0, ?_, upperSemicontinuous_const, ?_⟩
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
      simpa only [hs, hc, lt_top_iff_ne_top, true_and, SimpleFunc.coe_const, or_false,
        lintegral_const, ENNReal.coe_indicator, Set.univ_inter, ENNReal.coe_ne_top,
        Measure.restrict_apply MeasurableSet.univ, ENNReal.mul_eq_top, SimpleFunc.const_zero,
        Function.const_apply, lintegral_indicator, ENNReal.coe_eq_zero, Ne, not_false_iff,
        SimpleFunc.coe_zero, Set.piecewise_eq_indicator, SimpleFunc.coe_piecewise,
        false_and] using int_f
    have : (0 : ℝ≥0∞) < ε / c := ENNReal.div_pos_iff.2 ⟨ε0, ENNReal.coe_ne_top⟩
    obtain ⟨F, Fs, F_closed, μF⟩ : ∃ (F : _), F ⊆ s ∧ IsClosed F ∧ μ s < μ F + ε / c :=
      hs.exists_isClosed_lt_add μs_lt_top.ne this.ne'
    refine
      ⟨Set.indicator F fun _ => c, fun x => ?_, F_closed.upperSemicontinuous_indicator (zero_le _),
        ?_⟩
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
          rw [ENNReal.mul_div_cancel _ ENNReal.coe_ne_top]
          simpa using hc
  | @add f₁ f₂ _ h₁ h₂ =>
    have A : ((∫⁻ x : α, f₁ x ∂μ) + ∫⁻ x : α, f₂ x ∂μ) ≠ ⊤ := by
      rwa [← lintegral_add_left f₁.measurable.coe_nnreal_ennreal]
    rcases h₁ (ENNReal.add_ne_top.1 A).1 (ENNReal.half_pos ε0).ne' with
      ⟨g₁, f₁_le_g₁, g₁cont, g₁int⟩
    rcases h₂ (ENNReal.add_ne_top.1 A).2 (ENNReal.half_pos ε0).ne' with
      ⟨g₂, f₂_le_g₂, g₂cont, g₂int⟩
    refine
      ⟨fun x => g₁ x + g₂ x, fun x => add_le_add (f₁_le_g₁ x) (f₂_le_g₂ x), g₁cont.add g₂cont, ?_⟩
    simp only [SimpleFunc.coe_add, ENNReal.coe_add, Pi.add_apply]
    rw [lintegral_add_left f₁.measurable.coe_nnreal_ennreal,
      lintegral_add_left g₁cont.measurable.coe_nnreal_ennreal]
    convert add_le_add g₁int g₂int using 1
    conv_lhs => rw [← ENNReal.add_halves ε]
    abel

/-- Given an integrable function `f` with values in `ℝ≥0`, there exists an upper semicontinuous
function `g ≤ f` with integral arbitrarily close to that of `f`. Formulation in terms of
`lintegral`.
Auxiliary lemma for Vitali-Carathéodory theorem `exists_lt_lower_semicontinuous_integral_lt`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant3e7994028e35c88df48f353aaf60d9ab00864fab92f20ea492a7f1cadc73d066.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant3e7994028e35c88df48f353aaf60d9ab00864fab92f20ea492a7f1cadc73d066.lean#L309).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a42c3a5059361d28b5ed703db2510f7189b5cc99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
