# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.KQHPoleExclusion.Variant340e9c389b5df27c49298a4c7ffc9bf4864963cf2422ee9a7b3a829cbe38815f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `64dabdcf5d6abf3a700c901dcf70fd56c14f7fb4` · SHA-256 `6f9de98da2f9c0918a540b58fea3e49aa75db060a65db319b6824d39aa885b00`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.FiniteTransform.Varianta4bd0a63d0c0d8e43b7440d616119bffd248c19cf8fd145732525d07cbfc229c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a4bd0a63d0c0d8e43b7440d616119bffd248c19cf8fd145732525d07cbfc229c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.FiniteTransform.Varianta4bd0a63d0c0d8e43b7440d616119bffd248c19cf8fd145732525d07cbfc229c","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"a4bd0a63d0c0d8e43b7440d616119bffd248c19cf8fd145732525d07cbfc229c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/primary-delta-index-retrieved-b246bcb45ff5/primary-deltas/source/a4/a4bd0a63d0c0d8e43b7440d616119bffd248c19cf8fd145732525d07cbfc229c/KQHPoleExclusion.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.Normed.Group.Uniform
import Mathlib.Algebra.BigOperators.Field
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring
import Mathlib.Tactic.NormNum

/-!
# Quantitative exclusion around an observed isolated atom

Direction and theorem selection: grwtsk contributors.
Derivation and Lean proof construction: OpenAI Codex (2026-10-07).

The finite positive Stieltjes transform is formalized directly. The generic
regular-part adapter also applies to a measure transform after its separation
and mass estimate have been proved. No atom, residue, or Xi comparison is
asserted for the repository's diffuse theta measure.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.FiniteTransform.Varianta4bd0a63d0c0d8e43b7440d616119bffd248c19cf8fd145732525d07cbfc229c

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.KQHPoleExclusion

open scoped BigOperators

/-- The isolated atom at `p`, with all remaining poles recorded in `s`. -/
def finiteTransform {ι : Type*} (s : Finset ι) (weight : ι → ℝ)
    (location : ι → ℂ) (w : ℝ) (p z : ℂ) : ℂ :=
  (w : ℂ) / (p - z) + ∑ i ∈ s, (weight i : ℂ) / (location i - z)

/-- The quantitative lower bound retains atom weight, mass, and separation. -/
def exclusionBound (w M g d : ℝ) : ℝ :=
  w / d - (M - w) / (g - d)

/-- Algebraic form exposing the exact zero-exclusion radius. -/
theorem exclusionBound_eq {w M g d : ℝ} (hd : d ≠ 0) (hgd : g - d ≠ 0) :
    exclusionBound w M g d = (w * g - M * d) / (d * (g - d)) := by
  unfold exclusionBound
  field_simp
  ring

/-- The lower bound is positive precisely below the weight-dependent radius. -/
theorem exclusionBound_pos {w M g d : ℝ}
    (hM : 0 < M) (hd : 0 < d) (hdg : d < g) (hr : d < w * g / M) :
    0 < exclusionBound w M g d := by
  rw [exclusionBound_eq (ne_of_gt hd) (ne_of_gt (sub_pos.mpr hdg))]
  apply div_pos
  · have hh := (lt_div_iff₀ hM).mp hr
    nlinarith
  · exact mul_pos hd (sub_pos.mpr hdg)

/-- Any decomposition into the observed pole and a controlled regular part
inherits the local lower bound. All other poles must lie outside the domain
on which the regular-part estimate is supplied. -/
theorem regularPart_lower_bound {w M g : ℝ} {p z r : ℂ}
    (hw : 0 ≤ w) (_hd : 0 < ‖z - p‖)
    (hregular : ‖r‖ ≤ (M - w) / (g - ‖z - p‖)) :
    exclusionBound w M g ‖z - p‖ ≤ ‖(w : ℂ) / (p - z) + r‖ := by
  have hpz : ‖p - z‖ = ‖z - p‖ := norm_sub_rev p z
  have hn : ‖(w : ℂ) / (p - z)‖ = w / ‖z - p‖ := by
    rw [norm_div, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg hw, hpz]
  have ht := norm_sub_le ((w : ℂ) / (p - z) + r) r
  have he : ((w : ℂ) / (p - z) + r) - r = (w : ℂ) / (p - z) := by ring
  rw [he, hn] at ht
  unfold exclusionBound
  linarith

