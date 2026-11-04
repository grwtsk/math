/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.Hypothesis
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.RiemannZeroSymmetry
import Mathlib.Tactic.Linarith

set_option autoImplicit false

/-!
# Conditional zero-free domains for zeta and Dirichlet L-functions

RH is exactly Mathlib's `RiemannHypothesis`, not a replacement growth condition.
The Dirichlet version below quantifies over every positive modulus and every
character, and constrains zeros in the open critical strip. In particular it
includes the character modulo one. It is not a hypothesis about arbitrary
Dedekind zeta functions. Imprimitive Euler-factor zeros on Re(s) = 0 are outside
this definition; the principal-character pole is excluded wherever required.

Primary argument: RH rules out a zero strictly right of the critical line;
conversely, the existing exact zeta reflection sends a left-side nontrivial zero
to the forbidden right side. For Dirichlet functions, split at Re(s) = 1 and use
the upstream unconditional nonvanishing theorem on the closed right half-plane.
The modulo-one identity gives an exact return from Dirichlet GRH to Mathlib RH.
Consumers: holomorphic division and injective diagonal observation maps.

Sources reused at math commit 567008acec20530ce7776dbb0af5f8f88cea0487:
`Hypothesis`, `RiemannZeroSymmetry`; upstream Mathlib commit
 d13f23b723b8a846827a245b89c10fc7d3f11612, `LSeries/DirichletContinuation`
and `LSeries/Nonvanishing` (David Loeffler, Michael Stoll and upstream contributors;
upstream licenses and attribution remain unchanged).
Hostile boundary: zeta has its actual trivial zero at -2, independently of RH.
No proof of RH or GRH, quantitative prime estimate, or effective lower bound is
claimed. These are elementary conditional consequences, not a novelty claim.
AI-assisted formalization; independent review: NOT_RUN. Lean v4.34.1;
compilation, fresh kernel checking and transitive axiom auditing: NOT_RUN.
-/

namespace GRWTSK.NumberTheory.Conditional

/-- The meromorphic pole is omitted, not treated as an analytic function value. -/
def ZetaZeroFreeAbove (σ : ℝ) : Prop :=
  ∀ s : ℂ, σ < s.re → s ≠ 1 → riemannZeta s ≠ 0

/-- Positive real part excludes all of the exact trivial-zero locations. -/
theorem not_trivial_zero_of_pos_re {s : ℂ} (hs : 0 < s.re) :
    ¬ ∃ n : ℕ, s = -2 * (n + 1) := by
  rintro ⟨n, hn⟩
  have hreal : s.re = -2 * ((n : ℝ) + 1) := by
    simpa using congrArg Complex.re hn
  have hnonneg : (0 : ℝ) ≤ n := Nat.cast_nonneg n
  linarith

/-- The hypothesis is used, rather than obtained from an unresolved supplier. -/
theorem zeta_zero_free_of_rh (hRH : _root_.RiemannHypothesis) :
    ZetaZeroFreeAbove (1 / 2) := by
  intro s hs hp hz
  have hline := hRH s hz (not_trivial_zero_of_pos_re (by linarith)) hp
  linarith

/-- Moving a boundary right only restricts the domain. -/
theorem zeta_zero_free_mono {σ τ : ℝ} (hστ : σ ≤ τ)
    (h : ZetaZeroFreeAbove σ) : ZetaZeroFreeAbove τ := by
  intro s hs hp
  exact h s (lt_of_le_of_lt hστ hs) hp

/-- The converse consumes the repository's proved exact functional-equation reflection. -/
theorem rh_of_zeta_zero_free (h : ZetaZeroFreeAbove (1 / 2)) :
    _root_.RiemannHypothesis := by
  intro s hz htr hp
  have original : GRWTSK.RiemannHypothesis.NontrivialZetaZero s := ⟨hz, htr, hp⟩
  have upper : s.re ≤ (1 / 2 : ℝ) := by
    apply le_of_not_gt
    intro hs
    exact h s hs hp hz
  have lower : (1 / 2 : ℝ) ≤ s.re := by
    by_contra hn
    have hs : s.re < (1 / 2 : ℝ) := lt_of_not_ge hn
    have reflected := original.reflect
    have hr : (1 / 2 : ℝ) < (GRWTSK.RiemannHypothesis.zeroReflect s).re := by
      simp only [GRWTSK.RiemannHypothesis.zeroReflect, Complex.sub_re, Complex.one_re]
      linarith
    exact h _ hr reflected.2.2 reflected.1
  exact le_antisymm upper lower

theorem rh_iff_zeta_zero_free :
    _root_.RiemannHypothesis ↔ ZetaZeroFreeAbove (1 / 2) :=
  ⟨zeta_zero_free_of_rh, rh_of_zeta_zero_free⟩

/-- A one-character statement on the open critical strip, with the actual L-function. -/
def DirichletCriticalLine {N : ℕ} [NeZero N]
    (χ : DirichletCharacter ℂ N) : Prop :=
  ∀ s : ℂ, 0 < s.re → s.re < 1 → χ.LFunction s = 0 → s.re = 1 / 2

/-- Dirichlet GRH; the positive-modulus instance is an explicit quantified binder. -/
def DirichletGRH : Prop :=
  ∀ (N : ℕ) [NeZero N] (χ : DirichletCharacter ℂ N), DirichletCriticalLine χ

