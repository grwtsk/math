/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Mathematical source: Christian Bernert, Tim Browning, Jared Duker Lichtman,
and Joni Teräväinen, "Bounds on the exceptional set in the abc conjecture",
arXiv:2410.12234v2 (2026). The source paper credits Bhavik Mehta for
assistance using Lean to verify parts of an earlier version.

This module connects finite primitive-additive-triple counts to the exact
Proposition 6.1 optimization certificate. It does not supply the paper's
anatomic decomposition, Fourier estimate, or geometry-of-numbers estimate;
those remain explicit obligations of `ExceptionalSetAnalyticSupplier`. -/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.EquivalentForms
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ExactAnatomicFactorization
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.MomentReindexing
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ExceptionalSetOptimization
import Mathlib.Tactic

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

/-- The exceptional predicate used for the paper's counting function:
`rad(abc) < c^lam`. This normalization is distinct from the coefficient-one
`exceptionalSet` normalization at a fixed epsilon. -/
def exponentExceptionalSet (lam : ℝ) : Set PrimitiveAdditiveTriple :=
  {t | (t.radical : ℝ) < Real.rpow (t.c : ℝ) lam}

namespace PrimitiveAdditiveTriple

variable (t : PrimitiveAdditiveTriple)

/-- For positive `lam`, the paper's exponent-exception condition is exactly the
quality threshold `lam⁻¹ < quality`. -/
theorem radical_lt_height_rpow_iff_quality (lam : ℝ) (hlam : 0 < lam) :
    (t.radical : ℝ) < Real.rpow (t.c : ℝ) lam ↔
      lam⁻¹ < t.quality := by
  simp only [Real.rpow_eq_pow]
  rw [← Real.log_lt_log_iff t.real_radical_pos
      (Real.rpow_pos_of_pos t.real_c_pos _),
    Real.log_rpow t.real_c_pos, quality,
    lt_div_iff₀ t.logRadical_pos, inv_mul_lt_iff₀ hlam]
  rfl

end PrimitiveAdditiveTriple

/-- Exceptional primitive additive triples with third coordinate at most `N`.
Finiteness comes only from the existing bounded-height API. -/
noncomputable def boundedExponentExceptionalTriples (lam : ℝ) (N : ℕ) :
    Finset PrimitiveAdditiveTriple := by
  classical
  exact (boundedTriples N).filter (fun t => t ∈ exponentExceptionalSet lam)

@[simp] theorem mem_boundedExponentExceptionalTriples {lam : ℝ} {N : ℕ}
    {t : PrimitiveAdditiveTriple} :
    t ∈ boundedExponentExceptionalTriples lam N ↔
      t.c ≤ N ∧ t ∈ exponentExceptionalSet lam := by
  classical
  simp [boundedExponentExceptionalTriples]

/-- The finite counting function corresponding to `N_λ(N)` in the source
paper, with the repository's exact primitive-positive-additive normalization. -/
noncomputable def exponentExceptionalCount (lam : ℝ) (N : ℕ) : ℕ :=
  (boundedExponentExceptionalTriples lam N).card

theorem boundedExponentExceptionalTriples_mono {lam : ℝ} {M N : ℕ}
    (hMN : M ≤ N) :
    boundedExponentExceptionalTriples lam M ⊆
      boundedExponentExceptionalTriples lam N := by
  classical
  intro t ht
  rw [mem_boundedExponentExceptionalTriples] at ht ⊢
  exact ⟨ht.1.trans hMN, ht.2⟩

theorem exponentExceptionalCount_mono (lam : ℝ) :
    Monotone (exponentExceptionalCount lam) := by
  intro M N hMN
  exact Finset.card_le_card
    (boundedExponentExceptionalTriples_mono (lam := lam) hMN)

/-- A count has lower-bound exponent `D` arbitrarily far out. This predicate
is the contradiction input consumed by the analytic reduction. -/
def FrequentlyAtLeastPower (count : ℕ → ℕ) (D : ℝ) : Prop :=
  ∀ N₀ : ℕ, ∃ N : ℕ, N₀ ≤ N ∧
    Real.rpow (N : ℝ) D ≤ (count N : ℝ)

