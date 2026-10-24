import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Analysis.Real.Sqrt
import Mathlib.Tactic.FinCases
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/-!
# Finite overlap gauges and their size

The two real projective charts have two overlap components. The degree-zero
differential therefore has two parallel edges. Its nonzero harmonic component
is an actual obstruction to a constant chart gauge. On the positive physical
source overlap there is one edge, with an explicit endpoint gauge.

All inner products below are the Euclidean ones. Weighted-to-pointwise
evaluation is stated separately. No uniform arithmetic cap is inferred.

Direction and evaluation: grwtsk contributors. Formalization: OpenAI Codex.
-/

namespace FormalResearch.PositiveAtlas.HodgeGaugeBounds

noncomputable section

abbrev C0 := EuclideanSpace ℝ (Fin 2)
abbrev C1 := EuclideanSpace ℝ (Fin 2)

/-- One edge for each connected component of the actual punctured-real overlap. -/
def differential (b : C0) : C1 := WithLp.toLp 2 ![b 1 - b 0, b 1 - b 0]

/-- The explicit Euclidean adjoint, rather than an assumed Hodge operation. -/
def adjoint (a : C1) : C0 := WithLp.toLp 2 ![-(a 0 + a 1), a 0 + a 1]

theorem adjoint_identity (b : C0) (a : C1) :
    inner ℝ (differential b) a = inner ℝ b (adjoint a) := by
  simp [EuclideanSpace.inner_eq_star_dotProduct, differential, adjoint,
    dotProduct, Fin.sum_univ_succ]
  ring

theorem differential_kernel (b : C0) : differential b = 0 ↔ b 0 = b 1 := by
  constructor
  · intro h
    have h0 := congrArg (fun x : C1 => x 0) h
    simp [differential] at h0
    linarith
  · intro h
    ext i
    fin_cases i <;> simp [differential, h]

theorem adjoint_kernel (a : C1) : adjoint a = 0 ↔ a 0 + a 1 = 0 := by
  constructor
  · intro h
    have h1 := congrArg (fun x : C0 => x 1) h
    simpa [adjoint] using h1
  · intro h
    ext i
    fin_cases i <;> simp [adjoint, h]

/-- The gauge in the orthogonal complement of the constant kernel. -/
def gauge (a : C1) : C0 := WithLp.toLp 2 ![-(a 0 + a 1) / 4, (a 0 + a 1) / 4]

def harmonicPart (a : C1) : C1 :=
  WithLp.toLp 2 ![(a 0 - a 1) / 2, (a 1 - a 0) / 2]

theorem hodge_decomposition (a : C1) : a = differential (gauge a) + harmonicPart a := by
  ext i
  fin_cases i <;> simp [differential, gauge, harmonicPart] <;> ring

theorem harmonicPart_in_kernel (a : C1) : adjoint (harmonicPart a) = 0 := by
  rw [adjoint_kernel]
  simp [harmonicPart]
  ring

theorem gauge_kernel_complement (a : C1) : gauge a 0 + gauge a 1 = 0 := by
  simp [gauge]
  ring

/-- Closedness alone in this graph cannot eliminate the two-component obstruction. -/
theorem exact_iff_component_agreement (a : C1) :
    (∃ b : C0, differential b = a) ↔ a 0 = a 1 := by
  constructor
  · rintro ⟨b, hb⟩
    rw [← hb]
    rfl
  · intro h
    refine ⟨gauge a, ?_⟩
    ext i
    fin_cases i <;> simp [differential, gauge, h] <;> ring

theorem exact_iff_harmonic_zero (a : C1) :
    (∃ b : C0, differential b = a) ↔ harmonicPart a = 0 := by
  rw [exact_iff_component_agreement]
  constructor
  · intro h
    ext i
    fin_cases i <;> simp [harmonicPart, h]
  · intro h
    have h0 := congrArg (fun x : C1 => x 0) h
    simp [harmonicPart] at h0
    linarith

