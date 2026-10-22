/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerMobiusLogLCMProgressionReduction
import Mathlib.Data.Nat.Squarefree
import Mathlib.NumberTheory.ArithmeticFunction.Moebius
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Squarefree common-divisor stratification of the centered Möbius-log frontier

The preceding packet rewrites the exact seven-eighths obstruction as a
centering-preserving Möbius-log sum whose local divisor pairs occupy one
progression modulo their least common multiple.

This file removes all divisor moduli on which the Möbius coefficient vanishes.
The remaining genuine moduli are squarefree.  For every active augmented pair
`(u,v)`, let

  g = gcd(D(u), D(v)),

where the centering anchor has modulus `D(none)=1`.  Every active pair occurring
at shift `h` satisfies

  g | h,

and `g` is squarefree.  Dividing the two active moduli by `g` produces coprime
reduced moduli.  Thus the exact centered pair block can be stratified by
squarefree common divisors `g | h`, with a primitive coprime modulus pair in
each stratum.

The source proves that this stratified block and its Fejér-weighted shift
aggregate are exactly equal to the preceding LCM-progression aggregate.  The
new supplier therefore has exactly the same logical strength.  No Möbius
cancellation estimate, Type I/II estimate, large-sieve theorem, threshold
descent, or Riemann Hypothesis result is proved here.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
MOBIUS_SQUAREFREE_SUPPORT_REDUCTION_SOURCE_PROVED /
SQUAREFREE_SHIFT_GCD_STRATIFICATION_SOURCE_PROVED /
PRIMITIVE_COPRIME_REDUCED_MODULI_SOURCE_PROVED /
SEVEN_EIGHTHS_SQUAREFREE_GCD_STRATIFIED_BOUND_OPEN.
-/

namespace GRWTSK.RiemannHypothesis

open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

/-- The active centered divisor indices.  The anchor remains present, while a
genuine divisor modulus is retained exactly when it is squarefree. -/
def centeredMobiusLogSquarefreeDivisorIndexSet
    (n : ℕ) : Finset (Option ℕ) :=
  insert none
    ((n.divisors.filter Squarefree).image
      (fun d : ℕ => some d))

@[simp]
theorem none_mem_centeredMobiusLogSquarefreeDivisorIndexSet
    (n : ℕ) :
    (none : Option ℕ) ∈
      centeredMobiusLogSquarefreeDivisorIndexSet n := by
  simp [centeredMobiusLogSquarefreeDivisorIndexSet]

@[simp]
theorem some_mem_centeredMobiusLogSquarefreeDivisorIndexSet_iff
    {n d : ℕ} :
    some d ∈ centeredMobiusLogSquarefreeDivisorIndexSet n ↔
      d ∈ n.divisors ∧ Squarefree d := by
  simp [centeredMobiusLogSquarefreeDivisorIndexSet]

/-- A non-squarefree divisor modulus contributes zero because its Möbius
coefficient vanishes. -/
theorem centeredMobiusLogDivisorTerm_eq_zero_of_not_squarefree
    {n d : ℕ}
    (hd : ¬Squarefree d) :
    centeredMobiusLogDivisorTerm n (some d) = 0 := by
  simp [centeredMobiusLogDivisorTerm, mobiusReal,
    ArithmeticFunction.moebius_eq_zero_of_not_squarefree hd]

/-- The squarefree-active index set is a subset of the full centered divisor
index set. -/
theorem centeredMobiusLogSquarefreeDivisorIndexSet_subset
    (n : ℕ) :
    centeredMobiusLogSquarefreeDivisorIndexSet n ⊆
      centeredMobiusLogDivisorIndexSet n := by
  intro u hu
  cases u with
  | none =>
      simp
  | some d =>
      have hd :=
        some_mem_centeredMobiusLogSquarefreeDivisorIndexSet_iff.mp hu
      exact
        some_mem_centeredMobiusLogDivisorIndexSet_iff.mpr hd.1

/-- Centered Möbius-log sum restricted to active squarefree moduli. -/
def centeredMobiusLogSquarefreeDivisorIndexSum
    (n : ℕ) : ℝ :=
  ∑ u ∈ centeredMobiusLogSquarefreeDivisorIndexSet n,
    centeredMobiusLogDivisorTerm n u

