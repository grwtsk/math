/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import Mathlib.Data.Complex.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Central Taylor jets and a Connes-style annihilator

These are ACTUAL coefficient functions and an ACTUAL finite convolution.
For a holomorphic L-function germ at a chosen center, its Taylor coefficient
function is the required incoming analytic source. This file does not
construct that analytic germ, an adelic Hilbert quotient, or an arithmetic
Mordell--Weil map.

If f vanishes through degree r-1, every product f*g does too. Conversely,
testing against the genuine unit series detects every coefficient of f.
The converse is INVALID for a restricted family of Mellin transforms unless
that family is independently shown sufficiently rich.

The local annihilator mechanism is the algebraic counterpart of the
distributional central-zero absorption in Connes, Deitmar and Jiang--Luo.
It establishes neither a central zero nor BSD rank equality.
-/

namespace GRWTSK.NumberTheory.ConnesCentralJet

open scoped BigOperators

/-- Coefficients of the product of two formal Taylor series.
The sum includes the degree-zero and every mixed term. -/
def coeffConvolution (f g : ℕ → ℂ) (n : ℕ) : ℂ :=
  ∑ k ∈ Finset.range (n + 1), f k * g (n - k)

/-- The literal constant-one series, not a freely chosen test oracle. -/
def unitGerm (n : ℕ) : ℂ :=
  if n = 0 then 1 else 0

/-- Multiplication by the formal unit leaves all source coefficients
unchanged. This is the hostile control for restricted test spaces. -/
theorem coeffConvolution_unit (f : ℕ → ℂ) (n : ℕ) :
    coeffConvolution f unitGerm n = f n := by
  classical
  unfold coeffConvolution
  calc
    (∑ k ∈ Finset.range (n + 1), f k * unitGerm (n - k)) =
        f n * unitGerm (n - n) := by
      apply Finset.sum_eq_single n
      · intro k hk hkn
        have hk' : k < n + 1 := Finset.mem_range.mp hk
        have hlt : k < n := by omega
        have hsub : n - k ≠ 0 := by omega
        simp [unitGerm, hsub]
      · intro hn
        exact False.elim (hn (Finset.mem_range.mpr (by omega)))
    _ = f n := by simp [unitGerm]

/-- All Taylor coefficients strictly below the specified order vanish. -/
def vanishesBelow (f : ℕ → ℂ) (r : ℕ) : Prop :=
  ∀ n, n < r → f n = 0

/-- The finite central r-jet of a coefficient source. -/
def jet (r : ℕ) (f : ℕ → ℂ) : Fin r → ℂ :=
  fun j => f j

/-- An exact, noncircular local statement: multiplying a source vanishing
through degree r-1 by ANY test germ cannot create a lower coefficient. -/
theorem coeffConvolution_vanishesBelow
    (f g : ℕ → ℂ) (r : ℕ) (hf : vanishesBelow f r) :
    vanishesBelow (coeffConvolution f g) r := by
  intro n hn
  unfold coeffConvolution
  apply Finset.sum_eq_zero
  intro k hk
  have hk' : k < n + 1 := Finset.mem_range.mp hk
  have hkr : k < r := by omega
  rw [hf k hkr]
  simp

/-- Coefficientwise statement of the annihilation of every lower jet. -/
theorem jet_convolution_zero (f g : ℕ → ℂ) (r : ℕ)
    (hf : vanishesBelow f r) :
    jet r (coeffConvolution f g) = 0 := by
  funext j
  exact coeffConvolution_vanishesBelow f g r hf j j.isLt

/-- Multiplicative-ideal annihilation detects vanishing EXACTLY when the
test space contains all germs, in particular the unit. No BSD premise. -/
theorem vanishesBelow_iff_all_test_jets
    (f : ℕ → ℂ) (r : ℕ) :
    vanishesBelow f r ↔
      ∀ g : ℕ → ℂ, vanishesBelow (coeffConvolution f g) r := by
  constructor
  · intro hf g
    exact coeffConvolution_vanishesBelow f g r hf
  · intro h n hn
    have hunit := h unitGerm n hn
    simpa only [coeffConvolution_unit] using hunit

/-- The first nonzero Taylor coefficient is retained as an input from
the analytic germ, and never guessed from an arithmetic dimension. -/
theorem exact_order_distinguished_by_unit
    (f : ℕ → ℂ) (r : ℕ)
    (hbelow : vanishesBelow f r) (hlead : f r ≠ 0) :
    (∀ g : ℕ → ℂ, jet r (coeffConvolution f g) = 0) ∧
      ∃ g : ℕ → ℂ, coeffConvolution f g r ≠ 0 := by
  constructor
  · intro g
    exact jet_convolution_zero f g r hbelow
  · refine ⟨unitGerm, ?_⟩
    simpa only [coeffConvolution_unit] using hlead

/-- Hostile restriction: if every admitted test vanishes at degree zero,
then even the NONVANISHING unit source looks annihilated at order one.
The missing constant-one Mellin test is an actual mathematical gap. -/
theorem restricted_test_family_false_detection :
    (∀ g : ℕ → ℂ, g 0 = 0 →
      coeffConvolution unitGerm g 0 = 0) ∧
      ¬ vanishesBelow unitGerm 1 := by
  constructor
  · intro g hg
    simp [coeffConvolution, unitGerm, hg]
  · intro h
    have hz : unitGerm 0 = 0 := h 0 (by omega)
    norm_num [unitGerm] at hz

end GRWTSK.NumberTheory.ConnesCentralJet
