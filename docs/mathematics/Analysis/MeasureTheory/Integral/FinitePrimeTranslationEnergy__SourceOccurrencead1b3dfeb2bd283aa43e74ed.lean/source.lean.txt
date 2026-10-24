import Mathlib.MeasureTheory.Function.L2Space
import GRWTSK.NumberTheory.Moebius.LogarithmicResponse
import GRWTSK.NumberTheory.Moebius.FiniteTranslationProduct

/-!
Analytic completion of BE on the actual source-generated state class.
Continuity and causality discharge every finite correlation-integrability
premise; the resulting block energy expansion has no analytic hypotheses.
-/

noncomputable section
open MeasureTheory Set

namespace ASBNP04.FiniteProduct

theorem atom_zero_of_nonpositive (n : ℕ) (hn : 0 < n) (u : ℝ) (hu : u ≤ 0) :
    atom n u = 0 := by
  have hn1 : (1 : ℝ) ≤ n := by exact_mod_cast hn
  have hlog : 0 ≤ Real.log (n : ℝ) := Real.log_nonneg hn1
  by_cases he : Real.log (n : ℝ) ≤ u
  · have hu0 : u = Real.log (n : ℝ) := by linarith
    rw [hu0]
    exact PPNCP04.atom_entry_zero hn
  · simp [atom, he]

theorem primeState_zero_of_nonpositive (P : Finset ℕ)
    (hP : ∀ p ∈ P, p.Prime) (u : ℝ) (hu : u ≤ 0) : primeState P u = 0 := by
  rw [primeState_exact P hP]
  apply Finset.sum_eq_zero
  intro U hU
  have hpr : ∀ p ∈ U, p.Prime := fun p hp => hP p ((Finset.mem_powerset.mp hU) hp)
  rw [atom_zero_of_nonpositive _ (primeProduct_positive U hpr) u hu, mul_zero]

theorem primeState_causal (P : Finset ℕ) (hP : ∀ p ∈ P, p.Prime) :
    ∀ u < 0, primeState P u = 0 :=
  fun u hu => primeState_zero_of_nonpositive P hP u hu.le

theorem primeState_continuous (P : Finset ℕ) (hP : ∀ p ∈ P, p.Prime) :
    Continuous (primeState P) := by
  have he : primeState P = fun u => ∑ U ∈ P.powerset,
      (ArithmeticFunction.moebius (primeProduct U) : ℝ) * atom (primeProduct U) u :=
    funext (primeState_exact P hP)
  rw [he]
  apply continuous_finsetSum
  intro U hU
  have hpr : ∀ p ∈ U, p.Prime := fun p hp => hP p ((Finset.mem_powerset.mp hU) hp)
  exact (PPNCP04.atom_continuous (primeProduct_positive U hpr)).const_mul _

/-- The causal entry is continuous precisely because the underlying source is zero at zero. -/
theorem shift_continuous (a : ℝ) (f : ℝ → ℝ) (hc : Continuous f) (hz : f 0 = 0) :
    Continuous (shift a f) := by
  have hs : Continuous (fun u : ℝ => f (u - a)) :=
    hc.comp (continuous_id.sub continuous_const)
  unfold shift
  apply hs.if _ continuous_const
  intro u hu
  have he : u = a := by
    have hfront : frontier {u : ℝ | a ≤ u} = {a} := frontier_Ici
    rw [hfront] at hu
    exact Set.mem_singleton_iff.mp hu
  subst u
  simpa only [sub_self] using hz

theorem shifted_source_continuous (P : Finset ℕ) (hP : ∀ p ∈ P, p.Prime) (a : ℝ) :
    Continuous (shift a (primeState P)) :=
  shift_continuous a _ (primeState_continuous P hP)
    (primeState_zero_of_nonpositive P hP 0 le_rfl)

theorem source_correlations_integrable (P : Finset ℕ) (hP : ∀ p ∈ P, p.Prime)
    (a c T : ℝ) :
    IntegrableOn (fun u => shift a (primeState P) u * shift c (primeState P) u)
      (Set.Icc 0 T) volume := by
  exact ((shifted_source_continuous P hP a).mul
    (shifted_source_continuous P hP c)).continuousOn.integrableOn_Icc

def sourceEnergy (P : Finset ℕ) (T : ℝ) : ℝ :=
  ∫ u in Set.Icc 0 T, primeState P u ^ 2

def sourceCorrelation (P U V : Finset ℕ) (T : ℝ) : ℝ :=
  ∫ u in Set.Icc 0 T, shift (primeDelay (primeProduct U)) (primeState P) u *
    shift (primeDelay (primeProduct V)) (primeState P) u

