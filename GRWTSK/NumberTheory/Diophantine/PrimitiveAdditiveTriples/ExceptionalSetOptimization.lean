/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical source: Christian Bernert, Tim Browning, Jared Duker Lichtman,
and Joni Teräväinen, "Bounds on the exceptional set in the abc conjecture",
arXiv:2410.12234v2 (2026), Proposition 6.1. The source paper credits Bhavik
Mehta for assistance using Lean to verify parts of an earlier version.

This module replaces the paper appendix's floating-point mixed-integer linear
program run by a kernel-checked finite case split with exact rational
`linarith` certificates. It formalizes only Proposition 6.1; the analytic
reductions supplying these inequalities remain separate obligations. -/
import Mathlib.Data.Real.Basic
import Mathlib.Tactic

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

namespace ExceptionalSetOptimization

/-- The 22 nonnegative real variables in Bernert--Browning--Lichtman--Teräväinen,
Proposition 6.1. The functions `a_part`, `b_part`, and `c_part` encode the six
indexed variables in each family. -/
structure Data where
  a_part : Fin 6 → ℝ
  b_part : Fin 6 → ℝ
  c_part : Fin 6 → ℝ
  a_total : ℝ
  b_total : ℝ
  c_total : ℝ
  exponent : ℝ

namespace Data

/-- The paper's `pᵢ = aᵢ + bᵢ + cᵢ`, with zero-based Lean indexing. -/
def p (x : Data) (i : Fin 6) : ℝ :=
  x.a_part i + x.b_part i + x.c_part i

/-- The paper's `L = a + b + c`. -/
def total (x : Data) : ℝ :=
  x.a_total + x.b_total + x.c_total

/-- One of the three Fourier envelopes in inequality (6.10). -/
def envelope (u : Fin 6 → ℝ) : ℝ :=
  max (u 1 + u 3 + u 5) (max (u 2 + u 5) (u 4))

theorem even_part_le_envelope (u : Fin 6 → ℝ) :
    u 1 + u 3 + u 5 ≤ envelope u := by
  exact le_max_left _ _

theorem third_part_le_envelope (u : Fin 6 → ℝ) :
    u 2 + u 5 ≤ envelope u := by
  exact (le_max_left _ _).trans (le_max_right _ _)

theorem fifth_part_le_envelope (u : Fin 6 → ℝ) :
    u 4 ≤ envelope u := by
  exact (le_max_right _ _).trans (le_max_right _ _)

end Data

