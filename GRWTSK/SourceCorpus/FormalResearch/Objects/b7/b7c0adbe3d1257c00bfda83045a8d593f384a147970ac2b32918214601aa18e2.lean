import FormalResearch.RiemannHypothesis.SourceComparison.PrimeSupportedBlock
import Mathlib.Algebra.BigOperators.Group.Finset.Powerset

set_option autoImplicit false

namespace PrimeInsertionScratch

open Finset
open FormalResearch.RiemannHypothesis.SourceComparison
open PrimeRatioProduct

noncomputable section

private theorem assignment_pair_sum_insert (P : Finset ℕ) (p : ℕ) (hp : p ∉ P)
    (F : ℕ → ℕ → ℝ) :
    (∑ U ∈ (insert p P).powerset, ∑ V ∈ (insert p P \ U).powerset,
      F (∏ q ∈ U, q) (∏ q ∈ V, q)) =
      (∑ U ∈ P.powerset, ∑ V ∈ (P \ U).powerset,
        F (∏ q ∈ U, q) (∏ q ∈ V, q)) +
      (∑ U ∈ P.powerset, ∑ V ∈ (P \ U).powerset,
        F (p * ∏ q ∈ U, q) (∏ q ∈ V, q)) +
      (∑ U ∈ P.powerset, ∑ V ∈ (P \ U).powerset,
        F (∏ q ∈ U, q) (p * ∏ q ∈ V, q)) := by
  rw [sum_powerset_insert hp]
  have hU (U : Finset ℕ) (hU : U ∈ P.powerset) : p ∉ U :=
    fun hu ↦ hp ((mem_powerset.mp hU) hu)
  have hfirst :
      (∑ U ∈ P.powerset, ∑ V ∈ (insert p P \ U).powerset,
        F (∏ q ∈ U, q) (∏ q ∈ V, q)) =
      (∑ U ∈ P.powerset, ∑ V ∈ (P \ U).powerset,
        F (∏ q ∈ U, q) (∏ q ∈ V, q)) +
      (∑ U ∈ P.powerset, ∑ V ∈ (P \ U).powerset,
        F (∏ q ∈ U, q) (p * ∏ q ∈ V, q)) := by
    rw [← sum_add_distrib]
    apply sum_congr rfl
    intro U hUP
    have heq : insert p P \ U = insert p (P \ U) := by
      ext q
      simp only [mem_sdiff, mem_insert]
      constructor
      · rintro ⟨hq | hq, hn⟩
        · exact Or.inl hq
        · exact Or.inr ⟨hq, hn⟩
      · rintro (rfl | ⟨hq, hn⟩)
        · exact ⟨Or.inl rfl, hU U hUP⟩
        · exact ⟨Or.inr hq, hn⟩
    rw [heq, sum_powerset_insert (fun h ↦ hp (mem_sdiff.mp h).1)]
    congr 1
    apply sum_congr rfl
    intro V hV
    rw [prod_insert (fun hv ↦ hp (mem_sdiff.mp ((mem_powerset.mp hV) hv)).1)]
  have hsecond :
      (∑ U ∈ P.powerset, ∑ V ∈ (insert p P \ insert p U).powerset,
        F (∏ q ∈ insert p U, q) (∏ q ∈ V, q)) =
      (∑ U ∈ P.powerset, ∑ V ∈ (P \ U).powerset,
        F (p * ∏ q ∈ U, q) (∏ q ∈ V, q)) := by
    apply sum_congr rfl
    intro U hUP
    have heq : insert p P \ insert p U = P \ U := by
      ext q
      simp only [mem_sdiff, mem_insert, not_or]
      constructor
      · rintro ⟨rfl | hq, hn, hnU⟩
        · exact False.elim (hn rfl)
        · exact ⟨hq, hnU⟩
      · rintro ⟨hq, hn⟩
        exact ⟨Or.inr hq, (fun he ↦ hp (he ▸ hq)), hn⟩
    rw [heq, prod_insert (hU U hUP)]
  rw [hfirst, hsecond]
  ring

