/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilGammaGeometricQuadrature
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilMirroredHermitian
import Mathlib.Analysis.InnerProductSpace.LinearMap
import Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap

/-!
# The integrable gamma row represents the original source pairing

The source is `MirroredHermitian.gammaPairing`, on the original whole-line
physical L2 space. A translation slope supplies Bochner integrability, not
an assumed row/form identification. The Riesz-free pairing identity holds
against EVERY physical L2 vector. Physical restriction, not restriction of
translations before forming their differences, gives the windowed operator.

The separated far row is exactly a physical mass term. Hence the existing
near/geometric quadrature estimate bounds the actual restricted source row.
No full-space operator-norm convergence, high floor, sign, or cofinal family
is inferred. The original real odd arithmetic consumer is in
`WeilFiniteSineGammaQuadrature`.

SOURCE_PROOF_CANDIDATE. Elaboration, exact types, fresh kernel replay,
transitive axiom audit and independent review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set Filter

namespace GRWTSK.NumberTheory.WeilQuadraticForm.GammaBochnerRow

open OddRootProjection OddWrapEnergy OddHighComplement MirroredHermitian
open TranslationCutoffs TranslationEnergyDomain GammaCutoffResidual
open GammaGeometricQuadrature
open GRWTSK.FunctionalAnalysis

@[simp] theorem translate_zero (f : Physical) : translate 0 f = f := by
  apply Lp.ext
  filter_upwards [translate_ae 0 f] with t ht
  simpa using ht

/-- The backward physical translation is the adjoint of the forward one. -/
theorem translate_pair (r : ℝ) (f g : Physical) :
    inner ℝ (translate r f) g = inner ℝ f (translate (-r) g) := by
  have h := (translate r).inner_map_map f (translate (-r) g)
  simpa only [translate_translate, add_neg_cancel, translate_zero] using h

/-- This identity keeps BOTH translation orientations before integration. -/
theorem symmetricDifference_pair (r : ℝ) (f g : Physical) :
    inner ℝ g (symmetricDifference f r) = inner ℝ (jump g r) (jump f r) := by
  have hsame := (translate r).inner_map_map g f
  have hback := translate_pair r g f
  simp only [symmetricDifference, jump, inner_neg_right, inner_add_right,
    inner_sub_right, inner_sub_left] at *
  rw [hsame, hback]
  ring

/-- Return the L2 pairing to the original scalar translation integral. -/
theorem jump_pair_integral (r : ℝ) (f g : Physical) :
    inner ℝ (jump g r) (jump f r) =
      ∫ t : ℝ, (g (t + r) - g t) * (f (t + r) - f t) := by
  rw [L2.inner_def]
  apply integral_congr_ae
  filter_upwards [jump_ae g r, jump_ae f r] with t hg hf
  simp [hg, hf, RCLike.inner_apply, mul_comm]

def weightedRow (f : Physical) (r : ℝ) : Physical :=
  parityKernel 0 r • symmetricDifference f r

private theorem weightedRow_measurable (f : Physical) :
    AEStronglyMeasurable (weightedRow f) volume := by
  have hk : Measurable (parityKernel 0) := by unfold parityKernel; fun_prop
  exact hk.aestronglyMeasurable.smul
    (continuous_symmetricDifference f).aestronglyMeasurable

theorem symmetricDifference_norm_le_mass (f : Physical) (r : ℝ) :
    ‖symmetricDifference f r‖ ≤ 4 * ‖f‖ := by
  unfold symmetricDifference
  rw [norm_neg]
  exact (norm_add_le _ _).trans (by
    linarith [jump_norm_le f r, jump_norm_le f (-r)])

/-- No regularity premise is needed away from zero. -/
theorem weightedRow_integrable_tail (f : Physical) {b : ℝ} (hb : 0 < b) :
    IntegrableOn (weightedRow f) (Ioi b) := by
  apply ((kernel_integrableOn_tail hb).mul_const (4 * ‖f‖)).mono'
    (weightedRow_measurable f).restrict
  filter_upwards [ae_restrict_mem (μ := volume) measurableSet_Ioi] with r hr
  rw [weightedRow, norm_smul, Real.norm_of_nonneg (GammaLag.kernel_pos (hb.trans hr)).le]
  exact mul_le_mul_of_nonneg_left (symmetricDifference_norm_le_mass f r)
    (GammaLag.kernel_pos (hb.trans hr)).le

/-- A whole-line slope cancels the singularity at zero. -/
theorem weightedRow_integrable {f : Physical} {D : ℝ}
    (hD0 : 0 ≤ D) (hD : TranslationSlope f D) :
    IntegrableOn (weightedRow f) (Ioi 0) := by
  have hn : IntegrableOn (weightedRow f) (Ioc 0 1) := nearRow_integrable hD0 hD
  have ht := weightedRow_integrable_tail f (by norm_num : (0 : ℝ) < 1)
  simpa only [Ioc_union_Ioi_eq_Ioi (by norm_num : (0 : ℝ) ≤ 1)] using hn.union ht

