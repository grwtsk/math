import FormalResearch.RiemannHypothesis.XiCoefficientLogConcavity
import FormalResearch.RiemannHypothesis.XiJensenPolynomial
import Mathlib.LinearAlgebra.Matrix.PosDef
import Mathlib.LinearAlgebra.Matrix.Trace
import Mathlib.LinearAlgebra.Matrix.Charpoly.Basic

namespace FormalResearch.RiemannHypothesis.XiJensenTrace
open XiToeplitz ThetaPositiveLift Matrix
open scoped Matrix
noncomputable section

def quarticCompanion (b c : ℝ) : Matrix (Fin 4) (Fin 4) ℝ :=
  !![0, 0, 0, -c; 1, 0, 0, 0; 0, 1, 0, b; 0, 0, 1, 0]

def quarticHermite (b c : ℝ) : Matrix (Fin 4) (Fin 4) ℝ :=
  fun i j => Matrix.trace (quarticCompanion b c ^ (i.val + j.val))

theorem quarticHermite_eq (b c : ℝ) :
    quarticHermite b c =
      !![4, 0, 2*b, 0;
        0, 2*b, 0, 2*b^2-4*c;
        2*b, 0, 2*b^2-4*c, 0;
        0, 2*b^2-4*c, 0, 2*b^3-6*b*c] := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    norm_num [quarticHermite, quarticCompanion, Matrix.trace, Matrix.mul_apply,
      Fin.sum_univ_succ, pow_succ] <;> ring

theorem quarticHermite_square (b c : ℝ) (hb : b ≠ 0) (u : Fin 4 → ℝ) :
    u ⬝ᵥ (quarticHermite b c *ᵥ u) =
      4 * (u 0 + b / 2 * u 2) ^ 2 + (b ^ 2 - 4*c) * u 2 ^ 2 +
      2*b * (u 1 + (b^2-2*c)/b * u 3)^2 +
      (2*c*(b^2-4*c)/b) * u 3 ^ 2 := by
  rw [quarticHermite_eq]
  simp [dotProduct, Matrix.mulVec, Fin.sum_univ_succ]
  field_simp [hb]
  ring

theorem quarticCompanion_charpoly (b c : ℝ) :
    (quarticCompanion b c).charpoly =
      Polynomial.X ^ 4 - Polynomial.C b * Polynomial.X ^ 2 + Polynomial.C c := by
  simp [Matrix.charpoly, Matrix.det_succ_row_zero,
    Fin.sum_univ_succ, Matrix.charmatrix_apply, Matrix.diagonal,
    Matrix.submatrix, quarticCompanion]
  norm_num [show Fin.succAbove (3 : Fin 4) (2 : Fin 3) = 2 by decide,
    show (![0, 0, 1, 0] : Fin 4 → ℝ) 2 = 1 by rfl]
  ring

def jensenTwoB : ℝ := 8 * coefficient 1 / coefficient 2

def jensenTwoC : ℝ := (32 / 3 : ℝ) * coefficient 0 / coefficient 2

theorem jensenTwoB_pos : 0 < jensenTwoB := by
  unfold jensenTwoB
  exact div_pos (mul_pos (by norm_num)
    (coefficient_positive_of_thetaCoefficientFormula thetaCoefficientFormula 1))
    (coefficient_positive_of_thetaCoefficientFormula thetaCoefficientFormula 2)

theorem jensenTwoC_pos : 0 < jensenTwoC := by
  unfold jensenTwoC
  exact div_pos (mul_pos (by norm_num)
    (coefficient_positive_of_thetaCoefficientFormula thetaCoefficientFormula 0))
    (coefficient_positive_of_thetaCoefficientFormula thetaCoefficientFormula 2)

theorem jensenTwo_discriminant_pos : 0 < jensenTwoB ^ 2 - 4*jensenTwoC := by
  have h := coefficient_logConcave 0
  norm_num at h
  have ha0 := coefficient_positive_of_thetaCoefficientFormula thetaCoefficientFormula 0
  have ha2 := coefficient_positive_of_thetaCoefficientFormula thetaCoefficientFormula 2
  unfold jensenTwoB jensenTwoC
  apply (mul_pos_iff_of_pos_right (sq_pos_of_pos ha2)).mp
  field_simp
  nlinarith [mul_pos ha0 ha2]

def jensenTwoTrace : Matrix (Fin 4) (Fin 4) ℝ :=
  quarticHermite jensenTwoB jensenTwoC