/-- BE on every actual source-generated state, with no integrability premise. -/
theorem source_block_action_energy_exact (P B : Finset ℕ)
    (hP : ∀ p ∈ P, p.Prime) (hB : ∀ p ∈ B, p.Prime) (T : ℝ) :
    (∫ u in Set.Icc 0 T, (cascade primeWeight primeDelay B.toList (primeState P) u) ^ 2) =
      ∑ U ∈ B.powerset, ∑ V ∈ B.powerset,
        (((ArithmeticFunction.moebius (primeProduct U) : ℝ) * primeWeight (primeProduct U)) *
          ((ArithmeticFunction.moebius (primeProduct V) : ℝ) * primeWeight (primeProduct V))) *
        sourceCorrelation P U V T := by
  apply block_energy_exact B hB (primeState P) (primeState_causal P hP) T
  intro U hU V hV
  exact source_correlations_integrable P hP _ _ T

/-- The complete signed BE after insertion of a disjoint prime block. -/
theorem source_block_energy_exact (P B : Finset ℕ)
    (hP : ∀ p ∈ P, p.Prime) (hB : ∀ p ∈ B, p.Prime) (hd : Disjoint B P) (T : ℝ) :
    sourceEnergy (P ∪ B) T =
      ∑ U ∈ B.powerset, ∑ V ∈ B.powerset,
        (((ArithmeticFunction.moebius (primeProduct U) : ℝ) * primeWeight (primeProduct U)) *
          ((ArithmeticFunction.moebius (primeProduct V) : ℝ) * primeWeight (primeProduct V))) *
        sourceCorrelation P U V T := by
  unfold sourceEnergy
  rw [Finset.union_comm P B, primeState_block_factorization P B hP hB hd]
  exact source_block_action_energy_exact P B hP hB T

theorem source_square_integrableOn (P : Finset ℕ) (hP : ∀ p ∈ P, p.Prime) (T : ℝ) :
    IntegrableOn (fun u => primeState P u ^ 2) (Set.Icc 0 T) volume := by
  exact (primeState_continuous P hP).pow 2 |>.continuousOn.integrableOn_Icc

theorem restrict_eq_indicator (T : ℝ) (f : ℝ → ℝ) :
    restrict T f = (Set.Icc 0 T).indicator f := by
  funext u
  by_cases hu : 0 ≤ u ∧ u ≤ T <;> simp [restrict, Set.indicator, Set.mem_Icc, hu]

theorem restrict_square_eq_indicator (T : ℝ) (f : ℝ → ℝ) :
    (fun u => restrict T f u ^ 2) = (Set.Icc 0 T).indicator (fun u => f u ^ 2) := by
  funext u
  by_cases hu : 0 ≤ u ∧ u ≤ T <;> simp [restrict, Set.indicator, Set.mem_Icc, hu]

theorem restricted_source_square_integrable (P : Finset ℕ)
    (hP : ∀ p ∈ P, p.Prime) (T : ℝ) :
    Integrable (fun u => restrict T (primeState P) u ^ 2) volume := by
  rw [restrict_square_eq_indicator]
  exact (source_square_integrableOn P hP T).integrable_indicator measurableSet_Icc

/-- The Fourier source packet is an actual member of L² for every real horizon. -/
theorem restricted_source_memLp_two (P : Finset ℕ)
    (hP : ∀ p ∈ P, p.Prime) (T : ℝ) :
    MemLp (restrict T (primeState P)) 2 volume := by
  have hm : AEStronglyMeasurable (restrict T (primeState P)) volume := by
    rw [restrict_eq_indicator]
    exact (primeState_continuous P hP).aestronglyMeasurable.indicator measurableSet_Icc
  exact (memLp_two_iff_integrable_sq hm).mpr (restricted_source_square_integrable P hP T)

theorem integral_restricted_source_square (P : Finset ℕ)
    (T : ℝ) :
    (∫ u, restrict T (primeState P) u ^ 2) = sourceEnergy P T := by
  rw [restrict_square_eq_indicator, integral_indicator measurableSet_Icc]
  rfl

/-- The source energy equals the squared norm of its genuine L² representative. -/
theorem sourceEnergy_eq_l2_norm_sq (P : Finset ℕ)
    (hP : ∀ p ∈ P, p.Prime) (T : ℝ) :
    sourceEnergy P T =
      ‖(restricted_source_memLp_two P hP T).toLp (restrict T (primeState P))‖ ^ 2 := by
  let hmem := restricted_source_memLp_two P hP T
  let packet := hmem.toLp (restrict T (primeState P))
  change sourceEnergy P T = ‖packet‖ ^ 2
  rw [← real_inner_self_eq_norm_sq packet, L2.inner_def]
  simp only [real_inner_self_eq_norm_sq, Real.norm_eq_abs, sq_abs]
  rw [← integral_restricted_source_square P T]
  apply integral_congr_ae
  filter_upwards [hmem.coeFn_toLp] with u hu
  rw [hu]

end ASBNP04.FiniteProduct

#print axioms ASBNP04.FiniteProduct.primeState_continuous
#print axioms ASBNP04.FiniteProduct.source_correlations_integrable
#print axioms ASBNP04.FiniteProduct.source_block_energy_exact
#print axioms ASBNP04.FiniteProduct.restricted_source_memLp_two
#print axioms ASBNP04.FiniteProduct.sourceEnergy_eq_l2_norm_sq
