/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilGammaCutoffResidual

/-!
# Source-weighted geometric quadrature of the literal gamma row

Retain the original whole-line L2 translations and `parityKernel 0`.
The actual gamma kernel obeys r*k(r) <= (r+1/2)*exp(-r/2), whose integral
from zero to ANY positive endpoint is at most 5. A relative-width mesh
therefore approximates the complete middle-lag L2 row with error <= 5*eta*D,
where D is the explicit whole-line translation slope. This bound does not
acquire a log(b/a) factor from replacing the kernel by its total mass.

Panel weights are exact INTEGRALS of the original kernel, equivalently
differences of the original tailWeight. They are not point samples of the
singular kernel. The midpoint row is a finite sum of actual translations.
The far tail is still exact mass; near-zero error is paid by the preceding
source module. The true high-core floor remains an independent input.

Consumer: the source-specific residual matrix construction in the local
note, feeding `EnergySchur` and the existing literal `WindowLower` return.
No passing arithmetic Schur sign or cofinal certificate existence is claimed.
Real physical L2 only; no character/complex transfer is inferred.

SOURCE_PROOF_CANDIDATE. Elaboration, exact types, fresh kernel replay,
transitive axiom audit, certified computation and independent review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set Filter
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.GammaGeometricQuadrature

open OddRootProjection TranslationCutoffs GammaCutoffResidual

/-- Keep the exponential factor when estimating the first lag moment. -/
theorem kernel_mul_lag_le_damped {r : ℝ} (hr : 0 < r) :
    parityKernel 0 r * r ≤ (r + 1 / 2) * Real.exp (-(1 / 2 : ℝ) * r) := by
  have hd : 0 < 1 - Real.exp (-2 * r) := by
    apply sub_pos.mpr
    rw [← Real.exp_zero]
    exact Real.exp_lt_exp.mpr (by linarith)
  have he := mul_le_mul_of_nonneg_right (Real.add_one_le_exp (2 * r))
    (Real.exp_pos (-2 * r)).le
  have hp : Real.exp (2 * r) * Real.exp (-2 * r) = 1 := by
    rw [← Real.exp_add]
    norm_num
  rw [hp] at he
  have hbase : r ≤ (r + 1 / 2) * (1 - Real.exp (-2 * r)) := by nlinarith
  change Real.exp (-(1 / 2 : ℝ) * r) / (1 - Real.exp (-2 * r)) * r ≤ _
  rw [div_mul_eq_mul_div]
  apply (div_le_iff₀ hd).2
  have h := mul_le_mul_of_nonneg_left hbase (Real.exp_pos (-(1 / 2 : ℝ) * r)).le
  nlinarith

private theorem measurable_kernel : Measurable (parityKernel 0) := by
  unfold parityKernel
  fun_prop

/-- A finite first moment; finiteness is proved before it is used. -/
def lagMoment (b : ℝ) : ℝ := ∫ r in Ioc 0 b, parityKernel 0 r * r

theorem lagMoment_integrable (b : ℝ) :
    IntegrableOn (fun r => parityKernel 0 r * r) (Ioc 0 b) := by
  have hc : Continuous (fun r : ℝ => (r + 1 / 2) * Real.exp (-(1 / 2 : ℝ) * r)) := by
    fun_prop
  apply (hc.intervalIntegrable 0 b).1.mono'
    (measurable_kernel.mul measurable_id).aestronglyMeasurable
  filter_upwards [ae_restrict_mem (μ := volume) measurableSet_Ioc] with r hr
  rw [Real.norm_of_nonneg (mul_nonneg (GammaLag.kernel_pos hr.1).le hr.1.le)]
  exact kernel_mul_lag_le_damped hr.1

private theorem majorant_integral {b : ℝ} (hb : 0 ≤ b) :
    (∫ r in Ioc 0 b, (r + 1 / 2) * Real.exp (-(1 / 2 : ℝ) * r)) =
      5 - (2 * b + 5) * Real.exp (-(1 / 2 : ℝ) * b) := by
  have hc : Continuous (fun r : ℝ => (r + 1 / 2) * Real.exp (-(1 / 2 : ℝ) * r)) := by
    fun_prop
  have hd (r : ℝ) : HasDerivAt
      (fun x : ℝ => -(2 * x + 5) * Real.exp (-(1 / 2 : ℝ) * x))
      ((r + 1 / 2) * Real.exp (-(1 / 2 : ℝ) * r)) r := by
    convert (((((hasDerivAt_id r).const_mul 2).add_const 5).neg).mul
      (((hasDerivAt_id r).const_mul (-(1 / 2 : ℝ))).exp)) using 1 <;> ring
  rw [← intervalIntegral.integral_of_le hb,
    intervalIntegral.integral_eq_sub_of_hasDerivAt (fun r _ => hd r)
      (hc.intervalIntegrable 0 b)]
  simp only [mul_zero, zero_add, Real.exp_zero, mul_one]
  ring