/-- The hypotheses (6.1)--(6.10) of Bernert--Browning--Lichtman--Teräväinen,
Proposition 6.1, together with the stated nonnegativity of all variables. -/
structure Feasible (x : Data) : Prop where
  nonneg_a : ∀ i, 0 ≤ x.a_part i
  nonneg_b : ∀ i, 0 ≤ x.b_part i
  nonneg_c : ∀ i, 0 ≤ x.c_part i
  nonneg_a_total : 0 ≤ x.a_total
  nonneg_b_total : 0 ≤ x.b_total
  nonneg_c_total : 0 ≤ x.c_total
  nonneg_exponent : 0 ≤ x.exponent
  h61 : x.total ≤ 1
  h62_a :
    x.a_part 0 + x.a_part 1 + x.a_part 2 + x.a_part 3 + x.a_part 4 + x.a_part 5 ≤
      x.a_total
  h62_b :
    x.b_part 0 + x.b_part 1 + x.b_part 2 + x.b_part 3 + x.b_part 4 + x.b_part 5 ≤
      x.b_total
  h62_c :
    x.c_part 0 + x.c_part 1 + x.c_part 2 + x.c_part 3 + x.c_part 4 + x.c_part 5 ≤
      x.c_total
  h63_a :
    7 * x.a_total - 1 ≤
      6 * x.a_part 0 + 5 * x.a_part 1 + 4 * x.a_part 2 +
        3 * x.a_part 3 + 2 * x.a_part 4 + x.a_part 5
  h63_b :
    7 * x.b_total - 1 ≤
      6 * x.b_part 0 + 5 * x.b_part 1 + 4 * x.b_part 2 +
        3 * x.b_part 3 + 2 * x.b_part 4 + x.b_part 5
  h63_c :
    7 * x.c_total - 1 ≤
      6 * x.c_part 0 + 5 * x.c_part 1 + 4 * x.c_part 2 +
        3 * x.c_part 3 + 2 * x.c_part 4 + x.c_part 5
  h64 :
    x.exponent ≤
      min (x.a_total + x.b_total)
        (min (x.a_total + x.c_total) (x.b_total + x.c_total))
  h65 :
    min (x.p 0 + x.p 1 + x.p 3) (1 - x.p 1 - 3 * x.p 3) ≤
      x.total - x.exponent
  h66_a :
    min (x.p 0 + x.p 1 + x.a_part 2) (1 - x.p 1 - 2 * x.a_part 2) ≤
      x.total - x.exponent
  h66_b :
    min (x.p 0 + x.p 1 + x.b_part 2) (1 - x.p 1 - 2 * x.b_part 2) ≤
      x.total - x.exponent
  h66_c :
    min (x.p 0 + x.p 1 + x.c_part 2) (1 - x.p 1 - 2 * x.c_part 2) ≤
      x.total - x.exponent
  h67_ab :
    min (x.p 0 + x.p 1 + x.a_part 2 + x.b_part 2)
        (1 - x.p 1 - 2 * x.a_part 2 - 2 * x.b_part 2) ≤
      x.total - x.exponent
  h67_bc :
    min (x.p 0 + x.p 1 + x.b_part 2 + x.c_part 2)
        (1 - x.p 1 - 2 * x.b_part 2 - 2 * x.c_part 2) ≤
      x.total - x.exponent
  h67_ca :
    min (x.p 0 + x.p 1 + x.c_part 2 + x.a_part 2)
        (1 - x.p 1 - 2 * x.c_part 2 - 2 * x.a_part 2) ≤
      x.total - x.exponent
  h68_a :
    min (x.p 0 + x.a_part 2 + x.b_part 1 + x.c_part 1)
        (1 - 2 * x.a_part 2 - x.b_part 1 - x.c_part 1) ≤
      x.total - x.exponent
  h68_b :
    min (x.p 0 + x.a_part 1 + x.b_part 2 + x.c_part 1)
        (1 - x.a_part 1 - 2 * x.b_part 2 - x.c_part 1) ≤
      x.total - x.exponent
  h68_c :
    min (x.p 0 + x.a_part 1 + x.b_part 1 + x.c_part 2)
        (1 - x.a_part 1 - x.b_part 1 - 2 * x.c_part 2) ≤
      x.total - x.exponent
  h69_a :
    min (x.p 0 + x.a_part 1 + x.b_part 2 + x.c_part 2)
        (1 - x.a_part 1 - 2 * x.b_part 2 - 2 * x.c_part 2) ≤
      x.total - x.exponent
  h69_b :
    min (x.p 0 + x.a_part 2 + x.b_part 1 + x.c_part 2)
        (1 - 2 * x.a_part 2 - x.b_part 1 - 2 * x.c_part 2) ≤
      x.total - x.exponent
  h69_c :
    min (x.p 0 + x.a_part 2 + x.b_part 2 + x.c_part 1)
        (1 - 2 * x.a_part 2 - 2 * x.b_part 2 - x.c_part 1) ≤
      x.total - x.exponent
  h610 :
    Data.envelope x.a_part + Data.envelope x.b_part + Data.envelope x.c_part ≤
      4 * x.total - 6 * x.exponent

set_option maxHeartbeats 10000000 in
/-- **Bernert--Browning--Lichtman--Teräväinen, Proposition 6.1.**
Every feasible exponent is at most `3/5`.

