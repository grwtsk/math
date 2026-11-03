/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.AdditiveDefectEstimate
import GRWTSK.NumberTheory.NaturalRepetitionSource

set_option autoImplicit false
noncomputable section

/-!
# Repeated-prime factor and support credit beyond the squarefree subclass

Let M=max(a,b), Q=M/rad(M), R=rad(abc). The exact identity M=rad(M)*Q
retains repeated primes rather than assuming squarefreeness or an exponent
cap. Additivity gives M<=c<=2M, so the ABC defect differs from
log(Q)-(log(R)-log(rad(M)))-epsilon*log(R) by a quantity in [0,log(2)].
Bounded Q gives an actual uniform estimate on a larger subclass. Uniform
credit control over all triples is still an equivalent missing problem,
not an arithmetic estimate manufactured by this decomposition.

SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.NumberTheory.ABC.RepeatedFactorDefect
open RetainedFactorization AdditiveDefectEstimate

def repetitionFactor (T : CoprimeAdditiveTriple) : ℕ :=
  NaturalRepetitionSource.repetitionQuotient (max T.a T.b)

def repetitionCredit (T : CoprimeAdditiveTriple) (ε : ℝ) : ℝ :=
  Real.log (repetitionFactor T : ℝ) -
    (Real.log (UniqueFactorizationMonoid.radical T.product : ℝ) -
      Real.log (UniqueFactorizationMonoid.radical (max T.a T.b) : ℝ)) -
    ε * Real.log (UniqueFactorizationMonoid.radical T.product : ℝ)

theorem repetitionFactor_pos (T : CoprimeAdditiveTriple) : 0 < repetitionFactor T := by
  apply Nat.pos_of_ne_zero
  exact NaturalRepetitionSource.repetitionQuotient_ne_zero (max T.a T.b)
    (ne_of_gt (T.a_pos.trans_le (le_max_left T.a T.b)))

theorem larger_radical_le_product_radical (T : CoprimeAdditiveTriple) :
    UniqueFactorizationMonoid.radical (max T.a T.b) ≤
      UniqueFactorizationMonoid.radical T.product := by
  have hn : T.product ≠ 0 :=
    ne_of_gt (Nat.mul_pos (Nat.mul_pos T.a_pos T.b_pos) T.c_pos)
  exact Nat.le_of_dvd (Nat.radical_pos T.product)
    (UniqueFactorizationMonoid.radical_dvd_radical (larger_summand_dvd_product T) hn)

theorem additive_log_height_interval (T : CoprimeAdditiveTriple) :
    Real.log ((max T.a T.b : ℕ) : ℝ) ≤ Real.log (T.c : ℝ) ∧
      Real.log (T.c : ℝ) ≤ Real.log 2 + Real.log ((max T.a T.b : ℕ) : ℝ) := by
  have hm : 0 < max T.a T.b := T.a_pos.trans_le (le_max_left _ _)
  have hlo : max T.a T.b ≤ T.c := by
    rw [← T.additive]
    exact max_le (Nat.le_add_right _ _) (Nat.le_add_left _ _)
  have hhi : T.c ≤ 2 * max T.a T.b := by
    rw [← T.additive]
    calc
      T.a + T.b ≤ max T.a T.b + max T.a T.b :=
        Nat.add_le_add (le_max_left _ _) (le_max_right _ _)
      _ = _ := by omega
  constructor
  · exact Real.log_le_log (by exact_mod_cast hm) (by exact_mod_cast hlo)
  · have h := Real.log_le_log (by exact_mod_cast T.c_pos : 0 < (T.c : ℝ))
      (by exact_mod_cast hhi : (T.c : ℝ) ≤ 2 * ((max T.a T.b : ℕ) : ℝ))
    rwa [Real.log_mul (by norm_num : (2 : ℝ) ≠ 0)
      (by exact_mod_cast (ne_of_gt hm))] at h

theorem log_larger_eq_radical_add_repetition (T : CoprimeAdditiveTriple) :
    Real.log ((max T.a T.b : ℕ) : ℝ) =
      Real.log (UniqueFactorizationMonoid.radical (max T.a T.b) : ℝ) +
        Real.log (repetitionFactor T : ℝ) := by
  have hn : ((max T.a T.b : ℕ) : ℝ) =
      (UniqueFactorizationMonoid.radical (max T.a T.b) : ℝ) * (repetitionFactor T : ℝ) := by
    exact_mod_cast (NaturalRepetitionSource.radical_mul_repetitionQuotient (max T.a T.b)).symm
  rw [hn]
  exact Real.log_mul
    (by exact_mod_cast (ne_of_gt (Nat.radical_pos (max T.a T.b))))
    (by exact_mod_cast (ne_of_gt (repetitionFactor_pos T)))

theorem defect_in_repetition_credit_interval (T : CoprimeAdditiveTriple) (ε : ℝ) :
    repetitionCredit T ε ≤ defect T ε ∧
      defect T ε ≤ repetitionCredit T ε + Real.log 2 := by
  have h := additive_log_height_interval T
  have hs := log_larger_eq_radical_add_repetition T
  unfold repetitionCredit defect
  constructor <;> nlinarith [h.1, h.2]

/-- A bounded repeated-prime quotient extends the squarefree result (Q=1).
The bound B is an explicit subclass hypothesis, not a universal claim. -/
theorem defect_le_of_bounded_repetition (T : CoprimeAdditiveTriple) (B : ℕ)
    (hB : repetitionFactor T ≤ B) (ε : ℝ) (hε : 0 ≤ ε) :
    defect T ε ≤ Real.log 2 + Real.log (B : ℝ) := by
  have hq : Real.log (repetitionFactor T : ℝ) ≤ Real.log (B : ℝ) :=
    Real.log_le_log (by exact_mod_cast repetitionFactor_pos T) (by exact_mod_cast hB)
  have hsupport : Real.log (UniqueFactorizationMonoid.radical (max T.a T.b) : ℝ) ≤
      Real.log (UniqueFactorizationMonoid.radical T.product : ℝ) :=
    Real.log_le_log (by exact_mod_cast Nat.radical_pos (max T.a T.b))
      (by exact_mod_cast larger_radical_le_product_radical T)
  have hn : 1 ≤ UniqueFactorizationMonoid.radical T.product := Nat.radical_pos T.product
  have hr := Real.log_nonneg (by exact_mod_cast hn : (1 : ℝ) ≤
    (UniqueFactorizationMonoid.radical T.product : ℝ))
  have h := (defect_in_repetition_credit_interval T ε).2
  unfold repetitionCredit at h
  nlinarith [mul_nonneg hε hr]

/-- The unrestricted credit problem is equivalent to uniform defect control;
the interval reformulation supplies neither side. -/
theorem uniform_defect_bound_iff_uniform_credit_bound (ε : ℝ) :
    (∃ C : ℝ, ∀ T : CoprimeAdditiveTriple, defect T ε ≤ C) ↔
      (∃ C : ℝ, ∀ T : CoprimeAdditiveTriple, repetitionCredit T ε ≤ C) := by
  constructor
  · rintro ⟨C, hC⟩
    exact ⟨C, fun T => (defect_in_repetition_credit_interval T ε).1.trans (hC T)⟩
  · rintro ⟨C, hC⟩
    refine ⟨C + Real.log 2, fun T => ?_⟩
    exact (defect_in_repetition_credit_interval T ε).2.trans (add_le_add_right (hC T) _)

end GRWTSK.NumberTheory.ABC.RepeatedFactorDefect
