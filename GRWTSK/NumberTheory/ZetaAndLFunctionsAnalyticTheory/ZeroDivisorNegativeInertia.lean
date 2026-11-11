/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.HermiteNegativeInertia
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.ZeroDivisorHermiteReturn

/-!
# Return finite Hermite inertia to an exactly identified zero divisor

MSC2020: 11M26, 11M41, 15A63, 30C15. RP-OC-03 consumes RP-OC-06.
The divisor and its multiplicity-sized matrix are the existing canonical
objects. No second finite divisor, zero-location target or GRH predicate is
introduced. The exact real negative index counts distinct upper nonreal
locations, not the sum of their multiplicities. Repeated positive weights and
extra coefficient coordinates do not alter it.

`IdentifiesZeros` binds the support to ALL zeros in a specified domain, not
just sampled zeros. The explicit source-return theorem below constructs the
finite set it counts and gives its exact membership equivalence. This premise
does not identify weights with analytic orders, prove contour identities or
identify the finite Hermite matrix with the pole-inclusive arithmetic Weil
form. In particular this is not its complex-scalar global negative index.
Conjugation closure of the particular source/domain remains explicit.

Source pin: math@8d7c8b8084caa6ff3cf6b254da449042617519f8.
Coordination: math#1808 / #1806. Standard finite consequences; no novelty claim.
FORMAL_SOURCE_CANDIDATE: elaboration, fresh kernel replay, transitive axiom
audit, arithmetic certification and independent review NOT_RUN.
-/

set_option autoImplicit false
noncomputable section

open scoped ComplexConjugate
open GRWTSK.HermiteMomentCertificates
open GRWTSK.LinearAlgebra.NegativeIndex
open GRWTSK.LinearAlgebra.HermiteNegativeInertia

namespace GRWTSK.ZeroCountCertificates.FiniteDivisor

/-- Positive natural multiplicities satisfy the full finite Hermite inertia hypotheses. -/
theorem divisorMatrix_negativeIndex (d : FiniteDivisor)
    (hconj : ∀ z ∈ d.support, conj z ∈ d.support) :
    negativeIndex (𝕜 := ℝ) (quadraticValue d.divisorMatrix) =
      ((upperSupport d.support).card : ℕ∞) := by
  exact negativeIndex_supportMatrix_eq d.support
    (fun z => (d.multiplicity z : ℝ)) d.totalCount
    d.support_card_le_totalCount hconj
    (fun z hz => by exact_mod_cast d.positive z hz)

/-- Exact support identity turns upper support into an actual source-zero set. -/
theorem mem_upperSupport_iff_source_zero (d : FiniteDivisor)
    (f : ℂ → ℂ) (D : Set ℂ) (hsource : d.IdentifiesZeros f D) (z : ℂ) :
    z ∈ upperSupport d.support ↔ z ∈ D ∧ f z = 0 ∧ 0 < z.im := by
  classical
  change (z ∈ d.support.filter fun w => 0 < w.im) ↔ _
  rw [Finset.mem_filter, hsource z]
  tauto

/-- Return the counted FINITE set and its index to the specified function and domain.
No analytic source, contour certificate or infinite Weil-form identity is manufactured. -/
theorem negativeIndex_counts_source_upper_zeros (d : FiniteDivisor)
    (f : ℂ → ℂ) (D : Set ℂ) (hsource : d.IdentifiesZeros f D)
    (hconj : ∀ z ∈ d.support, conj z ∈ d.support) :
    ∃ upperZeros : Finset ℂ,
      (∀ z, z ∈ upperZeros ↔ z ∈ D ∧ f z = 0 ∧ 0 < z.im) ∧
      negativeIndex (𝕜 := ℝ) (quadraticValue d.divisorMatrix) =
        (upperZeros.card : ℕ∞) := by
  exact ⟨upperSupport d.support, d.mem_upperSupport_iff_source_zero f D hsource,
    d.divisorMatrix_negativeIndex hconj⟩

/-- The same distinct support gives the same negative index even when positive
multiplicities and hence the dimensions of the two matrices differ. -/
theorem divisorMatrix_index_eq_of_support_eq (d e : FiniteDivisor)
    (hsupport : d.support = e.support)
    (hconj : ∀ z ∈ d.support, conj z ∈ d.support) :
    negativeIndex (𝕜 := ℝ) (quadraticValue d.divisorMatrix) =
      negativeIndex (𝕜 := ℝ) (quadraticValue e.divisorMatrix) := by
  have heconj : ∀ z ∈ e.support, conj z ∈ e.support := by
    simpa only [← hsupport] using hconj
  rw [d.divisorMatrix_negativeIndex hconj, e.divisorMatrix_negativeIndex heconj, hsupport]

end GRWTSK.ZeroCountCertificates.FiniteDivisor
