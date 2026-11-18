/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilGammaLagMeasure
import GRWTSK.FunctionalAnalysis.L2WindowRestriction
import Mathlib.MeasureTheory.Function.L2Space
import Mathlib.MeasureTheory.Function.LpSpace.Complete
import Mathlib.MeasureTheory.Function.LpSpace.Indicator
import Mathlib.MeasureTheory.Function.LpSpace.ContinuousCompMeasurePreserving
import Mathlib.MeasureTheory.Group.Integral
import Mathlib.Tactic

/-!
# Concrete bounded translation-energy cutoff maps

`Physical` is the ORIGINAL whole-line real Lebesgue L2 space. `Energy`
is Bochner L2 in the lag variable, with values in `Physical`, weighted
by the ORIGINAL gamma kernel. No finite-dimensional replacement occurs.
The maps are literal indicators of complete lag windows applied to
`translate r f - f`; the restrictions act on the energy vectors.

Both maps are constructed as continuous linear maps. Their a.e. formulas,
operator-norm bounds, compatibility, idempotence and joint separation
are proved. The cutoff derivative is the same bounded linear map.
The original real source is retained; no Dirichlet-character complex
adapter is claimed. Source-local proof and API provenance are in the
companion Markdown file.

SOURCE_PROOF_CANDIDATE. Elaboration, exact types, fresh kernel replay,
transitive axiom audit and independent review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set Filter
open scoped ENNReal Topology

namespace GRWTSK.NumberTheory.WeilQuadraticForm.TranslationCutoffs

abbrev Physical := Lp ℝ 2 (volume : Measure ℝ)
abbrev Energy := Lp Physical 2 GammaLag.measure

/-- Physical translation, not translation of the weighted lag measure. -/
def translate (r : ℝ) : Physical →ₗᵢ[ℝ] Physical :=
  Lp.compMeasurePreservingₗᵢ ℝ (fun t : ℝ => t + r)
    (measurePreserving_add_right volume r)

theorem translate_ae (r : ℝ) (f : Physical) :
    translate r f =ᵐ[volume] fun t => f (t + r) :=
  Lp.coeFn_compMeasurePreserving f (measurePreserving_add_right volume r)

theorem translate_norm (r : ℝ) (f : Physical) : ‖translate r f‖ = ‖f‖ :=
  (translate r).norm_map f

/-- Strong continuity is needed to form the Hilbert-valued lag integral. -/
theorem continuous_translate (f : Physical) : Continuous (fun r => translate r f) := by
  let addition : C(ℝ × ℝ, ℝ) := ⟨fun p => p.2 + p.1, by fun_prop⟩
  have h := (continuous_const : Continuous (fun _ : ℝ => f)).compMeasurePreservingLp
    addition.curry.continuous (fun r => measurePreserving_add_right volume r)
    (by norm_num : (2 : ℝ≥0∞) ≠ ∞)
  exact h

/-- The actual translation difference as a Physical-valued function. -/
def jump (f : Physical) (r : ℝ) : Physical := translate r f - f

theorem continuous_jump (f : Physical) : Continuous (jump f) :=
  (continuous_translate f).sub continuous_const

theorem jump_norm_le (f : Physical) (r : ℝ) : ‖jump f r‖ ≤ 2 * ‖f‖ := by
  calc
    ‖jump f r‖ ≤ ‖translate r f‖ + ‖f‖ := norm_sub_le _ _
    _ = 2 * ‖f‖ := by rw [translate_norm]; ring

theorem jump_ae (f : Physical) (r : ℝ) :
    jump f r =ᵐ[volume] fun t => f (t + r) - f t := by
  filter_upwards [Lp.coeFn_sub (translate r f) f, translate_ae r f] with t ht hr
  simp only [jump, ht, hr, Pi.sub_apply]

@[simp] theorem jump_add (f g : Physical) (r : ℝ) :
    jump (f + g) r = jump f r + jump g r := by
  simp only [jump, map_add]
  abel

@[simp] theorem jump_smul (c : ℝ) (f : Physical) (r : ℝ) :
    jump (c • f) r = c • jump f r := by
  simp only [jump, map_smul, RingHom.id_apply, smul_sub]