/-- Insertion into the complete prime support keeps both ordered placements. -/
theorem supportedPairs_sum_insert (P : Finset ℕ) (p : ℕ)
    (hP : ∀ q ∈ P, Nat.Prime q) (hp : Nat.Prime p) (hpP : p ∉ P)
    (F : ℕ → ℕ → ℝ) :
    (∑ a ∈ supportedPairs (insert p P), F a.1 a.2) =
      (∑ a ∈ supportedPairs P, F a.1 a.2) +
      (∑ a ∈ supportedPairs P, F (p * a.1) a.2) +
      (∑ a ∈ supportedPairs P, F a.1 (p * a.2)) := by
  have hi : ∀ q ∈ insert p P, Nat.Prime q := by
    intro q hq
    rcases mem_insert.mp hq with rfl | hq
    · exact hp
    · exact hP q hq
  simp only [supportedPairs]
  rw [sum_image (joinAssignment_injOn (insert p P) hi),
    sum_image (joinAssignment_injOn P hP), sum_image (joinAssignment_injOn P hP),
    sum_image (joinAssignment_injOn P hP)]
  simp only [assignments, sum_sigma, joinAssignment]
  exact assignment_pair_sum_insert P p hpP F


/-- The original Möbius sign and common-scale coprimality in an exact rectangle. -/
def rectangularContribution (P : Finset ℕ) (g U V : ℕ) (E : ℕ → ℝ) : ℝ :=
  ∑ a ∈ supportedPairs P, if a.1 ≤ U ∧ a.2 ≤ V then
    (ArithmeticFunction.moebius (a.1 * a.2) : ℝ) *
      (if Nat.Coprime g (a.1 * a.2) then 1 else 0) * E ((a.1 * a.2) * g ^ 2) else 0

private theorem inserted_prime_coprime (P : Finset ℕ) (p : ℕ)
    (hP : ∀ q ∈ P, Nat.Prime q) (hp : Nat.Prime p) (hpP : p ∉ P)
    (a : ℕ × ℕ) (ha : a ∈ supportedPairs P) : Nat.Coprime p (a.1 * a.2) := by
  have hs := (mem_supportedPairs_iff P hP a.1 a.2).mp ha
  apply hp.coprime_iff_not_dvd.mpr
  intro hd
  have hm : p ∈ (a.1 * a.2).primeFactors :=
    Nat.mem_primeFactors.mpr ⟨hp, hd, Nat.mul_ne_zero hs.1.ne_zero hs.2.1.ne_zero⟩
  rw [Nat.primeFactors_mul hs.1.ne_zero hs.2.1.ne_zero] at hm
  rcases mem_union.mp hm with hu | hv
  · exact hpP (hs.2.2.2.1 hu)
  · exact hpP (hs.2.2.2.2 hv)

private theorem inserted_left_term (P : Finset ℕ) (p g U V : ℕ)
    (hP : ∀ q ∈ P, Nat.Prime q) (hp : Nat.Prime p) (hpP : p ∉ P)
    (E : ℕ → ℝ) (a : ℕ × ℕ) (ha : a ∈ supportedPairs P) :
    (if p * a.1 ≤ U ∧ a.2 ≤ V then
      (ArithmeticFunction.moebius ((p * a.1) * a.2) : ℝ) *
        (if Nat.Coprime g ((p * a.1) * a.2) then 1 else 0) *
          E (((p * a.1) * a.2) * g ^ 2) else 0) =
      -(if Nat.Coprime g p then 1 else 0) *
        (if a.1 ≤ U / p ∧ a.2 ≤ V then
          (ArithmeticFunction.moebius (a.1 * a.2) : ℝ) *
            (if Nat.Coprime g (a.1 * a.2) then 1 else 0) *
              E (p * ((a.1 * a.2) * g ^ 2)) else 0) := by
  have hcut : p * a.1 ≤ U ↔ a.1 ≤ U / p := by
    rw [Nat.le_div_iff_mul_le hp.pos, Nat.mul_comm a.1 p]
  have hμ : (ArithmeticFunction.moebius (p * (a.1 * a.2)) : ℝ) =
      -(ArithmeticFunction.moebius (a.1 * a.2) : ℝ) := by
    rw [ArithmeticFunction.isMultiplicative_moebius.map_mul_of_coprime
      (inserted_prime_coprime P p hP hp hpP a ha), ArithmeticFunction.moebius_apply_prime hp]
    push_cast
    ring
  simp only [hcut, mul_assoc, hμ, Nat.coprime_mul_iff_right]
  split_ifs <;> simp_all