/-- An explicit unequal-component cocycle has no constant chart gauge. -/
theorem unequal_component_obstruction :
    ¬ ∃ b : C0, differential b = WithLp.toLp 2 ![(1 : ℝ), -1] := by
  rw [exact_iff_component_agreement]
  norm_num

/-- The actual two-edge complex has spectral gap four on the kernel complement. -/
theorem two_component_gap (b : C0) (hb : b 0 + b 1 = 0) :
    ‖differential b‖ ^ 2 = 4 * ‖b‖ ^ 2 := by
  rw [EuclideanSpace.norm_sq_eq, EuclideanSpace.norm_sq_eq]
  simp [differential, Fin.sum_univ_succ, Real.norm_eq_abs, sq_abs]
  nlinarith [sq_nonneg (b 0 + b 1)]

/-- A proved coercivity estimate controls any exact gauge without discarding weights. -/
theorem gauge_norm_le {B E : Type*} [NormedAddCommGroup B] [NormedAddCommGroup E]
    (D : B → E) (b : B) (a : E) (gapConstant : ℝ) (hgapConstant : 0 < gapConstant)
    (ha : D b = a) (gap : gapConstant * ‖b‖ ^ 2 ≤ ‖D b‖ ^ 2) :
    ‖b‖ ≤ ‖a‖ / Real.sqrt gapConstant := by
  have hs := Real.sqrt_pos.mpr hgapConstant
  have hsq := Real.sq_sqrt hgapConstant.le
  rw [ha] at gap
  have hp : (Real.sqrt gapConstant * ‖b‖) ^ 2 = gapConstant * ‖b‖ ^ 2 := by rw [mul_pow, hsq]
  have hm : Real.sqrt gapConstant * ‖b‖ ≤ ‖a‖ := by
    nlinarith [norm_nonneg a, mul_nonneg hs.le (norm_nonneg b)]
  exact (le_div_iff₀ hs).mpr (by simpa only [mul_comm] using hm)

theorem exact_two_component_gauge_bound (a : C1) (h : a 0 = a 1) :
    ‖gauge a‖ ≤ ‖a‖ / 2 := by
  have ha' : differential (gauge a) = a := by
    ext i
    fin_cases i <;> simp [differential, gauge, h] <;> ring
  have hs4 : Real.sqrt (4 : ℝ) = 2 := by
    rw [show (4 : ℝ) = 2 ^ 2 by norm_num, Real.sqrt_sq (by norm_num : (0 : ℝ) ≤ 2)]
  simpa only [hs4] using gauge_norm_le differential (gauge a) a 4 (by norm_num) ha'
    (two_component_gap (gauge a) (gauge_kernel_complement a)).ge

/-- The single physical overlap admits the directly priced endpoint gauge. -/
theorem positive_overlap_endpoint_gauge (a : ℝ) :
    a = a - 0 ∧ |a - 0| ≤ |a| := by simp

/-- Weighted squared norms need an evaluation constant for each chart. -/
theorem weighted_evaluation {I : Type*} [Fintype I] (w b : I → ℝ) (i : I)
    (hw : ∀ j, 0 ≤ w j) (hi : 0 < w i) (M : ℝ) (hM : 0 ≤ M)
    (hbound : ∑ j, w j * (b j) ^ 2 ≤ M ^ 2) :
    |b i| ≤ M / Real.sqrt (w i) := by
  have he : w i * b i ^ 2 ≤ ∑ j, w j * b j ^ 2 :=
    Finset.single_le_sum (fun j _ => mul_nonneg (hw j) (sq_nonneg _)) (Finset.mem_univ i)
  have hs := Real.sqrt_pos.mpr hi
  have hsq := Real.sq_sqrt hi.le
  have hp : (|b i| * Real.sqrt (w i)) ^ 2 = w i * b i ^ 2 := by
    rw [mul_pow, sq_abs, hsq]
    ring
  have hm : |b i| * Real.sqrt (w i) ≤ M := by
    nlinarith [mul_nonneg (abs_nonneg (b i)) hs.le]
  exact (le_div_iff₀ hs).mpr hm

end
end FormalResearch.PositiveAtlas.HodgeGaugeBounds