/-- Eventually the count is strictly below the coefficient-one power `N^D`.
The strict coefficient-one formulation is convenient because exponent slack
absorbs fixed constants in later asymptotic adapters. -/
def EventuallyBelowPower (count : ℕ → ℕ) (D : ℝ) : Prop :=
  ∃ N₀ : ℕ, ∀ N : ℕ, N₀ ≤ N →
    (count N : ℝ) < Real.rpow (N : ℝ) D

theorem eventuallyBelowPower_of_not_frequentlyAtLeastPower
    {count : ℕ → ℕ} {D : ℝ}
    (h : ¬ FrequentlyAtLeastPower count D) :
    EventuallyBelowPower count D := by
  classical
  unfold FrequentlyAtLeastPower at h
  unfold EventuallyBelowPower
  push Not at h
  exact h

theorem not_frequentlyAtLeastPower_of_eventuallyBelowPower
    {count : ℕ → ℕ} {D : ℝ}
    (h : EventuallyBelowPower count D) :
    ¬ FrequentlyAtLeastPower count D := by
  intro hfreq
  obtain ⟨N₀, hN₀⟩ := h
  obtain ⟨N, hN, hlower⟩ := hfreq N₀
  exact (not_le_of_gt (hN₀ N hN)) hlower

/-- A concrete feasible point in the Proposition 6.1 optimization problem
whose exponent coordinate is exactly `D`. -/
def HasOptimizationCertificate (D : ℝ) : Prop :=
  ∃ x : ExceptionalSetOptimization.Data,
    ExceptionalSetOptimization.Feasible x ∧ x.exponent = D

theorem exponent_le_three_fifths_of_certificate {D : ℝ}
    (h : HasOptimizationCertificate D) :
    D ≤ (3 : ℝ) / 5 := by
  obtain ⟨x, hx, hD⟩ := h
  simpa [hD] using
    ExceptionalSetOptimization.exponent_le_three_fifths x hx

/-- The deliberately explicit boundary for the missing analytic mathematics.
An implementation must extract a feasible Proposition 6.1 point from a
persistent lower bound, using the source paper's anatomic decomposition
(Proposition 2.1), Fourier estimate (Proposition 3.1), geometry-of-numbers
estimate (Proposition 4.1), and parameter bookkeeping. No such implementation
is asserted in this module. -/
structure ExceptionalSetAnalyticSupplier (lam : ℝ) : Prop where
  lambda_pos : 0 < lam
  lambda_lt_one : lam < 1
  certificate_of_frequent_lower_bound :
    ∀ D : ℝ, (3 : ℝ) / 5 < D →
      FrequentlyAtLeastPower (exponentExceptionalCount lam) D →
      HasOptimizationCertificate D

theorem not_frequentlyAtLeastPower_of_supplier {lam D : ℝ}
    (supplier : ExceptionalSetAnalyticSupplier lam)
    (hD : (3 : ℝ) / 5 < D) :
    ¬ FrequentlyAtLeastPower (exponentExceptionalCount lam) D := by
  intro hfreq
  have hcert := supplier.certificate_of_frequent_lower_bound D hD hfreq
  exact (not_le_of_gt hD)
    (exponent_le_three_fifths_of_certificate hcert)

theorem eventuallyBelowPower_of_supplier {lam D : ℝ}
    (supplier : ExceptionalSetAnalyticSupplier lam)
    (hD : (3 : ℝ) / 5 < D) :
    EventuallyBelowPower (exponentExceptionalCount lam) D :=
  eventuallyBelowPower_of_not_frequentlyAtLeastPower
    (not_frequentlyAtLeastPower_of_supplier supplier hD)

/-- The exponent-slack form of the paper's `3/5` exceptional-set conclusion.
It is a proposition about the finite count, not an assertion that its analytic
supplier has been constructed. -/
def HasThreeFifthsExceptionalBound (lam : ℝ) : Prop :=
  ∀ ε : ℝ, 0 < ε →
    EventuallyBelowPower (exponentExceptionalCount lam) ((3 : ℝ) / 5 + ε)

theorem hasThreeFifthsExceptionalBound_of_supplier {lam : ℝ}
    (supplier : ExceptionalSetAnalyticSupplier lam) :
    HasThreeFifthsExceptionalBound lam := by
  intro ε hε
  exact eventuallyBelowPower_of_supplier supplier (by linarith)

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
