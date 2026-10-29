/-
Copyright (c) 2026 grwtsk contributors.
Released under Apache 2.0 license as described in the upstream file LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.AnthropicMath.Fermat
import Mathlib.NumberTheory.FLT.Basic
import Mathlib.Tactic.Tauto

/-!
# Exact integer Fermat fibers, including the signed zero-output boundary

The natural-number fiber cannot simply be reused over the integers. For odd
exponents the zero-output fiber is the entire antidiagonal `(a,-a)`, including
nonzero summands. For even exponents the fibers are the four signed axis
candidates, which all coincide at output zero.

The nonzero-coordinate obstruction is supplied by the proved upstream
`flt_mathlib`, transported through Mathlib's proved
`fermatLastTheoremFor_iff_int`. No Fermat theorem is assumed as a free premise.
Parity-sensitive injectivity then identifies the actual coordinates, rather
than merely their powers or absolute values.

Upstream: `anthropics/fermats-last-theorem` commit
`6e837e75355538c7f80bab5b956861e86c4eacc2`, Apache 2.0,
copyright Anthropic, PBC; its original notices remain upstream. The endpoint
`flt_mathlib` is in `FinalCheck.lean`, Git blob
`3ffbd60b8f9736f5569e4dd4774701a114d18266`.
Mathlib is pinned at `db584cd6d46c92f209a44c0f1c829460d327499d`;
its natural/integer transport is in `Mathlib.NumberTheory.FLT.Basic`, blob
`c21f4b48f7231a5782d0ea07442d963b0c6cc7f5`, with original byline
Kevin Buzzard, Yaël Dillies and Jineon Baek.

The root integer `Fermat42` family already contains a homogeneous quartic
nonzero-summand consumer, `not_fermat_4`. These exact signed fibers supply its
all-exponent equation classification, but do not strengthen the different
`a^4+b^4=c^2` equation or import its legacy root source across versions.

This package retains Lean 4.33.1. Compilation, expected-interface checking,
fresh independent kernel replay and complete transitive axiom auditing remain
NOT_RUN. No root dependency or version-port is supplied here.
-/

namespace GRWTSK.NumberTheory.DiophantineEquations.FermatIntegerSolutionFibers

/-- Over the integers, the proved natural FLT excludes only triples whose
three coordinates are all nonzero. Odd zero-output solutions remain possible. -/
theorem power_sum_eq_forces_zero_coordinate (n : ℕ) (a b c : ℤ) (hn : 3 ≤ n)
    (heq : a ^ n + b ^ n = c ^ n) : a = 0 ∨ b = 0 ∨ c = 0 := by
  by_cases ha : a = 0
  · exact Or.inl ha
  by_cases hb : b = 0
  · exact Or.inr (Or.inl hb)
  by_cases hc : c = 0
  · exact Or.inr (Or.inr hc)
  have hflt : FermatLastTheoremWith ℤ n :=
    fermatLastTheoremFor_iff_int.mp (_root_.flt_mathlib n hn)
  exact False.elim (hflt a b c ha hb hc heq)

/-- Odd integer powers retain their signs. In particular, the full antidiagonal
is an actual zero-output solution family, not a positive-natural solution. -/
theorem odd_power_sum_eq_iff_degenerate (n : ℕ) (a b c : ℤ)
    (hn : 3 ≤ n) (hodd : Odd n) :
    a ^ n + b ^ n = c ^ n ↔
      (a = 0 ∧ b = c) ∨ (b = 0 ∧ a = c) ∨ (c = 0 ∧ b = -a) := by
  have hn0 : n ≠ 0 := by omega
  constructor
  · intro heq
    rcases power_sum_eq_forces_zero_coordinate n a b c hn heq with ha | hb | hc
    · have hp : b ^ n = c ^ n := by
        simpa only [ha, zero_pow hn0, zero_add] using heq
      exact Or.inl ⟨ha, hodd.pow_injective hp⟩
    · have hp : a ^ n = c ^ n := by
        simpa only [hb, zero_pow hn0, add_zero] using heq
      exact Or.inr (Or.inl ⟨hb, hodd.pow_injective hp⟩)
    · have hz : a ^ n + b ^ n = 0 := by
        simpa only [hc, zero_pow hn0] using heq
      have hp : b ^ n = (-a) ^ n := by
        rw [hodd.neg_pow]
        linarith
      exact Or.inr (Or.inr ⟨hc, hodd.pow_injective hp⟩)
  · rintro (⟨ha, hbc⟩ | ⟨hb, hac⟩ | ⟨hc, hba⟩)
    · simp only [ha, hbc, zero_pow hn0, zero_add]
    · simp only [hb, hac, zero_pow hn0, add_zero]
    · rw [hc, zero_pow hn0, hba, hodd.neg_pow, add_neg_cancel]

