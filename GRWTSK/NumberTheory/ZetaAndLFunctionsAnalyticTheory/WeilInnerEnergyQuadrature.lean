/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors

SOURCE_PROOF_CANDIDATE / LEAN_ELABORATION_NOT_RUN /
FULL_DEPENDENCY_BUILD_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN / INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilGammaHeadIntegrability
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic

/-!
# Midpoint evaluation of the original physical shift energies

Consumer: `WeilNestedGammaQuadrature.primitiveArithmeticValue_nested_enclosure`.
The integral is exactly `SourcePrimeCorrelation.energy (fun t => f (t+s)-f t)`.
No new quadratic form or arithmetic source is defined.

Write D=2*A+R, h=D/m and x_j=-A-R+(j+1/2)*h. For a globally L-Lipschitz
complex source supported in [-A,A], 0<=s<=R, the actual integrand has modulus
4*L^2*s. Its support is contained in [-A-R,A]. Integrating |t-x_j| over
EACH entire midpoint cell gives h^2/4, hence error L^2*s*D^2/m.
If each of the two source evaluations has norm error at most eta, their
increment has error at most 2*eta. Factoring the difference of squared norms
then gives 4*L*s*eta+4*eta^2 per sample, not just a linear error term.

The two finite arrays and the source-bound inequalities in the last theorem
are the certified point-evaluation interface. It asserts soundness for supplied
certificates, NOT effective evaluation of an arbitrary abstract smooth function.
Rational real/imaginary arrays may instantiate the interface, but no backend,
complete rational arithmetic evaluator, test-class density, Weil explicit
formula, zeta pole evaluation or universal sign statement is supplied here.

Native source: grwtsk/math@7fd7181a0a62c5c1e9e2607d4f5b2e22f020da0c.
Lean leanprover/lean4:v4.34.1; Mathlib
 d13f23b723b8a846827a245b89c10fc7d3f11612.
Standard reverse-triangle and composite midpoint estimates; novelty UNASSESSED.
Individual source-local records identify the exact statements and nonclaims.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators NNReal

namespace GRWTSK.NumberTheory.WeilQuadraticForm.InnerEnergyQuadrature

open SourcePrimeCorrelation GammaHeadIntegrability

/-- Uniform physical midpoint, with no periodic identification. -/
def midpoint (A R : ℝ) (m j : ℕ) : ℝ :=
  -A - R + ((j : ℝ) + 1 / 2) * ((2 * A + R) / (m : ℝ))

/-- Exact source samples; this finite sum is not an extra integral. -/
def midpointEnergy (A R : ℝ) (m : ℕ) (f : ℝ → ℂ) (s : ℝ) : ℝ :=
  ((2 * A + R) / (m : ℝ)) *
    ∑ j ∈ Finset.range m, ‖f (midpoint A R m j + s) - f (midpoint A R m j)‖ ^ 2

/-- The finite sum formed from supplied point approximations. -/
def sampledEnergy (A R : ℝ) (m : ℕ) (zp z0 : ℕ → ℂ) : ℝ :=
  ((2 * A + R) / (m : ℝ)) * ∑ j ∈ Finset.range m, ‖zp j - z0 j‖ ^ 2

/-- Geometric quadrature error plus both point-evaluation errors. -/
def innerBudget (A R : ℝ) (L : ℝ≥0) (s : ℝ) (m : ℕ) (η : ℝ) : ℝ :=
  (L : ℝ) ^ 2 * s * (2 * A + R) ^ 2 / (m : ℝ) +
    (2 * A + R) * (4 * (L : ℝ) * s * η + 4 * η ^ 2)

private theorem shift_norm_le {f : ℝ → ℂ} {L : ℝ≥0}
    (hL : LipschitzWith L f) {s : ℝ} (hs : 0 ≤ s) (x : ℝ) :
    ‖f (x + s) - f x‖ ≤ (L : ℝ) * s := by
  simpa only [add_sub_cancel_left, Real.norm_eq_abs, abs_of_nonneg hs] using
    hL.norm_sub_le (x + s) x