/-- Raw form of the squarefree-active centered sum. -/
theorem centeredMobiusLogSquarefreeDivisorIndexSum_eq_raw
    (n : ℕ) :
    centeredMobiusLogSquarefreeDivisorIndexSum n =
      (∑ d ∈ n.divisors.filter Squarefree,
        mobiusReal d * Real.log (n / d : ℕ)) - 1 := by
  unfold centeredMobiusLogSquarefreeDivisorIndexSum
    centeredMobiusLogSquarefreeDivisorIndexSet
  have hnone :
      (none : Option ℕ) ∉
        (n.divisors.filter Squarefree).image
          (fun d : ℕ => some d) := by
    simp
  rw [Finset.sum_insert hnone]
  have himage :
      (∑ u ∈ (n.divisors.filter Squarefree).image
          (fun d : ℕ => some d),
        centeredMobiusLogDivisorTerm n u) =
      ∑ d ∈ n.divisors.filter Squarefree,
        mobiusReal d * Real.log (n / d : ℕ) := by
    rw [Finset.sum_image]
    · rfl
    · intro a ha b hb hab
      exact Option.some.inj hab
  rw [himage]
  simp [centeredMobiusLogDivisorTerm]
  ring

/-- Filtering the divisor sum to squarefree moduli changes no value. -/
theorem squarefree_mobiusLogDivisorSum_eq_full
    (n : ℕ) :
    (∑ d ∈ n.divisors.filter Squarefree,
      mobiusReal d * Real.log (n / d : ℕ)) =
    ∑ d ∈ n.divisors,
      mobiusReal d * Real.log (n / d : ℕ) := by
  rw [Finset.sum_filter]
  apply Finset.sum_congr rfl
  intro d hd
  by_cases hsq : Squarefree d
  · simp [hsq]
  · simp [hsq, mobiusReal,
      ArithmeticFunction.moebius_eq_zero_of_not_squarefree hsq]

/-- Exact squarefree-support reduction of the centered von Mangoldt atom. -/
theorem centeredMobiusLogSquarefreeDivisorIndexSum_eq_centeredVonMangoldt
    (n : ℕ) :
    centeredMobiusLogSquarefreeDivisorIndexSum n =
      centeredVonMangoldtAtom n := by
  rw [centeredMobiusLogSquarefreeDivisorIndexSum_eq_raw,
    squarefree_mobiusLogDivisorSum_eq_full,
    mobiusLogDivisorSum_eq_vonMangoldt]
  rfl

/-- The active squarefree centered pair block.  Anchor and genuine channels
remain in one signed sum. -/
def centeredMobiusLogSquarefreeDivisorPairBlock
    (n h : ℕ) : ℝ :=
  ∑ u ∈ centeredMobiusLogSquarefreeDivisorIndexSet n,
    ∑ v ∈ centeredMobiusLogSquarefreeDivisorIndexSet (n + h),
      centeredMobiusLogDivisorTerm n u *
        centeredMobiusLogDivisorTerm (n + h) v

