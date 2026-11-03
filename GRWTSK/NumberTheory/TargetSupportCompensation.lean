/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.RepeatedFactorDefect

set_option autoImplicit false
noncomputable section

/-!
# Target repetition compensated by the other prime supports

Write Qc=c/rad(c). Pairwise coprimality from a+b=c gives the exact defect
log(Qc)-log(rad(a))-log(rad(b))-epsilon*log(rad(abc)). Unlike the larger-
summand interval estimate, this has no log(2) slack. If Qc is bounded by
K*rad(a)*rad(b), the defect is at most log(K) for epsilon>=0, without any
bound on the repeated-prime quotients of a or b. In particular squarefree
c gives nonpositive defect, regardless of repetitions in the summands.

SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
No fixed K covers all triples here. For general epsilon>0 the unrestricted
uniform support-compensation estimate remains the missing ABC problem.
-/
namespace GRWTSK.NumberTheory.ABC.TargetSupportCompensation
open RetainedFactorization AdditiveDefectEstimate

def targetRepetition (T : CoprimeAdditiveTriple) : ℕ := NaturalRepetitionSource.repetitionQuotient T.c

def targetCredit (T : CoprimeAdditiveTriple) (ε : ℝ) : ℝ :=
  Real.log (targetRepetition T : ℝ) - Real.log (UniqueFactorizationMonoid.radical T.a : ℝ) -
    Real.log (UniqueFactorizationMonoid.radical T.b : ℝ) -
    ε * Real.log (UniqueFactorizationMonoid.radical T.product : ℝ)

theorem targetRepetition_pos (T : CoprimeAdditiveTriple) : 0 < targetRepetition T :=
  Nat.pos_of_ne_zero (NaturalRepetitionSource.repetitionQuotient_ne_zero T.c (ne_of_gt T.c_pos))

theorem log_target_decomposition (T : CoprimeAdditiveTriple) :
    Real.log (T.c : ℝ) = Real.log (UniqueFactorizationMonoid.radical T.c : ℝ) +
      Real.log (targetRepetition T : ℝ) := by
  have heq : (T.c : ℝ) =
      (UniqueFactorizationMonoid.radical T.c : ℝ) * (targetRepetition T : ℝ) := by
    exact_mod_cast (NaturalRepetitionSource.radical_mul_repetitionQuotient T.c).symm
  rw [heq]
  exact Real.log_mul (by exact_mod_cast (ne_of_gt (Nat.radical_pos T.c)))
    (by exact_mod_cast (ne_of_gt (targetRepetition_pos T)))

theorem defect_eq_targetCredit (T : CoprimeAdditiveTriple) (ε : ℝ) :
    defect T ε = targetCredit T ε := by
  have hc := log_target_decomposition T
  have hr := log_radical_product T
  unfold defect targetCredit
  nlinarith

theorem targetCredit_eq_retained_target_excess (T : CoprimeAdditiveTriple) (ε : ℝ) :
    targetCredit T ε =
      (∑ p ∈ T.c.primeFactors, ((T.c.factorization p : ℝ) - 1) * Real.log (p : ℝ)) -
        Real.log (UniqueFactorizationMonoid.radical T.a : ℝ) -
        Real.log (UniqueFactorizationMonoid.radical T.b : ℝ) -
        ε * Real.log (UniqueFactorizationMonoid.radical T.product : ℝ) := by
  have he := log_height_excess T.c (ne_of_gt T.c_pos)
  have hc := log_target_decomposition T
  unfold targetCredit
  linarith

/-- Compensation permits a varying target quotient, paid by actual other supports. -/
theorem height_le_of_support_compensation (T : CoprimeAdditiveTriple) (K : ℕ)
    (hQ : targetRepetition T ≤ K * UniqueFactorizationMonoid.radical T.a *
      UniqueFactorizationMonoid.radical T.b) :
    T.c ≤ K * UniqueFactorizationMonoid.radical T.product := by
  calc
    T.c = UniqueFactorizationMonoid.radical T.c * targetRepetition T :=
      (NaturalRepetitionSource.radical_mul_repetitionQuotient T.c).symm
    _ ≤ UniqueFactorizationMonoid.radical T.c *
        (K * UniqueFactorizationMonoid.radical T.a * UniqueFactorizationMonoid.radical T.b) :=
      Nat.mul_le_mul_left _ hQ
    _ = K * UniqueFactorizationMonoid.radical T.product := by rw [radical_product]; ring

theorem defect_le_of_support_compensation (T : CoprimeAdditiveTriple) (K : ℕ)
    (hK : 0 < K)
    (hQ : targetRepetition T ≤ K * UniqueFactorizationMonoid.radical T.a *
      UniqueFactorizationMonoid.radical T.b) (ε : ℝ) (hε : 0 ≤ ε) :
    defect T ε ≤ Real.log (K : ℝ) := by
  have hh := height_le_of_support_compensation T K hQ
  have hl := Real.log_le_log (by exact_mod_cast T.c_pos : 0 < (T.c : ℝ))
    (by exact_mod_cast hh : (T.c : ℝ) ≤ (K : ℝ) *
      (UniqueFactorizationMonoid.radical T.product : ℝ))
  rw [Real.log_mul (by exact_mod_cast (ne_of_gt hK))
    (by exact_mod_cast (ne_of_gt (Nat.radical_pos T.product)))] at hl
  have hn : 1 ≤ UniqueFactorizationMonoid.radical T.product := Nat.radical_pos T.product
  have hr := Real.log_nonneg (by exact_mod_cast hn : (1 : ℝ) ≤
    (UniqueFactorizationMonoid.radical T.product : ℝ))
  unfold defect
  nlinarith [mul_nonneg hε hr]

/-- No hypothesis is imposed on repetitions in either summand. -/
theorem defect_nonpositive_of_squarefree_target (T : CoprimeAdditiveTriple)
    (hs : Squarefree T.c) (ε : ℝ) (hε : 0 ≤ ε) : defect T ε ≤ 0 := by
  have hd : T.c ∣ T.product := ⟨T.a * T.b, by unfold CoprimeAdditiveTriple.product; ring⟩
  have hcr := squarefree_divisor_le_radical T T.c hd hs
  have hl := Real.log_le_log (by exact_mod_cast T.c_pos : 0 < (T.c : ℝ))
    (by exact_mod_cast hcr : (T.c : ℝ) ≤
      (UniqueFactorizationMonoid.radical T.product : ℝ))
  have hn : 1 ≤ UniqueFactorizationMonoid.radical T.product := Nat.radical_pos T.product
  have hr := Real.log_nonneg (by exact_mod_cast hn : (1 : ℝ) ≤
    (UniqueFactorizationMonoid.radical T.product : ℝ))
  unfold defect
  nlinarith [mul_nonneg hε hr]

end GRWTSK.NumberTheory.ABC.TargetSupportCompensation