private theorem supportedPairs_swap_mem (P : Finset ℕ)
    (hP : ∀ q ∈ P, Nat.Prime q) (a : ℕ × ℕ) (ha : a ∈ supportedPairs P) :
    (a.2, a.1) ∈ supportedPairs P := by
  have hs := (mem_supportedPairs_iff P hP a.1 a.2).mp ha
  exact (mem_supportedPairs_iff P hP a.2 a.1).mpr
    ⟨hs.2.1, hs.1, hs.2.2.1.symm, hs.2.2.2.2, hs.2.2.2.1⟩

/-- Exchanging the two ordered coordinates exchanges the genuine rectangular cutoffs. -/
theorem rectangularContribution_swap (P : Finset ℕ) (hP : ∀ q ∈ P, Nat.Prime q)
    (g U V : ℕ) (E : ℕ → ℝ) :
    rectangularContribution P g U V E = rectangularContribution P g V U E := by
  unfold rectangularContribution
  apply sum_bij' (fun a _ ↦ (a.2, a.1)) (fun a _ ↦ (a.2, a.1))
    (supportedPairs_swap_mem P hP) (supportedPairs_swap_mem P hP)
    (fun _ _ ↦ rfl) (fun _ _ ↦ rfl)
  intro a _
  simp only [Nat.mul_comm a.2 a.1, and_comm]

private theorem inserted_right_term (P : Finset ℕ) (p g U V : ℕ)
    (hP : ∀ q ∈ P, Nat.Prime q) (hp : Nat.Prime p) (hpP : p ∉ P)
    (E : ℕ → ℝ) (a : ℕ × ℕ) (ha : a ∈ supportedPairs P) :
    (if a.1 ≤ U ∧ p * a.2 ≤ V then
      (ArithmeticFunction.moebius (a.1 * (p * a.2)) : ℝ) *
        (if Nat.Coprime g (a.1 * (p * a.2)) then 1 else 0) *
          E ((a.1 * (p * a.2)) * g ^ 2) else 0) =
      -(if Nat.Coprime g p then 1 else 0) *
        (if a.1 ≤ U ∧ a.2 ≤ V / p then
          (ArithmeticFunction.moebius (a.1 * a.2) : ℝ) *
            (if Nat.Coprime g (a.1 * a.2) then 1 else 0) *
              E (p * ((a.1 * a.2) * g ^ 2)) else 0) := by
  have hh := inserted_left_term P p g V U hP hp hpP E (a.2, a.1)
    (supportedPairs_swap_mem P hP a ha)
  convert! hh using 1 <;> simp only [and_comm, Nat.mul_comm, Nat.mul_left_comm]

