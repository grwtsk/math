/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import Mathlib.Analysis.Fourier.AddCircle
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Push
import Mathlib.Tactic.Ring

/-!
# The periodic translation energy in Fourier coordinates

The forward translation `f(x+r)` multiplies the coefficient at mode `n`
by the positive monomial `fourier n r`. Mathlib defines the coefficient
with the negative monomial. Translation invariance of Haar measure and
the character multiplication law give this exact phase. Subtracting the
unshifted function replaces the phase by its difference from one. The
square of its norm is `2*(1-cos(2*pi*n*r/L))`, so Mathlib's Fourier
Parseval theorem gives the translation energy as a nonnegative weighted
series.

The circle Haar measure has total mass one. On a real fundamental
interval the same energy is the Lebesgue integral divided by its
length `L`. The interval version uses Mathlib's actual periodic lift and
Fourier coefficients, with the original representative on the unshifted
term. The Weil window uses `L = 2*T` and left endpoint `-T`. Integrating
the jump energies against the gamma kernel and comparing periodic with
zero extension require separate results.

Standard Fourier analysis and source transport. Independent analytical
review and novelty assessment remain NOT_RUN.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory AddCircle
open scoped Real

namespace GRWTSK.NumberTheory.WeilQuadraticForm.PeriodicTranslationParseval

variable {L : ℝ} [Fact (0 < L)]

omit [Fact (0 < L)] in
private theorem monomial_add (n : ℤ) (x r : AddCircle L) :
    fourier n (x + r) = fourier n x * fourier n r := by
  simp only [fourier_apply, zsmul_add, toCircle_add, Circle.coe_mul]

/-- The forward translation multiplies the Fourier coefficient by the positive
phase, because Mathlib's coefficient uses the negative monomial. -/
theorem fourierCoeff_translate (f : AddCircle L → ℂ) (r : AddCircle L) (n : ℤ) :
    fourierCoeff (fun x => f (x + r)) n = fourier n r * fourierCoeff f n := by
  have hphase : fourier n r * fourier (-n) r = 1 := by
    rw [← fourier_add, add_neg_cancel]
    simp
  unfold fourierCoeff
  simp only [smul_eq_mul]
  calc
    _ = ∫ x : AddCircle L, fourier n r * (fourier (-n) (x + r) * f (x + r))
        ∂haarAddCircle := by
      apply integral_congr_ae
      filter_upwards [] with x
      rw [monomial_add]
      calc
        _ = (fourier n r * fourier (-n) r) * (fourier (-n) x * f (x + r)) := by
          rw [hphase, one_mul]
        _ = _ := by ring
    _ = _ := by
      rw [integral_const_mul,
        integral_add_right_eq_self (fun x : AddCircle L => fourier (-n) x * f x) r]

theorem fourierCoeff_translate_sub {f : AddCircle L → ℂ} (hf : Integrable f haarAddCircle)
    (r : AddCircle L) (n : ℤ) :
    fourierCoeff (fun x => f (x + r) - f x) n = (fourier n r - 1) * fourierCoeff f n := by
  have hfshift : Integrable (fun x => f (x + r)) haarAddCircle :=
    (measurePreserving_add_right haarAddCircle r).integrable_comp_of_integrable hf
  have heq :
      fourierCoeff (fun x => f (x + r) - f x) n =
        fourierCoeff (fun x => f (x + r)) n - fourierCoeff f n := by
    unfold fourierCoeff
    simp only [smul_sub]
    exact integral_sub (hfshift.fourier_smul (-n)) (hf.fourier_smul (-n))
  rw [heq, fourierCoeff_translate]
  ring

omit [Fact (0 < L)] in
/-- A real lift of the circle displacement gives the ordinary angular cosine. -/
theorem norm_fourier_sub_one_sq (r : ℝ) (n : ℤ) :
    ‖fourier n (r : AddCircle L) - 1‖ ^ 2 =
      2 * (1 - Real.cos (2 * Real.pi * (n : ℝ) * r / L)) := by
  let θ := 2 * Real.pi * (n : ℝ) * r / L
  rw [fourier_coe_apply]
  have hphase : 2 * (Real.pi : ℂ) * Complex.I * (n : ℂ) * (r : ℂ) / (L : ℂ) =
      (θ : ℂ) * Complex.I := by
    dsimp [θ]
    push_cast
    ring
  rw [hphase, Complex.sq_norm, Complex.normSq_apply, Complex.sub_re, Complex.sub_im,
    Complex.one_re, Complex.one_im, Complex.exp_ofReal_mul_I_re,
    Complex.exp_ofReal_mul_I_im, sub_zero]
  nlinarith [Real.sin_sq_add_cos_sq θ]

