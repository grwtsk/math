/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported Mathlib results retain their upstream authorship and license. -/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.RationalHermiteSignCertificates
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.ZeroDivisorHermiteReturn

/-!
# Rational interval certificates returned to exact zero divisors

RP-OC-06, math issue #1806; reuses Program 10's interval PSD checker.
Exact source support, sound matrix enclosures, conjugation closure for the
positive converse, and complete window coverage remain explicit premises.
The dyadic family retains one fixed nonnegative metric; its kernel is allowed.
No division by a norm, positive eigenvalue gap, simple-zero assumption, new
GRH predicate, or omission of arithmetic normalization terms is introduced.

Program 8 now supplies analytic multiplicities for its finite spectral model;
it does not supply an arbitrary arithmetic contour divisor. These consumers
must not promote a bare IdentifiesZeros predicate to an analytic-order theorem.

FORMAL_SOURCE_CANDIDATE. Elaboration, fresh kernel replay, transitive axiom
audit and independent review NOT_RUN. No arithmetic certificate is constructed.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators ComplexConjugate

namespace GRWTSK.ZeroCountCertificates

open GRWTSK.HermiteMomentCertificates
open GRWTSK.RationalHermiteSignCertificates
open GRWTSK.LinearAlgebra.RationalEnclosureCertificates
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates

namespace FiniteDivisor

/-- Exact Hermite sign can be tested on all rational coefficient vectors. -/
theorem allReal_iff_rational_tests (d : FiniteDivisor)
    (hconj : ∀ z ∈ d.support, conj z ∈ d.support) :
    d.AllReal ↔ ∀ q : Fin d.totalCount → ℚ,
      0 ≤ quadraticValue d.divisorMatrix (fun i => (q i : ℝ)) :=
  (d.divisorMatrix_nonnegative_iff hconj).symm.trans
    (nonnegative_iff_rational d.divisorMatrix)

/-- A single accepted zero-tolerance certificate establishes finite reality. -/
theorem allReal_of_checked_zeroTolerance (d : FiniteDivisor)
    (hconj : ∀ z ∈ d.support, conj z ∈ d.support)
    (P : Packet (Fin d.totalCount)) {r : ℕ}
    (C : Certificate ℚ (Fin d.totalCount) Empty Empty (Fin r))
    (hencloses : Encloses P d.divisorMatrix) (hcheck : intervalCheck P C = true)
    (htol : P.tolerance = 0) : d.AllReal := by
  apply (d.divisorMatrix_nonnegative_iff hconj).mp
  intro x
  have h := checked_enclosure_lower P C d.divisorMatrix hencloses hcheck x
  rw [htol] at h
  simpa only [Rat.cast_zero, neg_zero, zero_mul, quadratic_eq_quadraticValue] using h

/-- Arbitrarily accurate accepted rational bounds imply reality even for a
singular Hermite matrix. The metric is FIXED across accuracies and nonnegative. -/
theorem allReal_of_checked_dyadic (d : FiniteDivisor)
    (hconj : ∀ z ∈ d.support, conj z ∈ d.support)
    (G : Matrix (Fin d.totalCount) (Fin d.totalCount) ℚ)
    (hG : Nonnegative (fun i j => (G i j : ℝ)))
    (hcert : ∀ k : ℕ, ∃ (P : Packet (Fin d.totalCount)) (r : ℕ)
      (C : Certificate ℚ (Fin d.totalCount) Empty Empty (Fin r)),
      Encloses P d.divisorMatrix ∧ intervalCheck P C = true ∧
      P.metric = G ∧ P.tolerance = (1 / 2 : ℚ) ^ k) : d.AllReal := by
  apply (d.divisorMatrix_nonnegative_iff hconj).mp
  intro x
  apply nonneg_of_scaled_dyadic_lower (hG x)
  intro k
  obtain ⟨P, r, C, henc, hcheck, hmetric, htol⟩ := hcert k
  have h := checked_enclosure_lower P C d.divisorMatrix henc hcheck x
  have htolcast : (P.tolerance : ℝ) = (1 / 2 : ℝ) ^ k := by
    rw [htol]
    norm_num
  rw [hmetric, htolcast] at h
  simpa only [quadratic_eq_quadraticValue] using h