/-- One inserted prime keeps both signed rectangular boundary terms exactly. -/
theorem rectangularContribution_insert (P : Finset ℕ) (p g U V : ℕ)
    (hP : ∀ q ∈ P, Nat.Prime q) (hp : Nat.Prime p) (hpP : p ∉ P) (E : ℕ → ℝ) :
    rectangularContribution (insert p P) g U V E =
      rectangularContribution P g U V E - (if Nat.Coprime g p then 1 else 0) *
        (rectangularContribution P g (U / p) V (fun q ↦ E (p * q)) +
          rectangularContribution P g U (V / p) (fun q ↦ E (p * q))) := by
  unfold rectangularContribution
  rw [supportedPairs_sum_insert P p hP hp hpP
    (fun u v ↦ if u ≤ U ∧ v ≤ V then (ArithmeticFunction.moebius (u * v) : ℝ) *
      (if Nat.Coprime g (u * v) then 1 else 0) * E ((u * v) * g ^ 2) else 0)]
  have hl :
      (∑ a ∈ supportedPairs P, if p * a.1 ≤ U ∧ a.2 ≤ V then
        (ArithmeticFunction.moebius ((p * a.1) * a.2) : ℝ) *
          (if Nat.Coprime g ((p * a.1) * a.2) then 1 else 0) *
            E (((p * a.1) * a.2) * g ^ 2) else 0) =
        -(if Nat.Coprime g p then 1 else 0) *
          (∑ a ∈ supportedPairs P, if a.1 ≤ U / p ∧ a.2 ≤ V then
            (ArithmeticFunction.moebius (a.1 * a.2) : ℝ) *
              (if Nat.Coprime g (a.1 * a.2) then 1 else 0) *
                E (p * ((a.1 * a.2) * g ^ 2)) else 0) := by
    rw [mul_sum]
    apply sum_congr rfl
    exact inserted_left_term P p g U V hP hp hpP E
  have hr :
      (∑ a ∈ supportedPairs P, if a.1 ≤ U ∧ p * a.2 ≤ V then
        (ArithmeticFunction.moebius (a.1 * (p * a.2)) : ℝ) *
          (if Nat.Coprime g (a.1 * (p * a.2)) then 1 else 0) *
            E ((a.1 * (p * a.2)) * g ^ 2) else 0) =
        -(if Nat.Coprime g p then 1 else 0) *
          (∑ a ∈ supportedPairs P, if a.1 ≤ U ∧ a.2 ≤ V / p then
            (ArithmeticFunction.moebius (a.1 * a.2) : ℝ) *
              (if Nat.Coprime g (a.1 * a.2) then 1 else 0) *
                E (p * ((a.1 * a.2) * g ^ 2)) else 0) := by
    rw [mul_sum]
    apply sum_congr rfl
    exact inserted_right_term P p g U V hP hp hpP E
  rw [hl, hr]
  ring

/-- Coordinate symmetry combines the two new placements without deleting their cutoff. -/
theorem squareContribution_insert (P : Finset ℕ) (p g T : ℕ)
    (hP : ∀ q ∈ P, Nat.Prime q) (hp : Nat.Prime p) (hpP : p ∉ P) (E : ℕ → ℝ) :
    rectangularContribution (insert p P) g T T E =
      rectangularContribution P g T T E -
        2 * (if Nat.Coprime g p then 1 else 0) *
          rectangularContribution P g (T / p) T (fun q ↦ E (p * q)) := by
  rw [rectangularContribution_insert P p g T T hP hp hpP E,
    rectangularContribution_swap P hP g T (T / p)]
  ring


/-- The unchanged source remainder satisfies the exact signed insertion identity. -/
theorem thetaRemainder_square_insert (A : ℝ) (P : Finset ℕ) (p g T : ℕ)
    (hP : ∀ q ∈ P, Nat.Prime q) (hp : Nat.Prime p) (hpP : p ∉ P) :
    rectangularContribution (insert p P) g T T (ThetaRemainder.thetaRemainder A) =
      rectangularContribution P g T T (ThetaRemainder.thetaRemainder A) -
        2 * (if Nat.Coprime g p then 1 else 0) *
          rectangularContribution P g (T / p) T
            (fun q ↦ ThetaRemainder.thetaRemainder A (p * q)) :=
  squareContribution_insert P p g T hP hp hpP _

private theorem rectangular_scale_indices (N u v : ℕ) (hu : 1 ≤ u) :
    (Icc 1 N).filter (fun g ↦ u ≤ N / g ∧ v ≤ N / g) = Icc 1 (N / max u v) := by
  have hm : 0 < max u v := (show 0 < u by omega).trans_le (le_max_left u v)
  ext g
  simp only [mem_filter, mem_Icc]
  by_cases hg : 1 ≤ g
  · have hc : (u ≤ N / g ∧ v ≤ N / g) ↔ g ≤ N / max u v := by
      rw [Nat.le_div_iff_mul_le (show 0 < g by omega),
        Nat.le_div_iff_mul_le (show 0 < g by omega), Nat.le_div_iff_mul_le hm, mul_max]
      simp only [Nat.mul_comm g u, Nat.mul_comm g v, max_le_iff]
    rw [hc]
    have hdiv : N / max u v ≤ N := Nat.div_le_self _ _
    omega
  · simp [hg]