/-- Atom separation controls the entire finite regular part without deleting
signed complex contributions. -/
theorem finite_regularPart_bound {ι : Type*} (s : Finset ι)
    (weight : ι → ℝ) (location : ι → ℂ) {g : ℝ} {p z : ℂ}
    (hw : ∀ i ∈ s, 0 ≤ weight i)
    (hsep : ∀ i ∈ s, g ≤ ‖location i - p‖)
    (hdg : ‖z - p‖ < g) :
    ‖∑ i ∈ s, (weight i : ℂ) / (location i - z)‖ ≤
      (∑ i ∈ s, weight i) / (g - ‖z - p‖) := by
  have hgd : 0 < g - ‖z - p‖ := sub_pos.mpr hdg
  calc
    ‖∑ i ∈ s, (weight i : ℂ) / (location i - z)‖
        ≤ ∑ i ∈ s, ‖(weight i : ℂ) / (location i - z)‖ := norm_sum_le _ _
    _ ≤ ∑ i ∈ s, weight i / (g - ‖z - p‖) := by
      apply Finset.sum_le_sum
      intro i hi
      have hden : g - ‖z - p‖ ≤ ‖location i - z‖ := by
        have ht := norm_add_le (location i - z) (z - p)
        have he : location i - z + (z - p) = location i - p := by ring
        rw [he] at ht
        linarith [hsep i hi]
      rw [norm_div, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg (hw i hi)]
      exact div_le_div_of_nonneg_left (hw i hi) hgd hden
    _ = (∑ i ∈ s, weight i) / (g - ‖z - p‖) := by
      simp only [Finset.sum_div]

/-- The requested finite positive-measure estimate, with literal total mass. -/
theorem finiteTransform_lower_bound {ι : Type*} (s : Finset ι)
    (weight : ι → ℝ) (location : ι → ℂ) {w M g : ℝ} {p z : ℂ}
    (hw : 0 ≤ w) (hwrest : ∀ i ∈ s, 0 ≤ weight i)
    (hM : M = w + ∑ i ∈ s, weight i)
    (hsep : ∀ i ∈ s, g ≤ ‖location i - p‖)
    (hd : 0 < ‖z - p‖) (hdg : ‖z - p‖ < g) :
    exclusionBound w M g ‖z - p‖ ≤ ‖finiteTransform s weight location w p z‖ := by
  apply regularPart_lower_bound hw hd
  have hm : M - w = ∑ i ∈ s, weight i := by linarith
  rw [hm]
  exact finite_regularPart_bound s weight location hwrest hsep hdg

/-- A positive residue supplies zero exclusion only on its quantitative radius. -/
theorem finiteTransform_ne_zero {ι : Type*} (s : Finset ι)
    (weight : ι → ℝ) (location : ι → ℂ) {w M g : ℝ} {p z : ℂ}
    (hw : 0 < w) (hwrest : ∀ i ∈ s, 0 ≤ weight i)
    (hMpos : 0 < M) (hM : M = w + ∑ i ∈ s, weight i)
    (hsep : ∀ i ∈ s, g ≤ ‖location i - p‖)
    (hd : 0 < ‖z - p‖) (hdg : ‖z - p‖ < g)
    (hr : ‖z - p‖ < w * g / M) :
    finiteTransform s weight location w p z ≠ 0 := by
  intro hz
  have hlow := finiteTransform_lower_bound s weight location (le_of_lt hw)
    hwrest hM hsep hd hdg
  rw [hz, norm_zero] at hlow
  exact (not_le_of_gt (exclusionBound_pos hMpos hd hdg hr)) hlow

