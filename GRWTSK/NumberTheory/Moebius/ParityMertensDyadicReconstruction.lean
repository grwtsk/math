/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #613. Direct stacked parent: draft PR #612 at
`d90c33f93929061b96e2173b8bc1eacf00baa145`.
-/
import GRWTSK.NumberTheory.Moebius.ParityFourierZeroNonzeroSplit
import Mathlib.Data.Nat.Log

/-!
# Dyadic reconstruction of parity-restricted Mertens prefixes

The zero Fourier mode from the parent is expressed through the even and odd
Mertens prefixes. These parity prefixes are not independent arithmetic objects.

For an integer `m`,

* if `m` is odd, `mu(2m) = -mu(m)`;
* if `m` is even, `mu(2m) = 0`.

Consequently

`EvenMertens(b) = -OddMertens(b / 2)`

and

`OddMertens(b) = Mertens(b) + OddMertens(b / 2)`.

Iteration terminates after `Nat.log 2 b + 1` steps and reconstructs the odd
prefix as a finite sum of ordinary Mertens prefixes at dyadically descending
arguments. This module also gives the corresponding conditional analytic
reduction from a dyadic ordinary-Mertens-tail supplier to the parity supplier
required by the zero Fourier mode.

No ordinary Mertens estimate is proved.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Exact Möbius value on an even argument, with the parity of the half made
explicit. -/
theorem moebiusReal_two_mul_eq_parity
    (m : ℕ) :
    moebiusReal (2 * m) =
      if m % 2 = 1 then -moebiusReal m else 0 := by
  by_cases hodd : m % 2 = 1
  · have hmOdd : Odd m := by
      refine ⟨m / 2, ?_⟩
      omega
    have hcop : Nat.Coprime 2 m :=
      Nat.coprime_two_left.mpr hmOdd
    unfold moebiusReal
    rw [ArithmeticFunction.isMultiplicative_moebius.map_mul_of_coprime hcop,
      ArithmeticFunction.moebius_apply_prime Nat.prime_two]
    simp [hodd]
  · have hmodlt : m % 2 < 2 := Nat.mod_lt _ (by norm_num)
    have heven : m % 2 = 0 := by omega
    have htwo : 2 ∣ m := Nat.dvd_of_mod_eq_zero heven
    rcases htwo with ⟨q, rfl⟩
    have hnsq : ¬ Squarefree (2 * (2 * q)) := by
      intro hsq
      have hu : IsUnit (2 : ℕ) := hsq 2 (by
        refine ⟨q, ?_⟩
        ring)
      exact Nat.prime_two.ne_one (Nat.isUnit_iff.mp hu)
    unfold moebiusReal
    rw [ArithmeticFunction.moebius_eq_zero_of_not_squarefree hnsq]
    simp [hodd]

/-- Even positive endpoints up to `b` are in exact bijection with positive
halves up to `b/2`. -/
theorem parityMertensPrefix_even_eq_sum_two_mul
    (b : ℕ) :
    parityMertensPrefix b 0 =
      ∑ m ∈ Finset.Icc 1 (b / 2), moebiusReal (2 * m) := by
  classical
  unfold parityMertensPrefix endpointParitySet
  apply Finset.sum_bij'
    (fun u _hu => u / 2)
    (fun m _hm => 2 * m)
  · intro u hu
    have hu' := Finset.mem_filter.mp hu
    have huI := Finset.mem_Icc.mp hu'.1
    have huEven := hu'.2
    exact Finset.mem_Icc.mpr ⟨by omega, by omega⟩
  · intro m hm
    have hmI := Finset.mem_Icc.mp hm
    apply Finset.mem_filter.mpr
    refine ⟨Finset.mem_Icc.mpr ⟨by omega, by omega⟩, ?_⟩
    omega
  · intro u hu
    have huEven := (Finset.mem_filter.mp hu).2
    omega
  · intro m hm
    omega
  · intro u hu
    have huEven := (Finset.mem_filter.mp hu).2
    congr 1
    omega

/-- The even parity Mertens prefix is the negative odd prefix at half scale. -/
theorem parityMertensPrefix_even_eq_neg_odd_half
    (b : ℕ) :
    parityMertensPrefix b 0 =
      -parityMertensPrefix (b / 2) 1 := by
  rw [parityMertensPrefix_even_eq_sum_two_mul]
  calc
    (∑ m ∈ Finset.Icc 1 (b / 2), moebiusReal (2 * m)) =
      ∑ m ∈ Finset.Icc 1 (b / 2),
        if m % 2 = 1 then -moebiusReal m else 0 := by
          apply Finset.sum_congr rfl
          intro m _hm
          exact moebiusReal_two_mul_eq_parity m
    _ = ∑ m ∈ Finset.Icc 1 (b / 2),
        -(if m % 2 = 1 then moebiusReal m else 0) := by
          apply Finset.sum_congr rfl
          intro m _hm
          by_cases h : m % 2 = 1 <;> simp [h]
    _ = -∑ m ∈ Finset.Icc 1 (b / 2),
        if m % 2 = 1 then moebiusReal m else 0 := by
          exact Finset.sum_neg_distrib
    _ = -parityMertensPrefix (b / 2) 1 := by
          unfold parityMertensPrefix endpointParitySet
          rw [Finset.sum_filter]