theorem lagMoment_nonneg (b : ℝ) : 0 ≤ lagMoment b := by
  apply integral_nonneg_of_ae
  filter_upwards [ae_restrict_mem (μ := volume) measurableSet_Ioc] with r hr
  exact mul_nonneg (GammaLag.kernel_pos hr.1).le hr.1.le

/-- A uniform scalar moment bound, not a uniform operator bound on L2. -/
theorem lagMoment_le_five {b : ℝ} (hb : 0 ≤ b) : lagMoment b ≤ 5 := by
  have hc : Continuous (fun r : ℝ => (r + 1 / 2) * Real.exp (-(1 / 2 : ℝ) * r)) := by
    fun_prop
  calc
    lagMoment b ≤ ∫ r in Ioc 0 b,
        (r + 1 / 2) * Real.exp (-(1 / 2 : ℝ) * r) := by
      apply integral_mono_ae (lagMoment_integrable b) (hc.intervalIntegrable 0 b).1
      filter_upwards [ae_restrict_mem (μ := volume) measurableSet_Ioc] with r hr
      exact kernel_mul_lag_le_damped hr.1
    _ = 5 - (2 * b + 5) * Real.exp (-(1 / 2 : ℝ) * b) := majorant_integral hb
    _ ≤ 5 := sub_le_self _ (mul_nonneg (by linarith) (Real.exp_pos _).le)

/-- The original translations obey their group law as L2 equivalence classes. -/
theorem translate_add_apply (r s : ℝ) (f : Physical) :
    translate r (translate s f) = translate (r + s) f := by
  apply Lp.ext
  have hs := (measurePreserving_add_right volume r).quasiMeasurePreserving.ae_eq_comp
    (translate_ae s f)
  filter_upwards [translate_ae r (translate s f), translate_ae (r + s) f, hs]
    with x hr hrs hs
  change translate s f (x + r) = f ((x + r) + s) at hs
  rw [hr, hs, hrs]
  congr 1
  ring

/-- The whole-line slope controls two arbitrary lag values. -/
theorem translate_difference_norm_le {f : Physical} {D : ℝ}
    (hD : TranslationSlope f D) (r s : ℝ) :
    ‖translate r f - translate s f‖ ≤ |r - s| * D := by
  have hid : translate s (jump f (r - s)) = translate r f - translate s f := by
    simp only [jump, map_sub, translate_add_apply]
    rw [show s + (r - s) = r by ring]
  rw [← hid, translate_norm]
  exact hD (r - s)

theorem symmetricDifference_lipschitz {f : Physical} {D : ℝ}
    (hD : TranslationSlope f D) (r s : ℝ) :
    ‖symmetricDifference f r - symmetricDifference f s‖ ≤ 2 * |r - s| * D := by
  have hid : symmetricDifference f r - symmetricDifference f s =
      -((translate r f - translate s f) + (translate (-r) f - translate (-s) f)) := by
    unfold symmetricDifference jump
    abel
  rw [hid, norm_neg]
  calc
    _ ≤ ‖translate r f - translate s f‖ + ‖translate (-r) f - translate (-s) f‖ :=
      norm_add_le _ _
    _ ≤ |r - s| * D + |(-r) - (-s)| * D :=
      add_le_add (translate_difference_norm_le hD r s)
        (translate_difference_norm_le hD (-r) (-s))
    _ = _ := by rw [neg_sub_neg, abs_sub_comm s r]; ring

private theorem kernel_intervalIntegrable {x y : ℝ} (hx : 0 < x) (hxy : x ≤ y) :
    IntervalIntegrable (parityKernel 0) volume x y :=
  (intervalIntegrable_iff_integrableOn_Ioc_of_le hxy).2
    ((kernel_integrableOn_tail hx).mono_set Ioc_subset_Ioi_self)

private theorem row_intervalIntegrable (f : Physical) {x y : ℝ}
    (hx : 0 < x) (hxy : x ≤ y) :
    IntervalIntegrable (fun r => parityKernel 0 r • symmetricDifference f r) volume x y := by
  apply (intervalIntegrable_iff_integrableOn_Ioc_of_le hxy).2
  have hk := (kernel_intervalIntegrable hx hxy).1
  apply (hk.mul_const (4 * ‖f‖)).mono'
    (measurable_kernel.aestronglyMeasurable.smul
      (continuous_symmetricDifference f).aestronglyMeasurable)
  filter_upwards [ae_restrict_mem (μ := volume) measurableSet_Ioc] with r hr
  rw [norm_smul, Real.norm_of_nonneg (GammaLag.kernel_pos (hx.trans hr.1)).le]
  apply mul_le_mul_of_nonneg_left _ (GammaLag.kernel_pos (hx.trans hr.1)).le
  unfold symmetricDifference
  rw [norm_neg]
  exact (norm_add_le _ _).trans (by linarith [jump_norm_le f r, jump_norm_le f (-r)])