theorem jensenTwoTrace_square_nonneg (u : Fin 4 → ℝ) :
    0 ≤ u ⬝ᵥ (jensenTwoTrace *ᵥ u) := by
  rw [jensenTwoTrace, quarticHermite_square _ _ jensenTwoB_pos.ne']
  have hb := jensenTwoB_pos.le
  have hc := jensenTwoC_pos.le
  have hd := jensenTwo_discriminant_pos.le
  positivity

theorem jensenTwoTrace_posSemidef : jensenTwoTrace.PosSemidef := by
  apply Matrix.PosSemidef.of_dotProduct_mulVec_nonneg
  · rw [jensenTwoTrace, quarticHermite_eq]
    ext i j
    fin_cases i <;> fin_cases j <;> simp [Matrix.conjTranspose_apply]
  · intro u
    simpa using jensenTwoTrace_square_nonneg u

theorem jensenTwoTrace_posDef : jensenTwoTrace.PosDef := by
  apply Matrix.PosDef.of_dotProduct_mulVec_pos jensenTwoTrace_posSemidef.isHermitian
  intro u hu
  simp only [star_trivial]
  rw [jensenTwoTrace, quarticHermite_square _ _ jensenTwoB_pos.ne']
  have hb := jensenTwoB_pos
  have hc := jensenTwoC_pos
  have hd := jensenTwo_discriminant_pos
  have hD : 0 < 2*jensenTwoC*(jensenTwoB^2-4*jensenTwoC)/jensenTwoB := by positivity
  have h0 := sq_nonneg (u 0 + jensenTwoB / 2 * u 2)
  have h1 := sq_nonneg (u 1 + (jensenTwoB^2-2*jensenTwoC)/jensenTwoB * u 3)
  have h2 := mul_nonneg hd.le (sq_nonneg (u 2))
  have h3 := mul_nonneg hD.le (sq_nonneg (u 3))
  have h4 := mul_nonneg (show 0 ≤ 2*jensenTwoB by positivity) h1
  by_contra hh
  have hle := le_of_not_gt hh
  have hz2 : u 2 = 0 := by
    have hz : (jensenTwoB ^ 2 - 4*jensenTwoC) * u 2 ^ 2 = 0 := by
      linarith only [h0, h2, h3, h4, hle]
    exact (sq_eq_zero_iff).mp ((mul_eq_zero.mp hz).resolve_left hd.ne')
  have hz3 : u 3 = 0 := by
    have hz : (2*jensenTwoC*(jensenTwoB^2-4*jensenTwoC)/jensenTwoB) * u 3 ^ 2 = 0 := by
      linarith only [h0, h2, h3, h4, hle]
    exact (sq_eq_zero_iff).mp ((mul_eq_zero.mp hz).resolve_left hD.ne')
  rw [hz2, hz3] at hle
  norm_num at hle
  have hz0 : u 0 = 0 := by nlinarith [sq_nonneg (u 0), sq_nonneg (u 1)]
  have hz1 : u 1 = 0 := by
    have hz : (2*jensenTwoB) * u 1 ^ 2 = 0 := by
      nlinarith only [hle, sq_nonneg (u 0),
        mul_nonneg (show 0 ≤ 2*jensenTwoB by positivity) (sq_nonneg (u 1))]
    exact sq_eq_zero_iff.mp ((mul_eq_zero.mp hz).resolve_left (by positivity))
  apply hu
  ext i
  fin_cases i <;> simp [hz0, hz1, hz2, hz3]

open XiJensenPolynomial Polynomial XiJensenWeights

theorem jensenPolynomial_two :
    jensenPolynomial 2 =
      C (coefficient 0) - C ((3 / 4 : ℝ) * coefficient 1) * X^2 +
      C ((3 / 32 : ℝ) * coefficient 2) * X^4 := by
  norm_num [jensenPolynomial, Finset.sum_range_succ, weight,
    Nat.descFactorial, Polynomial.C_mul]
  ring

theorem jensenTwo_charpoly_source :
    C (leadingScalar 2) * (quarticCompanion jensenTwoB jensenTwoC).charpoly =
      jensenPolynomial 2 := by
  rw [quarticCompanion_charpoly, jensenPolynomial_two]
  have ha2 := (coefficient_positive_of_thetaCoefficientFormula thetaCoefficientFormula 2).ne'
  have hb : leadingScalar 2 * jensenTwoB = (3/4 : ℝ) * coefficient 1 := by
    norm_num [leadingScalar, jensenTwoB]
    field_simp
    ring
  have hc : leadingScalar 2 * jensenTwoC = coefficient 0 := by
    norm_num [leadingScalar, jensenTwoC]
    field_simp
    ring
  have hl : leadingScalar 2 = (3/32 : ℝ) * coefficient 2 := by
    norm_num [leadingScalar]
    ring
  calc
    _ = C (leadingScalar 2) * X^4 - C (leadingScalar 2 * jensenTwoB) * X^2 +
        C (leadingScalar 2 * jensenTwoC) := by
      rw [Polynomial.C_mul, Polynomial.C_mul]
      ring
    _ = _ := by rw [hb, hc, hl]; ring

theorem jensenTwo_charpoly :
    (quarticCompanion jensenTwoB jensenTwoC).charpoly = monicPolynomial 2 := by
  rw [monicPolynomial, ← jensenTwo_charpoly_source, ← mul_assoc, ← Polynomial.C_mul,
    inv_mul_cancel₀ (leadingScalar_ne_zero (by norm_num : 1 ≤ 2)), Polynomial.C_1, one_mul]

theorem jensenTwo_source_decode (z : ℂ) :
    XiJensenReconstruction.jensenSection 2 z =
      (leadingScalar 2 : ℂ) *
        (quarticCompanion jensenTwoB jensenTwoC).charpoly.eval₂ (algebraMap ℝ ℂ) z := by
  rw [jensenTwo_charpoly]
  exact (leadingScalar_mul_monicPolynomial_eval₂ (by norm_num : 1 ≤ 2) z).symm

theorem quarticHermite_mul_companion (b c : ℝ) :
    quarticHermite b c * quarticCompanion b c =
      (quarticCompanion b c).transpose * quarticHermite b c := by
  rw [quarticHermite_eq]
  ext i j
  fin_cases i <;> fin_cases j <;>
    norm_num [quarticCompanion, Matrix.mul_apply, Matrix.transpose_apply,
      Fin.sum_univ_succ] <;> ring

theorem jensenTwo_trace_selfadjoint :
    jensenTwoTrace * quarticCompanion jensenTwoB jensenTwoC =
      (quarticCompanion jensenTwoB jensenTwoC).transpose * jensenTwoTrace :=
  quarticHermite_mul_companion _ _

def cubicCompanion (b c d : ℝ) : Matrix (Fin 3) (Fin 3) ℝ :=
  !![0, 0, d; 1, 0, -c; 0, 1, b]

def cubicHermite (b c d : ℝ) : Matrix (Fin 3) (Fin 3) ℝ :=
  fun i j => Matrix.trace (cubicCompanion b c d ^ (i.val + j.val))

theorem cubicHermite_eq (b c d : ℝ) :
    cubicHermite b c d =
      !![3, b, b^2-2*c;
        b, b^2-2*c, b^3-3*b*c+3*d;
        b^2-2*c, b^3-3*b*c+3*d, b^4-4*b^2*c+2*c^2+4*b*d] := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    norm_num [cubicHermite, cubicCompanion, Matrix.trace, Matrix.mul_apply,
      Fin.sum_univ_succ, pow_succ] <;> ring

theorem cubicHermite_det (b c d : ℝ) :
    (cubicHermite b c d).det =
      b^2*c^2 - 4*c^3 - 4*b^3*d - 27*d^2 + 18*b*c*d := by
  rw [cubicHermite_eq]
  simp [Matrix.det_fin_three]
  ring

def jensenThreeTrace : Matrix (Fin 3) (Fin 3) ℝ :=
  cubicHermite (18 * coefficient 2 / coefficient 3)
    (54 * coefficient 1 / coefficient 3) ((324/5 : ℝ) * coefficient 0 / coefficient 3)

theorem jensenThreeTrace_det :
    jensenThreeTrace.det = (314928 : ℝ) / (25 * coefficient 3 ^ 4) *
      (75 * coefficient 1 ^ 2 * coefficient 2 ^ 2 -
        50 * coefficient 1 ^ 3 * coefficient 3 -
        120 * coefficient 0 * coefficient 2 ^ 3 -
        9 * coefficient 0 ^ 2 * coefficient 3 ^ 2 +
        90 * coefficient 0 * coefficient 1 * coefficient 2 * coefficient 3) := by
  rw [jensenThreeTrace, cubicHermite_det]
  have ha3 := (coefficient_positive_of_thetaCoefficientFormula thetaCoefficientFormula 3).ne'
  field_simp
  ring

theorem geometric_cubic_trace_det_negative :
    (cubicHermite 18 54 (324/5)).det = -(4408992/25 : ℝ) := by
  rw [cubicHermite_det]
  norm_num

theorem cubicCompanion_charpoly (b c d : ℝ) :
    (cubicCompanion b c d).charpoly = X^3 - C b * X^2 + C c * X - C d := by
  simp [Matrix.charpoly, Matrix.det_fin_three, cubicCompanion]
  ring

theorem jensenThree_source_decode (z : ℂ) :
    XiJensenReconstruction.jensenSection 3 z =
      (leadingScalar 3 : ℂ) *
        (cubicCompanion (18 * coefficient 2 / coefficient 3)
          (54 * coefficient 1 / coefficient 3)
          ((324/5 : ℝ) * coefficient 0 / coefficient 3)).charpoly.eval₂
            (algebraMap ℝ ℂ) (z^2) := by
  rw [cubicCompanion_charpoly]
  have ha3 : (coefficient 3 : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr
    (coefficient_positive_of_thetaCoefficientFormula thetaCoefficientFormula 3).ne'
  norm_num [XiJensenReconstruction.jensenSection, Finset.sum_range_succ,
    weight, Nat.descFactorial, leadingScalar]
  field_simp
  ring

end
end FormalResearch.RiemannHypothesis.XiJensenTrace