/-- Even integer powers forget the sign of each surviving axis coordinate.
At output zero, nonnegativity forces both summands themselves to vanish. -/
theorem even_power_sum_eq_iff_degenerate (n : ℕ) (a b c : ℤ)
    (hn : 3 ≤ n) (heven : Even n) :
    a ^ n + b ^ n = c ^ n ↔
      (a = 0 ∧ (b = c ∨ b = -c)) ∨ (b = 0 ∧ (a = c ∨ a = -c)) := by
  have hn0 : n ≠ 0 := by omega
  constructor
  · intro heq
    rcases power_sum_eq_forces_zero_coordinate n a b c hn heq with ha | hb | hc
    · have hp : b ^ n = c ^ n := by
        simpa only [ha, zero_pow hn0, zero_add] using heq
      rcases (pow_eq_pow_iff_of_ne_zero hn0).mp hp with hbc | ⟨hbc, _⟩
      · exact Or.inl ⟨ha, Or.inl hbc⟩
      · exact Or.inl ⟨ha, Or.inr hbc⟩
    · have hp : a ^ n = c ^ n := by
        simpa only [hb, zero_pow hn0, add_zero] using heq
      rcases (pow_eq_pow_iff_of_ne_zero hn0).mp hp with hac | ⟨hac, _⟩
      · exact Or.inr ⟨hb, Or.inl hac⟩
      · exact Or.inr ⟨hb, Or.inr hac⟩
    · have hz : a ^ n + b ^ n = 0 := by
        simpa only [hc, zero_pow hn0] using heq
      have hap : a ^ n = 0 := by
        linarith [heven.pow_nonneg a, heven.pow_nonneg b]
      have hbp : b ^ n = 0 := by
        linarith [heven.pow_nonneg a, heven.pow_nonneg b]
      have ha : a = 0 := (pow_eq_zero_iff hn0).mp hap
      have hb : b = 0 := (pow_eq_zero_iff hn0).mp hbp
      exact Or.inl ⟨ha, Or.inl (hb.trans hc.symm)⟩
  · rintro (⟨ha, hbc⟩ | ⟨hb, hac⟩)
    · have hp : b ^ n = c ^ n := (pow_eq_pow_iff_of_ne_zero hn0).mpr
        (hbc.elim Or.inl (fun h => Or.inr ⟨h, heven⟩))
      simpa only [ha, zero_pow hn0, zero_add] using hp
    · have hp : a ^ n = c ^ n := (pow_eq_pow_iff_of_ne_zero hn0).mpr
        (hac.elim Or.inl (fun h => Or.inr ⟨h, heven⟩))
      simpa only [hb, zero_pow hn0, add_zero] using hp

/-- The odd zero-output fiber includes every `(a,-a)`. For nonzero output the
antidiagonal part is empty and only the two axis candidates remain. -/
theorem odd_fixed_output_solution_fiber (n : ℕ) (c : ℤ)
    (hn : 3 ≤ n) (hodd : Odd n) :
    {p : ℤ × ℤ | p.1 ^ n + p.2 ^ n = c ^ n} =
      {(0, c), (c, 0)} ∪ {p : ℤ × ℤ | c = 0 ∧ p.2 = -p.1} := by
  ext p
  rcases p with ⟨a, b⟩
  change a ^ n + b ^ n = c ^ n ↔
    ((a, b) = (0, c) ∨ (a, b) = (c, 0)) ∨ (c = 0 ∧ b = -a)
  have hclass := odd_power_sum_eq_iff_degenerate n a b c hn hodd
  simp only [Prod.mk.injEq]
  tauto

/-- The four even-axis candidates are a set, not four distinct solutions.
Their signs coincide when `c=0`, giving precisely the singleton `(0,0)`. -/
theorem even_fixed_output_solution_fiber (n : ℕ) (c : ℤ)
    (hn : 3 ≤ n) (heven : Even n) :
    {p : ℤ × ℤ | p.1 ^ n + p.2 ^ n = c ^ n} =
      {(0, c), (0, -c), (c, 0), (-c, 0)} := by
  ext p
  rcases p with ⟨a, b⟩
  change a ^ n + b ^ n = c ^ n ↔
    (a, b) = (0, c) ∨ (a, b) = (0, -c) ∨ (a, b) = (c, 0) ∨ (a, b) = (-c, 0)
  have hclass := even_power_sum_eq_iff_degenerate n a b c hn heven
  simp only [Prod.mk.injEq]
  tauto

end GRWTSK.NumberTheory.DiophantineEquations.FermatIntegerSolutionFibers