private theorem rectangle_sum_eq_classes (P : Finset ℕ) (hP : ∀ q ∈ P, Nat.Prime q)
    (N : ℕ) (E : ℕ → ℝ) :
    (∑ g ∈ Icc 1 N, (ArithmeticFunction.moebius g : ℝ) ^ 2 *
      rectangularContribution P g (N / g) (N / g) E) =
      ∑ a ∈ supportedPairs P, (ArithmeticFunction.moebius (a.1 * a.2) : ℝ) *
        ∑ g ∈ Icc 1 (N / max a.1 a.2), (ArithmeticFunction.moebius g : ℝ) ^ 2 *
          (if Nat.Coprime g (a.1 * a.2) then 1 else 0) * E ((a.1 * a.2) * g ^ 2) := by
  unfold rectangularContribution
  simp_rw [mul_sum]
  rw [sum_comm]
  apply sum_congr rfl
  intro a ha
  have hs := (mem_supportedPairs_iff P hP a.1 a.2).mp ha
  have hu := Nat.one_le_iff_ne_zero.mpr hs.1.ne_zero
  simp_rw [mul_ite, mul_zero]
  rw [← sum_filter, rectangular_scale_indices N a.1 a.2 hu]
  apply sum_congr rfl
  intro g _
  split_ifs <;> ring

/-- Reordering the actual supported block retains each exact source common-scale cutoff. -/
theorem primeSupportedBlock_eq_rectangles (A : ℝ) (P : Finset ℕ)
    (hP : ∀ q ∈ P, Nat.Prime q) :
    PrimeSupportedBlock.primeSupportedBlock A P =
      ∑ g ∈ Icc 1 ⌊Real.exp A⌋₊, (ArithmeticFunction.moebius g : ℝ) ^ 2 *
        rectangularContribution P g (⌊Real.exp A⌋₊ / g) (⌊Real.exp A⌋₊ / g)
          (ThetaRemainder.thetaRemainder A) := by
  rw [PrimeSupportedBlock.primeSupportedBlock_eq_supportedPairs A P hP]
  exact (rectangle_sum_eq_classes P hP _ _).symm

/-- The full original supported block has an exact signed one-prime boundary increment. -/
theorem primeSupportedBlock_insert (A : ℝ) (P : Finset ℕ) (p : ℕ)
    (hP : ∀ q ∈ P, Nat.Prime q) (hp : Nat.Prime p) (hpP : p ∉ P) :
    PrimeSupportedBlock.primeSupportedBlock A (insert p P) =
      PrimeSupportedBlock.primeSupportedBlock A P -
        2 * ∑ g ∈ Icc 1 ⌊Real.exp A⌋₊, (ArithmeticFunction.moebius g : ℝ) ^ 2 *
          (if Nat.Coprime g p then 1 else 0) *
            rectangularContribution P g ((⌊Real.exp A⌋₊ / g) / p) (⌊Real.exp A⌋₊ / g)
              (fun q ↦ ThetaRemainder.thetaRemainder A (p * q)) := by
  have hi : ∀ q ∈ insert p P, Nat.Prime q := by
    intro q hq
    rcases mem_insert.mp hq with rfl | hq
    · exact hp
    · exact hP q hq
  rw [primeSupportedBlock_eq_rectangles A (insert p P) hi,
    primeSupportedBlock_eq_rectangles A P hP, mul_sum, ← sum_sub_distrib]
  apply sum_congr rfl
  intro g _
  rw [squareContribution_insert P p g _ hP hp hpP]
  ring

end
end PrimeInsertionScratch

#print axioms PrimeInsertionScratch.supportedPairs_sum_insert
#print axioms PrimeInsertionScratch.rectangularContribution
#print axioms PrimeInsertionScratch.rectangularContribution_swap
#print axioms PrimeInsertionScratch.rectangularContribution_insert
#print axioms PrimeInsertionScratch.squareContribution_insert
#print axioms PrimeInsertionScratch.thetaRemainder_square_insert
#print axioms PrimeInsertionScratch.primeSupportedBlock_eq_rectangles
#print axioms PrimeInsertionScratch.primeSupportedBlock_insert