/-- The actual integrand's spatial modulus, derived before any quadrature. -/
theorem shiftSquare_spatial_difference_le {f : ℝ → ℂ} {L : ℝ≥0}
    (hL : LipschitzWith L f) {s : ℝ} (hs : 0 ≤ s) (x y : ℝ) :
    |‖f (x + s) - f x‖ ^ 2 - ‖f (y + s) - f y‖ ^ 2| ≤
      4 * (L : ℝ) ^ 2 * s * |x - y| := by
  let z := f (x + s) - f x
  let w := f (y + s) - f y
  have hz : ‖z‖ ≤ (L : ℝ) * s := shift_norm_le hL hs x
  have hw : ‖w‖ ≤ (L : ℝ) * s := shift_norm_le hL hs y
  have hd : ‖z - w‖ ≤ 2 * (L : ℝ) * |x - y| := by
    calc
      _ = ‖(f (x + s) - f (y + s)) - (f x - f y)‖ := by
        dsimp [z, w]; congr 1; abel
      _ ≤ ‖f (x + s) - f (y + s)‖ + ‖f x - f y‖ := norm_sub_le _ _
      _ ≤ (L : ℝ) * ‖(x + s) - (y + s)‖ + (L : ℝ) * ‖x - y‖ :=
        add_le_add (hL.norm_sub_le _ _) (hL.norm_sub_le _ _)
      _ = _ := by simp only [add_sub_add_right_eq_sub, Real.norm_eq_abs]; ring
  have hd' := (abs_norm_sub_norm_le z w).trans hd
  have heq : ‖z‖ ^ 2 - ‖w‖ ^ 2 = (‖z‖ - ‖w‖) * (‖z‖ + ‖w‖) := by ring
  change |‖z‖ ^ 2 - ‖w‖ ^ 2| ≤ _
  rw [heq, abs_mul, abs_of_nonneg (add_nonneg (norm_nonneg _) (norm_nonneg _))]
  calc
    _ ≤ (2 * (L : ℝ) * |x - y|) * (2 * (L : ℝ) * s) :=
      mul_le_mul hd' (by linarith)
        (add_nonneg (norm_nonneg _) (norm_nonneg _)) (by positivity)
    _ = _ := by ring

/-- Full cell integration, not a bound inferred from the midpoint value. -/
private theorem integral_abs_midpoint {a b : ℝ} (hab : a ≤ b) :
    (∫ x in a..b, |x - (a + b) / 2|) = (b - a) ^ 2 / 4 := by
  let c : ℝ := (a + b) / 2
  have hac : a ≤ c := by dsimp [c]; linarith
  have hcb : c ≤ b := by dsimp [c]; linarith
  have hc : Continuous (fun x : ℝ => |x - c|) :=
    (continuous_id.sub continuous_const).abs
  have hl : (∫ x in a..c, |x - c|) = ∫ x in a..c, c - x := by
    apply intervalIntegral.integral_congr
    intro x hx
    rw [uIcc_of_le hac] at hx
    rw [abs_of_nonpos (sub_nonpos.mpr hx.2)]
    ring
  have hr : (∫ x in c..b, |x - c|) = ∫ x in c..b, x - c := by
    apply intervalIntegral.integral_congr
    intro x hx
    rw [uIcc_of_le hcb] at hx
    exact abs_of_nonneg (sub_nonneg.mpr hx.1)
  calc
    _ = (∫ x in a..c, |x - c|) + ∫ x in c..b, |x - c| :=
      (intervalIntegral.integral_add_adjacent_intervals
        (hc.intervalIntegrable a c) (hc.intervalIntegrable c b)).symm
    _ = _ := by
      rw [hl, hr,
        intervalIntegral.integral_sub intervalIntegrable_const
          (continuous_id.intervalIntegrable a c),
        intervalIntegral.integral_sub (continuous_id.intervalIntegrable c b)
          intervalIntegrable_const]
      simp only [intervalIntegral.integral_const, integral_id, smul_eq_mul]
      dsimp [c]
      ring

