# Complete source: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyMarkedSUnit

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d9a2c9414adfcda7d543e116afb5bc53068a67e1` · SHA-256 `a4403c65c9371f9b08a5e878c983ea1cb2903d2404b20675aaecab60ed653c3e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.

Extract the positive S-unit pair from the OLD marked observation. Its zeros
and poles recover the FULL abc support, not only the normalizing denominator c.
Boundary multiplicity counts a common pole ONCE. Truncated counting, full
depth, denominator excess and the unresolved size estimate remain distinct.
No elliptic conductor, number-field ideal comparison, S-unit finiteness,
uniform height bound, or ABC implication with discharged premises is claimed.
Unelaborated source proof scripts: NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Padics.RationalPairSupport
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyMarkedObservationHeight

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyMarkedSUnit

open FreyMarkedObservationHeight
open GRWTSK.NumberTheory.Height.PrimitivePairNormalization
open GRWTSK.NumberTheory.Height.RationalVectorAffineHeight
open GRWTSK.NumberTheory.Factorization.NaturalRadicalExcess
open GRWTSK.NumberTheory.Padics.RationalPairSupport
open scoped BigOperators

/-- Source label 1, unchanged from the actual marked observer. -/
def leftUnit (t : PrimitiveAdditiveTriple) : ℚ := observation t 1

/-- The OLD label 2 is negative; negate explicitly, without relabeling the port. -/
def rightUnit (t : PrimitiveAdditiveTriple) : ℚ := -observation t 2

theorem unit_values (t : PrimitiveAdditiveTriple) :
    leftUnit t = (t.a : ℚ)/(t.c : ℚ) ∧ rightUnit t = (t.b : ℚ)/(t.c : ℚ) := by
  simp [leftUnit, rightUnit, observation_eq, profile]

theorem units_pos (t : PrimitiveAdditiveTriple) : 0 < leftUnit t ∧ 0 < rightUnit t := by
  rw [(unit_values t).1, (unit_values t).2]
  exact ⟨div_pos (Nat.cast_pos.mpr t.a_pos) (Nat.cast_pos.mpr t.c_pos),
    div_pos (Nat.cast_pos.mpr t.b_pos) (Nat.cast_pos.mpr t.c_pos)⟩

theorem unit_equation (t : PrimitiveAdditiveTriple) : leftUnit t + rightUnit t = 1 := by
  have hs : (t.a : ℚ) + (t.b : ℚ) = (t.c : ℚ) := by exact_mod_cast t.sum_eq
  rw [(unit_values t).1, (unit_values t).2, ← add_div, hs]
  exact div_self (Nat.cast_ne_zero.mpr (Nat.ne_of_gt t.c_pos))

/-- Exact actual valuations; the subtraction takes place in Z, not truncated Nat. -/
theorem valuation_pair (t : PrimitiveAdditiveTriple) (p : ℕ) (hp : Nat.Prime p) :
    padicValRat p (leftUnit t) =
      (t.a.factorization p : ℤ) - (t.c.factorization p : ℤ) ∧
    padicValRat p (rightUnit t) =
      (t.b.factorization p : ℤ) - (t.c.factorization p : ℤ) := by
  letI : Fact p.Prime := ⟨hp⟩
  have ha : (t.a : ℚ) ≠ 0 := Nat.cast_ne_zero.mpr (Nat.ne_of_gt t.a_pos)
  have hb : (t.b : ℚ) ≠ 0 := Nat.cast_ne_zero.mpr (Nat.ne_of_gt t.b_pos)
  have hc : (t.c : ℚ) ≠ 0 := Nat.cast_ne_zero.mpr (Nat.ne_of_gt t.c_pos)
  constructor
  · rw [(unit_values t).1, padicValRat.div ha hc]
    simp only [padicValRat.of_nat, Nat.factorization_def _ hp]
  · rw [(unit_values t).2, padicValRat.div hb hc]
    simp only [padicValRat.of_nat, Nat.factorization_def _ hp]

/-- At most one of a,b,c has nonzero depth at a given prime coordinate. -/
theorem exclusive_depths (t : PrimitiveAdditiveTriple) (p : ℕ) :
    (t.a.factorization p = 0 ∨ t.b.factorization p = 0) ∧
    (t.a.factorization p = 0 ∨ t.c.factorization p = 0) ∧
    (t.b.factorization p = 0 ∨ t.c.factorization p = 0) :=
  ⟨coprime_depths t.a t.b p (Nat.ne_of_gt t.a_pos) (Nat.ne_of_gt t.b_pos) t.coprime_ab,
   coprime_depths t.a t.c p (Nat.ne_of_gt t.a_pos) (Nat.ne_of_gt t.c_pos) t.coprime_ac,
   coprime_depths t.b t.c p (Nat.ne_of_gt t.b_pos) (Nat.ne_of_gt t.c_pos) t.coprime_bc⟩

