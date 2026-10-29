import Folder.Rebuild.AnalyticNumberTheory.WeightMultiplicativity
import Folder.Rebuild.NumberTheory.MultiplicativeFunction
import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.SpecialFunctions.Log.Basic

/-!
# Folder.Rebuild.AnalyticNumberTheory.ComplexWeights

Complex Dirichlet weights in the absolutely convergent half-plane.
-/

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

noncomputable def complexWeight
    (s : Complex)
    (n : Nat) : Complex :=
  if n = 0 then 0 else Complex.exp (-(s * ((Real.log n : Real) : Complex)))

theorem complexWeight_zero
    (s : Complex) :
    complexWeight s 0 = 0 := by
  simp [complexWeight]

theorem complexWeight_one
    (s : Complex) :
    complexWeight s 1 = 1 := by
  simp [complexWeight]

theorem complexWeight_of_pos
    (s : Complex)
    {n : Nat}
    (hn : 0 < n) :
    complexWeight s n =
      Complex.exp (-(s * ((Real.log n : Real) : Complex))) := by
  simp [complexWeight, Nat.ne_of_gt hn]

theorem norm_complexWeight_eq_posWeightReal_re
    (s : Complex)
    {n : Nat}
    (hn : 0 < n) :
    ‖complexWeight s n‖ = posWeightReal s.re n := by
  rw [complexWeight_of_pos s hn]
  rw [Complex.norm_exp]
  rw [posWeightReal_of_pos s.re hn]
  rw [Real.rpow_def_of_pos (Nat.cast_pos.mpr hn)]
  congr 1
  rw [Complex.neg_re, Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im]
  ring

theorem norm_complexWeight_le_posWeightReal_re
    (s : Complex)
    (n : Nat) :
    ‖complexWeight s n‖ ≤ posWeightReal s.re n := by
  by_cases hn : n = 0
  · simp [complexWeight, posWeightReal, hn]
  · exact le_of_eq (norm_complexWeight_eq_posWeightReal_re s (Nat.pos_of_ne_zero hn))

theorem complexWeight_mul
    (s : Complex)
    {m n : Nat}
    (hm : 0 < m)
    (hn : 0 < n) :
    complexWeight s (m * n) =
      complexWeight s m * complexWeight s n := by
  rw [complexWeight_of_pos s (Nat.mul_pos hm hn), complexWeight_of_pos s hm,
    complexWeight_of_pos s hn]
  rw [← Complex.exp_add]
  congr 1
  have hlog :
      Real.log ((m * n : Nat) : Real) =
        Real.log (m : Real) + Real.log (n : Real) := by
    rw [Nat.cast_mul]
    exact
      Real.log_mul
        (by exact_mod_cast (Nat.ne_of_gt hm))
        (by exact_mod_cast (Nat.ne_of_gt hn))
  rw [hlog]
  push_cast
  ring

theorem complexWeight_completely_multiplicative
    (s : Complex) :
    Folder.Rebuild.NumberTheory.IsCompletelyMultiplicative
      (fun n : Nat => complexWeight s n) := by
  constructor
  · exact complexWeight_one s
  · intro a b
    by_cases ha : a = 0
    · subst a
      simp [complexWeight]
    · by_cases hb : b = 0
      · subst b
        simp [complexWeight]
      · exact complexWeight_mul s (Nat.pos_of_ne_zero ha) (Nat.pos_of_ne_zero hb)

end AnalyticNumberTheory
end Rebuild
end Folder