theorem centeredMobiusLogSquarefreeDivisorPairBlock_eq_indexSum_mul
    (n h : ℕ) :
    centeredMobiusLogSquarefreeDivisorPairBlock n h =
      centeredMobiusLogSquarefreeDivisorIndexSum n *
        centeredMobiusLogSquarefreeDivisorIndexSum (n + h) := by
  unfold centeredMobiusLogSquarefreeDivisorPairBlock
    centeredMobiusLogSquarefreeDivisorIndexSum
  symm
  rw [Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro u hu
  rw [Finset.mul_sum]

/-- The squarefree-active pair block is the same centered von Mangoldt
product. -/
theorem centeredMobiusLogSquarefreeDivisorPairBlock_eq_centeredVonMangoldt_mul
    (n h : ℕ) :
    centeredMobiusLogSquarefreeDivisorPairBlock n h =
      centeredVonMangoldtAtom n *
        centeredVonMangoldtAtom (n + h) := by
  rw [centeredMobiusLogSquarefreeDivisorPairBlock_eq_indexSum_mul,
    centeredMobiusLogSquarefreeDivisorIndexSum_eq_centeredVonMangoldt,
    centeredMobiusLogSquarefreeDivisorIndexSum_eq_centeredVonMangoldt]

/-- The squarefree support reduction preserves the preceding full divisor
pair block exactly. -/
theorem centeredMobiusLogSquarefreeDivisorPairBlock_eq_divisorPairBlock
    (n h : ℕ) :
    centeredMobiusLogSquarefreeDivisorPairBlock n h =
      centeredMobiusLogDivisorPairBlock n h := by
  calc
    centeredMobiusLogSquarefreeDivisorPairBlock n h
      = centeredVonMangoldtAtom n *
          centeredVonMangoldtAtom (n + h) :=
        centeredMobiusLogSquarefreeDivisorPairBlock_eq_centeredVonMangoldt_mul
          n h
    _ = centeredMobiusLogDivisorPairBlock n h :=
      (centeredMobiusLogDivisorPairBlock_eq_centeredVonMangoldt_mul
        n h).symm

/-- Product index set for active squarefree augmented divisor pairs. -/
def centeredMobiusLogSquarefreeDivisorPairIndexSet
    (n h : ℕ) :
    Finset (Option ℕ × Option ℕ) :=
  centeredMobiusLogSquarefreeDivisorIndexSet n ×ˢ
    centeredMobiusLogSquarefreeDivisorIndexSet (n + h)

@[simp]
theorem mem_centeredMobiusLogSquarefreeDivisorPairIndexSet_iff
    {n h : ℕ} {uv : Option ℕ × Option ℕ} :
    uv ∈ centeredMobiusLogSquarefreeDivisorPairIndexSet n h ↔
      uv.1 ∈ centeredMobiusLogSquarefreeDivisorIndexSet n ∧
      uv.2 ∈
        centeredMobiusLogSquarefreeDivisorIndexSet (n + h) := by
  simp [centeredMobiusLogSquarefreeDivisorPairIndexSet]

/-- Common divisor carried by one active augmented pair. -/
def centeredMobiusLogPairGCD
    (uv : Option ℕ × Option ℕ) : ℕ :=
  Nat.gcd
    (centeredMobiusLogDivisorModulus uv.1)
    (centeredMobiusLogDivisorModulus uv.2)

/-- Left primitive modulus after removing the common gcd. -/
def centeredMobiusLogPairPrimitiveLeft
    (uv : Option ℕ × Option ℕ) : ℕ :=
  centeredMobiusLogDivisorModulus uv.1 /
    centeredMobiusLogPairGCD uv

/-- Right primitive modulus after removing the common gcd. -/
def centeredMobiusLogPairPrimitiveRight
    (uv : Option ℕ × Option ℕ) : ℕ :=
  centeredMobiusLogDivisorModulus uv.2 /
    centeredMobiusLogPairGCD uv

/-- Product of the two primitive reduced moduli. -/
def centeredMobiusLogPairPrimitiveModulus
    (uv : Option ℕ × Option ℕ) : ℕ :=
  centeredMobiusLogPairPrimitiveLeft uv *
    centeredMobiusLogPairPrimitiveRight uv

/-- Every active attached modulus is squarefree, including the modulus-one
anchor. -/
theorem centeredMobiusLogDivisorModulus_squarefree_of_mem
    {n : ℕ} {u : Option ℕ}
    (hu :
      u ∈ centeredMobiusLogSquarefreeDivisorIndexSet n) :
    Squarefree (centeredMobiusLogDivisorModulus u) := by
  cases u with
  | none =>
      simp [centeredMobiusLogDivisorModulus]
  | some d =>
      have hd :=
        some_mem_centeredMobiusLogSquarefreeDivisorIndexSet_iff.mp hu
      simpa [centeredMobiusLogDivisorModulus] using hd.2

/-- Every active attached modulus is positive. -/
theorem centeredMobiusLogDivisorModulus_pos_of_mem
    {n : ℕ} {u : Option ℕ}
    (hu :
      u ∈ centeredMobiusLogSquarefreeDivisorIndexSet n) :
    0 < centeredMobiusLogDivisorModulus u := by
  cases u with
  | none =>
      simp [centeredMobiusLogDivisorModulus]
  | some d =>
      have hd :=
        some_mem_centeredMobiusLogSquarefreeDivisorIndexSet_iff.mp hu
      simpa [centeredMobiusLogDivisorModulus] using
        Nat.pos_of_mem_divisors hd.1

/-- The common gcd of an active pair is squarefree. -/
theorem centeredMobiusLogPairGCD_squarefree_of_mem
    {n h : ℕ} {uv : Option ℕ × Option ℕ}
    (huv :
      uv ∈ centeredMobiusLogSquarefreeDivisorPairIndexSet n h) :
    Squarefree (centeredMobiusLogPairGCD uv) := by
  have hu :=
    (mem_centeredMobiusLogSquarefreeDivisorPairIndexSet_iff.mp huv).1
  have hsq :=
    centeredMobiusLogDivisorModulus_squarefree_of_mem hu
  exact
    Squarefree.squarefree_of_dvd
      (Nat.gcd_dvd_left
        (centeredMobiusLogDivisorModulus uv.1)
        (centeredMobiusLogDivisorModulus uv.2))
      hsq

/-- The common gcd of an active pair is positive. -/
theorem centeredMobiusLogPairGCD_pos_of_mem
    {n h : ℕ} {uv : Option ℕ × Option ℕ}
    (huv :
      uv ∈ centeredMobiusLogSquarefreeDivisorPairIndexSet n h) :
    0 < centeredMobiusLogPairGCD uv := by
  have hu :=
    (mem_centeredMobiusLogSquarefreeDivisorPairIndexSet_iff.mp huv).1
  unfold centeredMobiusLogPairGCD
  exact
    Nat.gcd_pos_of_pos_left
      (centeredMobiusLogDivisorModulus uv.2)
      (centeredMobiusLogDivisorModulus_pos_of_mem hu)

/-- The common gcd of every active pair divides the shift. -/
theorem centeredMobiusLogPairGCD_dvd_shift_of_mem
    {n h : ℕ} {uv : Option ℕ × Option ℕ}
    (huv :
      uv ∈ centeredMobiusLogSquarefreeDivisorPairIndexSet n h) :
    centeredMobiusLogPairGCD uv ∣ h := by
  rcases
      mem_centeredMobiusLogSquarefreeDivisorPairIndexSet_iff.mp huv with
    ⟨hu, hv⟩
  have hu' :=
    centeredMobiusLogSquarefreeDivisorIndexSet_subset n hu
  have hv' :=
    centeredMobiusLogSquarefreeDivisorIndexSet_subset (n + h) hv
  simpa [centeredMobiusLogPairGCD,
    CenteredMobiusLogDivisorPairCompatible] using
    centeredMobiusLogDivisorIndexPair_compatible hu' hv'

/-- Removing the common gcd leaves coprime primitive moduli. -/
theorem centeredMobiusLogPairPrimitive_coprime_of_mem
    {n h : ℕ} {uv : Option ℕ × Option ℕ}
    (huv :
      uv ∈ centeredMobiusLogSquarefreeDivisorPairIndexSet n h) :
    Nat.Coprime
      (centeredMobiusLogPairPrimitiveLeft uv)
      (centeredMobiusLogPairPrimitiveRight uv) := by
  simpa [centeredMobiusLogPairPrimitiveLeft,
    centeredMobiusLogPairPrimitiveRight,
    centeredMobiusLogPairGCD] using
    Nat.coprime_div_gcd_div_gcd
      (centeredMobiusLogPairGCD_pos_of_mem huv)

/-- The reduced left modulus remains squarefree. -/
theorem centeredMobiusLogPairPrimitiveLeft_squarefree_of_mem
    {n h : ℕ} {uv : Option ℕ × Option ℕ}
    (huv :
      uv ∈ centeredMobiusLogSquarefreeDivisorPairIndexSet n h) :
    Squarefree (centeredMobiusLogPairPrimitiveLeft uv) := by
  have hu :=
    (mem_centeredMobiusLogSquarefreeDivisorPairIndexSet_iff.mp huv).1
  have hsq :=
    centeredMobiusLogDivisorModulus_squarefree_of_mem hu
  unfold centeredMobiusLogPairPrimitiveLeft
    centeredMobiusLogPairGCD
  exact
    hsq.squarefree_of_dvd
      (Nat.div_dvd_of_dvd
        (Nat.gcd_dvd_left
          (centeredMobiusLogDivisorModulus uv.1)
          (centeredMobiusLogDivisorModulus uv.2)))

/-- The reduced right modulus remains squarefree. -/
theorem centeredMobiusLogPairPrimitiveRight_squarefree_of_mem
    {n h : ℕ} {uv : Option ℕ × Option ℕ}
    (huv :
      uv ∈ centeredMobiusLogSquarefreeDivisorPairIndexSet n h) :
    Squarefree (centeredMobiusLogPairPrimitiveRight uv) := by
  have hv :=
    (mem_centeredMobiusLogSquarefreeDivisorPairIndexSet_iff.mp huv).2
  have hsq :=
    centeredMobiusLogDivisorModulus_squarefree_of_mem hv
  unfold centeredMobiusLogPairPrimitiveRight
    centeredMobiusLogPairGCD
  exact
    hsq.squarefree_of_dvd
      (Nat.div_dvd_of_dvd
        (Nat.gcd_dvd_right
          (centeredMobiusLogDivisorModulus uv.1)
          (centeredMobiusLogDivisorModulus uv.2)))

/-- The complete primitive reduced modulus is squarefree. -/
theorem centeredMobiusLogPairPrimitiveModulus_squarefree_of_mem
    {n h : ℕ} {uv : Option ℕ × Option ℕ}
    (huv :
      uv ∈ centeredMobiusLogSquarefreeDivisorPairIndexSet n h) :
    Squarefree (centeredMobiusLogPairPrimitiveModulus uv) := by
  unfold centeredMobiusLogPairPrimitiveModulus
  exact
    Nat.squarefree_mul_iff.mpr
      ⟨centeredMobiusLogPairPrimitive_coprime_of_mem huv,
       centeredMobiusLogPairPrimitiveLeft_squarefree_of_mem huv,
       centeredMobiusLogPairPrimitiveRight_squarefree_of_mem huv⟩

/-- Exact square-removal factorization of the product of the two attached
moduli. -/
theorem centeredMobiusLogModulus_mul_eq_gcd_sq_mul_primitive
    (uv : Option ℕ × Option ℕ) :
    centeredMobiusLogDivisorModulus uv.1 *
        centeredMobiusLogDivisorModulus uv.2 =
      centeredMobiusLogPairGCD uv ^ 2 *
        centeredMobiusLogPairPrimitiveModulus uv := by
  unfold centeredMobiusLogPairGCD
    centeredMobiusLogPairPrimitiveModulus
    centeredMobiusLogPairPrimitiveLeft
    centeredMobiusLogPairPrimitiveRight
  have h₁ :=
    Nat.mul_div_cancel'
      (Nat.gcd_dvd_left
        (centeredMobiusLogDivisorModulus uv.1)
        (centeredMobiusLogDivisorModulus uv.2))
  have h₂ :=
    Nat.mul_div_cancel'
      (Nat.gcd_dvd_right
        (centeredMobiusLogDivisorModulus uv.1)
        (centeredMobiusLogDivisorModulus uv.2))
  calc
    centeredMobiusLogDivisorModulus uv.1 *
        centeredMobiusLogDivisorModulus uv.2
      =
      (Nat.gcd
          (centeredMobiusLogDivisorModulus uv.1)
          (centeredMobiusLogDivisorModulus uv.2) *
        (centeredMobiusLogDivisorModulus uv.1 /
          Nat.gcd
            (centeredMobiusLogDivisorModulus uv.1)
            (centeredMobiusLogDivisorModulus uv.2))) *
      (Nat.gcd
          (centeredMobiusLogDivisorModulus uv.1)
          (centeredMobiusLogDivisorModulus uv.2) *
        (centeredMobiusLogDivisorModulus uv.2 /
          Nat.gcd
            (centeredMobiusLogDivisorModulus uv.1)
            (centeredMobiusLogDivisorModulus uv.2))) := by
              rw [h₁, h₂]
    _ = _ := by ring

/-- The lcm progression modulus carries one common-gcd factor and the primitive
coprime product after multiplication by the common gcd. -/
theorem centeredMobiusLogPairGCD_mul_lcm_eq_gcd_sq_mul_primitive
    (uv : Option ℕ × Option ℕ) :
    centeredMobiusLogPairGCD uv *
        Nat.lcm
          (centeredMobiusLogDivisorModulus uv.1)
          (centeredMobiusLogDivisorModulus uv.2) =
      centeredMobiusLogPairGCD uv ^ 2 *
        centeredMobiusLogPairPrimitiveModulus uv := by
  calc
    centeredMobiusLogPairGCD uv *
        Nat.lcm
          (centeredMobiusLogDivisorModulus uv.1)
          (centeredMobiusLogDivisorModulus uv.2)
      =
      centeredMobiusLogDivisorModulus uv.1 *
        centeredMobiusLogDivisorModulus uv.2 := by
          simpa [centeredMobiusLogPairGCD] using
            Nat.gcd_mul_lcm
              (centeredMobiusLogDivisorModulus uv.1)
              (centeredMobiusLogDivisorModulus uv.2)
    _ =
      centeredMobiusLogPairGCD uv ^ 2 *
        centeredMobiusLogPairPrimitiveModulus uv :=
          centeredMobiusLogModulus_mul_eq_gcd_sq_mul_primitive uv

/-- Squarefree divisors of one positive shift. -/
def centeredMobiusLogSquarefreeShiftDivisorSet
    (h : ℕ) : Finset ℕ :=
  h.divisors.filter Squarefree

@[simp]
theorem mem_centeredMobiusLogSquarefreeShiftDivisorSet_iff
    {h g : ℕ} :
    g ∈ centeredMobiusLogSquarefreeShiftDivisorSet h ↔
      g ∣ h ∧ h ≠ 0 ∧ Squarefree g := by
  simp [centeredMobiusLogSquarefreeShiftDivisorSet,
    Nat.mem_divisors, and_assoc]

/-- The pair-gcd map lands in the squarefree divisors of every positive shift. -/
theorem centeredMobiusLogPairGCD_mapsTo_squarefreeShiftDivisors
    {n h : ℕ}
    (hh : 0 < h) :
    ∀ uv ∈ centeredMobiusLogSquarefreeDivisorPairIndexSet n h,
      centeredMobiusLogPairGCD uv ∈
        centeredMobiusLogSquarefreeShiftDivisorSet h := by
  intro uv huv
  exact
    mem_centeredMobiusLogSquarefreeShiftDivisorSet_iff.mpr
      ⟨centeredMobiusLogPairGCD_dvd_shift_of_mem huv,
       hh.ne',
       centeredMobiusLogPairGCD_squarefree_of_mem huv⟩

/-- Active pairs in one exact common-gcd stratum. -/
def centeredMobiusLogSquarefreePairGCDClassIndexSet
    (n h g : ℕ) :
    Finset (Option ℕ × Option ℕ) :=
  (centeredMobiusLogSquarefreeDivisorPairIndexSet n h).filter
    (fun uv => centeredMobiusLogPairGCD uv = g)

@[simp]
theorem mem_centeredMobiusLogSquarefreePairGCDClassIndexSet_iff
    {n h g : ℕ} {uv : Option ℕ × Option ℕ} :
    uv ∈ centeredMobiusLogSquarefreePairGCDClassIndexSet n h g ↔
      uv ∈ centeredMobiusLogSquarefreeDivisorPairIndexSet n h ∧
      centeredMobiusLogPairGCD uv = g := by
  simp [centeredMobiusLogSquarefreePairGCDClassIndexSet]

/-- Signed centered contribution from one squarefree common-gcd class. -/
def centeredMobiusLogSquarefreePairGCDClassBlock
    (n h g : ℕ) : ℝ :=
  ∑ uv ∈ centeredMobiusLogSquarefreePairGCDClassIndexSet n h g,
    centeredMobiusLogDivisorTerm n uv.1 *
      centeredMobiusLogDivisorTerm (n + h) uv.2

/-- Exact pair block stratified by squarefree common divisors of the shift. -/
def centeredMobiusLogSquarefreeGCDPairBlock
    (n h : ℕ) : ℝ :=
  ∑ g ∈ centeredMobiusLogSquarefreeShiftDivisorSet h,
    centeredMobiusLogSquarefreePairGCDClassBlock n h g

/-- Product-finset form of the active squarefree pair block. -/
theorem centeredMobiusLogSquarefreeDivisorPairBlock_eq_pairIndexSum
    (n h : ℕ) :
    centeredMobiusLogSquarefreeDivisorPairBlock n h =
      ∑ uv ∈ centeredMobiusLogSquarefreeDivisorPairIndexSet n h,
        centeredMobiusLogDivisorTerm n uv.1 *
          centeredMobiusLogDivisorTerm (n + h) uv.2 := by
  unfold centeredMobiusLogSquarefreeDivisorPairBlock
    centeredMobiusLogSquarefreeDivisorPairIndexSet
  rw [Finset.sum_product']

/-- Fiberwise grouping by the squarefree common divisor is exact. -/
theorem centeredMobiusLogSquarefreeGCDPairBlock_eq_squarefreePairBlock
    {n h : ℕ}
    (hh : 0 < h) :
    centeredMobiusLogSquarefreeGCDPairBlock n h =
      centeredMobiusLogSquarefreeDivisorPairBlock n h := by
  rw [centeredMobiusLogSquarefreeDivisorPairBlock_eq_pairIndexSum]
  unfold centeredMobiusLogSquarefreeGCDPairBlock
    centeredMobiusLogSquarefreePairGCDClassBlock
    centeredMobiusLogSquarefreePairGCDClassIndexSet
  exact
    Finset.sum_fiberwise_of_maps_to
      (centeredMobiusLogPairGCD_mapsTo_squarefreeShiftDivisors hh)
      (fun uv =>
        centeredMobiusLogDivisorTerm n uv.1 *
          centeredMobiusLogDivisorTerm (n + h) uv.2)

/-- The squarefree-gcd stratified block is exactly the full divisor pair block. -/
theorem centeredMobiusLogSquarefreeGCDPairBlock_eq_divisorPairBlock
    {n h : ℕ}
    (hh : 0 < h) :
    centeredMobiusLogSquarefreeGCDPairBlock n h =
      centeredMobiusLogDivisorPairBlock n h := by
  rw [centeredMobiusLogSquarefreeGCDPairBlock_eq_squarefreePairBlock hh,
    centeredMobiusLogSquarefreeDivisorPairBlock_eq_divisorPairBlock]

/-- Fejér-weighted shift correlation in squarefree common-gcd strata. -/
def nonAliasingFejerMobiusLogSquarefreeGCDShiftCorrelation
    (X N m h : ℕ) : ℝ :=
  ∑ n ∈ Finset.Ioc (2 * X) (4 * X - h),
    (nonAliasingFejerPrefixWeight X N m n *
      nonAliasingFejerPrefixWeight X N m (n + h)) *
      centeredMobiusLogSquarefreeGCDPairBlock n h

/-- For every positive shift, the stratified form equals the preceding
LCM-progression form exactly. -/
theorem nonAliasingFejerMobiusLogSquarefreeGCDShiftCorrelation_eq_lcmProgression
    {X N m h : ℕ}
    (hh : 0 < h) :
    nonAliasingFejerMobiusLogSquarefreeGCDShiftCorrelation
        X N m h =
      nonAliasingFejerMobiusLogLCMProgressionShiftCorrelation
        X N m h := by
  unfold nonAliasingFejerMobiusLogSquarefreeGCDShiftCorrelation
    nonAliasingFejerMobiusLogLCMProgressionShiftCorrelation
  apply Finset.sum_congr rfl
  intro n hn
  rw [centeredMobiusLogSquarefreeGCDPairBlock_eq_divisorPairBlock hh]

/-- Positive-shift aggregate in squarefree common-gcd form. -/
def nonAliasingFejerMobiusLogSquarefreeGCDAggregate
    (X N m : ℕ) : ℝ :=
  ∑ h ∈ fejerPositiveLagSet X,
    nonAliasingFejerMobiusLogSquarefreeGCDShiftCorrelation
      X N m h

/-- Exact equality with the preceding LCM-progression aggregate. -/
theorem nonAliasingFejerMobiusLogSquarefreeGCDAggregate_eq_lcmProgression
    (X N m : ℕ) :
    nonAliasingFejerMobiusLogSquarefreeGCDAggregate X N m =
      nonAliasingFejerMobiusLogLCMProgressionAggregate X N m := by
  unfold nonAliasingFejerMobiusLogSquarefreeGCDAggregate
    nonAliasingFejerMobiusLogLCMProgressionAggregate
  apply Finset.sum_congr rfl
  intro h hh
  have hhpos : 0 < h := by
    have hhI := Finset.mem_Icc.mp hh
    omega
  exact
    nonAliasingFejerMobiusLogSquarefreeGCDShiftCorrelation_eq_lcmProgression
      hhpos

/-- Exact remaining supplier in squarefree common-gcd stratified form. -/
def SevenEighthsBoundaryMinimalMobiusLogSquarefreeGCDBound : Prop :=
  AllDyadicPrimeOnlyFourierCoordinateBoundAt
      ((7 : ℝ) / 8) →
    ∃ C : ℝ, 0 ≤ C ∧
      ∃ j₀ : ℕ,
        ∀ j ≥ j₀, ∀ m : ℕ,
          2 * dyadicScale j ≤ m →
          m ≤ 4 * dyadicScale j →
          nonAliasingFejerMobiusLogSquarefreeGCDAggregate
              (dyadicScale j)
              (sevenEighthsBoundaryMinimalFejerCutoff j)
              m
            ≤
          C *
            Real.rpow (dyadicScale j : ℝ)
              ((3 : ℝ) / 2) *
            (Real.log (dyadicScale j : ℝ))^4

/-- The squarefree-gcd supplier implies the preceding LCM-progression
supplier. -/
theorem mobiusLogSquarefreeGCDBound_to_lcmProgressionBound
    (hgcd :
      SevenEighthsBoundaryMinimalMobiusLogSquarefreeGCDBound) :
    SevenEighthsBoundaryMinimalMobiusLogLCMProgressionBound := by
  intro hgraded
  rcases hgcd hgraded with ⟨C, hC, j₀, hbound⟩
  refine ⟨C, hC, j₀, ?_⟩
  intro j hj m hm0 hm1
  rw [← nonAliasingFejerMobiusLogSquarefreeGCDAggregate_eq_lcmProgression]
  exact hbound j hj m hm0 hm1

/-- Conversely, the preceding exact supplier gives the squarefree-gcd
representation through the proved identities. -/
theorem lcmProgressionBound_to_mobiusLogSquarefreeGCDBound
    (hlcm :
      SevenEighthsBoundaryMinimalMobiusLogLCMProgressionBound) :
    SevenEighthsBoundaryMinimalMobiusLogSquarefreeGCDBound := by
  intro hgraded
  rcases hlcm hgraded with ⟨C, hC, j₀, hbound⟩
  refine ⟨C, hC, j₀, ?_⟩
  intro j hj m hm0 hm1
  rw [nonAliasingFejerMobiusLogSquarefreeGCDAggregate_eq_lcmProgression]
  exact hbound j hj m hm0 hm1

/-- The new supplier is exactly equivalent to the preceding frontier. -/
theorem mobiusLogSquarefreeGCDBound_iff_lcmProgressionBound :
    SevenEighthsBoundaryMinimalMobiusLogSquarefreeGCDBound ↔
      SevenEighthsBoundaryMinimalMobiusLogLCMProgressionBound := by
  constructor
  · exact mobiusLogSquarefreeGCDBound_to_lcmProgressionBound
  · exact lcmProgressionBound_to_mobiusLogSquarefreeGCDBound

/-- The squarefree-gcd theorem reaches the existing seven-eighths finite
partial-prime discrepancy target. -/
theorem mobiusLogSquarefreeGCDBound_to_partialDiscrepancy
    (hgcd :
      SevenEighthsBoundaryMinimalMobiusLogSquarefreeGCDBound)
    (hgraded :
      AllDyadicPrimeOnlyFourierCoordinateBoundAt
        ((7 : ℝ) / 8)) :
    SevenEighthsPrimePartialDiscrepancy :=
  mobiusLogLCMProgressionBound_to_partialDiscrepancy
    (mobiusLogSquarefreeGCDBound_to_lcmProgressionBound hgcd)
    hgraded

/-- The common-gcd stratification itself is exact and provides no power saving.
The open half-power must come from cancellation within or across the primitive
coprime strata. -/
def squarefreeGCDStratificationBookkeepingExponent : ℝ := 2

/-- Exact target exponent. -/
def squarefreeGCDStratificationTargetExponent : ℝ :=
  (3 : ℝ) / 2

theorem squarefreeGCDStratificationTarget_lt_bookkeeping :
    squarefreeGCDStratificationTargetExponent <
      squarefreeGCDStratificationBookkeepingExponent := by
  norm_num [squarefreeGCDStratificationTargetExponent,
    squarefreeGCDStratificationBookkeepingExponent]

end GRWTSK.RiemannHypothesis