/-- Unit-height indicator used only to express the exact cutoff bound. -/
def windowUnit (m : ℕ) : Lp ℝ 2 GammaLag.measure :=
  indicatorConstLp 2 (GammaLag.window_measurable m)
    (GammaLag.measure_window_lt_top m).ne (1 : ℝ)

theorem windowUnit_ae (m : ℕ) :
    windowUnit m =ᵐ[GammaLag.measure] (GammaLag.window m).indicator (fun _ => (1 : ℝ)) :=
  indicatorConstLp_coeFn

def rawCutoff (m : ℕ) (f : Physical) : ℝ → Physical :=
  (GammaLag.window m).indicator (jump f)

theorem rawCutoff_memLp (m : ℕ) (f : Physical) :
    MemLp (rawCutoff m f) 2 GammaLag.measure := by
  apply (Lp.memLp (windowUnit m)).of_le_mul
    ((continuous_jump f).aestronglyMeasurable.indicator (GammaLag.window_measurable m))
  filter_upwards [windowUnit_ae m] with r hr
  by_cases hm : r ∈ GammaLag.window m
  · simpa only [rawCutoff, indicator_of_mem hm, hr, norm_one, mul_one] using jump_norm_le f r
  · simp only [rawCutoff, indicator_of_notMem hm, hr, norm_zero, mul_zero, le_refl]

def cutoffValue (m : ℕ) (f : Physical) : Energy :=
  (rawCutoff_memLp m f).toLp (rawCutoff m f)

theorem cutoffValue_ae (m : ℕ) (f : Physical) :
    cutoffValue m f =ᵐ[GammaLag.measure] rawCutoff m f :=
  (rawCutoff_memLp m f).coeFn_toLp

/-- Explicit finite norm bound. Its squared value is four times the
weighted measure of the lag window. -/
def cutoffBound (m : ℕ) : ℝ := 2 * ‖windowUnit m‖

theorem cutoffBound_nonneg (m : ℕ) : 0 ≤ cutoffBound m := by
  unfold cutoffBound
  positivity

theorem cutoffValue_norm_le (m : ℕ) (f : Physical) :
    ‖cutoffValue m f‖ ≤ cutoffBound m * ‖f‖ := by
  have h : ‖cutoffValue m f‖ ≤ (2 * ‖f‖) * ‖windowUnit m‖ := by
    apply Lp.norm_le_mul_norm_of_ae_le_mul
    filter_upwards [cutoffValue_ae m f, windowUnit_ae m] with r hr hu
    rw [hr, hu]
    by_cases hm : r ∈ GammaLag.window m
    · simpa only [rawCutoff, indicator_of_mem hm, norm_one, mul_one] using jump_norm_le f r
    · simp only [rawCutoff, indicator_of_notMem hm, norm_zero, mul_zero, le_refl]
  unfold cutoffBound
  nlinarith

def cutoffLinear (m : ℕ) : Physical →ₗ[ℝ] Energy where
  toFun := cutoffValue m
  map_add' f g := by
    apply Lp.ext
    filter_upwards [cutoffValue_ae m (f + g), cutoffValue_ae m f,
      cutoffValue_ae m g, Lp.coeFn_add (cutoffValue m f) (cutoffValue m g)] with r hfg hf hg ha
    rw [hfg, ha, hf, hg]
    by_cases hm : r ∈ GammaLag.window m <;> simp [rawCutoff, hm]
  map_smul' c f := by
    apply Lp.ext
    filter_upwards [cutoffValue_ae m (c • f), cutoffValue_ae m f,
      Lp.coeFn_smul c (cutoffValue m f)] with r hcf hf hs
    simp only [hcf, hs, hf, RingHom.id_apply, Pi.smul_apply]
    by_cases hm : r ∈ GammaLag.window m <;> simp [rawCutoff, hm]

/-- The bounded cutoff map A_m into the complete weighted energy space. -/
def cutoff (m : ℕ) : Physical →L[ℝ] Energy :=
  (cutoffLinear m).mkContinuous (cutoffBound m) (cutoffValue_norm_le m)

theorem cutoff_ae (m : ℕ) (f : Physical) :
    cutoff m f =ᵐ[GammaLag.measure] rawCutoff m f := cutoffValue_ae m f

