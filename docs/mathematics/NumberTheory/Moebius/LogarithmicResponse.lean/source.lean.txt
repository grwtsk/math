import Mathlib.Algebra.Order.Star.Real
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.MeasureTheory.Integral.Bochner.Set
import Mathlib.MeasureTheory.Measure.Lebesgue.Basic
import Mathlib.NumberTheory.ArithmeticFunction.Moebius

/-!
Literal source and terminal proposition for ASBN–P04 and PPNC–P04.

All integrals below are actual Lebesgue integrals of the stated source.
The complete ordered off-diagonal is a double finite sum with the diagonal
erased; it is not defined as total energy minus diagonal energy.
No theorem named P04 is asserted.
-/

noncomputable section
open scoped BigOperators
open MeasureTheory Set

namespace PPNCP04

def atom (n : ℕ) (u : ℝ) : ℝ :=
  if Real.log (n : ℝ) ≤ u then
    2 * ((Real.sqrt (n : ℝ))⁻¹ - Real.exp (-u / 2))
  else 0

def baseWave (u : ℝ) : ℝ :=
  if 0 ≤ u then 2 * (1 - Real.exp (-u / 2)) else 0

def causalShift (a : ℝ) (f : ℝ → ℝ) (u : ℝ) : ℝ :=
  if a ≤ u then f (u - a) else 0

def restrict (T : ℝ) (f : ℝ → ℝ) (u : ℝ) : ℝ :=
  if 0 ≤ u ∧ u ≤ T then f u else 0

def realMoebius (n : ℕ) : ℝ := (ArithmeticFunction.moebius n : ℤ)

def integerInventory (T : ℝ) : Finset ℕ :=
  Finset.Icc 1 ⌊Real.exp T⌋₊

def primeInventory (T : ℝ) : Finset ℕ :=
  (integerInventory T).filter Nat.Prime

def pickup (T u : ℝ) : ℝ :=
  ∑ n ∈ integerInventory T, realMoebius n * atom n u

def gram (T : ℝ) (m n : ℕ) : ℝ :=
  ∫ u in Icc 0 T, atom m u * atom n u

def energy (T : ℝ) : ℝ :=
  ∫ u in Icc 0 T, pickup T u ^ 2

def diagonal (T : ℝ) : ℝ :=
  ∑ n ∈ integerInventory T, realMoebius n ^ 2 * gram T n n

def crossEnergy (T : ℝ) : ℝ :=
  ∑ m ∈ integerInventory T,
    ∑ n ∈ (integerInventory T).erase m,
      realMoebius m * realMoebius n * gram T m n

def PolynomialBound (X : ℝ → ℝ) : Prop :=
  ∃ C r : ℝ, 0 ≤ C ∧ 0 ≤ r ∧
    ∀ T : ℝ, 0 ≤ T → X T ≤ C * (1 + T) ^ r

def P04 : Prop := PolynomialBound crossEnergy

theorem mem_integerInventory {T : ℝ} {n : ℕ} :
    n ∈ integerInventory T ↔ 1 ≤ n ∧ (n : ℝ) ≤ Real.exp T := by
  simp only [integerInventory, Finset.mem_Icc]
  rw [Nat.le_floor_iff (Real.exp_pos T).le]

theorem atom_entry_zero {n : ℕ} (hn : 0 < n) :
    atom n (Real.log (n : ℝ)) = 0 := by
  have hpos : 0 < (n : ℝ) := by exact_mod_cast hn
  have hexp : Real.exp (-Real.log (n : ℝ) / 2) = (Real.sqrt (n : ℝ))⁻¹ := by
    rw [show -Real.log (n : ℝ) / 2 = -(Real.log (n : ℝ) / 2) by ring,
      Real.exp_neg, ← Real.log_sqrt hpos.le, Real.exp_log (Real.sqrt_pos.mpr hpos)]
  simp [atom, hexp]

theorem atom_nonneg {n : ℕ} (hn : 0 < n) (u : ℝ) : 0 ≤ atom n u := by
  have hpos : 0 < (n : ℝ) := by exact_mod_cast hn
  by_cases hu : Real.log (n : ℝ) ≤ u
  · have hexp := atom_entry_zero hn
    have he : Real.exp (-u / 2) ≤ (Real.sqrt (n : ℝ))⁻¹ := by
      have h := Real.exp_le_exp.mpr (show -u / 2 ≤ -Real.log (n : ℝ) / 2 by linarith)
      have hentry : Real.exp (-Real.log (n : ℝ) / 2) = (Real.sqrt (n : ℝ))⁻¹ := by
        have hz : (Real.sqrt (n : ℝ))⁻¹ -
            Real.exp (-Real.log (n : ℝ) / 2) = 0 := by
          simpa [atom] using hexp
        linarith
      exact h.trans_eq hentry
    simp only [atom, if_pos hu]
    positivity
  · simp [atom, hu]