Unlike the source appendix's optimization run, this proof has no trusted
floating-point or external-solver step: each leaf is discharged by exact
linear arithmetic in Lean's kernel. -/
theorem exponent_le_three_fifths (x : Data) (h : Feasible x) :
    x.exponent ≤ (3 : ℝ) / 5 := by
  have ha0 : 0 ≤ x.a_part 0 := h.nonneg_a 0
  have ha1 : 0 ≤ x.a_part 1 := h.nonneg_a 1
  have ha2 : 0 ≤ x.a_part 2 := h.nonneg_a 2
  have ha3 : 0 ≤ x.a_part 3 := h.nonneg_a 3
  have ha4 : 0 ≤ x.a_part 4 := h.nonneg_a 4
  have ha5 : 0 ≤ x.a_part 5 := h.nonneg_a 5
  have hb0 : 0 ≤ x.b_part 0 := h.nonneg_b 0
  have hb1 : 0 ≤ x.b_part 1 := h.nonneg_b 1
  have hb2 : 0 ≤ x.b_part 2 := h.nonneg_b 2
  have hb3 : 0 ≤ x.b_part 3 := h.nonneg_b 3
  have hb4 : 0 ≤ x.b_part 4 := h.nonneg_b 4
  have hb5 : 0 ≤ x.b_part 5 := h.nonneg_b 5
  have hc0 : 0 ≤ x.c_part 0 := h.nonneg_c 0
  have hc1 : 0 ≤ x.c_part 1 := h.nonneg_c 1
  have hc2 : 0 ≤ x.c_part 2 := h.nonneg_c 2
  have hc3 : 0 ≤ x.c_part 3 := h.nonneg_c 3
  have hc4 : 0 ≤ x.c_part 4 := h.nonneg_c 4
  have hc5 : 0 ≤ x.c_part 5 := h.nonneg_c 5
  have h_a_total := h.nonneg_a_total
  have h_b_total := h.nonneg_b_total
  have h_c_total := h.nonneg_c_total
  have h_exponent := h.nonneg_exponent
  have h61 := h.h61
  have h62_a := h.h62_a
  have h62_b := h.h62_b
  have h62_c := h.h62_c
  have h63_a := h.h63_a
  have h63_b := h.h63_b
  have h63_c := h.h63_c
  have h64 := h.h64
  have h65 := h.h65
  have h66_a := h.h66_a
  have h66_b := h.h66_b
  have h66_c := h.h66_c
  have h67_ab := h.h67_ab
  have h67_bc := h.h67_bc
  have h67_ca := h.h67_ca
  have h68_a := h.h68_a
  have h68_b := h.h68_b
  have h68_c := h.h68_c
  have h69_a := h.h69_a
  have h69_b := h.h69_b
  have h69_c := h.h69_c
  have h610 := h.h610
  simp only [Data.p, Data.total] at h61 h65 h66_a h66_b h66_c h67_ab h67_bc h67_ca h68_a h68_b h68_c h69_a h69_b h69_c h610
  have h64ab : x.exponent ≤ x.a_total + x.b_total :=
    (le_min_iff.mp h64).1
  have h64ac : x.exponent ≤ x.a_total + x.c_total :=
    (le_min_iff.mp (le_min_iff.mp h64).2).1
  have h64bc : x.exponent ≤ x.b_total + x.c_total :=
    (le_min_iff.mp (le_min_iff.mp h64).2).2
  have h_a0_env := Data.even_part_le_envelope x.a_part
  have h_a1_env := Data.third_part_le_envelope x.a_part
  have h_a2_env := Data.fifth_part_le_envelope x.a_part
  have h_b0_env := Data.even_part_le_envelope x.b_part
  have h_b1_env := Data.third_part_le_envelope x.b_part
  have h_b2_env := Data.fifth_part_le_envelope x.b_part
  have h_c0_env := Data.even_part_le_envelope x.c_part
  have h_c1_env := Data.third_part_le_envelope x.c_part
  have h_c2_env := Data.fifth_part_le_envelope x.c_part
  rcases min_le_iff.mp h66_a with h66_a | h66_a
  · rcases min_le_iff.mp h69_a with h69_a | h69_a
    · linarith
    · rcases min_le_iff.mp h66_b with h66_b | h66_b
      · rcases min_le_iff.mp h66_c with h66_c | h66_c
        · rcases min_le_iff.mp h69_b with h69_b | h69_b
          · linarith
          · linarith
        · rcases min_le_iff.mp h65 with h65 | h65
          · rcases min_le_iff.mp h67_ab with h67_ab | h67_ab
            · linarith
            · linarith
          · rcases min_le_iff.mp h67_ab with h67_ab | h67_ab
            · linarith
            · linarith
      · rcases min_le_iff.mp h67_ca with h67_ca | h67_ca
        · rcases min_le_iff.mp h65 with h65 | h65
          · linarith
          · linarith
        · rcases min_le_iff.mp h69_b with h69_b | h69_b
          · rcases min_le_iff.mp h68_b with h68_b | h68_b
            · linarith
            · rcases min_le_iff.mp h65 with h65 | h65
              · linarith
              · linarith
          · rcases min_le_iff.mp h68_c with h68_c | h68_c
            · rcases min_le_iff.mp h66_c with h66_c | h66_c
              · linarith
              · linarith
            · rcases min_le_iff.mp h65 with h65 | h65
              · linarith
              · linarith
  · rcases min_le_iff.mp h65 with h65 | h65
    · rcases min_le_iff.mp h66_c with h66_c | h66_c
      · rcases min_le_iff.mp h67_bc with h67_bc | h67_bc
        · linarith
        · linarith
      · rcases min_le_iff.mp h66_b with h66_b | h66_b
        · linarith
        · rcases min_le_iff.mp h67_ab with h67_ab | h67_ab
          · linarith
          · rcases min_le_iff.mp h67_bc with h67_bc | h67_bc
            · linarith
            · rcases min_le_iff.mp h68_c with h68_c | h68_c
              · rcases min_le_iff.mp h67_ca with h67_ca | h67_ca
                · linarith
                · rcases min_le_iff.mp h68_b with h68_b | h68_b
                  · rcases min_le_iff.mp h68_a with h68_a | h68_a
                    · linarith
                    · linarith
                  · linarith
              · linarith
    · rcases min_le_iff.mp h67_bc with h67_bc | h67_bc
      · rcases min_le_iff.mp h68_a with h68_a | h68_a
        · linarith
        · linarith
      · rcases min_le_iff.mp h69_a with h69_a | h69_a
        · rcases min_le_iff.mp h68_a with h68_a | h68_a
          · linarith
          · linarith
        · rcases min_le_iff.mp h68_c with h68_c | h68_c
          · rcases min_le_iff.mp h68_b with h68_b | h68_b
            · rcases min_le_iff.mp h66_c with h66_c | h66_c
              · rcases min_le_iff.mp h66_b with h66_b | h66_b
                · linarith
                · linarith
              · rcases min_le_iff.mp h66_b with h66_b | h66_b
                · linarith
                · linarith
            · linarith
          · linarith

end ExceptionalSetOptimization

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