private theorem midpoint_cell_error {g : ℝ → ℝ} (hg : Continuous g) {C a b : ℝ}
    (hmod : ∀ x y, |g x - g y| ≤ C * |x - y|) (hab : a ≤ b) :
    |(∫ x in a..b, g x) - (b - a) * g ((a + b) / 2)| ≤ C * (b - a) ^ 2 / 4 := by
  have hbound : ‖∫ x in a..b, (g x - g ((a + b) / 2))‖ ≤
      ∫ x in a..b, C * |x - (a + b) / 2| := by
    apply intervalIntegral.norm_integral_le_of_norm_le hab
    · exact Filter.Eventually.of_forall (fun x _ => by
        simpa only [Real.norm_eq_abs] using hmod x ((a + b) / 2))
    · exact (continuous_const.mul (continuous_id.sub continuous_const).abs).intervalIntegrable _ _
  rw [intervalIntegral.integral_sub (hg.intervalIntegrable a b) intervalIntegrable_const,
    intervalIntegral.integral_const, smul_eq_mul, Real.norm_eq_abs,
    intervalIntegral.integral_const_mul, integral_abs_midpoint hab] at hbound
  calc
    _ ≤ C * ((b - a) ^ 2 / 4) := hbound
    _ = _ := by ring

/-- Composite midpoint estimate obtained by adding all adjacent cell integrals. -/
private theorem uniform_midpoint_error {g : ℝ → ℝ} (hg : Continuous g) {C a h : ℝ}
    (hmod : ∀ x y, |g x - g y| ≤ C * |x - y|) (hh : 0 ≤ h) (m : ℕ) :
    |(∫ x in a..(a + (m : ℝ) * h), g x) -
      h * ∑ j ∈ Finset.range m, g (a + ((j : ℝ) + 1 / 2) * h)| ≤
      C * (m : ℝ) * h ^ 2 / 4 := by
  let b : ℕ → ℝ := fun j => a + (j : ℝ) * h
  have hsum : (∑ j ∈ Finset.range m, ∫ x in (b j)..(b (j + 1)), g x) =
      ∫ x in a..(a + (m : ℝ) * h), g x := by
    simpa only [b, Nat.cast_zero, zero_mul, add_zero] using
      (intervalIntegral.sum_integral_adjacent_intervals (a := b) (n := m)
        (fun j _ => hg.intervalIntegrable (b j) (b (j + 1))))
  have hcell (j : ℕ) :
      |(∫ x in (b j)..(b (j + 1)), g x) - h * g (a + ((j : ℝ) + 1 / 2) * h)| ≤
        C * h ^ 2 / 4 := by
    have hwidth : b (j + 1) - b j = h := by dsimp [b]; push_cast; ring
    have hmid : (b j + b (j + 1)) / 2 = a + ((j : ℝ) + 1 / 2) * h := by
      dsimp [b]; push_cast; ring
    have horder : b j ≤ b (j + 1) := by linarith
    simpa only [hwidth, hmid] using midpoint_cell_error hg hmod horder
  calc
    _ = |∑ j ∈ Finset.range m, ((∫ x in (b j)..(b (j + 1)), g x) -
        h * g (a + ((j : ℝ) + 1 / 2) * h))| := by
      rw [Finset.sum_sub_distrib, ← Finset.mul_sum, hsum]
    _ ≤ ∑ j ∈ Finset.range m, |(∫ x in (b j)..(b (j + 1)), g x) -
        h * g (a + ((j : ℝ) + 1 / 2) * h)| := Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ _j ∈ Finset.range m, C * h ^ 2 / 4 :=
      Finset.sum_le_sum (fun j _ => hcell j)
    _ = _ := by simp only [Finset.sum_const, Finset.card_range, nsmul_eq_mul]; ring