private theorem moment_intervalIntegrable {x y : ℝ} (hx : 0 ≤ x) (hxy : x ≤ y) :
    IntervalIntegrable (fun r => parityKernel 0 r * r) volume x y :=
  (intervalIntegrable_iff_integrableOn_Ioc_of_le hxy).2
    ((lagMoment_integrable y).mono_set (Ioc_subset_Ioc hx le_rfl))

/-- This is the actual middle-lag Bochner row. -/
def middleRow (x y : ℝ) (f : Physical) : Physical :=
  ∫ r in x..y, parityKernel 0 r • symmetricDifference f r

/-- Source-integrated weight, not midpoint times kernel density. -/
def cellWeight (x y : ℝ) : ℝ := ∫ r in x..y, parityKernel 0 r

theorem cellWeight_eq_tail_sub {x y : ℝ} (hx : 0 < x) (hxy : x ≤ y) :
    cellWeight x y = tailWeight x - tailWeight y := by
  exact (intervalIntegral.integral_Ioi_sub_Ioi (kernel_integrableOn_tail hx) hxy).symm

def panelRow (x y : ℝ) (f : Physical) : Physical :=
  cellWeight x y • symmetricDifference f ((x + y) / 2)

theorem middle_sub_panel (f : Physical) {x y : ℝ} (hx : 0 < x) (hxy : x ≤ y) :
    middleRow x y f - panelRow x y f =
      ∫ r in x..y, parityKernel 0 r •
        (symmetricDifference f r - symmetricDifference f ((x + y) / 2)) := by
  unfold middleRow panelRow cellWeight
  rw [← intervalIntegral.integral_smul_const,
    ← intervalIntegral.integral_sub (row_intervalIntegrable f hx hxy)
      ((kernel_intervalIntegrable hx hxy).smul_const _)]
  congr 1
  funext r
  exact (smul_sub _ _ _).symm

private theorem midpoint_relative {x y r eta : ℝ} (heta : 0 ≤ eta)
    (hwidth : y - x ≤ eta * x) (hr : r ∈ Ioc x y) :
    2 * |r - (x + y) / 2| ≤ eta * r := by
  have hd : |r - (x + y) / 2| ≤ (y - x) / 2 :=
    abs_le.mpr ⟨by linarith [hr.1], by linarith [hr.2]⟩
  have he := mul_le_mul_of_nonneg_left hr.1.le heta
  linarith

/-- Error for one whole panel, uniform in every subsequent physical test. -/
theorem panel_error_le {f : Physical} {D x y eta : ℝ}
    (hx : 0 < x) (hxy : x ≤ y) (heta : 0 ≤ eta)
    (hwidth : y - x ≤ eta * x) (hD0 : 0 ≤ D) (hD : TranslationSlope f D) :
    ‖middleRow x y f - panelRow x y f‖ ≤
      eta * D * (∫ r in x..y, parityKernel 0 r * r) := by
  rw [middle_sub_panel f hx hxy, intervalIntegral.integral_of_le hxy]
  have hi := ((moment_intervalIntegrable hx.le hxy).1).const_mul (eta * D)
  calc
    _ ≤ ∫ r in Ioc x y, (eta * D) * (parityKernel 0 r * r) := by
      apply norm_integral_le_of_norm_le hi
      filter_upwards [ae_restrict_mem (μ := volume) measurableSet_Ioc] with r hr
      have hk := (GammaLag.kernel_pos (hx.trans hr.1)).le
      rw [norm_smul, Real.norm_of_nonneg hk]
      have hrow := symmetricDifference_lipschitz hD r ((x + y) / 2)
      have hdist := mul_le_mul_of_nonneg_right (midpoint_relative heta hwidth hr) hD0
      have hrow' : ‖symmetricDifference f r - symmetricDifference f ((x + y) / 2)‖
          ≤ eta * r * D := hrow.trans hdist
      have h := mul_le_mul_of_nonneg_left hrow' hk
      nlinarith
    _ = _ := by rw [integral_const_mul, intervalIntegral.integral_of_le hxy]

def midpointRow (x : ℕ → ℝ) (N : ℕ) (f : Physical) : Physical :=
  ∑ i ∈ Finset.range N, panelRow (x i) (x (i + 1)) f