/-- The common negative valuation is one denominator depth, not two. -/
theorem common_pole_depth (t : PrimitiveAdditiveTriple) (p : ℕ) (hp : Nat.Prime p) :
    (-padicValRat p (leftUnit t)).toNat = t.c.factorization p ∧
    (-padicValRat p (rightUnit t)).toNat = t.c.factorization p := by
  rw [(valuation_pair t p hp).1, (valuation_pair t p hp).2]
  obtain ⟨_,hac,hbc⟩ := exclusive_depths t p
  constructor
  · rcases hac with h | h <;> simp [h]
  · rcases hbc with h | h <;> simp [h]

/-- Positive valuations record the two separate numerators. -/
theorem numerator_depths (t : PrimitiveAdditiveTriple) (p : ℕ) (hp : Nat.Prime p) :
    (padicValRat p (leftUnit t)).toNat = t.a.factorization p ∧
    (padicValRat p (rightUnit t)).toNat = t.b.factorization p := by
  rw [(valuation_pair t p hp).1, (valuation_pair t p hp).2]
  obtain ⟨_,hac,hbc⟩ := exclusive_depths t p
  constructor
  · rcases hac with h | h <;> simp [h]
  · rcases hbc with h | h <;> simp [h]

/-- Full boundary multiplicity derived from both ACTUAL rational valuations. -/
theorem boundary_depth (t : PrimitiveAdditiveTriple) (p : ℕ) (hp : Nat.Prime p) :
    boundaryDepth p (leftUnit t) (rightUnit t) = (t.a*t.b*t.c).factorization p := by
  rw [boundaryDepth, (valuation_pair t p hp).1, (valuation_pair t p hp).2,
    product_depth (t.a*t.b) t.c p (Nat.mul_ne_zero (Nat.ne_of_gt t.a_pos)
      (Nat.ne_of_gt t.b_pos)) (Nat.ne_of_gt t.c_pos),
    product_depth t.a t.b p (Nat.ne_of_gt t.a_pos) (Nat.ne_of_gt t.b_pos)]
  obtain ⟨hab,hac,hbc⟩ := exclusive_depths t p
  by_cases ha : t.a.factorization p = 0
  · by_cases hb : t.b.factorization p = 0
    · simp [ha,hb]
    · have hc : t.c.factorization p = 0 := hbc.resolve_left hb
      simp [ha,hc]
  · have hb : t.b.factorization p = 0 := hab.resolve_left ha
    have hc : t.c.factorization p = 0 := hac.resolve_left ha
    simp [hb,hc]

/-- Built only from the normalized observed rationals, not supplied from abc. -/
def markedSupport (t : PrimitiveAdditiveTriple) : Finset ℕ :=
  pairSupport (leftUnit t) (rightUnit t)

/-- Recover complete source prime support; denominator support alone is insufficient. -/
theorem markedSupport_eq (t : PrimitiveAdditiveTriple) :
    markedSupport t = occupied (t.a*t.b*t.c) := by
  ext p
  by_cases hp : Nat.Prime p
  · rw [markedSupport, mem_pairSupport_iff _ _ (ne_of_gt (units_pos t).1)
      (ne_of_gt (units_pos t).2) p hp, ← boundaryDepth_ne_zero_iff,
      boundary_depth t p hp]
    exact Finsupp.mem_support_iff.symm
  · have hl : p ∉ markedSupport t := by
      intro h
      exact hp (pairSupport_prime _ _ p h)
    have hr : p ∉ occupied (t.a*t.b*t.c) := by
      intro h
      exact hp ((mem_occupied_iff _ p (Nat.ne_of_gt t.product_pos)).mp h).1
    simp [hl,hr]

/-- This is the LEAST finite rational-prime S for both units, not merely a sufficient set. -/
theorem minimal_S (t : PrimitiveAdditiveTriple) (S : Finset ℕ) :
    IsSUnit S (leftUnit t) ∧ IsSUnit S (rightUnit t) ↔
      occupied (t.a*t.b*t.c) ⊆ S := by
  rw [pair_SUnit_iff _ _ (ne_of_gt (units_pos t).1) (ne_of_gt (units_pos t).2)]
  change markedSupport t ⊆ S ↔ _
  rw [markedSupport_eq]

/-- A multiplicity-free product recovered from the rational boundary observation. -/
theorem marked_radical (t : PrimitiveAdditiveTriple) :
    (∏ p ∈ markedSupport t, p) = radical (t.a*t.b*t.c) := by
  rw [markedSupport_eq]
  rfl

/-- Truncated counting: each occupied prime contributes once. -/
def truncatedCount (t : PrimitiveAdditiveTriple) : ℝ :=
  ∑ p ∈ markedSupport t, Real.log (p : ℝ)

