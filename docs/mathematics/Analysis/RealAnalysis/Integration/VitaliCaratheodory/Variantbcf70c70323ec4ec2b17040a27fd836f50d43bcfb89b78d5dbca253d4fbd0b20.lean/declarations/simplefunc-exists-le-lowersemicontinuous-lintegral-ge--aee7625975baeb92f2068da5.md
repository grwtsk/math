# SimpleFunc.exists_le_lowerSemicontinuous_lintegral_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9a831a32-698d-c975-e5b6-46e3507c0fbc",
  "kind": "theorem",
  "lexical_name": "SimpleFunc.exists_le_lowerSemicontinuous_lintegral_ge",
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
  "slug": "simplefunc-exists-le-lowersemicontinuous-lintegral-ge--aee7625975baeb92f2068da5",
  "source": {
    "blob": "02d7ddf1a4be37c0210eabb8598bc6dc32fd1fc9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 102,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variantbcf70c70323ec4ec2b17040a27fd836f50d43bcfb89b78d5dbca253d4fbd0b20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aee7625975baeb92f2068da5a965324b2e734e8506776b2f2ae083aeef8e510b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variantbcf70c70323ec4ec2b17040a27fd836f50d43bcfb89b78d5dbca253d4fbd0b20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a831a32-698d-c975-e5b6-46e3507c0fbc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem SimpleFunc.exists_le_lowerSemicontinuous_lintegral_ge (f : α →ₛ ℝ≥0) {ε : ℝ≥0∞}
    (ε0 : ε ≠ 0) :
    ∃ g : α → ℝ≥0, (∀ x, f x ≤ g x) ∧ LowerSemicontinuous g ∧
      (∫⁻ x, g x ∂μ) ≤ (∫⁻ x, f x ∂μ) + ε := by
  induction' f using MeasureTheory.SimpleFunc.induction with c s hs f₁ f₂ _ h₁ h₂ generalizing ε
  · let f := SimpleFunc.piecewise s hs (SimpleFunc.const α c) (SimpleFunc.const α 0)
    by_cases h : ∫⁻ x, f x ∂μ = ⊤
    · refine'
        ⟨fun _ => c, fun x => _, lowerSemicontinuous_const, by
          simp only [_root_.top_add, le_top, h]⟩
      simp only [SimpleFunc.coe_const, SimpleFunc.const_zero, SimpleFunc.coe_zero,
        Set.piecewise_eq_indicator, SimpleFunc.coe_piecewise]
      exact Set.indicator_le_self _ _ _
    by_cases hc : c = 0
    · refine' ⟨fun _ => 0, _, lowerSemicontinuous_const, _⟩
      · classical
        simp only [hc, Set.indicator_zero', Pi.zero_apply, SimpleFunc.const_zero, imp_true_iff,
          eq_self_iff_true, SimpleFunc.coe_zero, Set.piecewise_eq_indicator,
          SimpleFunc.coe_piecewise, le_zero_iff]
      · simp only [lintegral_const, zero_mul, zero_le, ENNReal.coe_zero]
    have : μ s < μ s + ε / c := by
      have : (0 : ℝ≥0∞) < ε / c := ENNReal.div_pos_iff.2 ⟨ε0, ENNReal.coe_ne_top⟩
      simpa using ENNReal.add_lt_add_left ?aux this
    case aux =>
      classical
      simpa [hs, hc, lt_top_iff_ne_top, true_and_iff, SimpleFunc.coe_const,
        Function.const_apply, lintegral_const, ENNReal.coe_indicator, Set.univ_inter,
        ENNReal.coe_ne_top, MeasurableSet.univ, ENNReal.mul_eq_top, SimpleFunc.const_zero,
        or_false_iff, lintegral_indicator, ENNReal.coe_eq_zero, Ne.def, not_false_iff,
        SimpleFunc.coe_zero, Set.piecewise_eq_indicator, SimpleFunc.coe_piecewise, false_and_iff,
        restrict_apply] using h
    obtain ⟨u, su, u_open, μu⟩ : ∃ (u : _), u ⊇ s ∧ IsOpen u ∧ μ u < μ s + ε / c :=
      s.exists_isOpen_lt_of_lt _ this
    refine'
      ⟨Set.indicator u fun _ => c, fun x => _, u_open.lowerSemicontinuous_indicator (zero_le _), _⟩
    · simp only [SimpleFunc.coe_const, SimpleFunc.const_zero, SimpleFunc.coe_zero,
        Set.piecewise_eq_indicator, SimpleFunc.coe_piecewise]
      exact Set.indicator_le_indicator_of_subset su (fun x => zero_le _) _
    · suffices (c : ℝ≥0∞) * μ u ≤ c * μ s + ε by
        classical
        simpa only [ENNReal.coe_indicator, u_open.measurableSet, lintegral_indicator,
          lintegral_const, MeasurableSet.univ, Measure.restrict_apply, Set.univ_inter, const_zero,
          coe_piecewise, coe_const, coe_zero, Set.piecewise_eq_indicator, Function.const_apply, hs]
      calc
        (c : ℝ≥0∞) * μ u ≤ c * (μ s + ε / c) := mul_le_mul_left' μu.le _
        _ = c * μ s + ε := by
          simp_rw [mul_add]
          rw [ENNReal.mul_div_cancel' _ ENNReal.coe_ne_top]
          simpa using hc

  · rcases h₁ (ENNReal.half_pos ε0).ne' with ⟨g₁, f₁_le_g₁, g₁cont, g₁int⟩
    rcases h₂ (ENNReal.half_pos ε0).ne' with ⟨g₂, f₂_le_g₂, g₂cont, g₂int⟩
    refine'
      ⟨fun x => g₁ x + g₂ x, fun x => add_le_add (f₁_le_g₁ x) (f₂_le_g₂ x), g₁cont.add g₂cont, _⟩
    simp only [SimpleFunc.coe_add, ENNReal.coe_add, Pi.add_apply]
    rw [lintegral_add_left f₁.measurable.coe_nnreal_ennreal,
      lintegral_add_left g₁cont.measurable.coe_nnreal_ennreal]
    convert add_le_add g₁int g₂int using 1
    conv_lhs => rw [← ENNReal.add_halves ε]
    abel
#align measure_theory.simple_func.exists_le_lower_semicontinuous_lintegral_ge MeasureTheory.SimpleFunc.exists_le_lowerSemicontinuous_lintegral_ge

-- Porting note: errors with
-- `ambiguous identifier 'eapproxDiff', possible interpretations:`
-- `[SimpleFunc.eapproxDiff, SimpleFunc.eapproxDiff]`
-- open SimpleFunc (eapproxDiff tsum_eapproxDiff)

/-- Given a measurable function `f` with values in `ℝ≥0`, there exists a lower semicontinuous
function `g ≥ f` with integral arbitrarily close to that of `f`. Formulation in terms of
`lintegral`.
Auxiliary lemma for Vitali-Carathéodory theorem `exists_lt_lower_semicontinuous_integral_lt`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variantbcf70c70323ec4ec2b17040a27fd836f50d43bcfb89b78d5dbca253d4fbd0b20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variantbcf70c70323ec4ec2b17040a27fd836f50d43bcfb89b78d5dbca253d4fbd0b20.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02d7ddf1a4be37c0210eabb8598bc6dc32fd1fc9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
