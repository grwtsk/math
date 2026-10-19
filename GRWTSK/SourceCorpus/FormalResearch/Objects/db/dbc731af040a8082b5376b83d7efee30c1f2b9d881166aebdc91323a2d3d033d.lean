import Zeta23.RvM.LocalCount
import CountWindow
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroObject
import Mathlib.Tactic
import LogarithmicTail

/-!
Read-only research packet. Counts the actual source occurrences, retaining every
analytic-order slot, and derives cumulative logarithmic growth from Zeta23's
proved unit-window bound. No RH, simplicity, zero-free-height, or counting premise.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroObject

namespace ContinuousResearch.ActualPositiveCount

def PositiveOccurrences (t : ℝ) :=
  {o : ZeroOccurrence // 0 < (shiftedValue o).im ∧ (shiftedValue o).im ≤ t}

def WindowOccurrences (t : ℝ) :=
  Σ p : {ρ : ℂ // ρ ∈ Zeta23.zerosIn 0 t}, Fin (Zeta23.zeroMult p.val)

def occurrenceEquiv (t : ℝ) : PositiveOccurrences t ≃ WindowOccurrences t where
  toFun o := ⟨⟨o.val.1.val, o.val.1.property, by
    simpa [shiftedValue] using o.property⟩, o.val.2⟩
  invFun w := ⟨⟨⟨w.1.val, w.1.property.1⟩, w.2⟩, by
    simpa [shiftedValue] using w.1.property.2⟩
  left_inv o := by cases o; rfl
  right_inv w := by cases w; rfl

theorem positiveOccurrences_finite (t : ℝ) : Finite (PositiveOccurrences t) := by
  have : Finite {ρ : ℂ // ρ ∈ Zeta23.zerosIn 0 t} :=
    (Zeta23.zerosIn_finite 0 t).to_subtype
  let _ : Finite (WindowOccurrences t) := by unfold WindowOccurrences; infer_instance
  exact Finite.of_equiv (WindowOccurrences t) (occurrenceEquiv t).symm

theorem occurrence_card_eq_Ncount (t : ℝ) :
    Nat.card (PositiveOccurrences t) = Zeta23.Ncount 0 t := by
  classical
  have : Finite {ρ : ℂ // ρ ∈ Zeta23.zerosIn 0 t} :=
    (Zeta23.zerosIn_finite 0 t).to_subtype
  let _ : Fintype {ρ : ℂ // ρ ∈ Zeta23.zerosIn 0 t} := Fintype.ofFinite _
  rw [Nat.card_congr (occurrenceEquiv t)]
  simp only [WindowOccurrences, Nat.card_eq_fintype_card,
    Fintype.card_sigma, Fintype.card_fin]
  unfold Zeta23.Ncount
  rw [← finsum_set_coe_eq_finsum_mem]
  exact (finsum_eq_sum_of_fintype _).symm

theorem Ncount_same (t : ℝ) : Zeta23.Ncount t t = 0 := by
  have hz : Zeta23.zerosIn t t = ∅ := by
    ext ρ
    simp only [Zeta23.zerosIn, Set.mem_ofPred_eq, Set.mem_empty_iff_false, iff_false]
    rintro ⟨_, h1, h2⟩
    exact (not_lt_of_ge h2) h1
  rw [Zeta23.Ncount, hz, finsum_mem_empty]

theorem cumulative_nat_of_unit_bound (A : ℝ) (hA : 0 ≤ A)
    (hunit : ∀ t : ℝ, (Zeta23.Ncount t (t + 1) : ℝ) ≤
      A * Real.log (|t| + 3)) (n : ℕ) :
    (Zeta23.Ncount 0 (n : ℝ) : ℝ) ≤ (n : ℝ) * A * Real.log ((n : ℝ) + 3) := by
  induction n with
  | zero => simp [Ncount_same]
  | succ n ih =>
    have hlog : Real.log ((n : ℝ) + 3) ≤ Real.log ((n : ℝ) + 4) :=
      Real.log_le_log (by positivity) (by linarith)
    have hlocal := hunit (n : ℝ)
    rw [abs_of_nonneg (Nat.cast_nonneg n)] at hlocal
    rw [Nat.cast_succ, Zeta23.Ncount_add (Nat.cast_nonneg n) (by linarith)]
    push_cast
    calc
      (Zeta23.Ncount 0 (n : ℝ) : ℝ) + (Zeta23.Ncount (n : ℝ) ((n : ℝ) + 1) : ℝ)
          ≤ (n : ℝ) * A * Real.log ((n : ℝ) + 3) + A * Real.log ((n : ℝ) + 3) :=
        add_le_add ih hlocal
      _ ≤ (n : ℝ) * A * Real.log ((n : ℝ) + 4) + A * Real.log ((n : ℝ) + 4) :=
        add_le_add (mul_le_mul_of_nonneg_left hlog (by positivity))
          (mul_le_mul_of_nonneg_left hlog hA)
      _ = ((n : ℝ) + 1) * A * Real.log ((n : ℝ) + 1 + 3) := by ring_nf

theorem cumulative_real_of_unit_bound (A : ℝ) (hA : 0 ≤ A)
    (hunit : ∀ t : ℝ, (Zeta23.Ncount t (t + 1) : ℝ) ≤
      A * Real.log (|t| + 3)) {t : ℝ} (ht : 2 ≤ t) :
    (Zeta23.Ncount 0 t : ℝ) ≤ (6 * A) * t * Real.log t := by
  have ht0 : 0 ≤ t := by linarith
  have hn0 : 0 ≤ (Nat.ceil t : ℝ) := by positivity
  have hn : (Nat.ceil t : ℝ) ≤ 2 * t := by
    have := (Nat.ceil_lt_add_one ht0).le
    linarith
  have hn3 : (Nat.ceil t : ℝ) + 3 ≤ t ^ 3 := by
    have hsq : 4 ≤ t ^ 2 := by nlinarith [sq_nonneg (t - 2)]
    have hcube : 4 * t ≤ t ^ 3 := by
      have := mul_le_mul_of_nonneg_right hsq ht0
      nlinarith
    have := (Nat.ceil_lt_add_one ht0).le
    linarith
  have hlog : Real.log ((Nat.ceil t : ℝ) + 3) ≤ 3 * Real.log t := by
    have := Real.log_le_log (by positivity : 0 < (Nat.ceil t : ℝ) + 3) hn3
    simpa only [Real.log_pow, Nat.cast_ofNat] using this
  have hlog0 : 0 ≤ Real.log t := Real.log_nonneg (by linarith)
  calc
    (Zeta23.Ncount 0 t : ℝ) ≤ (Zeta23.Ncount 0 (Nat.ceil t : ℝ) : ℝ) := by
      exact_mod_cast Zeta23.Ncount_mono (le_refl (0 : ℝ)) (Nat.le_ceil t)
    _ ≤ (Nat.ceil t : ℝ) * A * Real.log ((Nat.ceil t : ℝ) + 3) :=
      cumulative_nat_of_unit_bound A hA hunit (Nat.ceil t)
    _ ≤ ((Nat.ceil t : ℝ) * A) * (3 * Real.log t) :=
      mul_le_mul_of_nonneg_left hlog (mul_nonneg hn0 hA)
    _ ≤ (2 * t * A) * (3 * Real.log t) :=
      mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_right hn hA) (by positivity)
    _ = (6 * A) * t * Real.log t := by ring

theorem actual_Ncount_logarithmic :
    ∃ C : ℝ, 0 < C ∧ ∀ t : ℝ, 2 ≤ t →
      (Zeta23.Ncount 0 t : ℝ) ≤ C * t * Real.log t := by
  obtain ⟨A, hA, hunit⟩ := Zeta23.RvM.zeta_local_zero_count
  refine ⟨6 * A, by positivity, fun t ht => ?_⟩
  exact cumulative_real_of_unit_bound A (by linarith) hunit ht

theorem actual_occurrence_count_logarithmic :
    ∃ C : ℝ, 0 < C ∧ ∀ t : ℝ, 2 ≤ t →
      (Nat.card (PositiveOccurrences t) : ℝ) ≤ C * t * Real.log t := by
  simpa only [occurrence_card_eq_Ncount] using actual_Ncount_logarithmic

theorem positiveCount_eq_Ncount (t : ℝ) :
    ContinuousResearch.LogarithmicTail.positiveCount t = (Zeta23.Ncount 0 t : ℝ) := by
  change (Nat.card (PositiveOccurrences t) : ℝ) = _
  exact_mod_cast occurrence_card_eq_Ncount t

theorem actual_positiveCountBound :
    ∃ C : ℝ, ContinuousResearch.LogarithmicTail.PositiveCountBound C := by
  simpa only [ContinuousResearch.LogarithmicTail.PositiveCountBound,
    positiveCount_eq_Ncount] using actual_Ncount_logarithmic

end ContinuousResearch.ActualPositiveCount

-- Exact types and transitive trusted dependency closure for every new declaration.
#check ContinuousResearch.ActualPositiveCount.PositiveOccurrences
#print axioms ContinuousResearch.ActualPositiveCount.PositiveOccurrences
#check ContinuousResearch.ActualPositiveCount.WindowOccurrences
#print axioms ContinuousResearch.ActualPositiveCount.WindowOccurrences
#check ContinuousResearch.ActualPositiveCount.occurrenceEquiv
#print axioms ContinuousResearch.ActualPositiveCount.occurrenceEquiv
#check ContinuousResearch.ActualPositiveCount.positiveOccurrences_finite
#print axioms ContinuousResearch.ActualPositiveCount.positiveOccurrences_finite
#check ContinuousResearch.ActualPositiveCount.occurrence_card_eq_Ncount
#print axioms ContinuousResearch.ActualPositiveCount.occurrence_card_eq_Ncount
#check ContinuousResearch.ActualPositiveCount.Ncount_same
#print axioms ContinuousResearch.ActualPositiveCount.Ncount_same
#check ContinuousResearch.ActualPositiveCount.cumulative_nat_of_unit_bound
#print axioms ContinuousResearch.ActualPositiveCount.cumulative_nat_of_unit_bound
#check ContinuousResearch.ActualPositiveCount.cumulative_real_of_unit_bound
#print axioms ContinuousResearch.ActualPositiveCount.cumulative_real_of_unit_bound
#check ContinuousResearch.ActualPositiveCount.actual_Ncount_logarithmic
#print axioms ContinuousResearch.ActualPositiveCount.actual_Ncount_logarithmic
#check ContinuousResearch.ActualPositiveCount.actual_occurrence_count_logarithmic
#print axioms ContinuousResearch.ActualPositiveCount.actual_occurrence_count_logarithmic
#check ContinuousResearch.ActualPositiveCount.positiveCount_eq_Ncount
#print axioms ContinuousResearch.ActualPositiveCount.positiveCount_eq_Ncount
#check ContinuousResearch.ActualPositiveCount.actual_positiveCountBound
#print axioms ContinuousResearch.ActualPositiveCount.actual_positiveCountBound
#check Zeta23.zerosIn_union
#print axioms Zeta23.zerosIn_union
#check Zeta23.Ncount_add
#print axioms Zeta23.Ncount_add
#check Zeta23.Ncount_mono
#print axioms Zeta23.Ncount_mono
#check Zeta23.RvM.zeta_local_zero_count
#print axioms Zeta23.RvM.zeta_local_zero_count