/-- Parseval for the actual translation difference in Haar probability measure. -/
theorem hasSum_translation_energy {f : AddCircle L → ℂ} (hf : MemLp f 2 haarAddCircle)
    (r : ℝ) :
    HasSum (fun n : ℤ => 2 * (1 - Real.cos (2 * Real.pi * (n : ℝ) * r / L)) *
      ‖fourierCoeff f n‖ ^ 2)
      (∫ x : AddCircle L, ‖f (x + (r : AddCircle L)) - f x‖ ^ 2 ∂haarAddCircle) := by
  let displacement : AddCircle L := r
  let g : AddCircle L → ℂ := fun x => f (x + displacement) - f x
  have htrans := measurePreserving_add_right haarAddCircle displacement
  have hg : MemLp g 2 haarAddCircle := (hf.comp_measurePreserving htrans).sub hf
  have hLp := hasSum_sq_fourierCoeff (hg.toLp g)
  have hnorm :
      (∫ x : AddCircle L, ‖hg.toLp g x‖ ^ 2 ∂haarAddCircle) =
        ∫ x : AddCircle L, ‖g x‖ ^ 2 ∂haarAddCircle := by
    apply integral_congr_ae
    filter_upwards [hg.coeFn_toLp] with x hx
    rw [hx]
  rw [hnorm] at hLp
  have heq (n : ℤ) :
      ‖fourierCoeff (hg.toLp g) n‖ ^ 2 =
        2 * (1 - Real.cos (2 * Real.pi * (n : ℝ) * r / L)) * ‖fourierCoeff f n‖ ^ 2 := by
    rw [fourierCoeff_congr_ae hg.coeFn_toLp]
    change ‖fourierCoeff (fun x => f (x + (r : AddCircle L)) - f x) n‖ ^ 2 = _
    rw [fourierCoeff_translate_sub (hf.integrable (by norm_num)), norm_mul, mul_pow,
      norm_fourier_sub_one_sq]
  exact hLp.congr_fun (fun n => (heq n).symm)

/-- The same identity on a real fundamental interval, with its explicit
Lebesgue-to-Haar factor. -/
theorem hasSum_interval_translation_energy {f : AddCircle L → ℂ}
    (hf : MemLp f 2 haarAddCircle) (a r : ℝ) :
    HasSum (fun n : ℤ => 2 * (1 - Real.cos (2 * Real.pi * (n : ℝ) * r / L)) *
      ‖fourierCoeff f n‖ ^ 2)
      (L⁻¹ * ∫ x in a..a + L, ‖f ((x : AddCircle L) + (r : AddCircle L)) - f x‖ ^ 2) := by
  have hsum := hasSum_translation_energy hf r
  rw [integral_haarAddCircle, ← AddCircle.intervalIntegral_preimage L a
    (fun z : AddCircle L => ‖f (z + (r : AddCircle L)) - f z‖ ^ 2), smul_eq_mul] at hsum
  exact hsum

/-- Apply the circle identity to the actual periodic lift of an interval
function. The unshifted summand is the source representative on the
fundamental interval. -/
theorem hasSum_liftIoc_translation_energy {a : ℝ} {f : ℝ → ℂ}
    (hf : MemLp f 2 (volume.restrict (Set.Ioc a (a + L)))) (r : ℝ) :
    HasSum (fun n : ℤ => 2 * (1 - Real.cos (2 * Real.pi * (n : ℝ) * r / L)) *
      ‖fourierCoeffOn (lt_add_of_pos_right a (Fact.out : 0 < L)) f n‖ ^ 2)
      (L⁻¹ * ∫ x in a..a + L,
        ‖liftIoc L a f ((x : AddCircle L) + (r : AddCircle L)) - f x‖ ^ 2) := by
  have hfc := hf.memLp_liftIoc.haarAddCircle
  have hsum := hasSum_interval_translation_energy hfc a r
  simp_rw [fourierCoeff_liftIoc_eq] at hsum
  convert hsum using 1
  congr 1
  apply intervalIntegral.integral_congr_Ioo_of_le (le_add_of_nonneg_right (Fact.out : 0 < L).le)
  intro x hx
  change ‖liftIoc L a f ((x : AddCircle L) + (r : AddCircle L)) - f x‖ ^ 2 =
    ‖liftIoc L a f ((x : AddCircle L) + (r : AddCircle L)) - liftIoc L a f x‖ ^ 2
  rw [liftIoc_coe_apply (Set.Ioo_subset_Ioc_self hx)]

end GRWTSK.NumberTheory.WeilQuadraticForm.PeriodicTranslationParseval