/-- Localization and full midpoint integration for the original whole-line energy.
The L2 assumption is unnecessary here: global Lipschitz continuity and compact
support supply the actual integrability. It remains available in outer consumers. -/
theorem shiftEnergy_midpoint_error {f : ℝ → ℂ} {L : ℝ≥0}
    (hL : LipschitzWith L f) {A R s : ℝ} (hA : 0 ≤ A) (hR : 0 < R)
    (hsupport : ∀ t, t ∉ Icc (-A) A → f t = 0)
    (hs : s ∈ Icc (0 : ℝ) R) {m : ℕ} (hm : 0 < m) :
    |energy (fun t => f (t + s) - f t) - midpointEnergy A R m f s| ≤
      (L : ℝ) ^ 2 * s * (2 * A + R) ^ 2 / (m : ℝ) := by
  have hm0 : (m : ℝ) ≠ 0 := ne_of_gt (Nat.cast_pos.mpr hm)
  have hfc := hL.continuous
  have hg : Continuous (fun t : ℝ => ‖f (t + s) - f t‖ ^ 2) := by fun_prop
  have hzero (t : ℝ) (ht : t ∉ Icc (-A - R) A) : ‖f (t + s) - f t‖ ^ 2 = 0 := by
    rw [shiftDifference_zero_outside hsupport hs.1 hs.2 ht]
    simp
  have hloc : (∫ t in (-A - R)..A, ‖f (t + s) - f t‖ ^ 2) =
      energy (fun t => f (t + s) - f t) := by
    rw [intervalIntegral.integral_of_le (show -A - R ≤ A by linarith),
      setIntegral_congr_set Ioc_ae_eq_Icc]
    exact setIntegral_eq_integral_of_forall_compl_eq_zero hzero
  have hend : -A - R + (m : ℝ) * ((2 * A + R) / (m : ℝ)) = A := by
    field_simp [hm0]
    <;> ring
  have hquad := uniform_midpoint_error hg (shiftSquare_spatial_difference_le hL hs.1)
    (a := -A - R) (h := (2 * A + R) / (m : ℝ)) (by positivity) m
  rw [hend, hloc] at hquad
  calc
    _ ≤ (4 * (L : ℝ) ^ 2 * s) * (m : ℝ) * ((2 * A + R) / (m : ℝ)) ^ 2 / 4 := by
      simpa only [midpointEnergy, midpoint] using hquad
    _ = _ := by field_simp [hm0]; ring

private theorem normSquare_perturbation {z w : ℂ} {M e : ℝ}
    (he : 0 ≤ e) (hz : ‖z‖ ≤ M) (hzw : ‖z - w‖ ≤ e) :
    |‖z‖ ^ 2 - ‖w‖ ^ 2| ≤ 2 * M * e + e ^ 2 := by
  have hw : ‖w‖ ≤ M + e := by
    calc
      _ = ‖z - (z - w)‖ := by congr 1; abel
      _ ≤ ‖z‖ + ‖z - w‖ := norm_sub_le _ _
      _ ≤ _ := add_le_add hz hzw
  have hd := (abs_norm_sub_norm_le z w).trans hzw
  have hid : ‖z‖ ^ 2 - ‖w‖ ^ 2 = (‖z‖ - ‖w‖) * (‖z‖ + ‖w‖) := by ring
  rw [hid, abs_mul, abs_of_nonneg (add_nonneg (norm_nonneg _) (norm_nonneg _))]
  calc
    _ ≤ e * (2 * M + e) := mul_le_mul hd (by linarith)
      (add_nonneg (norm_nonneg _) (norm_nonneg _)) he
    _ = _ := by ring

/-- Source-bound point evaluation, retaining the quadratic roundoff term. -/
theorem shiftSquare_point_error {f : ℝ → ℂ} {L : ℝ≥0}
    (hL : LipschitzWith L f) {s η : ℝ} (hs : 0 ≤ s) (hη : 0 ≤ η)
    (x : ℝ) {zp z0 : ℂ} (hp : ‖zp - f (x + s)‖ ≤ η) (h0 : ‖z0 - f x‖ ≤ η) :
    |‖f (x + s) - f x‖ ^ 2 - ‖zp - z0‖ ^ 2| ≤ 4 * (L : ℝ) * s * η + 4 * η ^ 2 := by
  have hd : ‖(f (x + s) - f x) - (zp - z0)‖ ≤ 2 * η := by
    calc
      _ = ‖(f (x + s) - f x) - (zp - z0)‖ := rfl
      _ = ‖(f (x + s) - zp) - (f x - z0)‖ := by congr 1; abel
      _ ≤ ‖f (x + s) - zp‖ + ‖f x - z0‖ := norm_sub_le _ _
      _ = ‖zp - f (x + s)‖ + ‖z0 - f x‖ := by rw [norm_sub_rev (f (x + s)) zp, norm_sub_rev (f x) z0]
      _ ≤ _ := by linarith
  have hb := normSquare_perturbation (by positivity : 0 ≤ 2 * η) (shift_norm_le hL hs x) hd
  calc
    _ ≤ 2 * ((L : ℝ) * s) * (2 * η) + (2 * η) ^ 2 := hb
    _ = _ := by ring

/-- Complete inner-energy error from finite source-bound point certificates.
Only indices j<m are used. No computability premise for abstract functions is inferred. -/
theorem shiftEnergy_midpoint_approx_error {f : ℝ → ℂ} {L : ℝ≥0}
    (hL : LipschitzWith L f) {A R s η : ℝ} (hA : 0 ≤ A) (hR : 0 < R)
    (hsupport : ∀ t, t ∉ Icc (-A) A → f t = 0)
    (hs : s ∈ Icc (0 : ℝ) R) {m : ℕ} (hm : 0 < m) (hη : 0 ≤ η)
    (zp z0 : ℕ → ℂ)
    (hp : ∀ j < m, ‖zp j - f (midpoint A R m j + s)‖ ≤ η)
    (h0 : ∀ j < m, ‖z0 j - f (midpoint A R m j)‖ ≤ η) :
    |energy (fun t => f (t + s) - f t) - sampledEnergy A R m zp z0| ≤
      innerBudget A R L s m η := by
  have hm0 : (m : ℝ) ≠ 0 := ne_of_gt (Nat.cast_pos.mpr hm)
  have hh : 0 ≤ (2 * A + R) / (m : ℝ) := by positivity
  have hpoint (j : ℕ) (hj : j ∈ Finset.range m) :=
    shiftSquare_point_error hL hs.1 hη (midpoint A R m j)
      (hp j (Finset.mem_range.mp hj)) (h0 j (Finset.mem_range.mp hj))
  have heval : |midpointEnergy A R m f s - sampledEnergy A R m zp z0| ≤
      (2 * A + R) * (4 * (L : ℝ) * s * η + 4 * η ^ 2) := by
    unfold midpointEnergy sampledEnergy
    rw [← mul_sub, ← Finset.sum_sub_distrib, abs_mul, abs_of_nonneg hh]
    calc
      _ ≤ ((2 * A + R) / (m : ℝ)) *
          ∑ j ∈ Finset.range m,
            |‖f (midpoint A R m j + s) - f (midpoint A R m j)‖ ^ 2 - ‖zp j - z0 j‖ ^ 2| :=
        mul_le_mul_of_nonneg_left (Finset.abs_sum_le_sum_abs _ _) hh
      _ ≤ ((2 * A + R) / (m : ℝ)) *
          ∑ _j ∈ Finset.range m, (4 * (L : ℝ) * s * η + 4 * η ^ 2) :=
        mul_le_mul_of_nonneg_left (Finset.sum_le_sum hpoint) hh
      _ = _ := by
        simp only [Finset.sum_const, Finset.card_range, nsmul_eq_mul]
        field_simp [hm0]
        <;> ring
  calc
    _ ≤ |energy (fun t => f (t + s) - f t) - midpointEnergy A R m f s| +
        |midpointEnergy A R m f s - sampledEnergy A R m zp z0| := abs_sub_le _ _ _
    _ ≤ (L : ℝ) ^ 2 * s * (2 * A + R) ^ 2 / (m : ℝ) +
        (2 * A + R) * (4 * (L : ℝ) * s * η + 4 * η ^ 2) :=
      add_le_add (shiftEnergy_midpoint_error hL hA hR hsupport hs hm) heval
    _ = _ := rfl

end GRWTSK.NumberTheory.WeilQuadraticForm.InnerEnergyQuadrature
