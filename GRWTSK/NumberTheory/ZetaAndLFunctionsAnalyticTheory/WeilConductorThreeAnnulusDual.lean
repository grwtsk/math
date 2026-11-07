/- 
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.

Direct source consumer: grwtsk/math@3af8d36032819bd989fdb334a822c408732220ac.
Analytical source: Connes--Consani--Moscovici, "Zeta Spectral Triples",
arXiv:2511.22755v1, equations (3.19)--(3.20), with the original
character/parity and zero-extension conventions.
Source inputs: WeilConductorThreeComplementTail and
WeilConductorThreeAntiNearCycle, November 7 2026.
Original statement and budget preserved; no new GRH predicate.
AI-assisted source candidate; independent human mathematical review NOT_RUN.
LEAN_COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeComplementTail
import Mathlib.Tactic

/-!
# Radius-three conductor-three finite-annulus dual and paid budget

The original `modThreeQuadratic` and `DirichletStageChain.Admissible`
remain unchanged. Let E = ||f||² in physical L²(dt). The existing complete
high-frequency variance return and inner-band source comparisons isolate

  J_Dprime(m * P²) >= -98136331/500000000 * E

as one sufficient, UNSOLVED stage inequality. No inequality of this strength
is asserted here.

The existing paid source allowances admit a weaker target:

  J_Dprime(m * P²) >= -(6/25) * E.                           (A)

The scalar computation below proves that, PROVIDED the full physical-source
comparison and (A) are established, the original stage value is >= -E/4.
The comparison is a separately quantified hypothesis; exact rational
arithmetic does not discharge the finite-annulus sign.

## Null-shift dual: source-preserving, but conditional

For a real odd compact C² physical test f, supp(f) subset [-3,3], set
F(xi) = integral f(t) exp(-i xi t) dt and E = ||f||².
The compact-support autocorrelation vanishes for |r|>=6.
Plancherel therefore gives the EXACT zero identities

  integral cos(r*xi) |F(xi)|² dxi / (2*pi) = 0, |r|>=6.

Let b(xi) = 1_Dprime(xi) * m(xi) * P(xi)², where all factors, band
centers and the original parity-one gamma source remain as in
WeilConductorThreeComplementTail. If FINITELY MANY real coefficients a_j
and shifts |r_j|>=6 satisfy the globally quantified pointwise inequality

  b(xi) + sum_j a_j*cos(r_j*xi) >= -6/25  for EVERY real xi,   (B)

then integration against the nonnegative physical Fourier density gives
(A). This is a genuine dual sufficient certificate; (B) is NOT supplied
and may be computationally difficult. Cosine shifts beyond the original
prime-power cutoff are ZERO source comparisons, never extra arithmetic
Euler terms or an invented modification to the Weil source.

The finite-atomic theorem below establishes the exact algebraic kernel
of this return without pretending that a finite frequency sample establishes
(B) for all xi or the analytic Fourier/autocorrelation bridge. Atomic
weights, all sources and all null moments are explicitly quantified.

Hostile test: at xi = 13248033/4 the actual source multiplier b(xi)
is approximately -12.042839218 (ordinary floating diagnosis, NOT an
interval certificate). Thus pointwise b >= -6/25 is false. Physical support
is essential; a negative single frequency cannot be treated as a negative
whole-domain Rayleigh value.

Comparison: the prior source's finite-band criterion, support and Dirichlet
sector are unchanged. This increment supplies a cheaper sufficient numerical
target and an independent null-correlation dual, not a passing witness,
RH/GRH or a new spectral positivity theorem. No independent prior-art or
full analytic review has been completed.
-/

set_option autoImplicit false
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeAnnulusDual

/-- Pure exact-rational comparison. The original full source/error return
is a separate input in `quarter_stage_of_relaxed_annulus`. -/
theorem relaxed_budget_lt_quarter :
    (6 / 25 : ℚ) + 31 / 18750 + 1037 / 500000 +
      462681 / 100000000000000 + 2652 / 1000000 + 1 / 1000 < 1 / 4 := by
  norm_num