theorem cutoff_opNorm_le (m : ℕ) : ‖cutoff m‖ ≤ cutoffBound m :=
  ContinuousLinearMap.opNorm_le_bound _ (cutoffBound_nonneg m) (cutoffValue_norm_le m)

/-- Fréchet derivative with respect to the input, NOT with respect to lag. -/
theorem cutoff_hasFDerivAt (m : ℕ) (f : Physical) :
    HasFDerivAt (cutoff m) (cutoff m) f := (cutoff m).hasFDerivAt

def rawRestriction (m : ℕ) (G : Energy) : ℝ → Physical :=
  (GammaLag.window m).indicator (fun r => G r)

/-- The bounded restriction R_m, acting on complete energy vectors. -/
def restriction (m : ℕ) : Energy →L[ℝ] Energy :=
  GRWTSK.FunctionalAnalysis.L2WindowRestriction.restrict
    GammaLag.measure (GammaLag.window m) (GammaLag.window_measurable m)

theorem restriction_ae (m : ℕ) (G : Energy) :
    restriction m G =ᵐ[GammaLag.measure] rawRestriction m G :=
  GRWTSK.FunctionalAnalysis.L2WindowRestriction.restrict_ae
    GammaLag.measure (GammaLag.window m) (GammaLag.window_measurable m) G

theorem restriction_opNorm_le (m : ℕ) : ‖restriction m‖ ≤ 1 :=
  GRWTSK.FunctionalAnalysis.L2WindowRestriction.norm_restrict_le
    GammaLag.measure (GammaLag.window m) (GammaLag.window_measurable m)

theorem restriction_cutoff_of_le {m k : ℕ} (hmk : m ≤ k) (f : Physical) :
    restriction m (cutoff k f) = cutoff m f := by
  apply Lp.ext
  filter_upwards [restriction_ae m (cutoff k f), cutoff_ae k f, cutoff_ae m f] with r hR hk hm
  rw [hR, hm]
  by_cases hr : r ∈ GammaLag.window m
  · have hrk := GammaLag.window_mono hmk hr
    simp [rawRestriction, rawCutoff, hr, hrk, hk]
  · simp [rawRestriction, rawCutoff, hr]

theorem restriction_restriction_of_le {m k : ℕ} (hmk : m ≤ k) (G : Energy) :
    restriction m (restriction k G) = restriction m G := by
  apply Lp.ext
  filter_upwards [restriction_ae m (restriction k G), restriction_ae k G,
    restriction_ae m G] with r hmk' hk hm
  rw [hmk', hm]
  by_cases hr : r ∈ GammaLag.window m
  · have hrk := GammaLag.window_mono hmk hr
    simp [rawRestriction, hr, hrk, hk]
  · simp [rawRestriction, hr]

@[simp] theorem restriction_idempotent (m : ℕ) (G : Energy) :
    restriction m (restriction m G) = restriction m G :=
  restriction_restriction_of_le le_rfl G

/-- All cutoffs jointly determine the energy vector. No fixed finite
collection is claimed to observe arbitrary energy outside its windows. -/
theorem restrictions_separate (G H : Energy)
    (h : ∀ m : ℕ, restriction m G = restriction m H) : G = H := by
  have hlocal (m : ℕ) : ∀ᵐ r ∂GammaLag.measure,
      r ∈ GammaLag.window m → G r = H r := by
    have he : restriction m G =ᵐ[GammaLag.measure] restriction m H :=
      Eventually.of_forall (fun r => congrArg (fun F : Energy => F r) (h m))
    filter_upwards [restriction_ae m G, restriction_ae m H, he] with r hG hH heq hr
    simpa only [rawRestriction, indicator_of_mem hr] using hG.symm.trans (heq.trans hH)
  have hall : ∀ᵐ r ∂GammaLag.measure, ∀ m : ℕ,
      r ∈ GammaLag.window m → G r = H r := (ae_all_iff).2 hlocal
  apply Lp.ext
  filter_upwards [hall, GammaLag.ae_window_cover] with r hr hcover
  obtain ⟨m, hm⟩ := hcover
  exact hr m hm

end GRWTSK.NumberTheory.WeilQuadraticForm.TranslationCutoffs
