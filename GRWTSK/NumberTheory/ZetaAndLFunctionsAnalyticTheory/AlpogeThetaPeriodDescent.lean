/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.Analysis.Complex.Basic
import Mathlib.LinearAlgebra.Matrix.Adjugate
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Ring

/-! # Rational periods and integral reconstruction from evaluation matrices -/

namespace GRWTSK.NumberTheory.AlpogeThetaPeriodDescent

open Matrix
open scoped Matrix

/-- A common phase producing arithmetic coordinates is determined by a
projective vector over the field and the absolute value of one pivot. -/
theorem common_phase_iff {K I : Type*} [Field K] (σ : K →+* ℂ)
    (a : I → ℂ) (p : I) (hp : a p ≠ 0) :
    (∃ u : ℂ, ‖u‖ = 1 ∧ ∃ b : I → K, ∀ i, σ (b i) = u * a i) ↔
      (∀ i, ∃ r : K, σ r = a i / a p) ∧ ∃ d : K, ‖σ d‖ = ‖a p‖ := by
  constructor
  · rintro ⟨u, hu, b, hb⟩
    have hu0 : u ≠ 0 := norm_ne_zero_iff.mp (hu ▸ one_ne_zero)
    refine ⟨fun i => ⟨b i / b p, ?_⟩, b p, ?_⟩
    · rw [map_div₀, hb, hb]
      field_simp
    · rw [hb, norm_mul, hu, one_mul]
  · rintro ⟨h, d, hd⟩
    choose r hr using h
    refine ⟨σ d / a p, ?_, fun i => d * r i, fun i => ?_⟩
    · rw [norm_div, hd, div_self (norm_ne_zero_iff.mpr hp)]
    · rw [map_mul, hr]
      ring

/-- Refining a definite double class by a finite-index subgroup preserves
its mass whenever the summand is unchanged on the refined classes. -/
theorem refined_class_mass {K I : Type*} [Field K] [Fintype I]
    (d g : K) (s : I → K) (hd : d ≠ 0) (hg : g ≠ 0)
    (hs : ∀ i, s i ≠ 0) (hcount : ∑ i, g / s i = d) (v : K) :
    ∑ i, (d * s i)⁻¹ * v = g⁻¹ * v := by
  have hterm (i : I) : (d * s i)⁻¹ * v = (g / s i) * (v / (d*g)) := by
    field_simp [hd, hg, hs i]
  simp_rw [hterm]
  rw [← Finset.sum_mul, hcount]
  field_simp

/-- Cramer's numerator after reading the coefficients over an arbitrary
extension. Rationality is recovered from one nonzero evaluation minor. -/
theorem read_adjugate {R S I : Type*} [CommRing R] [CommRing S]
    [Fintype I] [DecidableEq I] (σ : R →+* S) (M : Matrix I I R)
    (b : I → R) (x : I → S) (hx : (M.map σ) *ᵥ x = σ ∘ b) :
    ∀ i, σ ((M.adjugate *ᵥ b) i) = σ M.det * x i := by
  have h := congrArg (fun w => (M.adjugate.map σ) *ᵥ w) hx
  rw [mulVec_mulVec, ← Matrix.map_mul, Matrix.adjugate_mul] at h
  have hm : (M.det • (1 : Matrix I I R)).map σ = σ M.det • (1 : Matrix I I S) := by
    ext i j
    by_cases hij : i = j <;> simp [Matrix.map_apply, hij]
  rw [hm, smul_mulVec, one_mulVec] at h
  intro i
  rw [σ.map_mulVec]
  exact (congrFun h i).symm

/-- Integral reconstruction holds as soon as the evaluation determinants
generate the unit ideal; arbitrary coefficients can combine the minors. -/
theorem recover_from_readings {R S I J : Type*} [CommRing R] [CommRing S]
    [Fintype I] [DecidableEq I] [Fintype J] (σ : R →+* S)
    (M : J → Matrix I I R) (b : J → I → R) (x : I → S)
    (hx : ∀ j, ((M j).map σ) *ᵥ x = σ ∘ b j) (c : J → R)
    (hc : ∑ j, c j * (M j).det = 1) :
    ∀ i, ∃ a : R, σ a = x i := by
  intro i
  refine ⟨∑ j, c j * ((M j).adjugate *ᵥ b j) i, ?_⟩
  simp_rw [map_sum, map_mul, read_adjugate σ _ _ _ (hx _) i, ← mul_assoc]
  rw [← Finset.sum_mul]
  have h := congrArg σ hc
  simpa [map_sum, map_mul] using congrArg (fun z => z * x i) h

end GRWTSK.NumberTheory.AlpogeThetaPeriodDescent