/-- Exact one-step recursion for the odd Mertens prefix. -/
theorem parityMertensPrefix_odd_recurrence
    (b : ℕ) :
    parityMertensPrefix b 1 =
      ordinaryMertensPrefix b + parityMertensPrefix (b / 2) 1 := by
  have htotal := ordinaryMertensPrefix_eq_even_add_odd b
  have heven := parityMertensPrefix_even_eq_neg_odd_half b
  linarith

/-- Ordinary Mertens values along the first `L` dyadic descendants of `b`. -/
def ordinaryMertensDyadicTail
    (b L : ℕ) : ℝ :=
  ∑ t ∈ Finset.range L,
    ordinaryMertensPrefix (b / 2 ^ t)

/-- Iterating the odd-prefix recurrence for an arbitrary finite depth leaves
one exact odd-prefix remainder at the final dyadic descendant. -/
theorem parityMertensPrefix_odd_eq_dyadicTail_add_remainder
    (b L : ℕ) :
    parityMertensPrefix b 1 =
      ordinaryMertensDyadicTail b L +
        parityMertensPrefix (b / 2 ^ L) 1 := by
  induction L with
  | zero =>
      simp [ordinaryMertensDyadicTail]
  | succ L ih =>
      calc
        parityMertensPrefix b 1 =
            ordinaryMertensDyadicTail b L +
              parityMertensPrefix (b / 2 ^ L) 1 := ih
        _ = ordinaryMertensDyadicTail b L +
              (ordinaryMertensPrefix (b / 2 ^ L) +
                parityMertensPrefix ((b / 2 ^ L) / 2) 1) := by
              rw [parityMertensPrefix_odd_recurrence]
        _ = ordinaryMertensDyadicTail b (L + 1) +
              parityMertensPrefix (b / 2 ^ (L + 1)) 1 := by
              unfold ordinaryMertensDyadicTail
              rw [Finset.sum_range_succ]
              simp only [Nat.div_div_eq_div_mul, pow_succ]
              ring

/-- Number of dyadic descendants needed to force the final natural quotient to
zero. -/
def ordinaryMertensDyadicLength
    (b : ℕ) : ℕ :=
  Nat.log 2 b + 1

/-- The terminal dyadic descendant is zero. -/
theorem endpoint_div_two_pow_dyadicLength_eq_zero
    (b : ℕ) :
    b / 2 ^ ordinaryMertensDyadicLength b = 0 := by
  apply Nat.div_eq_of_lt
  unfold ordinaryMertensDyadicLength
  simpa [Nat.succ_eq_add_one] using
    (Nat.lt_pow_succ_log_self (b := 2) Nat.one_lt_two b)

/-- Exact finite reconstruction of the odd Mertens prefix from ordinary
Mertens prefixes at dyadically descending arguments. -/
theorem parityMertensPrefix_odd_eq_ordinaryDyadicTail
    (b : ℕ) :
    parityMertensPrefix b 1 =
      ordinaryMertensDyadicTail b (ordinaryMertensDyadicLength b) := by
  have h :=
    parityMertensPrefix_odd_eq_dyadicTail_add_remainder
      b (ordinaryMertensDyadicLength b)
  rw [endpoint_div_two_pow_dyadicLength_eq_zero] at h
  simpa [parityMertensPrefix, endpointParitySet] using h

/-- Exact finite reconstruction of the even Mertens prefix from the ordinary
Mertens tail at half scale. -/
theorem parityMertensPrefix_even_eq_neg_ordinaryDyadicTail_half
    (b : ℕ) :
    parityMertensPrefix b 0 =
      -ordinaryMertensDyadicTail (b / 2)
        (ordinaryMertensDyadicLength (b / 2)) := by
  rw [parityMertensPrefix_even_eq_neg_odd_half,
    parityMertensPrefix_odd_eq_ordinaryDyadicTail]

/-- Absolute mass of the complete ordinary-Mertens dyadic tail. -/
def ordinaryMertensDyadicTailMass
    (b : ℕ) : ℝ :=
  ∑ t ∈ Finset.range (ordinaryMertensDyadicLength b),
    |ordinaryMertensPrefix (b / 2 ^ t)|

