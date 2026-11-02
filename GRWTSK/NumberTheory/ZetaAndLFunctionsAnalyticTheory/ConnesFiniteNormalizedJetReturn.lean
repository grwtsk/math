/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.ConnesCentralJetAnnihilator
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Exact reconstruction of central jets from a finite normalized test family

Jiang--Luo (Pacific J. Math. 326 (2023), Lemma 8.3, proof (8-20)--(8-21))
invoke Godement--Jacquet to obtain finitely many actual zeta integrals
whose SUM is the genuine automorphic L-function.

This module supplies only the independent finite coefficient algebra.
The inputs are a finite family of complex Taylor coefficients g_i and a
NORMALIZATION PROOF that their sum is the literal unit Taylor germ.
An actual Z(s,phi_i)/L(s,pi) analytic factorization, its holomorphy and
the automorphic-to-elliptic return require independent constructions.

Every coefficient and all product-rule cross terms are retained.
No Mordell--Weil rank, elliptic L-order, regulator or spectral zero
multiplicity is assigned here. The finite family is never constructed
from a desired rank. Root and kernel acceptance remain NOT_RUN.
-/

namespace GRWTSK.NumberTheory.ConnesCentralJet

open scoped BigOperators

variable {ι : Type*}

/-- Exact finite sum of coefficient functions; no averaging or hidden scale. -/
def finiteTestCoeff (S : Finset ι) (g : ι → ℕ → ℂ) (n : ℕ) : ℂ :=
  ∑ i ∈ S, g i n

/-- Source-bound test-family normalization: sum_i g_i(z)=1
as a formal Taylor germ. This must be SUPPLIED by genuine automorphic
zeta-integral factorization before applying to an elliptic L-function. -/
def FiniteTestNormalized (S : Finset ι) (g : ι → ℕ → ℂ) : Prop :=
  ∀ n, finiteTestCoeff S g n = unitGerm n

theorem normalized_coeff_eq_unit (S : Finset ι) (g : ι → ℕ → ℂ)
    (h : FiniteTestNormalized S g) :
    finiteTestCoeff S g = unitGerm := by
  funext n
  exact h n

/-- Product of the source with a finite sum equals sum of ALL products.
This equality includes every mixed term in every Taylor coefficient. -/
theorem convolution_finite_family (S : Finset ι)
    (f : ℕ → ℂ) (g : ι → ℕ → ℂ) (n : ℕ) :
    coeffConvolution f (finiteTestCoeff S g) n =
      ∑ i ∈ S, coeffConvolution f (g i) n := by
  classical
  simp only [coeffConvolution, finiteTestCoeff, Finset.mul_sum]
  rw [Finset.sum_comm]

/-- A NORMALIZED finite test family reconstructs every coefficient
of the original analytic source; there is no chosen vanishing order. -/
theorem normalized_family_reconstructs (S : Finset ι)
    (g : ι → ℕ → ℂ) (hnorm : FiniteTestNormalized S g)
    (f : ℕ → ℂ) (n : ℕ) :
    (∑ i ∈ S, coeffConvolution f (g i) n) = f n := by
  calc
    (∑ i ∈ S, coeffConvolution f (g i) n) =
        coeffConvolution f (finiteTestCoeff S g) n :=
      (convolution_finite_family S f g n).symm
    _ = coeffConvolution f unitGerm n := by
      rw [normalized_coeff_eq_unit S g hnorm]
    _ = f n := coeffConvolution_unit f n

/-- Exact return to the ORIGINAL truncated source jet, for any r.
The normalization hypothesis concerns analytic tests, not rank. -/
theorem normalized_family_jet_return (S : Finset ι)
    (g : ι → ℕ → ℂ) (hnorm : FiniteTestNormalized S g)
    (f : ℕ → ℂ) (r : ℕ) :
    jet r (fun n => ∑ i ∈ S, coeffConvolution f (g i) n) =
      jet r f := by
  funext j
  exact normalized_family_reconstructs S g hnorm f j

/-- Finite normalized test detection, in BOTH directions:
the ALL-germ hypothesis in the earlier jet theorem is unnecessary
once the TRUE finite normalized automorphic family is justified. -/
theorem vanishesBelow_iff_normalized_finite_family (S : Finset ι)
    (g : ι → ℕ → ℂ) (hnorm : FiniteTestNormalized S g)
    (f : ℕ → ℂ) (r : ℕ) :
    vanishesBelow f r ↔
      ∀ i ∈ S, vanishesBelow (coeffConvolution f (g i)) r := by
  constructor
  · intro hf i hi
    exact coeffConvolution_vanishesBelow f (g i) r hf
  · intro hf n hn
    have hz : (∑ i ∈ S, coeffConvolution f (g i) n) = 0 := by
      apply Finset.sum_eq_zero
      intro i hi
      exact hf i hi n hn
    calc
      f n = (∑ i ∈ S, coeffConvolution f (g i) n) :=
        (normalized_family_reconstructs S g hnorm f n).symm
      _ = 0 := hz