/-- The positive remaining weights make the quantitative radius no larger than
`g`, so this exclusion needs only the requested punctured radius. -/
theorem finiteTransform_ne_zero_of_radius {ι : Type*} (s : Finset ι)
    (weight : ι → ℝ) (location : ι → ℂ) {w M g : ℝ} {p z : ℂ}
    (hw : 0 < w) (hwrest : ∀ i ∈ s, 0 ≤ weight i)
    (hg : 0 < g) (hM : M = w + ∑ i ∈ s, weight i)
    (hsep : ∀ i ∈ s, g ≤ ‖location i - p‖)
    (hd : 0 < ‖z - p‖) (hr : ‖z - p‖ < w * g / M) :
    finiteTransform s weight location w p z ≠ 0 := by
  have hrest : 0 ≤ ∑ i ∈ s, weight i := Finset.sum_nonneg hwrest
  have hwM : w ≤ M := by linarith
  have hMpos : 0 < M := lt_of_lt_of_le hw hwM
  have hradius : w * g / M ≤ g := by
    apply (div_le_iff₀ hMpos).mpr
    exact mul_le_mul_of_nonneg_right hwM (le_of_lt hg)
  exact finiteTransform_ne_zero s weight location hw hwrest hMpos hM hsep hd
    (lt_of_lt_of_le hr hradius) hr

/-- Transfer to an actual scalar with a proved absolute comparison error. -/
theorem perturbative_ne_zero {m actual : ℂ} {lower η : ℝ}
    (hlower : lower ≤ ‖m‖) (herror : ‖actual - m‖ ≤ η) (hmargin : η < lower) :
    actual ≠ 0 := by
  intro hzero
  rw [hzero, zero_sub, norm_neg] at herror
  linarith

/-- Quantitative native-consumer adapter. Its comparison premise is explicit;
this theorem does not identify the finite transform with Xi. -/
theorem finiteTransform_comparison_ne_zero {ι : Type*} (s : Finset ι)
    (weight : ι → ℝ) (location : ι → ℂ) {w M g η : ℝ} {p z actual : ℂ}
    (hw : 0 ≤ w) (hwrest : ∀ i ∈ s, 0 ≤ weight i)
    (hM : M = w + ∑ i ∈ s, weight i)
    (hsep : ∀ i ∈ s, g ≤ ‖location i - p‖)
    (hd : 0 < ‖z - p‖) (hdg : ‖z - p‖ < g)
    (herror : ‖actual - finiteTransform s weight location w p z‖ ≤ η)
    (hmargin : η < exclusionBound w M g ‖z - p‖) : actual ≠ 0 := by
  exact perturbative_ne_zero
    (finiteTransform_lower_bound s weight location hw hwrest hM hsep hd hdg)
    herror hmargin

/-- Exact positive two-atom example: total mass one, separation one. -/
def twoAtomTransform (w : ℝ) (z : ℂ) : ℂ :=
  (w : ℂ) / (0 - z) + (1 - (w : ℂ)) / (1 - z)

/-- Its zero lies at `w`, so separation alone has no uniform exclusion radius. -/
theorem twoAtomTransform_eq (w : ℝ) {z : ℂ} (hz0 : z ≠ 0) (hz1 : z ≠ 1) :
    twoAtomTransform w z = (z - w) / (z * (1 - z)) := by
  unfold twoAtomTransform
  have h1 : 1 - z ≠ 0 := sub_ne_zero.mpr hz1.symm
  have h0 : 0 - z ≠ 0 := sub_ne_zero.mpr hz0.symm
  field_simp
  ring

theorem twoAtomTransform_zero {w : ℝ} (hw : 0 < w) (hw1 : w < 1) :
    twoAtomTransform w (w : ℂ) = 0 := by
  rw [twoAtomTransform_eq w]
  · simp
  · exact_mod_cast (ne_of_gt hw)
  · exact_mod_cast (ne_of_lt hw1)

/-- Every proposed positive gap-only radius is contradicted by positive weights. -/
theorem no_gap_only_radius {r : ℝ} (hr : 0 < r) :
    ∃ w : ℝ, 0 < w ∧ w < 1 ∧ w < r ∧ twoAtomTransform w (w : ℂ) = 0 := by
  refine ⟨min r 1 / 2, ?_, ?_, ?_, ?_⟩
  · exact div_pos (lt_min hr (by norm_num)) (by norm_num)
  · have hm := min_le_right r 1
    linarith
  · have hm := min_le_left r 1
    linarith
  · apply twoAtomTransform_zero
    · exact div_pos (lt_min hr (by norm_num)) (by norm_num)
    · have hm := min_le_right r 1
      linarith

end FormalResearch.RiemannHypothesis.KQHPoleExclusion
```
