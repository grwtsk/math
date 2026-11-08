/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.

SOURCE_PROOF_CANDIDATE / LEAN_ELABORATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilFrobeniusPhaseSurplus
import Mathlib.Tactic

/-!
# Finite magnetic Dirichlet boundaries and the zero-mode obstruction

Mathematical consumer: the source-sensitive individualPhaseDefect in
FrobeniusPhaseSurplus. Source grwtsk/math@c87a4970156f0bb17bbdaac57d357a34e79e5d5c;
upstream Mathlib pinned d13f23b723b8a846827a245b89c10fc7d3f11612.

A finite path has boundary data, unlike a closed holonomy ring. If
v(j+1)=u*v(j) on each of K edges and v(K)=0, with u nonzero, then
v(j)=0 for ALL j<=K. The proof is actual induction, not an assumption
about a graph spectral gap. An open path therefore has no nonzero
parallel section. A closed cycle with unit holonomy instead has a
nonzero constant parallel section, as in the earlier spin pairs.

For two occupied sites a,b and a unit complex phase u, the actual
zero-extended one-shift energy across the THREE edges (boundary,
interior, boundary) is
  |a|^2+|b-u*a|^2+|b|^2 >= |a|^2+|b|^2.
The same elementary inequality can be written as
  2 Re(conj(u)*conj(a)*b) <= |a|^2+|b|^2.
This is the exact two-cell Cauchy bound responsible for a >=1/2
phase-defect gain when the translate length r is at least half the
physical support width 2T. The analytic decomposition of the actual
L2(R) function into translated two-site fibers is a SEPARATE theorem;
these finite lemmas do not themselves identify the Weil source.

Analytical source-to-L2 argument for that separate theorem:
For a pointwise supported f on [-T,T] and T<=r, set
 A=[-T,T-r], B=[-T+r,T]. Products conj(f(t))*f(t+r) vanish off A.
Translation sends A to B. Since A and B are disjoint except possibly
a Lebesgue-null endpoint, Young's inequality on each t in A gives
  2*|C_f(r)| <= integral_A |f|^2 + integral_B |f|^2 <= E(f).
For r>=2T, the original SourcePrimeCorrelation.correlation_eq_zero_of_cutoff
gives the even stronger C_f(r)=0. A Lean proof of the full set-integral
comparison is NOT asserted in this file; the consuming band theorem
keeps its premise explicitly. A plain condition C_f(2r)=0 alone
does NOT establish the sharp half bound without the complete
physical-support decomposition.

Primary arithmetic context: Connes--Consani--Moscovici,
"Zeta Spectral Triples" arXiv:2511.22755v1 (3.19)--(3.20).
All finite path arguments are elementary and not novelty claims.
The compact physical L2 source, conductor, gamma/pole, signed
residuals, RH and Dirichlet GRH remain separate proof obligations.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.FiniteMagneticDirichletBoundary

/-- A parallel section on a finite directed path is determined by
its exact initial value, even before specifying a terminal boundary. -/
theorem parallel_eq_power (u : ℂ) (v : ℕ → ℂ) (K : ℕ)
    (hparallel : ∀ j < K, v (j + 1) = u * v j) :
    ∀ j ≤ K, v j = u ^ j * v 0 := by
  intro j
  induction j with
  | zero =>
      intro hj
      simp
  | succ j ih =>
      intro hj
      have hjlt : j < K := Nat.lt_of_succ_le hj
      calc
        v (j + 1) = u * v j := hparallel j hjlt
        _ = u * (u ^ j * v 0) := by rw [ih (Nat.le_of_lt hjlt)]
        _ = u ^ (j + 1) * v 0 := by rw [pow_succ]; ring

/-- The exact Dirichlet terminal condition annihilates EVERY finite
parallel value when the transport is invertible. This blocks
interpreting a finite open path as a nonconstant null/zero mode. -/
theorem parallel_zero_of_terminal (u : ℂ) (v : ℕ → ℂ) (K : ℕ)
    (hu : u ≠ 0)
    (hparallel : ∀ j < K, v (j + 1) = u * v j)
    (hterminal : v K = 0) :
    ∀ j ≤ K, v j = 0 := by
  have hfull := parallel_eq_power u v K hparallel
  have hzero : u ^ K * v 0 = 0 := by
    calc
      u ^ K * v 0 = v K := (hfull K le_rfl).symm
      _ = 0 := hterminal
  have hstart : v 0 = 0 :=
    (mul_eq_zero.mp hzero).resolve_left (pow_ne_zero K hu)
  intro j hj
  rw [hfull j hj, hstart, mul_zero]

/-- One physical cell in a two-site r-translation path carries at
most half of the unshifted L2 mass as a single-step complex correlation.
The phase is the ACTUAL unit-magnitude complex phase, not Bool spin. -/
theorem two_site_phase_correlation_half (u a b : ℂ)
    (hu : ‖u‖ = 1) :
    2 * (conj u * (conj a * b)).re ≤ ‖a‖ ^ 2 + ‖b‖ ^ 2 := by
  have hmajor :
      (conj u * (conj a * b)).re ≤ ‖a‖ * ‖b‖ := by
    calc
      _ ≤ |(conj u * (conj a * b)).re| := le_abs_self _
      _ ≤ ‖conj u * (conj a * b)‖ := Complex.abs_re_le_norm _
      _ = ‖a‖ * ‖b‖ := by
        rw [norm_mul, norm_mul, Complex.norm_conj, Complex.norm_conj, hu]
        ring
  nlinarith [sq_nonneg (‖a‖ - ‖b‖)]

/-- The three edges of the zero-extended two-site path are:
left boundary (0,a), internal magnetic link (a,b), right boundary
(b,0). No cyclic zero mode survives the two boundary terms. -/
def twoSiteDirichletEnergy (u a b : ℂ) : ℝ :=
  ‖a‖ ^ 2 + ‖b - u * a‖ ^ 2 + ‖b‖ ^ 2

theorem twoSiteDirichletEnergy_ge_mass (u a b : ℂ) :
    ‖a‖ ^ 2 + ‖b‖ ^ 2 ≤ twoSiteDirichletEnergy u a b := by
  unfold twoSiteDirichletEnergy
  nlinarith [sq_nonneg (‖b - u * a‖)]

theorem twoSiteDirichletEnergy_eq_zero_iff (u a b : ℂ) :
    twoSiteDirichletEnergy u a b = 0 ↔ a = 0 ∧ b = 0 := by
  constructor
  · intro h
    have hmass := twoSiteDirichletEnergy_ge_mass u a b
    rw [h] at hmass
    have ha : ‖a‖ = 0 := by
      nlinarith [sq_nonneg (‖b‖), norm_nonneg a]
    have hb : ‖b‖ = 0 := by
      nlinarith [sq_nonneg (‖a‖), norm_nonneg b]
    exact ⟨norm_eq_zero.mp ha, norm_eq_zero.mp hb⟩
  · rintro ⟨rfl, rfl⟩
    simp [twoSiteDirichletEnergy]

/-- A loop can have a nonzero parallel constant when its holonomy is
identity: this is the hostile ring comparison to the open-boundary
no-zero-mode result, not an arithmetic Weil positivity argument. -/
theorem unit_holonomy_parallel_nonzero :
    (1 : ℂ) ≠ 0 ∧ ∀ j : ℕ, (1 : ℂ) = 1 * 1 := by
  constructor
  · norm_num
  · intro j
    ring

end GRWTSK.NumberTheory.WeilQuadraticForm.FiniteMagneticDirichletBoundary
