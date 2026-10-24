# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripPrimitiveStep

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `de72f7f4170050e3954062180617a677a7cd7f1b` · SHA-256 `a9bad620ae8717352e649baf9fceb7e6295bec857f2afa636e38428abd7634f0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripQuarticPrimitive

set_option autoImplicit false

/-!
# A reusable, source-bound cell primitive step

A step identifies two actual bounded measurable kernels with a local primitive
and its derivative on every OPEN integer cell. The primitive has zero values at
both endpoints. Endpoint derivative values are not substituted across seams.
Cellwise integration by parts, a finite telescope and two independently vanishing
tails yield an INTEGER-cutoff tail identity. No all-order limit is assumed.
SOURCE SCRIPTS: Lean elaboration and transitive axiom audit are NOT_RUN.
-/

namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.MellinPrimitiveStep

open Complex MeasureTheory Set Filter
open scoped Topology
noncomputable section

structure BoundedKernel where
  value : ℝ → ℂ
  bound : ℝ
  bound_nonneg : 0 ≤ bound
  measurable : Measurable value
  norm_le : ∀ t, ‖value t‖ ≤ bound

namespace BoundedKernel

def integrand (K : BoundedKernel) (z : ℂ) (t : ℝ) : ℂ := K.value t * (t : ℂ) ^ (-z)
def tail (K : BoundedKernel) (z : ℂ) (T : ℝ) : ℂ := ∫ t : ℝ in Ioi T, K.integrand z t

lemma integrand_integrable (K : BoundedKernel) {T : ℝ} {z : ℂ}
    (hT : 1 ≤ T) (hz : 1 < z.re) : IntegrableOn (K.integrand z) (Ioi T) := by
  have hT0 : 0 < T := zero_lt_one.trans_le hT
  have hp : IntegrableOn (fun t : ℝ => t ^ (-z.re)) (Ioi T) :=
    integrableOn_Ioi_rpow_of_lt (by linarith) hT0
  have hc : ContinuousOn (fun t : ℝ => (t : ℂ) ^ (-z)) (Ioi T) := by
    intro t ht
    exact (Complex.continuousAt_ofReal_cpow_const _ _
      (Or.inr (hT0.trans ht).ne')).continuousWithinAt
  have hm : AEStronglyMeasurable (K.integrand z) (volume.restrict (Ioi T)) :=
    K.measurable.aestronglyMeasurable.mul (hc.aestronglyMeasurable measurableSet_Ioi)
  apply (hp.const_mul K.bound).mono' hm
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
  rw [integrand, norm_mul, Complex.norm_cpow_eq_rpow_re_of_pos (hT0.trans ht),
    Complex.neg_re]
  exact mul_le_mul_of_nonneg_right (K.norm_le t) (Real.rpow_nonneg (hT0.trans ht).le _)

/-- Both the real-part margin and cutoff are explicit. -/
theorem tail_norm_le (K : BoundedKernel) {T σ : ℝ} {z : ℂ}
    (hT : 1 ≤ T) (hσ : 1 < σ) (hz : σ ≤ z.re) :
    ‖K.tail z T‖ ≤ K.bound * (T ^ (-(σ - 1)) / (σ - 1)) := by
  have hT0 : 0 < T := zero_lt_one.trans_le hT
  have hi := K.integrand_integrable hT (hσ.trans_le hz)
  have hp : IntegrableOn (fun t : ℝ => t ^ (-σ)) (Ioi T) :=
    integrableOn_Ioi_rpow_of_lt (by linarith) hT0
  calc
    ‖K.tail z T‖ ≤ ∫ t in Ioi T, ‖K.integrand z t‖ := norm_integral_le_integral_norm _
    _ ≤ ∫ t : ℝ in Ioi T, K.bound * t ^ (-σ) := by
      apply integral_mono_ae hi.norm (hp.const_mul K.bound)
      filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
      rw [integrand, norm_mul, Complex.norm_cpow_eq_rpow_re_of_pos (hT0.trans ht),
        Complex.neg_re]
      exact mul_le_mul (K.norm_le t)
        (Real.rpow_le_rpow_of_exponent_le (hT.trans ht.le) (by linarith))
        (Real.rpow_nonneg (hT0.trans ht).le _) K.bound_nonneg
    _ = K.bound * (T ^ (-(σ - 1)) / (σ - 1)) := by
      rw [integral_const_mul, integral_Ioi_rpow_of_lt (by linarith : -σ < -1) hT0,
        show -σ + 1 = -(σ - 1) by ring, neg_div_neg_eq]

end BoundedKernel

/-- The local polynomial data must actually match the two source kernels. -/
structure CellPrimitive (f g : BoundedKernel) where
  cell : ℕ → ℝ → ℂ
  slope : ℕ → ℝ → ℂ
  hasDeriv : ∀ n t, HasDerivAt (cell n) (slope n t) t
  slope_continuous : ∀ n, Continuous (slope n)
  left_zero : ∀ n, cell n (n : ℝ) = 0
  right_zero : ∀ n, cell n ((n + 1 : ℕ) : ℝ) = 0
  source_eq : ∀ n, 1 ≤ n → ∀ t ∈ Ioo (n : ℝ) ((n + 1 : ℕ) : ℝ),
    f.value t = slope n t
  target_eq : ∀ n, 1 ≤ n → ∀ t ∈ Ioo (n : ℝ) ((n + 1 : ℕ) : ℝ),
    g.value t = cell n t

namespace CellPrimitive
variable {f g : BoundedKernel}

lemma cell_identity (S : CellPrimitive f g) {n : ℕ} {z : ℂ}
    (hn : 1 ≤ n) (hz : 1 < z.re) :
    (∫ t : ℝ in (n : ℝ)..((n + 1 : ℕ) : ℝ), f.integrand z t) =
      z * ∫ t : ℝ in (n : ℝ)..((n + 1 : ℕ) : ℝ), g.integrand (z + 1) t := by
  have hab : (n : ℝ) ≤ ((n + 1 : ℕ) : ℝ) := by exact_mod_cast Nat.le_succ n
  let w : ℝ → ℂ := fun t => (t : ℂ) ^ (-z)
  let wp : ℝ → ℂ := fun t => -z * (t : ℂ) ^ (-(z + 1))
  have hz0 : -z ≠ 0 := neg_ne_zero.mpr (Complex.ne_zero_of_re_pos (by linarith))
  have hw : ∀ t ∈ uIcc (n : ℝ) ((n + 1 : ℕ) : ℝ), HasDerivAt w (wp t) t := by
    intro t ht
    rw [uIcc_of_le hab] at ht
    have ht0 : 0 < t := (zero_lt_one.trans_le (by exact_mod_cast hn)).trans_le ht.1
    simpa only [w, wp, show -z - 1 = -(z + 1) by ring] using
      (hasDerivAt_ofReal_cpow_const ht0.ne' hz0)
  have hwp : ContinuousOn wp (uIcc (n : ℝ) ((n + 1 : ℕ) : ℝ)) := by
    apply continuousOn_const.mul
    intro t ht
    rw [uIcc_of_le hab] at ht
    have ht0 : 0 < t := (zero_lt_one.trans_le (by exact_mod_cast hn)).trans_le ht.1
    exact (Complex.continuousAt_ofReal_cpow_const _ _ (Or.inr ht0.ne')).continuousWithinAt
  have hb := intervalIntegral.integral_mul_deriv_eq_deriv_mul hw
    (fun t _ => S.hasDeriv n t) hwp.intervalIntegrable
    ((S.slope_continuous n).intervalIntegrable _ _)
  have hf : (∫ t : ℝ in (n : ℝ)..((n + 1 : ℕ) : ℝ), f.integrand z t) =
      ∫ t : ℝ in (n : ℝ)..((n + 1 : ℕ) : ℝ), w t * S.slope n t := by
    apply intervalIntegral.integral_congr_ae_restrict
    rw [uIoc_of_le hab, ← restrict_Ioo_eq_restrict_Ioc]
    filter_upwards [ae_restrict_mem measurableSet_Ioo] with t ht
    rw [BoundedKernel.integrand, S.source_eq n hn t ht]
    exact mul_comm _ _
  have hg : (∫ t : ℝ in (n : ℝ)..((n + 1 : ℕ) : ℝ), g.integrand (z + 1) t) =
      ∫ t : ℝ in (n : ℝ)..((n + 1 : ℕ) : ℝ), S.cell n t * (t : ℂ) ^ (-(z + 1)) := by
    apply intervalIntegral.integral_congr_ae_restrict
    rw [uIoc_of_le hab, ← restrict_Ioo_eq_restrict_Ioc]
    filter_upwards [ae_restrict_mem measurableSet_Ioo] with t ht
    rw [BoundedKernel.integrand, S.target_eq n hn t ht]
  rw [hf, hb, hg]
  simp only [S.left_zero, S.right_zero, mul_zero, sub_self, zero_sub]
  rw [← intervalIntegral.integral_neg, ← intervalIntegral.integral_const_mul]
  apply intervalIntegral.integral_congr
  intro t ht
  dsimp only [wp]
  ring

lemma finite_identity (S : CellPrimitive f g) {N : ℕ} {z : ℂ}
    (hN : 1 ≤ N) (hz : 1 < z.re) :
    (∫ t : ℝ in (1 : ℝ)..(N : ℝ), f.integrand z t) =
      z * ∫ t : ℝ in (1 : ℝ)..(N : ℝ), g.integrand (z + 1) t := by
  have hf := f.integrand_integrable (T := 1) le_rfl hz
  have hg := g.integrand_integrable (T := 1) le_rfl
    (by simp only [Complex.add_re, Complex.one_re]; linarith)
  induction N, hN using Nat.le_induction with
  | base => simp
  | succ N hN ih =>
    have hNR : (1 : ℝ) ≤ N := by exact_mod_cast hN
    have hNN : (N : ℝ) ≤ ((N + 1 : ℕ) : ℝ) := by exact_mod_cast Nat.le_succ N
    rw [← intervalIntegral.integral_add_adjacent_intervals
      (CenteredMellin.QuadraticPrimitive.intervalIntegrable_of_tail hf le_rfl hNR)
      (CenteredMellin.QuadraticPrimitive.intervalIntegrable_of_tail hf hNR hNN)]
    rw [ih, S.cell_identity hN hz, ← mul_add,
      intervalIntegral.integral_add_adjacent_intervals
      (CenteredMellin.QuadraticPrimitive.intervalIntegrable_of_tail hg le_rfl hNR)
      (CenteredMellin.QuadraticPrimitive.intervalIntegrable_of_tail hg hNR hNN)]

/-- The full identity follows from TWO convergent tails and the finite telescope. -/
theorem value_identity (S : CellPrimitive f g) {z : ℂ} (hz : 1 < z.re) :
    f.tail z 1 = z * g.tail (z + 1) 1 := by
  let R : ℂ := f.tail z 1 - z * g.tail (z + 1) 1
  have hz1 : 1 < (z + 1).re := by simp only [Complex.add_re, Complex.one_re]; linarith
  have heq (N : ℕ) (hN : 1 ≤ N) :
      R = f.tail z N - z * g.tail (z + 1) N := by
    have hNR : (1 : ℝ) ≤ N := by exact_mod_cast hN
    have hf := CenteredMellin.QuadraticPrimitive.split_integral_tail
      (f.integrand_integrable (T := 1) le_rfl hz) hNR
    have hg := CenteredMellin.QuadraticPrimitive.split_integral_tail
      (g.integrand_integrable (T := 1) le_rfl hz1) hNR
    change f.tail z 1 = _ + f.tail z N at hf
    change g.tail (z + 1) 1 = _ + g.tail (z + 1) N at hg
    dsimp only [R]
    rw [hf, hg, S.finite_identity hN hz]
    ring
  have hbound (n : ℕ) : ‖R‖ ≤
      f.bound * (((n : ℝ) + 1) ^ (-(z.re - 1)) / (z.re - 1)) +
      ‖z‖ * (g.bound * (((n : ℝ) + 1) ^ (-z.re) / z.re)) := by
    rw [heq (n + 1) (by omega)]
    have hf := f.tail_norm_le (T := ((n + 1 : ℕ) : ℝ))
      (by exact_mod_cast Nat.succ_le_succ (Nat.zero_le n)) hz le_rfl
    have hg := g.tail_norm_le (T := ((n + 1 : ℕ) : ℝ))
      (by exact_mod_cast Nat.succ_le_succ (Nat.zero_le n)) hz1 le_rfl
    have htri := norm_sub_le (f.tail z (n + 1)) (z * g.tail (z + 1) (n + 1))
    rw [norm_mul] at htri
    have hb := htri.trans (add_le_add hf (mul_le_mul_of_nonneg_left hg (norm_nonneg z)))
    simpa only [Nat.cast_add, Nat.cast_one, Complex.add_re, Complex.one_re,
      add_sub_cancel_right] using hb
  have hn : Tendsto (fun n : ℕ => (n : ℝ) + 1) atTop atTop :=
    tendsto_atTop_add_const_right _ _ tendsto_natCast_atTop_atTop
  have hlim : Tendsto (fun n : ℕ =>
      f.bound * (((n : ℝ) + 1) ^ (-(z.re - 1)) / (z.re - 1)) +
      ‖z‖ * (g.bound * (((n : ℝ) + 1) ^ (-z.re) / z.re))) atTop (𝓝 0) := by
    have h1 := (((tendsto_rpow_neg_atTop (by linarith : 0 < z.re - 1)).comp hn).div_const
      (z.re - 1)).const_mul f.bound
    have h2 := ((((tendsto_rpow_neg_atTop (by linarith : 0 < z.re)).comp hn).div_const
      z.re).const_mul g.bound).const_mul ‖z‖
    simpa using h1.add h2
  have hzero : ‖R‖ ≤ 0 := le_of_tendsto_of_tendsto tendsto_const_nhds hlim
    (Eventually.of_forall hbound)
  exact sub_eq_zero.mp (norm_eq_zero.mp (le_antisymm hzero (norm_nonneg _)))

theorem integer_tail_identity (S : CellPrimitive f g) {N : ℕ} {z : ℂ}
    (hN : 1 ≤ N) (hz : 1 < z.re) : f.tail z N = z * g.tail (z + 1) N := by
  have hz1 : 1 < (z + 1).re := by simp only [Complex.add_re, Complex.one_re]; linarith
  have hNR : (1 : ℝ) ≤ N := by exact_mod_cast hN
  have hf := CenteredMellin.QuadraticPrimitive.split_integral_tail
    (f.integrand_integrable (T := 1) le_rfl hz) hNR
  have hg := CenteredMellin.QuadraticPrimitive.split_integral_tail
    (g.integrand_integrable (T := 1) le_rfl hz1) hNR
  change f.tail z 1 = _ + f.tail z N at hf
  change g.tail (z + 1) 1 = _ + g.tail (z + 1) N at hg
  have hvalue := S.value_identity hz
  rw [hf, hg, S.finite_identity hN hz] at hvalue
  linear_combination hvalue

end CellPrimitive
end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.MellinPrimitiveStep
```