/-- At a first nonzero central coefficient, some ACTUAL member of the
normalized finite test family must detect it. No test is invented. -/
theorem some_normalized_test_detects_coefficient (S : Finset ι)
    (g : ι → ℕ → ℂ) (hnorm : FiniteTestNormalized S g)
    (f : ℕ → ℂ) (r : ℕ) (hlead : f r ≠ 0) :
    ∃ i ∈ S, coeffConvolution f (g i) r ≠ 0 := by
  classical
  by_contra hnone
  have hz : (∑ i ∈ S, coeffConvolution f (g i) r) = 0 := by
    apply Finset.sum_eq_zero
    intro i hi
    by_contra hne
    exact hnone ⟨i, hi, hne⟩
  exact hlead ((normalized_family_reconstructs S g hnorm f r).symm.trans hz)

/-- Two independently normalized finite test presentations both return
the SAME Taylor coefficient. This is a literal source return, not an
arbitrary change-of-basis or a regulator comparison. -/
theorem normalized_test_family_independent
    {κ : Type*} (S : Finset ι) (T : Finset κ)
    (g : ι → ℕ → ℂ) (h : κ → ℕ → ℂ)
    (hg : FiniteTestNormalized S g) (hh : FiniteTestNormalized T h)
    (f : ℕ → ℂ) (n : ℕ) :
    (∑ i ∈ S, coeffConvolution f (g i) n) =
      (∑ j ∈ T, coeffConvolution f (h j) n) := by
  rw [normalized_family_reconstructs S g hg f n,
    normalized_family_reconstructs T h hh f n]


/-- Exact SIGNED reconstruction defect without the normalization premise.
No missing or mixed terms are silently erased: the entire residual is the
convolution with the observed family-sum minus the literal unit. -/
theorem finite_family_signed_defect (S : Finset ι)
    (f : ℕ → ℂ) (g : ι → ℕ → ℂ) (n : ℕ) :
    (∑ i ∈ S, coeffConvolution f (g i) n) - f n =
      coeffConvolution f
        (fun k => finiteTestCoeff S g k - unitGerm k) n := by
  rw [← convolution_finite_family S f g n, ← coeffConvolution_unit f n]
  simp only [coeffConvolution, mul_sub, Finset.sum_sub_distrib]

/-- A normalized finite family has a genuine member with a nonzero
constant coefficient. Otherwise the degree-zero source cannot be returned. -/
theorem some_normalized_test_has_unit_constant (S : Finset ι)
    (g : ι → ℕ → ℂ) (hnorm : FiniteTestNormalized S g) :
    ∃ i ∈ S, g i 0 ≠ 0 := by
  have hunit : unitGerm 0 ≠ (0 : ℂ) := by simp [unitGerm]
  obtain ⟨i, hi, hnon⟩ :=
    some_normalized_test_detects_coefficient S g hnorm unitGerm 0 hunit
  refine ⟨i, hi, ?_⟩
  simpa [coeffConvolution, unitGerm] using hnon

/-- At the first nonzero source coefficient, every lower mixed term
vanishes, so multiplication by g scales the lead by its actual g(0). -/
theorem convolution_first_nonzero_coefficient (f g : ℕ → ℂ) (r : ℕ)
    (hf : vanishesBelow f r) :
    coeffConvolution f g r = f r * g 0 := by
  unfold coeffConvolution
  rw [Finset.sum_range_succ]
  have hlow : (∑ k ∈ Finset.range r, f k * g (r - k)) = 0 := by
    apply Finset.sum_eq_zero
    intro k hk
    rw [hf k (Finset.mem_range.mp hk)]
    simp
  rw [hlow, zero_add]
  simp

/-- The actual first nonzero central coefficient survives in at least
one NORMALIZED test, independently of the desired BSD rank. -/
theorem normalized_family_preserves_exact_order (S : Finset ι)
    (g : ι → ℕ → ℂ) (hnorm : FiniteTestNormalized S g)
    (f : ℕ → ℂ) (r : ℕ)
    (hbelow : vanishesBelow f r) (hlead : f r ≠ 0) :
    ∃ i ∈ S,
      vanishesBelow (coeffConvolution f (g i)) r ∧
      coeffConvolution f (g i) r ≠ 0 := by
  obtain ⟨i, hi, h0⟩ := some_normalized_test_has_unit_constant S g hnorm
  refine ⟨i, hi, coeffConvolution_vanishesBelow f (g i) r hbelow, ?_⟩
  rw [convolution_first_nonzero_coefficient f (g i) r hbelow]
  exact mul_ne_zero hlead h0

end GRWTSK.NumberTheory.ConnesCentralJet