/-- The dyadic-tail mass is nonnegative. -/
theorem ordinaryMertensDyadicTailMass_nonneg
    (b : ℕ) :
    0 ≤ ordinaryMertensDyadicTailMass b := by
  unfold ordinaryMertensDyadicTailMass
  exact Finset.sum_nonneg fun t _ht => abs_nonneg _

/-- The odd parity prefix is bounded by the complete ordinary-Mertens dyadic
tail mass. -/
theorem abs_parityMertensPrefix_odd_le_dyadicTailMass
    (b : ℕ) :
    |parityMertensPrefix b 1| ≤
      ordinaryMertensDyadicTailMass b := by
  rw [parityMertensPrefix_odd_eq_ordinaryDyadicTail]
  unfold ordinaryMertensDyadicTail ordinaryMertensDyadicTailMass
  exact Finset.abs_sum_le_sum_abs _ _

/-- The even parity prefix is bounded by the half-scale ordinary-Mertens
dyadic-tail mass. -/
theorem abs_parityMertensPrefix_even_le_dyadicTailMass_half
    (b : ℕ) :
    |parityMertensPrefix b 0| ≤
      ordinaryMertensDyadicTailMass (b / 2) := by
  rw [parityMertensPrefix_even_eq_neg_odd_half, abs_neg]
  exact abs_parityMertensPrefix_odd_le_dyadicTailMass (b / 2)

/-- Ordinary-Mertens dyadic-tail supplier sufficient for parity square-root
energy.

Both the endpoint tail and its half-scale tail are budgeted at the ambient
endpoint scale. This is an explicit open analytic premise. -/
def DyadicOrdinaryMertensTailSquareRootEnergy : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j b : ℕ,
      b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)) →
      ordinaryMertensDyadicTailMass b ^ 2 ≤
          C * (((2 ^ j : ℕ) : ℝ)) *
            (((2 ^ j : ℕ) : ℝ) ^ δ) ∧
        ordinaryMertensDyadicTailMass (b / 2) ^ 2 ≤
          C * (((2 ^ j : ℕ) : ℝ)) *
            (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- The ordinary dyadic-tail supplier constructs the parity-Mertens supplier
needed by the zero Fourier mode. -/
theorem parityMertensSquareRootEnergy_of_ordinaryDyadicTail
    (hTail : DyadicOrdinaryMertensTailSquareRootEnergy) :
    DyadicParityMertensSquareRootEnergy := by
  intro δ hδ
  obtain ⟨C, hC, hscale⟩ := hTail δ hδ
  refine ⟨C, hC, ?_⟩
  intro j b r hb hr
  have hbounds := hscale j b hb
  interval_cases r
  · have habs :=
      abs_parityMertensPrefix_even_le_dyadicTailMass_half b
    have hnon := ordinaryMertensDyadicTailMass_nonneg (b / 2)
    calc
      parityMertensPrefix b 0 ^ 2 =
          |parityMertensPrefix b 0| ^ 2 := by rw [sq_abs]
      _ ≤ ordinaryMertensDyadicTailMass (b / 2) ^ 2 :=
          (sq_le_sq₀ (abs_nonneg _) hnon).2 habs
      _ ≤ C * (((2 ^ j : ℕ) : ℝ)) *
          (((2 ^ j : ℕ) : ℝ) ^ δ) := hbounds.2
  · have habs := abs_parityMertensPrefix_odd_le_dyadicTailMass b
    have hnon := ordinaryMertensDyadicTailMass_nonneg b
    calc
      parityMertensPrefix b 1 ^ 2 =
          |parityMertensPrefix b 1| ^ 2 := by rw [sq_abs]
      _ ≤ ordinaryMertensDyadicTailMass b ^ 2 :=
          (sq_le_sq₀ (abs_nonneg _) hnon).2 habs
      _ ≤ C * (((2 ^ j : ℕ) : ℝ)) *
          (((2 ^ j : ℕ) : ℝ) ^ δ) := hbounds.1

/-- The ordinary dyadic-tail supplier, together with the separate nonzero
frequency supplier from #611, reaches the natural-scale congruence-L1 target. -/
theorem naturalScaleCongruenceL1_of_ordinaryDyadicTail_and_nonzero
    (hTail : DyadicOrdinaryMertensTailSquareRootEnergy)
    (hNonzero : DyadicNaturalScaleNonzeroParityFourierBudget) :
    DyadicNaturalScaleSquareModulusCongruenceL1 :=
  naturalScaleCongruenceL1_of_parityMertens_and_nonzero
    (parityMertensSquareRootEnergy_of_ordinaryDyadicTail hTail)
    hNonzero

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.parityMertensPrefix_even_eq_neg_odd_half
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.parityMertensPrefix_odd_eq_ordinaryDyadicTail
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.parityMertensSquareRootEnergy_of_ordinaryDyadicTail