theorem atom_continuous {n : ℕ} (hn : 0 < n) : Continuous (atom n) := by
  have hf : Continuous (fun u : ℝ =>
      2 * ((Real.sqrt (n : ℝ))⁻¹ - Real.exp (-u / 2))) := by fun_prop
  have hg : Continuous (fun _u : ℝ => (0 : ℝ)) := continuous_const
  apply hf.if _ hg
  intro u hu
  have heq : u = Real.log (n : ℝ) := by
    have hfront : frontier {u : ℝ | Real.log (n : ℝ) ≤ u} =
        {Real.log (n : ℝ)} := by
      exact frontier_Ici
    rw [hfront] at hu
    exact Set.mem_singleton_iff.mp hu
  subst u
  simpa [atom] using atom_entry_zero hn

theorem energy_nonneg (T : ℝ) : 0 ≤ energy T := by
  exact integral_nonneg (fun u => sq_nonneg (pickup T u))

theorem gram_diagonal_nonneg (T : ℝ) (n : ℕ) : 0 ≤ gram T n n := by
  exact integral_nonneg (fun u => mul_self_nonneg (atom n u))

theorem diagonal_nonneg (T : ℝ) : 0 ≤ diagonal T := by
  apply Finset.sum_nonneg
  intro n hn
  exact mul_nonneg (sq_nonneg _) (gram_diagonal_nonneg T n)

theorem restrict_causalShift_restrict (T a : ℝ) (ha : 0 ≤ a) (f : ℝ → ℝ) :
    restrict T (causalShift a (restrict T f)) =
      restrict T (causalShift a f) := by
  funext u
  by_cases hu : 0 ≤ u ∧ u ≤ T
  · by_cases hau : a ≤ u
    · have hchild : 0 ≤ u-a ∧ u-a ≤ T := by constructor <;> linarith [hu.1, hu.2]
      simp [restrict, causalShift, hu, hau, hchild]
    · simp [restrict, causalShift, hu, hau]
  · simp [restrict, hu]

theorem restrict_idempotent (T : ℝ) (f : ℝ → ℝ) :
    restrict T (restrict T f) = restrict T f := by
  funext u
  by_cases hu : 0 ≤ u ∧ u ≤ T <;> simp [restrict, hu]

theorem restrict_sub (T : ℝ) (f g : ℝ → ℝ) :
    restrict T (fun u => f u-g u) =
      fun u => restrict T f u-restrict T g u := by
  funext u
  by_cases hu : 0 ≤ u ∧ u ≤ T <;> simp [restrict, hu]

theorem restrict_const_mul (T c : ℝ) (f : ℝ → ℝ) :
    restrict T (fun u => c*f u) = fun u => c*restrict T f u := by
  funext u
  by_cases hu : 0 ≤ u ∧ u ≤ T <;> simp [restrict, hu]

def primeNote (p : ℕ) (f : ℝ → ℝ) (u : ℝ) : ℝ :=
  f u-(Real.sqrt (p : ℝ))⁻¹*causalShift (Real.log (p : ℝ)) f u

theorem restrict_primeNote_restrict (T : ℝ) (p : ℕ)
    (hp : Nat.Prime p) (f : ℝ → ℝ) :
    restrict T (primeNote p (restrict T f)) = restrict T (primeNote p f) := by
  have hp1 : (1 : ℝ) ≤ p := by exact_mod_cast hp.one_lt.le
  have ha : 0 ≤ Real.log (p : ℝ) := Real.log_nonneg hp1
  funext u
  by_cases hu : 0 ≤ u ∧ u ≤ T
  · have hs := congrFun (restrict_causalShift_restrict T _ ha f) u
    simp only [restrict, if_pos hu] at hs
    simp [restrict, primeNote, hu, hs]
  · simp [restrict, hu]

end PPNCP04

#print axioms PPNCP04.atom_continuous
#print axioms PPNCP04.restrict_primeNote_restrict
