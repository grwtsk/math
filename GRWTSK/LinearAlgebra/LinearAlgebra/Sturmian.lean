/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Model source: Ram Band, Siegfried Beckus, Raphael Loewy, arXiv:2402.16703v2,
equation (1.1) and Appendix I. Mathlib authorship and licenses remain upstream. -/
import GRWTSK.LinearAlgebra.LinearAlgebra.SchrodingerTransfer
import Mathlib.Algebra.Order.Floor.Ring
import Mathlib.LinearAlgebra.Matrix.Trace
import Mathlib.Tactic

set_option autoImplicit false

noncomputable section
namespace GRWTSK.LinearAlgebra.Sturmian

open GRWTSK.LinearAlgebra.SchrodingerTransfer

/-- The literal half-open rotation coding, with phase and integer lattice sites.
Aperiodicity requires additional irrational-frequency hypotheses. -/
def bit (α ξ : ℝ) (n : ℤ) : ℝ :=
  if Int.fract (ξ + (n : ℝ) * α) ∈ Set.Ico (1 - α) 1 then 1 else 0

def potential (α coupling ξ : ℝ) (n : ℤ) : ℝ := coupling * bit α ξ n

def transfer (E α coupling ξ : ℝ) (n : ℤ) : Matrix (Fin 2) (Fin 2) ℝ :=
  schrodingerTransfer E (potential α coupling ξ n)

theorem bit_zero_or_one (α ξ : ℝ) (n : ℤ) : bit α ξ n = 0 ∨ bit α ξ n = 1 := by
  unfold bit
  split_ifs <;> simp

theorem potential_between_offsets (α V ξ : ℝ) (n : ℤ) :
    min V 0 ≤ potential α V ξ n ∧ potential α V ξ n ≤ max V 0 := by
  rcases bit_zero_or_one α ξ n with h | h <;> simp only [potential, h, mul_zero, mul_one]
  · exact ⟨min_le_right _ _, le_max_right _ _⟩
  · exact ⟨min_le_left _ _, le_max_left _ _⟩

theorem comparison_offset_width (V : ℝ) : max V 0 - min V 0 = |V| := by
  rcases le_total 0 V with h | h
  · rw [max_eq_left h, min_eq_right h, abs_of_nonneg h, sub_zero]
  · rw [max_eq_right h, min_eq_left h, abs_of_nonpos h, zero_sub]

theorem abs_potential_sub_le (α V W ξ : ℝ) (n : ℤ) :
    |potential α V ξ n - potential α W ξ n| ≤ |V - W| := by
  rcases bit_zero_or_one α ξ n with h | h <;> simp [potential, h]

theorem potential_zero (α ξ : ℝ) (n : ℤ) : potential α 0 ξ n = 0 := by
  simp [potential]

theorem zero_coupling_transfer (E α ξ : ℝ) (n : ℤ) :
    transfer E α 0 ξ n = schrodingerTransfer E 0 := by
  simp [transfer, potential_zero]

theorem recurrence_iff_transfer (E α coupling ξ : ℝ) (n : ℤ)
    (previous current next : ℝ) :
    next + previous + potential α coupling ξ n * current = E * current ↔
      rawState next current = (transfer E α coupling ξ n).mulVec
        (rawState current previous) :=
  schrodinger_recurrence_iff_transfer E (potential α coupling ξ n) previous current next

theorem det_transfer (E α coupling ξ : ℝ) (n : ℤ) :
    (transfer E α coupling ξ n).det = 1 :=
  det_schrodingerTransfer E (potential α coupling ξ n)

/-- Exact single-step free trace criterion. Identifying it with an operator spectrum
requires a separate Floquet/Fourier theorem, which is not asserted here. -/
theorem zero_coupling_trace_iff (E α ξ : ℝ) (n : ℤ) :
    |Matrix.trace (transfer E α 0 ξ n)| ≤ 2 ↔ E ∈ Set.Icc (-2 : ℝ) 2 := by
  simp [zero_coupling_transfer, schrodingerTransfer, Matrix.trace,
    Fin.sum_univ_two, abs_le]

end GRWTSK.LinearAlgebra.Sturmian