/-- Original stage consumer, with the complete paid source comparison
expressed as a premise. No assumption of the unproved annulus inequality
is hidden inside a newly defined source. -/
theorem quarter_stage_of_relaxed_annulus
    (E Q J delta : ℝ)
    (hE : 0 ≤ E)
    (hdelta : delta ≤ (462681 / 100000000000000 : ℝ))
    (hsource : J -
        ((31 / 18750 : ℝ) + 1037 / 500000 + delta +
          2652 / 1000000 + 1 / 1000) * E ≤ Q)
    (hannulus : -(6 / 25 : ℝ) * E ≤ J) :
    -(1 / 4 : ℝ) * E ≤ Q := by
  have hexact : (6 / 25 : ℝ) + 31 / 18750 + 1037 / 500000 +
      462681 / 100000000000000 + 2652 / 1000000 + 1 / 1000 <
        1 / 4 := by
    norm_num
  have hbudget : (6 / 25 : ℝ) + 31 / 18750 + 1037 / 500000 +
      delta + 2652 / 1000000 + 1 / 1000 ≤ 1 / 4 := by
    linarith
  have hpaid := mul_le_mul_of_nonneg_right hbudget hE
  nlinarith

/-- A finite positive atomic observation cannot invalidate a dual lower
bound whose added modes have *exactly zero* observed weighted moments.
This is an exact finite theorem, not a continuum sampling principle. -/
theorem finite_atomic_nullshift
    {α : Type*} [DecidableEq α] (s : Finset α)
    (w b : α → ℝ) (k : ℕ) (a : Fin k → ℝ)
    (q : Fin k → α → ℝ) (budget : ℝ)
    (hw : ∀ i ∈ s, 0 ≤ w i)
    (hpoint : ∀ i ∈ s,
      -budget ≤ b i + ∑ j : Fin k, a j * q j i)
    (hnull : ∀ j : Fin k, ∑ i ∈ s, w i * q j i = 0) :
    -budget * (∑ i ∈ s, w i) ≤ ∑ i ∈ s, w i * b i := by
  have hcross :
      (∑ i ∈ s, w i * (∑ j : Fin k, a j * q j i)) = 0 := by
    calc
      _ = ∑ i ∈ s, ∑ j : Fin k, a j * (w i * q j i) := by
        apply Finset.sum_congr rfl
        intro i hi
        rw [Finset.mul_sum]
        apply Finset.sum_congr rfl
        intro j hj
        ring
      _ = ∑ j : Fin k, ∑ i ∈ s, a j * (w i * q j i) := Finset.sum_comm
      _ = ∑ j : Fin k, a j * (∑ i ∈ s, w i * q j i) := by
        apply Finset.sum_congr rfl
        intro j hj
        rw [Finset.mul_sum]
      _ = 0 := by simp [hnull]
  have hsum :
      (∑ i ∈ s, w i * (-budget)) ≤
        ∑ i ∈ s, w i * (b i + ∑ j : Fin k, a j * q j i) := by
    apply Finset.sum_le_sum
    intro i hi
    exact mul_le_mul_of_nonneg_left (hpoint i hi) (hw i hi)
  calc
    -budget * (∑ i ∈ s, w i) =
        ∑ i ∈ s, w i * (-budget) := by
      rw [Finset.sum_mul]
      ring
    _ ≤ ∑ i ∈ s, w i * (b i + ∑ j : Fin k, a j * q j i) := hsum
    _ = ∑ i ∈ s, w i * b i := by
      calc
        _ = (∑ i ∈ s, w i * b i) +
            (∑ i ∈ s, w i * (∑ j : Fin k, a j * q j i)) := by
          simp_rw [mul_add, Finset.sum_add_distrib]
        _ = ∑ i ∈ s, w i * b i := by rw [hcross]; ring

/-- Cosines are a specialization of the finite null-moment theorem.
Their zero moments must be proved from the physical support and Fourier
identity before applying the continuum version. -/
theorem finite_cosine_nullshift
    {α : Type*} [DecidableEq α] (s : Finset α)
    (w b ξ : α → ℝ) (k : ℕ) (r a : Fin k → ℝ) (budget : ℝ)
    (hw : ∀ i ∈ s, 0 ≤ w i)
    (hpoint : ∀ i ∈ s,
      -budget ≤ b i + ∑ j : Fin k, a j * Real.cos (r j * ξ i))
    (hnull : ∀ j : Fin k,
      ∑ i ∈ s, w i * Real.cos (r j * ξ i) = 0) :
    -budget * (∑ i ∈ s, w i) ≤ ∑ i ∈ s, w i * b i := by
  exact finite_atomic_nullshift s w b k a
    (fun j i => Real.cos (r j * ξ i)) budget hw hpoint hnull

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeAnnulusDual
