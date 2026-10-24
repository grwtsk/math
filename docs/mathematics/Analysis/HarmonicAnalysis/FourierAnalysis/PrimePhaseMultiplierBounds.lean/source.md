# Complete source: GRWTSK.Analysis.Fourier.PrimePhaseMultiplierBounds

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `05e1a51bbfa26b4b737be01071b9b6d9d8b486de` · SHA-256 `6d7f8beec1453d84c21513dee4846911fd2e4afdcf3729c2be4ad212dc2380b4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Analysis.Complex.Trigonometric
import Mathlib.Analysis.Fourier.FourierTransform
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Analysis.Real.Sqrt
import Mathlib.Data.Complex.BigOperators
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring
import Mathlib.Tactic.Positivity

/-! Exact prime-phase multipliers and their signed broad bound.
No narrow-energy estimate, reserve, or P04 is assumed or asserted here. -/

noncomputable section
open scoped BigOperators
open MeasureTheory
namespace PPNC

/-- The angular-frequency convention, obtained from Mathlib's 2π-frequency convention. -/
def rawFourier (g : ℝ → ℂ) (ξ : ℝ) : ℂ :=
  Fourier.fourierIntegral Real.fourierChar volume g (ξ / (2 * Real.pi))
def timeTranslate (a : ℝ) (g : ℝ → ℂ) (u : ℝ) : ℂ := g (u - a)

theorem rawFourier_eq_integral (g : ℝ → ℂ) (ξ : ℝ) :
    rawFourier g ξ =
      ∫ u : ℝ, g u * Complex.exp (((-(u * ξ)) : ℂ) * Complex.I) := by
  rw [rawFourier, Fourier.fourierIntegral_def]
  apply integral_congr_ae
  filter_upwards [] with u
  have harith : 2 * Real.pi * -(u * (ξ / (2 * Real.pi))) = -(u * ξ) := by
    field_simp
  simp only [Circle.smul_def, Real.fourierChar_apply, smul_eq_mul, harith,
    Complex.ofReal_neg, Complex.ofReal_mul]
  ring

theorem rawFourier_translate (a ξ : ℝ) (g : ℝ → ℂ) :
    rawFourier (timeTranslate a g) ξ =
      Complex.exp (((-(ξ * a)) : ℂ) * Complex.I) * rawFourier g ξ := by
  have htranslate : timeTranslate a g = g ∘ (fun v : ℝ => v + -a) := by
    funext u
    simp only [timeTranslate, Function.comp_apply, sub_eq_add_neg]
  rw [htranslate]
  have h := congrFun
    (Fourier.fourierIntegral_comp_add_right Real.fourierChar volume g (-a))
    (ξ / (2 * Real.pi))
  have harith : 2 * Real.pi * (-a * (ξ / (2 * Real.pi))) = -(ξ * a) := by
    field_simp
  simpa only [rawFourier, Function.comp_def,
    Circle.smul_def, Real.fourierChar_apply, smul_eq_mul, harith,
    Complex.ofReal_neg, Complex.ofReal_mul] using h

def primeWeight (p : ℕ) : ℝ := (Real.sqrt (p : ℝ))⁻¹
def primePhase (p : ℕ) (ξ : ℝ) : ℂ :=
  Complex.exp (((-(ξ * Real.log (p : ℝ))) : ℂ) * Complex.I)
def primeField (B : Finset ℕ) (ξ : ℝ) : ℂ :=
  ∑ p ∈ B, (primeWeight p : ℂ) * primePhase p ξ
def blockMultiplier (B : Finset ℕ) (ξ : ℝ) : ℂ :=
  ∏ p ∈ B, (1 - (primeWeight p : ℂ) * primePhase p ξ)
def harmonicMass (B : Finset ℕ) : ℝ := ∑ p ∈ B, (p : ℝ)⁻¹
def Broad (B : Finset ℕ) (κ ξ : ℝ) : Prop :=
  -(primeField B ξ).re ≤ κ * Real.sqrt (harmonicMass B)
def Narrow (B : Finset ℕ) (κ ξ : ℝ) : Prop :=
  κ * Real.sqrt (harmonicMass B) < -(primeField B ξ).re

theorem blockMultiplier_signed_expansion (B : Finset ℕ) (ξ : ℝ) :
    blockMultiplier B ξ =
      ∑ S ∈ B.powerset, (-1 : ℂ) ^ S.card *
        ∏ p ∈ S, (primeWeight p : ℂ) * primePhase p ξ := by
  simpa only [blockMultiplier, Finset.prod_const_one, mul_one] using
    Finset.prod_sub (fun _p : ℕ => (1 : ℂ))
      (fun p => (primeWeight p : ℂ) * primePhase p ξ) B

theorem primePhase_norm (p : ℕ) (ξ : ℝ) : ‖primePhase p ξ‖ = 1 := by
  simpa [primePhase] using Complex.norm_exp_ofReal_mul_I (-(ξ * Real.log (p : ℝ)))

theorem primeWeight_sq (p : ℕ) : primeWeight p ^ 2 = (p : ℝ)⁻¹ := by
  rw [primeWeight, inv_pow, Real.sq_sqrt (Nat.cast_nonneg p)]

theorem one_sub_unit_norm_sq (r : ℝ) (z : ℂ) (hz : ‖z‖ = 1) :
    ‖1 - (r : ℂ) * z‖ ^ 2 = 1 - 2 * ((r : ℂ) * z).re + r ^ 2 := by
  simp only [Complex.sq_norm, Complex.normSq_sub, Complex.normSq_mul,
    Complex.normSq_ofReal, Complex.normSq_one, one_mul, Complex.conj_re]
  rw [Complex.normSq_eq_norm_sq, hz]
  ring

theorem one_sub_unit_bound (r : ℝ) (z : ℂ) (hz : ‖z‖ = 1) :
    ‖1 - (r : ℂ) * z‖ ^ 2 ≤ Real.exp (-2 * ((r : ℂ) * z).re + r ^ 2) := by
  rw [one_sub_unit_norm_sq r z hz]
  convert Real.add_one_le_exp (-2 * ((r : ℂ) * z).re + r ^ 2) using 1
  ring

theorem block_multiplier_bound (B : Finset ℕ) (ξ : ℝ) :
    ‖blockMultiplier B ξ‖ ^ 2 ≤
      Real.exp (-2 * (primeField B ξ).re + harmonicMass B) := by
  have hsum :
      (∑ p ∈ B, (-2 * ((primeWeight p : ℂ) * primePhase p ξ).re +
        primeWeight p ^ 2)) = -2 * (primeField B ξ).re + harmonicMass B := by
    simp only [primeField, harmonicMass, Complex.re_sum, primeWeight_sq,
      Finset.sum_add_distrib, Finset.mul_sum]
  calc
    ‖blockMultiplier B ξ‖ ^ 2 =
        ∏ p ∈ B, ‖1 - (primeWeight p : ℂ) * primePhase p ξ‖ ^ 2 := by
      simp [blockMultiplier, norm_prod, Finset.prod_pow]
    _ ≤ ∏ p ∈ B, Real.exp (-2 * ((primeWeight p : ℂ) * primePhase p ξ).re +
        primeWeight p ^ 2) := by
      apply Finset.prod_le_prod
      · intro p hp
        positivity
      · intro p hp
        exact one_sub_unit_bound _ _ (primePhase_norm p ξ)
    _ = Real.exp (-2 * (primeField B ξ).re + harmonicMass B) := by
      rw [← Real.exp_sum, hsum]

theorem broad_multiplier_bound (B : Finset ℕ) (κ ξ : ℝ) (h : Broad B κ ξ) :
    ‖blockMultiplier B ξ‖ ^ 2 ≤
      Real.exp (2 * κ * Real.sqrt (harmonicMass B) + harmonicMass B) := by
  apply (block_multiplier_bound B ξ).trans
  apply Real.exp_le_exp.mpr
  dsimp [Broad] at h
  linarith

theorem narrow_iff_not_broad (B : Finset ℕ) (κ ξ : ℝ) :
    Narrow B κ ξ ↔ ¬ Broad B κ ξ := by
  exact not_le.symm

theorem primeWeight_nonneg (p : ℕ) : 0 ≤ primeWeight p := by
  dsimp [primeWeight]
  positivity

theorem primeWeight_pos (p : ℕ) (hp : Nat.Prime p) : 0 < primeWeight p := by
  have hpos : 0 < (p : ℝ) := by exact_mod_cast hp.pos
  exact inv_pos.mpr (Real.sqrt_pos.mpr hpos)

theorem primeWeight_lt_one (p : ℕ) (hp : Nat.Prime p) : primeWeight p < 1 := by
  have hpos : 0 < (p : ℝ) := by exact_mod_cast hp.pos
  have hgt : (1 : ℝ) < p := by exact_mod_cast hp.one_lt
  apply (inv_lt_one₀ (Real.sqrt_pos.mpr hpos)).mpr
  simpa only [Real.sqrt_one] using Real.sqrt_lt_sqrt (by norm_num : (0 : ℝ) ≤ 1) hgt

theorem primePhase_re (p : ℕ) (ξ : ℝ) :
    (primePhase p ξ).re = Real.cos (ξ * Real.log (p : ℝ)) := by
  simpa [primePhase] using Complex.exp_ofReal_mul_I_re (-(ξ * Real.log (p : ℝ)))

theorem primeField_re (B : Finset ℕ) (ξ : ℝ) :
    (primeField B ξ).re =
      ∑ p ∈ B, primeWeight p * Real.cos (ξ * Real.log (p : ℝ)) := by
  simp [primeField, Complex.re_sum, Complex.mul_re, primePhase_re]

theorem zero_frequency_broad (B : Finset ℕ) (κ : ℝ) (hκ : 0 ≤ κ) :
    Broad B κ 0 := by
  have hsum : 0 ≤ (primeField B 0).re := by
    rw [primeField_re]
    simpa using Finset.sum_nonneg (fun p hp => primeWeight_nonneg p)
  have hright : 0 ≤ κ * Real.sqrt (harmonicMass B) :=
    mul_nonneg hκ (Real.sqrt_nonneg _)
  exact (neg_nonpos.mpr hsum).trans hright

theorem zero_frequency_contractive (B : Finset ℕ)
    (hB : ∀ p ∈ B, Nat.Prime p) : ‖blockMultiplier B 0‖ ^ 2 ≤ 1 := by
  have hfactor : ∀ p ∈ B, ‖1 - (primeWeight p : ℂ) * primePhase p 0‖ ≤ 1 := by
    intro p hp
    have hw := primeWeight_nonneg p
    have hw1 := primeWeight_lt_one p (hB p hp)
    simp only [primePhase, zero_mul, neg_zero, Complex.ofReal_zero,
      zero_mul, Complex.exp_zero, mul_one]
    rw [← Complex.ofReal_one, ← Complex.ofReal_sub, Complex.norm_real,
      Real.norm_eq_abs, abs_of_nonneg (by linarith)]
    linarith
  have hnorm : ‖blockMultiplier B 0‖ ≤ 1 := by
    calc
      ‖blockMultiplier B 0‖ = ∏ p ∈ B, ‖1 - (primeWeight p : ℂ) * primePhase p 0‖ := by
        simp only [blockMultiplier, norm_prod]
      _ ≤ ∏ _p ∈ B, (1 : ℝ) :=
        Finset.prod_le_prod (fun p hp => norm_nonneg _) hfactor
      _ = 1 := by simp
  nlinarith [norm_nonneg (blockMultiplier B 0)]

theorem antiphase_singleton_amplifies (p : ℕ) (ξ : ℝ) (hp : Nat.Prime p)
    (hphase : primePhase p ξ = -1) : 1 < ‖blockMultiplier {p} ξ‖ ^ 2 := by
  have hw := primeWeight_pos p hp
  have hnorm : ‖blockMultiplier {p} ξ‖ = 1 + primeWeight p := by
    simp only [blockMultiplier, Finset.prod_singleton, hphase, mul_neg_one, sub_neg_eq_add]
    rw [← Complex.ofReal_one, ← Complex.ofReal_add, Complex.norm_real,
      Real.norm_eq_abs, abs_of_nonneg (by linarith)]
  rw [hnorm]
  nlinarith [sq_nonneg (primeWeight p)]

#print axioms PPNC.block_multiplier_bound
#print axioms PPNC.rawFourier_translate
#print axioms PPNC.rawFourier_eq_integral
#print axioms PPNC.broad_multiplier_bound
#print axioms PPNC.blockMultiplier_signed_expansion
#print axioms PPNC.zero_frequency_contractive
#print axioms PPNC.antiphase_singleton_amplifies
end PPNC
```