/-- An accepted negative packet returns a nonreal zero of the EXACT source.
Conjugation closure is unnecessary for this negative implication. -/
theorem source_nonreal_of_negativeCheck (d : FiniteDivisor)
    (f : ℂ → ℂ) (D : Set ℂ) (hsource : d.IdentifiesZeros f D)
    (P : Packet (Fin d.totalCount)) (q : Fin d.totalCount → ℚ)
    (hencloses : Encloses P d.divisorMatrix) (hcheck : negativeCheck P q = true) :
    ∃ z : ℂ, z ∈ D ∧ f z = 0 ∧ z.im ≠ 0 := by
  classical
  have hneg := negativeCheck_sound P q d.divisorMatrix hencloses hcheck
  change quadraticValue
    (hermiteMatrix (fun z : d.support => (z : ℂ))
      (fun z : d.support => (d.multiplicity z : ℝ)) d.totalCount)
    (fun i => (q i : ℝ)) < 0 at hneg
  obtain ⟨a, ha⟩ := exists_nonreal_of_negative
    (fun z : d.support => (z : ℂ)) (fun z : d.support => (d.multiplicity z : ℝ))
    (fun i => (q i : ℝ)) (fun _ => Nat.cast_nonneg _) hneg
  have hs := (hsource (a : ℂ)).mp a.property
  exact ⟨a, hs.1, hs.2, ha⟩

/-- Nonreal support produces an accepted rational negative packet once a sound
shrinking enclosure supplier is provided. It is not such a supplier itself. -/
theorem exists_negativeCheck_of_not_allReal (d : FiniteDivisor)
    (hconj : ∀ z ∈ d.support, conj z ∈ d.support)
    (P : ℕ → Packet (Fin d.totalCount))
    (hguard : ∀ k, (P k).Guard) (hencloses : ∀ k, Encloses (P k) d.divisorMatrix)
    (hsmall : ∀ (q : Fin d.totalCount → ℚ) (δ : ℝ), 0 < δ → ∃ k,
      errorBudget (fun i j => ((P k).radius i j : ℝ)) (fun i => (q i : ℝ)) < δ)
    (hnonreal : ¬ d.AllReal) :
    ∃ (q : Fin d.totalCount → ℚ) (k : ℕ), negativeCheck (P k) q = true := by
  have hn : ¬ Nonnegative d.divisorMatrix :=
    fun h => hnonreal ((d.divisorMatrix_nonnegative_iff hconj).mp h)
  unfold Nonnegative at hn
  push_neg at hn
  exact exists_accepted_of_negative d.divisorMatrix P hguard hencloses hsmall hn

end FiniteDivisor

/-- Return all-height packet coverage to the UNCHANGED continued Dirichlet
critical-strip target. Every window and every accuracy remain quantified. -/
theorem dirichlet_criticalStripStatement_of_interval_certificates
    {N : ℕ} [NeZero N] (chi : DirichletCharacter ℂ N)
    (D : ℕ → Set ℂ) (divisor : ℕ → FiniteDivisor)
    (hsource : ∀ j, (divisor j).IdentifiesZeros
      (fun z => DirichletCharacter.LFunction chi (arithmeticCoordinate z)) (D j))
    (hcover : ∀ rho : ℂ, DirichletCharacter.LFunction chi rho = 0 →
      0 < rho.re → rho.re < 1 → ∃ j, spectralCoordinate rho ∈ D j)
    (hconj : ∀ j z, z ∈ (divisor j).support → conj z ∈ (divisor j).support)
    (G : (j : ℕ) → Matrix (Fin (divisor j).totalCount) (Fin (divisor j).totalCount) ℚ)
    (hG : ∀ j, Nonnegative (fun a b => (G j a b : ℝ)))
    (hcert : ∀ j k : ℕ, ∃ (P : Packet (Fin (divisor j).totalCount)) (r : ℕ)
      (C : Certificate ℚ (Fin (divisor j).totalCount) Empty Empty (Fin r)),
      Encloses P (divisor j).divisorMatrix ∧ intervalCheck P C = true ∧
      P.metric = G j ∧ P.tolerance = (1 / 2 : ℚ) ^ k) :
    GRWTSK.NumberTheory.WeilNegativeWitness.criticalStripStatement chi := by
  apply dirichlet_criticalStripStatement_of_hermite_certificates chi D divisor
    hsource hcover hconj
  intro j
  exact ((divisor j).divisorMatrix_nonnegative_iff (hconj j)).mpr
    ((divisor j).allReal_of_checked_dyadic (hconj j) (G j) (hG j) (hcert j))

end GRWTSK.ZeroCountCertificates