/-- This definition is used only together with the proved integrability
contract above. It is not a positive replacement for the signed source. -/
def fullRow (f : Physical) : Physical := ∫ r in Ioi (0 : ℝ), weightedRow f r

/-- The mixed scalar source is integrable against EVERY physical L2 test. -/
theorem mixedGamma_integrable {f : Physical} {D : ℝ}
    (hD0 : 0 ≤ D) (hD : TranslationSlope f D) (g : Physical) :
    IntegrableOn (fun r => parityKernel 0 r *
      (∫ t : ℝ, (g (t + r) - g t) * (f (t + r) - f t))) (Ioi 0) := by
  have h := (innerSL ℝ g).integrable_comp (weightedRow_integrable hD0 hD)
  simpa only [weightedRow, innerSL_apply_apply, inner_smul_right,
    symmetricDifference_pair, jump_pair_integral] using h

/-- Exact all-test source return, not just equality of finite matrix entries. -/
theorem fullRow_pair {f : Physical} {D : ℝ}
    (hD0 : 0 ≤ D) (hD : TranslationSlope f D) (g : Physical) :
    inner ℝ g (fullRow f) = gammaPairing g f := by
  have h := (innerSL ℝ g).integral_comp_comm (weightedRow_integrable hD0 hD)
  simpa only [fullRow, weightedRow, gammaPairing, innerSL_apply_apply,
    inner_smul_right, symmetricDifference_pair, jump_pair_integral] using h.symm

theorem fullRow_self {f : Physical} {D : ℝ}
    (hD0 : 0 ≤ D) (hD : TranslationSlope f D) :
    inner ℝ f (fullRow f) = oddArchimedeanEnergy f := by
  rw [fullRow_pair hD0 hD, gammaPairing_self]

/-- Window restriction is self-adjoint for the ORIGINAL physical norm. -/
theorem physicalWindow_pair (T : ℝ) (f g : Physical) :
    inner ℝ (physicalWindow T f) g = inner ℝ f (physicalWindow T g) := by
  simp only [L2.inner_def]
  apply integral_congr_ae
  filter_upwards [L2WindowRestriction.restrict_ae volume (Icc (-T) T) measurableSet_Icc f,
    L2WindowRestriction.restrict_ae volume (Icc (-T) T) measurableSet_Icc g] with t hf hg
  rw [hf, hg]
  by_cases ht : t ∈ Icc (-T) T <;> simp [ht]

theorem physicalWindow_support (T : ℝ) (f : Physical) :
    ∀ᵐ t : ℝ, t ∉ Icc (-T) T → (physicalWindow T f) t = 0 := by
  filter_upwards [L2WindowRestriction.restrict_ae volume (Icc (-T) T) measurableSet_Icc f]
    with t hf ht
  simp [hf, ht]

theorem physicalWindow_norm_le (T : ℝ) (f : Physical) : ‖physicalWindow T f‖ ≤ ‖f‖ :=
  L2WindowRestriction.norm_value_le volume (Icc (-T) T) measurableSet_Icc f

/-- Strict separation avoids endpoint choices; tail lags are strictly
larger than their lower integration endpoint even when b=2T. -/
theorem physicalWindow_translate_eq_zero (T r : ℝ) (hr : 2 * T < |r|)
    {f : Physical} (hs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0) :
    physicalWindow T (translate r f) = 0 := by
  have hshift := (measurePreserving_add_right volume r).quasiMeasurePreserving.ae hs
  apply Lp.ext
  filter_upwards [L2WindowRestriction.restrict_ae volume (Icc (-T) T) measurableSet_Icc
    (translate r f), translate_ae r f, hshift, (Lp.coeFn_zero : (0 : Physical) =ᵐ[volume] (fun _ : ℝ => (0 : ℝ)))]
    with t hw ht hz hzero
  rw [hw, hzero]
  by_cases hin : t ∈ Icc (-T) T
  · rw [indicator_of_mem hin, ht]
    apply hz
    intro hboth
    have habs : |r| ≤ 2 * T := abs_le.mpr ⟨by linarith [hin.2, hboth.1],
      by linarith [hin.1, hboth.2]⟩
    exact (not_le_of_gt hr) habs
  · simp [hin]