/-- A finite modulus range is kept distinct from the full hypothesis. -/
def DirichletGRHUpTo (Q : ℕ) : Prop :=
  ∀ (N : ℕ) [NeZero N], N ≤ Q →
    ∀ χ : DirichletCharacter ℂ N, DirichletCriticalLine χ

theorem grh_implies_upto (h : DirichletGRH) (Q : ℕ) : DirichletGRHUpTo Q := by
  intro N hN hNQ χ
  exact h N χ

theorem grh_upto_mono {Q R : ℕ} (hQR : Q ≤ R)
    (h : DirichletGRHUpTo R) : DirichletGRHUpTo Q := by
  intro N hN hNQ χ
  exact h N (Nat.le_trans hNQ hQR) χ

/-- All finite cutoffs suffice; one fixed cutoff is not silently promoted. -/
theorem grh_iff_all_cutoffs : DirichletGRH ↔ ∀ Q, DirichletGRHUpTo Q := by
  constructor
  · exact grh_implies_upto
  · intro h N hN χ
    exact h N N (Nat.le_refl N) χ

/-- Analytic regularity at one is retained for nonprincipal characters. -/
def Regular {N : ℕ} [NeZero N] (χ : DirichletCharacter ℂ N) (s : ℂ) : Prop :=
  s ≠ 1 ∨ χ ≠ 1

/-- Strip GRH and unconditional boundary nonvanishing cover the entire right half-plane. -/
theorem dirichlet_nonzero_of_critical_line {N : ℕ} [NeZero N]
    {χ : DirichletCharacter ℂ N} (h : DirichletCriticalLine χ)
    {s : ℂ} (hs : (1 / 2 : ℝ) < s.re) (hr : Regular χ s) :
    χ.LFunction s ≠ 0 := by
  by_cases hstrip : s.re < 1
  · intro hz
    have hline := h s (by linarith) hstrip hz
    linarith
  · exact DirichletCharacter.LFunction_ne_zero_of_one_le_re χ hr.symm
      (le_of_not_gt hstrip)

/-- The left part of the open strip is also zero-free, with no claim on Re(s) = 0. -/
theorem dirichlet_nonzero_left_of_critical_line {N : ℕ} [NeZero N]
    {χ : DirichletCharacter ℂ N} (h : DirichletCriticalLine χ)
    {s : ℂ} (hpos : 0 < s.re) (hleft : s.re < (1 / 2 : ℝ)) :
    χ.LFunction s ≠ 0 := by
  intro hz
  have hline := h s hpos (by linarith) hz
  linarith

/-- Every allowed zero in the positive half-plane lies on the critical line. -/
theorem dirichlet_zero_re_of_critical_line {N : ℕ} [NeZero N]
    {χ : DirichletCharacter ℂ N} (h : DirichletCriticalLine χ)
    {s : ℂ} (hpos : 0 < s.re) (hr : Regular χ s)
    (hz : χ.LFunction s = 0) : s.re = 1 / 2 := by
  have hstrip : s.re < 1 := by
    apply lt_of_not_ge
    intro hge
    exact DirichletCharacter.LFunction_ne_zero_of_one_le_re χ hr.symm hge hz
  exact h s hpos hstrip hz

/-- In particular, an exceptional real zero strictly between one half and one is excluded. -/
theorem no_exceptional_real_zero {N : ℕ} [NeZero N]
    {χ : DirichletCharacter ℂ N} (h : DirichletCriticalLine χ)
    {β : ℝ} (hβ : (1 / 2 : ℝ) < β) (hβone : β < 1) :
    χ.LFunction (β : ℂ) ≠ 0 := by
  apply dirichlet_nonzero_of_critical_line h (by simpa using hβ)
  left
  intro heq
  have hre : β = 1 := by simpa using congrArg Complex.re heq
  linarith

/-- Exact comparison with the modulus-one L-function; no analogy is used. -/
theorem rh_iff_mod_one :
    _root_.RiemannHypothesis ↔
      DirichletCriticalLine (1 : DirichletCharacter ℂ 1) := by
  constructor
  · intro h s hpos hstrip hz
    have hzeta : riemannZeta s = 0 := by
      simpa only [DirichletCharacter.LFunction_modOne_eq] using hz
    have hp : s ≠ 1 := by
      intro heq
      subst s
      norm_num at hstrip
    exact h s hzeta (not_trivial_zero_of_pos_re hpos) hp
  · intro h s hz htr hp
    have original : GRWTSK.RiemannHypothesis.NontrivialZetaZero s := ⟨hz, htr, hp⟩
    have hstrip := original.mem_critical_strip
    apply h s hstrip.1 hstrip.2
    simpa only [DirichletCharacter.LFunction_modOne_eq] using hz

theorem grh_implies_rh (h : DirichletGRH) : _root_.RiemannHypothesis :=
  rh_iff_mod_one.mpr (h 1 (1 : DirichletCharacter ℂ 1))

/-- No positive-half-plane conclusion extends to the entire complex plane. -/
theorem zeta_not_everywhere_nonzero : ¬ ∀ s : ℂ, riemannZeta s ≠ 0 := by
  intro h
  have hz : riemannZeta (-2) = 0 := by
    simpa using riemannZeta_neg_two_mul_nat_add_one 0
  exact h (-2) hz

end GRWTSK.NumberTheory.Conditional