/-- Full multiplicity counting uses the max of the two absolute signed valuations. -/
def multiplicityCount (t : PrimitiveAdditiveTriple) : ℝ :=
  ∑ p ∈ markedSupport t, (boundaryDepth p (leftUnit t) (rightUnit t) : ℝ) * Real.log (p : ℝ)

def excessCount (t : PrimitiveAdditiveTriple) : ℝ :=
  ∑ p ∈ markedSupport t, ((boundaryDepth p (leftUnit t) (rightUnit t)-1 : ℕ) : ℝ) *
    Real.log (p : ℝ)

theorem truncatedCount_eq (t : PrimitiveAdditiveTriple) :
    truncatedCount t = Real.log (radical (t.a*t.b*t.c) : ℝ) := by
  rw [log_radical, truncatedCount, markedSupport_eq]
  rfl

theorem multiplicityCount_eq (t : PrimitiveAdditiveTriple) :
    multiplicityCount t = Real.log ((t.a*t.b*t.c : ℕ) : ℝ) := by
  rw [Real.log_nat_eq_sum_factorization, multiplicityCount, markedSupport_eq]
  change (∑ p ∈ occupied (t.a*t.b*t.c),
    (boundaryDepth p (leftUnit t) (rightUnit t) : ℝ) * Real.log (p : ℝ)) =
      ∑ p ∈ occupied (t.a*t.b*t.c),
        ((t.a*t.b*t.c).factorization p : ℝ) * Real.log (p : ℝ)
  apply Finset.sum_congr rfl
  intro p hp
  rw [boundary_depth t p ((mem_occupied_iff _ p (Nat.ne_of_gt t.product_pos)).mp hp).1]

theorem excessCount_eq (t : PrimitiveAdditiveTriple) :
    excessCount t = excessLog (t.a*t.b*t.c) := by
  unfold excessCount excessLog
  rw [markedSupport_eq]
  apply Finset.sum_congr rfl
  intro p hp
  rw [boundary_depth t p ((mem_occupied_iff _ p (Nat.ne_of_gt t.product_pos)).mp hp).1]
  rfl

theorem counting_decomposition (t : PrimitiveAdditiveTriple) :
    multiplicityCount t = truncatedCount t + excessCount t := by
  rw [multiplicityCount_eq, truncatedCount_eq, excessCount_eq, log_radical]
  exact log_decomposition _ (Nat.ne_of_gt t.product_pos)

/-- Pairwise coprimality removes ALL shared-prime corrections in this source product. -/
theorem source_support_split (t : PrimitiveAdditiveTriple) :
    truncatedCount t = supportLog t.a + supportLog t.b + supportLog t.c := by
  rw [truncatedCount_eq, log_radical,
    supportLog_coprime (t.a*t.b) t.c (Nat.mul_ne_zero (Nat.ne_of_gt t.a_pos)
      (Nat.ne_of_gt t.b_pos)) (Nat.ne_of_gt t.c_pos)
      (t.coprime_ac.mul_left t.coprime_bc),
    supportLog_coprime t.a t.b (Nat.ne_of_gt t.a_pos) (Nat.ne_of_gt t.b_pos) t.coprime_ab]

/-- Exact signed defect of the SAME marked-source height against full truncated counting. -/
theorem height_counting_defect (t : PrimitiveAdditiveTriple) :
    logHeight (observation t) - truncatedCount t =
      excessLog t.c - supportLog t.a - supportLog t.b := by
  rw [observation_logHeight, source_support_split,
    log_decomposition t.c (Nat.ne_of_gt t.c_pos)]
  ring

/-- Same epsilon and constant on both sides. This is an equivalence, NOT either bound. -/
theorem excess_bound_iff (t : PrimitiveAdditiveTriple) (ε C : ℝ) :
    logHeight (observation t) ≤ (1+ε)*truncatedCount t+C ↔
      excessLog t.c ≤ supportLog t.a+supportLog t.b+ε*truncatedCount t+C := by
  have h := height_counting_defect t
  constructor <;> intro hb <;> nlinarith

/-- No quantifier interchange and no constant fitted after selecting t. -/
theorem uniform_excess_iff :
    (∀ ε : ℝ, 0 < ε → ∃ C : ℝ, ∀ t : PrimitiveAdditiveTriple,
      logHeight (observation t) ≤ (1+ε)*truncatedCount t+C) ↔
    (∀ ε : ℝ, 0 < ε → ∃ C : ℝ, ∀ t : PrimitiveAdditiveTriple,
      excessLog t.c ≤ supportLog t.a+supportLog t.b+ε*truncatedCount t+C) := by
  simp only [excess_bound_iff]

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyMarkedSUnit
```