/-- Exact telescoping is proved for the source integrals before estimating. -/
theorem middleRow_eq_sum (x : ℕ → ℝ) (N : ℕ) (f : Physical)
    (hx : Monotone x) (hx0 : 0 < x 0) :
    middleRow (x 0) (x N) f =
      ∑ i ∈ Finset.range N, middleRow (x i) (x (i + 1)) f := by
  symm
  apply intervalIntegral.sum_integral_adjacent_intervals
  intro i _hi
  exact row_intervalIntegrable f (hx0.trans_le (hx (Nat.zero_le i))) (hx (Nat.le_succ i))

/-- Full middle-lag row estimate. Only the translation slope depends on the
trial; the constant 5 is independent of the support radius and lag endpoints. -/
theorem relativeMesh_row_error_le (x : ℕ → ℝ) (N : ℕ)
    {f : Physical} {D eta : ℝ} (hx : Monotone x) (hx0 : 0 < x 0)
    (heta : 0 ≤ eta) (hwidth : ∀ i < N, x (i + 1) - x i ≤ eta * x i)
    (hD0 : 0 ≤ D) (hD : TranslationSlope f D) :
    ‖middleRow (x 0) (x N) f - midpointRow x N f‖ ≤ 5 * eta * D := by
  have hm : (∑ i ∈ Finset.range N, ∫ r in x i..x (i + 1), parityKernel 0 r * r) =
      ∫ r in x 0..x N, parityKernel 0 r * r := by
    apply intervalIntegral.sum_integral_adjacent_intervals
    intro i _hi
    exact moment_intervalIntegrable (hx0.trans_le (hx (Nat.zero_le i))).le
      (hx (Nat.le_succ i))
  have hmoment : (∫ r in x 0..x N, parityKernel 0 r * r) ≤ 5 := by
    have hid := intervalIntegral.integral_add_adjacent_intervals
      (moment_intervalIntegrable (by norm_num : (0 : ℝ) ≤ 0) hx0.le)
      (moment_intervalIntegrable hx0.le (hx (Nat.zero_le N)))
    have hsmall := lagMoment_nonneg (x 0)
    have hlarge := lagMoment_le_five ((hx0.trans_le (hx (Nat.zero_le N))).le)
    rw [intervalIntegral.integral_of_le hx0.le,
      intervalIntegral.integral_of_le ((hx0.trans_le (hx (Nat.zero_le N))).le)] at hid
    change 0 ≤ ∫ r in Ioc 0 (x 0), parityKernel 0 r * r at hsmall
    change (∫ r in Ioc 0 (x N), parityKernel 0 r * r) ≤ 5 at hlarge
    linarith
  rw [middleRow_eq_sum x N f hx hx0, midpointRow, ← Finset.sum_sub_distrib]
  calc
    _ ≤ ∑ i ∈ Finset.range N, ‖middleRow (x i) (x (i + 1)) f - panelRow (x i) (x (i + 1)) f‖ :=
      norm_sum_le _ _
    _ ≤ ∑ i ∈ Finset.range N,
        eta * D * (∫ r in x i..x (i + 1), parityKernel 0 r * r) := by
      apply Finset.sum_le_sum
      intro i hi
      exact panel_error_le (hx0.trans_le (hx (Nat.zero_le i))) (hx (Nat.le_succ i))
        heta (hwidth i (Finset.mem_range.mp hi)) hD0 hD
    _ = eta * D * (∫ r in x 0..x N, parityKernel 0 r * r) := by
      rw [← Finset.mul_sum, hm]
    _ ≤ 5 * eta * D := by
      have h := mul_le_mul_of_nonneg_left hmoment (mul_nonneg heta hD0)
      nlinarith

/-- Add the independently paid near-zero row. The support-separated far
lag contribution is exact, so it does not create another residual term. -/
theorem near_plus_mesh_error_le (x : ℕ → ℝ) (N : ℕ)
    {f : Physical} {D eta : ℝ} (hx : Monotone x) (hx0 : 0 < x 0)
    (heta : 0 ≤ eta) (hwidth : ∀ i < N, x (i + 1) - x i ≤ eta * x i)
    (hD0 : 0 ≤ D) (hD : TranslationSlope f D) :
    ‖nearRow (x 0) f + (middleRow (x 0) (x N) f - midpointRow x N f)‖ ≤
      (x 0 + (x 0) ^ 2 + 5 * eta) * D := by
  have hn := nearRow_norm_le hx0.le hD0 hD
  have hm := relativeMesh_row_error_le x N hx hx0 heta hwidth hD0 hD
  exact (norm_add_le _ _).trans (by nlinarith)

end GRWTSK.NumberTheory.WeilQuadraticForm.GammaGeometricQuadrature