/-- The complete restricted far ROW is scalar mass, not merely its diagonal. -/
theorem physicalWindow_symmetricDifference_far (T r : ℝ) (hr : 2 * T < r)
    {f : Physical} (hs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0) :
    physicalWindow T (symmetricDifference f r) = (2 : ℝ) • f := by
  have hp := physicalWindow_translate_eq_zero T r (hr.trans_le (le_abs_self r)) hs
  have hm := physicalWindow_translate_eq_zero T (-r)
    (by simpa only [abs_neg] using hr.trans_le (le_abs_self r)) hs
  have hf : physicalWindow T f = f :=
    (L2WindowRestriction.restrict_eq_self_iff volume (Icc (-T) T) measurableSet_Icc f).2 hs
  simp only [symmetricDifference, jump, map_neg, map_add, map_sub, hp, hm, hf,
    zero_sub, neg_add_rev, neg_neg, two_smul]

def farRow (b : ℝ) (f : Physical) : Physical := ∫ r in Ioi b, weightedRow f r

theorem physicalWindow_farRow {T b : ℝ} (hb : 0 < b) (hTb : 2 * T ≤ b)
    {f : Physical} (hs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0) :
    physicalWindow T (farRow b f) = (2 * tailWeight b) • f := by
  rw [farRow, ← (physicalWindow T).integral_comp_comm (weightedRow_integrable_tail f hb)]
  calc
    _ = ∫ r in Ioi b, (2 * parityKernel 0 r) • f := by
      apply integral_congr_ae
      filter_upwards [ae_restrict_mem (μ := volume) measurableSet_Ioi] with r hr
      rw [weightedRow, map_smul, physicalWindow_symmetricDifference_far T r
        (hTb.trans_lt hr) hs, smul_smul]
      congr 1
      ring
    _ = _ := by rw [integral_smul_const, integral_const_mul]; rfl

/-- Split only after proving convergence of the entire Bochner integral. -/
theorem fullRow_split {a b D : ℝ} {f : Physical}
    (ha : 0 < a) (hab : a ≤ b) (hD0 : 0 ≤ D) (hD : TranslationSlope f D) :
    fullRow f = nearRow a f + middleRow a b f + farRow b f := by
  have h0 := weightedRow_integrable hD0 hD
  have ha' := weightedRow_integrable_tail f ha
  have h1 := intervalIntegral.integral_interval_add_Ioi h0 ha'
  have h2 := intervalIntegral.integral_interval_add_Ioi ha'
    (weightedRow_integrable_tail f (ha.trans_le hab))
  rw [intervalIntegral.integral_of_le ha.le] at h1
  change nearRow a f + farRow a f = fullRow f at h1
  change middleRow a b f + farRow b f = farRow a f at h2
  rw [← h1, ← h2, add_assoc]

/-- A finite physical row, with the complete separated lag tail retained. -/
def quadratureRow (T : ℝ) (x : ℕ → ℝ) (N : ℕ) (f : Physical) : Physical :=
  physicalWindow T (midpointRow x N f) + (2 * tailWeight (x N)) • f

/-- Exact error identity for the actual restricted gamma row. -/
theorem quadrature_error_eq (T : ℝ) (x : ℕ → ℝ) (N : ℕ)
    {f : Physical} {D : ℝ} (hx : Monotone x) (hx0 : 0 < x 0)
    (hfar : 2 * T ≤ x N)
    (hs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0)
    (hD0 : 0 ≤ D) (hD : TranslationSlope f D) :
    physicalWindow T (fullRow f) - quadratureRow T x N f =
      physicalWindow T (nearRow (x 0) f +
        (middleRow (x 0) (x N) f - midpointRow x N f)) := by
  rw [fullRow_split hx0 (hx (Nat.zero_le N)) hD0 hD]
  simp only [quadratureRow, map_add, map_sub,
    physicalWindow_farRow (hx0.trans_le (hx (Nat.zero_le N))) hfar hs]
  abel

/-- This is a physical-L2 source-row error, not a Fourier-head observation. -/
theorem quadrature_error_le (T : ℝ) (x : ℕ → ℝ) (N : ℕ)
    {f : Physical} {D eta : ℝ} (hx : Monotone x) (hx0 : 0 < x 0)
    (hfar : 2 * T ≤ x N) (heta : 0 ≤ eta)
    (hwidth : ∀ i < N, x (i + 1) - x i ≤ eta * x i)
    (hs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0)
    (hD0 : 0 ≤ D) (hD : TranslationSlope f D) :
    ‖physicalWindow T (fullRow f) - quadratureRow T x N f‖ ≤
      (x 0 + (x 0) ^ 2 + 5 * eta) * D := by
  rw [quadrature_error_eq T x N hx hx0 hfar hs hD0 hD]
  exact (physicalWindow_norm_le T _).trans
    (near_plus_mesh_error_le x N hx hx0 heta hwidth hD0 hD)

end GRWTSK.NumberTheory.WeilQuadraticForm.GammaBochnerRow
