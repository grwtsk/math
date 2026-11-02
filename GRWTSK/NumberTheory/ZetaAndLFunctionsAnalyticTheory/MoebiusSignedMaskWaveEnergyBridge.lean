/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
LEAN_SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/

import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusDyadicBirthHighLowLongGap
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusEndpointPutnamSparseGapYoung
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvilleCausalPhysicalGramIntegrability
import Mathlib

/-!
# Original signed masked Möbius rectangles as physical waveform Grams

For ANY original true prime bank and ANY ordered pair of the original
rough/matched coefficient tags, the UNMASKED finite rectangle over
source-clipped original indices I,J is the literal physical-time
integral of the product of the two original tagged response waveforms.
The finite integration exchange has no arithmetic cancellation premise.

The exact original mask m != n AND Nat.dist m n notin A removes a
defect of at most one diagonal neighbor and two neighbors for each
member of A in every source row. Pinned genuine source theorem
gap_neighbor_card_le provides the latter without replacing the
Nat.dist mask. At terminal time T=log(2X), the previously sourced
physical birth window gives the true Gram upper 4*log(2)/X.

Thus, FOR ANY I,J subsets of the actual balancedBlock X T,
  |original masked rectangle - original wave product integral|
    <= 4*log(2)*(1+2*card A),
uniform in X, B, signed tags, and the choice of subsets.

When I=J and a=b, the unmasked bilinear integral is the
NONNEGATIVE energy of a single original signed source waveform.
The masked signed LL source therefore differs from a genuine
one-dimensional physical energy by <= this explicitly paid finite
mask error. The low-energy estimate itself is NOT supplied.
The empty-prime-bank original rough waveform remains a hostile case.

These are SOURCE proof candidates until pinned Lean/kernel replay.
No RH proof, no all-positive-rate cancellation and no mask-uniform
claim when card A grows with T are inferred.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory

namespace GRWTSK.NumberTheory.Moebius.SignedMaskWaveEnergyBridge

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.BalancedTwoSidedPNTDense
open GRWTSK.NumberTheory.LiouvilleCausalPhysicalGramIntegrability
open GRWTSK.NumberTheory.Moebius.HighSmoothDensePairs
open GRWTSK.NumberTheory.Moebius.DyadicBirthHighLowLongGap
open GRWTSK.NumberTheory.Moebius.PutnamSparseGapProof

/-- The TRUE signed source, with the original ordered Bool tag and
the original pickupResponse, on an unchanged finite index set. -/
def taggedSourceWave (P : Finset ℕ) (a : Bool)
    (I : Finset ℕ) (u : ℝ) : ℝ :=
  ∑ n ∈ I, taggedMoebius P a n * pickupResponse n u

/-- A literal one-dimensional time-integral energy. It is
nonnegative for T>=0; the original signs are retained INSIDE the
waveform before squaring, rather than discarded termwise. -/
def taggedSourceEnergy (P : Finset ℕ) (a : Bool)
    (I : Finset ℕ) (T : ℝ) : ℝ :=
  ∫ u in (0 : ℝ)..T, (taggedSourceWave P a I u) ^ 2

/-- Full UNMASKED signed original Gram on arbitrary finite
original source indices, without replacement coefficients. -/
def unmaskedTaggedRectangle (P : Finset ℕ) (a b : Bool)
    (I J : Finset ℕ) (T : ℝ) : ℝ :=
  ∑ m ∈ I, ∑ n ∈ J,
    taggedMoebius P a m * taggedMoebius P b n *
      pickupResponseGram T m n

/-- The literal complementary pairs removed by the original
m!=n and distance-exclusion test. In particular m=n is counted
ONCE even if 0 belongs to A. -/
def excludedPair (A : Finset ℕ) (m n : ℕ) : Prop :=
  m = n ∨ (m ≠ n ∧ Nat.dist m n ∈ A)

/-- Exact original-source sum of only the masked-out pairs.
Every source sign and both ordered indices remain. -/
def maskedPairDefect (P : Finset ℕ) (a b : Bool)
    (A I J : Finset ℕ) (T : ℝ) : ℝ :=
  ∑ m ∈ I, ∑ n ∈ J,
    if excludedPair A m n then
      taggedMoebius P a m * taggedMoebius P b n *
        pickupResponseGram T m n
    else 0

/-- The physical meaning of the source mask is precisely a finite
REMOVAL, not a new masked positive-semidefinite kernel. -/
theorem masked_plus_defect_eq_unmasked
    (P : Finset ℕ) (a b : Bool) (A I J : Finset ℕ) (T : ℝ) :
    maskedTaggedBlock P a b A I J T +
      maskedPairDefect P a b A I J T =
        unmaskedTaggedRectangle P a b I J T := by
  classical
  unfold maskedTaggedBlock maskedPairDefect unmaskedTaggedRectangle
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hmn : m = n
  · simp [excludedPair, hmn]
  · by_cases hA : Nat.dist m n ∈ A
    · simp [excludedPair, hmn, hA]
    · simp [excludedPair, hmn, hA]

/-- This is the original finite bilinear Gram identity, for
ARBITRARY POSITIVE original indices in separate finite inventories.
No PSD assumption and no missing unequal tag orientation. -/
theorem unmasked_eq_integral_two_tagged_waves
    (P : Finset ℕ) (a b : Bool) (I J : Finset ℕ) (T : ℝ)
    (hI : ∀ n ∈ I, 0 < n) (hJ : ∀ n ∈ J, 0 < n) :
    unmaskedTaggedRectangle P a b I J T =
      ∫ u in (0 : ℝ)..T,
        taggedSourceWave P a I u * taggedSourceWave P b J u := by
  classical
  let f : ℕ → ℕ → ℝ → ℝ := fun m n u =>
    (taggedMoebius P a m * taggedMoebius P b n) *
      (pickupResponse m u * pickupResponse n u)
  have hInt (m : ℕ) (hm : m ∈ I) (n : ℕ) (hn : n ∈ J) :
      IntervalIntegrable (f m n) volume 0 T := by
    exact (pickupResponse_product_intervalIntegrable
      m n (hI m hm) (hJ n hn) T).const_mul
        (taggedMoebius P a m * taggedMoebius P b n)
  have hExpand (u : ℝ) :
      taggedSourceWave P a I u * taggedSourceWave P b J u =
        ∑ m ∈ I, ∑ n ∈ J, f m n u := by
    unfold taggedSourceWave
    rw [Finset.sum_mul_sum]
    apply Finset.sum_congr rfl
    intro m hm
    apply Finset.sum_congr rfl
    intro n hn
    dsimp [f]
    ring
  have hOuter : ∀ m ∈ I,
      IntervalIntegrable (fun u : ℝ =>
        ∑ n ∈ J, f m n u) volume 0 T := by
    intro m hm
    exact IntervalIntegrable.sum J (fun n hn => hInt m hm n hn)
  have hExchange :
      (∫ u in (0 : ℝ)..T, ∑ m ∈ I, ∑ n ∈ J, f m n u) =
        ∑ m ∈ I, ∑ n ∈ J,
          ∫ u in (0 : ℝ)..T, f m n u := by
    rw [intervalIntegral.integral_finsetSum hOuter]
    apply Finset.sum_congr rfl
    intro m hm
    rw [intervalIntegral.integral_finsetSum
      (fun n hn => hInt m hm n hn)]
  calc
    unmaskedTaggedRectangle P a b I J T =
        ∑ m ∈ I, ∑ n ∈ J,
          ∫ u in (0 : ℝ)..T, f m n u := by
      unfold unmaskedTaggedRectangle
      apply Finset.sum_congr rfl
      intro m hm
      apply Finset.sum_congr rfl
      intro n hn
      dsimp [f, pickupResponseGram]
      rw [intervalIntegral.integral_const_mul]
    _ = ∫ u in (0 : ℝ)..T,
          ∑ m ∈ I, ∑ n ∈ J, f m n u :=
      hExchange.symm
    _ = ∫ u in (0 : ℝ)..T,
          taggedSourceWave P a I u * taggedSourceWave P b J u := by
      apply intervalIntegral.integral_congr
      intro u hu
      exact (hExpand u).symm

/-- Genuine one-dimensional signed response energy is nonnegative
for real T>=0. No individual Möbius sign is replaced by |mu|. -/
theorem taggedSourceEnergy_nonneg
    (P : Finset ℕ) (a : Bool) (I : Finset ℕ)
    (T : ℝ) (hT : 0 ≤ T) :
    0 ≤ taggedSourceEnergy P a I T := by
  unfold taggedSourceEnergy
  exact intervalIntegral.integral_nonneg hT
    (fun u hu => sq_nonneg (taggedSourceWave P a I u))

/-- The actual removed-neighbor finite inventory, with the
diagonal only once and at most two off-diagonal neighbors per
original additive-gap distance. -/
def excludedNeighbors (A J : Finset ℕ) (m : ℕ) : Finset ℕ :=
  J.filter (excludedPair A m)

/-- Direct finite count from the pinned SOURCE gap-neighbor theorem,
including masks which contain zero and empty source populations. -/
theorem excludedNeighbors_card_le
    (A J : Finset ℕ) (m : ℕ) :
    (excludedNeighbors A J m).card ≤
      1 + 2 * A.card := by
  classical
  let N : Finset ℕ :=
    J.filter (fun n => m ≠ n ∧ Nat.dist m n ∈ A)
  have hSub :
      excludedNeighbors A J m ⊆ insert m N := by
    intro n hn
    obtain ⟨hnJ, hnExc⟩ := Finset.mem_filter.mp hn
    rcases hnExc with hEq | hGap
    · subst n
      exact Finset.mem_insert_self _ _
    · exact Finset.mem_insert_of_mem
        (Finset.mem_filter.mpr ⟨hnJ, hGap⟩)
  calc
    (excludedNeighbors A J m).card ≤
        (insert m N).card := Finset.card_le_card hSub
    _ ≤ N.card + 1 := Finset.card_insert_le m N
    _ ≤ (2 * A.card) + 1 :=
      Nat.add_le_add_right (gap_neighbor_card_le A J m) 1
    _ = 1 + 2 * A.card := by omega

/-- Any genuine subinventory of the original clipped shell has
cardinality at most X. The full source is Ioc X (2X), not a
custom-sorted or independent abstract index set. -/
theorem source_subinventory_card_le_shell
    (X : ℕ) (T : ℝ) (I : Finset ℕ)
    (hI : I ⊆ balancedBlock X T) :
    I.card ≤ X := by
  have hSub : I ⊆ Finset.Ioc X (2 * X) := by
    intro n hn
    exact Finset.mem_Ioc.mpr
      (balancedBlock_mem_shell X n T (hI hn))
  have hCard := Finset.card_le_card hSub
  simp only [Finset.card_Ioc] at hCard
  omega

/-- EVERY selected signed original summand in the physical dyadic
shell is bounded by the TRUE 4 log(2)/X causal Gram envelope.
The source keeps the original signed tags in both orientations. -/
private theorem original_exception_term_abs_le
    (B : PrimeBand) (a b : Bool) (A I J : Finset ℕ)
    (X m n : ℕ) (hX : 1 ≤ X)
    (hI : I ⊆ balancedBlock X (Real.log (2 * (X : ℝ))))
    (hJ : J ⊆ balancedBlock X (Real.log (2 * (X : ℝ))))
    (hm : m ∈ I) (hn : n ∈ J) :
    |taggedMoebius B.primes a m *
        taggedMoebius B.primes b n *
          pickupResponseGram (Real.log (2 * (X : ℝ))) m n| ≤
      4 * Real.log 2 / (X : ℝ) :=
  shell_original_tagged_pair_abs_le B a b X m n hX
    (hI hm) (hJ hn)

/-- The complete signed pair defect of the ORIGINAL physical mask
is uniformly O(1+|A|), INDEPENDENT of shell X, bank and original
two signed tags. No positivity is assumed of masked signed sums.
The finite mask may include 0; the diagonal is counted once. -/
theorem maskedPairDefect_abs_le_uniform
    (B : PrimeBand) (a b : Bool) (A I J : Finset ℕ)
    (X : ℕ) (hX : 1 ≤ X)
    (hI : I ⊆ balancedBlock X (Real.log (2 * (X : ℝ))))
    (hJ : J ⊆ balancedBlock X (Real.log (2 * (X : ℝ)))) :
    |maskedPairDefect B.primes a b A I J
      (Real.log (2 * (X : ℝ)))| ≤
      4 * Real.log 2 * (1 + 2 * (A.card : ℝ)) := by
  classical
  let T : ℝ := Real.log (2 * (X : ℝ))
  let C : ℝ := 4 * Real.log 2 / (X : ℝ)
  let E : ℕ → ℕ → Prop := excludedPair A
  let k : ℕ → ℕ → ℝ := fun m n =>
    taggedMoebius B.primes a m *
      taggedMoebius B.primes b n *
        pickupResponseGram T m n
  have hXpos : (0 : ℝ) < (X : ℝ) := by
    exact_mod_cast (show 0 < X by omega)
  have hXne : (X : ℝ) ≠ 0 := ne_of_gt hXpos
  have hC : 0 ≤ C := by
    dsimp [C]
    have hlog : 0 ≤ Real.log (2 : ℝ) :=
      Real.log_nonneg (by norm_num)
    positivity
  have hIcard : ((I.card : ℝ)) ≤ (X : ℝ) := by
    exact_mod_cast source_subinventory_card_le_shell X T I hI
  have hTerm (m : ℕ) (hm : m ∈ I)
      (n : ℕ) (hn : n ∈ J) :
      |k m n| ≤ C := by
    exact original_exception_term_abs_le
      B a b A I J X m n hX hI hJ hm hn
  have hRow (m : ℕ) (hm : m ∈ I) :
      |∑ n ∈ J, if E m n then k m n else 0| ≤
        ((excludedNeighbors A J m).card : ℝ) * C := by
    have hFilter :
        (∑ n ∈ J, |if E m n then k m n else 0|) =
          ∑ n ∈ excludedNeighbors A J m, |k m n| := by
      dsimp [excludedNeighbors]
      rw [Finset.sum_filter]
      apply Finset.sum_congr rfl
      intro n hn
      by_cases he : E m n <;> simp [E, he]
    calc
      |∑ n ∈ J, if E m n then k m n else 0| ≤
          ∑ n ∈ J, |if E m n then k m n else 0| :=
        Finset.abs_sum_le_sum_abs _ _
      _ = ∑ n ∈ excludedNeighbors A J m, |k m n| :=
        hFilter
      _ ≤ ∑ n ∈ excludedNeighbors A J m, C := by
        apply Finset.sum_le_sum
        intro n hn
        exact hTerm m hm n (Finset.mem_filter.mp hn).1
      _ = ((excludedNeighbors A J m).card : ℝ) * C := by
        simp only [Finset.sum_const, nsmul_eq_mul]
  have hRowUniform (m : ℕ) (hm : m ∈ I) :
      |∑ n ∈ J, if E m n then k m n else 0| ≤
        (1 + 2 * (A.card : ℝ)) * C := by
    have hc : ((excludedNeighbors A J m).card : ℝ) ≤
        1 + 2 * (A.card : ℝ) := by
      exact_mod_cast excludedNeighbors_card_le A J m
    exact (hRow m hm).trans (mul_le_mul_of_nonneg_right hc hC)
  change |∑ m ∈ I, ∑ n ∈ J, if E m n then k m n else 0| ≤ _
  calc
    |∑ m ∈ I, ∑ n ∈ J, if E m n then k m n else 0| ≤
        ∑ m ∈ I, |∑ n ∈ J, if E m n then k m n else 0| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ m ∈ I, (1 + 2 * (A.card : ℝ)) * C := by
      apply Finset.sum_le_sum
      intro m hm
      exact hRowUniform m hm
    _ = (I.card : ℝ) * ((1 + 2 * (A.card : ℝ)) * C) := by
      simp only [Finset.sum_const, nsmul_eq_mul]
    _ ≤ (X : ℝ) * ((1 + 2 * (A.card : ℝ)) * C) :=
      mul_le_mul_of_nonneg_right hIcard
        (mul_nonneg (by positivity) hC)
    _ = 4 * Real.log 2 * (1 + 2 * (A.card : ℝ)) := by
      dsimp [C]
      field_simp [hXne]
      ring

/-- For arbitrary source-clipped true signed I,J, the original
masked rectangle differs from the physical bilinear integral by
a fully explicit bank- and scale-independent finite-mask error.
This statement includes both distinct ordered mixed tag choices. -/
theorem masked_minus_wave_bilinear_abs_le
    (B : PrimeBand) (a b : Bool) (A I J : Finset ℕ)
    (X : ℕ) (hX : 1 ≤ X)
    (hI : I ⊆ balancedBlock X (Real.log (2 * (X : ℝ))))
    (hJ : J ⊆ balancedBlock X (Real.log (2 * (X : ℝ)))) :
    |maskedTaggedBlock B.primes a b A I J
        (Real.log (2 * (X : ℝ))) -
      (∫ u in (0 : ℝ)..Real.log (2 * (X : ℝ)),
        taggedSourceWave B.primes a I u *
          taggedSourceWave B.primes b J u)| ≤
      4 * Real.log 2 * (1 + 2 * (A.card : ℝ)) := by
  let T : ℝ := Real.log (2 * (X : ℝ))
  have hIpos : ∀ n ∈ I, 0 < n := by
    intro n hn
    have h := balancedBlock_mem_shell X n T (hI hn)
    omega
  have hJpos : ∀ n ∈ J, 0 < n := by
    intro n hn
    have h := balancedBlock_mem_shell X n T (hJ hn)
    omega
  have hGram := unmasked_eq_integral_two_tagged_waves
    B.primes a b I J T hIpos hJpos
  have hExact :
      maskedTaggedBlock B.primes a b A I J T +
        maskedPairDefect B.primes a b A I J T =
      (∫ u in (0 : ℝ)..T,
        taggedSourceWave B.primes a I u *
          taggedSourceWave B.primes b J u) := by
    rw [← hGram]
    exact masked_plus_defect_eq_unmasked B.primes a b A I J T
  have hDef :=
    maskedPairDefect_abs_le_uniform B a b A I J X hX hI hJ
  calc
    |maskedTaggedBlock B.primes a b A I J T -
        (∫ u in (0 : ℝ)..T,
          taggedSourceWave B.primes a I u *
            taggedSourceWave B.primes b J u)| =
      |-maskedPairDefect B.primes a b A I J T| := by
        rw [← hExact]
        ring
    _ = |maskedPairDefect B.primes a b A I J T| :=
      abs_neg _
    _ ≤ 4 * Real.log 2 * (1 + 2 * (A.card : ℝ)) := hDef

/-- Source-faithful energy comparison on the genuine LOW/LOW
index population for either of the TWO original rough/matched
tags, retaining signed coefficients and squareful zeros. -/
theorem original_low_low_mask_energy_distance
    (B : PrimeBand) (a : Bool) (A : Finset ℕ)
    (X : ℕ) (hX : 1 ≤ X) :
    |maskedTaggedBlock B.primes a a A
        (lowSmoothBlock B X (Real.log (2 * (X : ℝ))))
        (lowSmoothBlock B X (Real.log (2 * (X : ℝ))))
        (Real.log (2 * (X : ℝ))) -
      taggedSourceEnergy B.primes a
        (lowSmoothBlock B X (Real.log (2 * (X : ℝ))))
        (Real.log (2 * (X : ℝ)))| ≤
      4 * Real.log 2 * (1 + 2 * (A.card : ℝ)) := by
  let T : ℝ := Real.log (2 * (X : ℝ))
  let L : Finset ℕ := lowSmoothBlock B X T
  have hSub : L ⊆ balancedBlock X T :=
    (high_low_subset_source B X T).2
  have h := masked_minus_wave_bilinear_abs_le
    B a a A L L X hX hSub hSub
  change |maskedTaggedBlock B.primes a a A L L T -
      taggedSourceEnergy B.primes a L T| ≤ _
  simpa only [taggedSourceEnergy, pow_two] using h

/-- Noncircular forward direction: any genuine low-wave energy
bound gives a masked signed LL upper, paying the explicit true
diagonal and excluded-gap error. Not an assumed cancellation. -/
theorem lowLow_mask_abs_le_of_wave_energy
    (B : PrimeBand) (a : Bool) (A : Finset ℕ)
    (X : ℕ) (hX : 1 ≤ X) (M : ℝ)
    (hEnergy :
      taggedSourceEnergy B.primes a
        (lowSmoothBlock B X (Real.log (2 * (X : ℝ))))
        (Real.log (2 * (X : ℝ))) ≤ M) :
    |maskedTaggedBlock B.primes a a A
        (lowSmoothBlock B X (Real.log (2 * (X : ℝ))))
        (lowSmoothBlock B X (Real.log (2 * (X : ℝ))))
        (Real.log (2 * (X : ℝ)))| ≤
      M + 4 * Real.log 2 * (1 + 2 * (A.card : ℝ)) := by
  let T : ℝ := Real.log (2 * (X : ℝ))
  let L : Finset ℕ := lowSmoothBlock B X T
  let E : ℝ := taggedSourceEnergy B.primes a L T
  let D : ℝ := maskedTaggedBlock B.primes a a A L L T
  let C : ℝ := 4 * Real.log 2 * (1 + 2 * (A.card : ℝ))
  have hT : 0 ≤ T := by
    dsimp [T]
    have hx : (1 : ℝ) ≤ (X : ℝ) := by exact_mod_cast hX
    exact Real.log_nonneg (by nlinarith : (1 : ℝ) ≤ 2 * (X : ℝ))
  have hEnonneg : 0 ≤ E :=
    taggedSourceEnergy_nonneg B.primes a L T hT
  have hD : |D - E| ≤ C :=
    original_low_low_mask_energy_distance B a A X hX
  change |D| ≤ M + C
  calc
    |D| = |(D - E) + E| := by ring
    _ ≤ |D - E| + |E| := abs_add_le _ _
    _ = |D - E| + E := by rw [abs_of_nonneg hEnonneg]
    _ ≤ C + E := add_le_add_right hD E
    _ ≤ C + M := add_le_add_left hEnergy C
    _ = M + C := by ring

/-- Reverse, equally source-exact: an upper for the signed masked
LL rectangle controls the positive one-dimensional original
low-wave energy, with only the SAME finite-gap correction.
This records the equivalence up to explicit additive O(|A|). -/
theorem lowWave_energy_le_of_lowLow_mask_abs
    (B : PrimeBand) (a : Bool) (A : Finset ℕ)
    (X : ℕ) (hX : 1 ≤ X) (M : ℝ)
    (hMask :
      |maskedTaggedBlock B.primes a a A
        (lowSmoothBlock B X (Real.log (2 * (X : ℝ))))
        (lowSmoothBlock B X (Real.log (2 * (X : ℝ))))
        (Real.log (2 * (X : ℝ)))| ≤ M) :
    taggedSourceEnergy B.primes a
      (lowSmoothBlock B X (Real.log (2 * (X : ℝ))))
      (Real.log (2 * (X : ℝ))) ≤
      M + 4 * Real.log 2 * (1 + 2 * (A.card : ℝ)) := by
  let T : ℝ := Real.log (2 * (X : ℝ))
  let L : Finset ℕ := lowSmoothBlock B X T
  let E : ℝ := taggedSourceEnergy B.primes a L T
  let D : ℝ := maskedTaggedBlock B.primes a a A L L T
  let C : ℝ := 4 * Real.log 2 * (1 + 2 * (A.card : ℝ))
  have hD : |D - E| ≤ C :=
    original_low_low_mask_energy_distance B a A X hX
  change E ≤ M + C
  calc
    E = (E - D) + D := by ring
    _ ≤ |E - D| + |D| :=
      add_le_add (le_abs_self _) (le_abs_self _)
    _ = |D - E| + |D| := by rw [abs_sub_comm]
    _ ≤ C + |D| := add_le_add_right hD _
    _ ≤ C + M := add_le_add_left hMask _
    _ = M + C := by ring


/-- The ORIGINAL same-tag signed masked rectangle of ANY genuine
source subinventory is bounded BELOW by a scale-independent
finite-gap constant. This uses positivity of the UNMASKED
one-dimensional physical energy, not of the MASKED signed Gram. -/
theorem original_same_tag_masked_ge_negative_mask_budget
    (B : PrimeBand) (a : Bool) (A I : Finset ℕ)
    (X : ℕ) (hX : 1 ≤ X)
    (hI : I ⊆ balancedBlock X (Real.log (2 * (X : ℝ)))) :
    -(4 * Real.log 2 * (1 + 2 * (A.card : ℝ))) ≤
      maskedTaggedBlock B.primes a a A I I
        (Real.log (2 * (X : ℝ))) := by
  let T : ℝ := Real.log (2 * (X : ℝ))
  let E : ℝ := taggedSourceEnergy B.primes a I T
  let D : ℝ := maskedTaggedBlock B.primes a a A I I T
  let C : ℝ := 4 * Real.log 2 * (1 + 2 * (A.card : ℝ))
  have hT : 0 ≤ T := by
    dsimp [T]
    have hx : (1 : ℝ) ≤ (X : ℝ) := by exact_mod_cast hX
    exact Real.log_nonneg (by nlinarith : (1 : ℝ) ≤ 2 * (X : ℝ))
  have hE0 : 0 ≤ E := taggedSourceEnergy_nonneg B.primes a I T hT
  have hDist : |D - E| ≤ C := by
    simpa only [taggedSourceEnergy, pow_two] using
      (masked_minus_wave_bilinear_abs_le
        B a a A I I X hX hI hI)
  have hNeg := (abs_le.mp hDist).1
  change -C ≤ D
  linarith

/-- Source-exact consequence for the full ORIGINAL signed
Moebius dyadic cross packet, not just for a chosen true prime
bank: the empty-bank rough coefficient is identically mu(n).
For any fixed finite gap set A, negative values are uniformly
bounded in shell size X by the explicit diagonal/gap allowance.
THIS IS ONLY A LOWER BOUND, NOT RH-SCALE UPPER CONTROL. -/
theorem original_moebius_dense_ge_negative_mask_budget
    (A : Finset ℕ) (X : ℕ) (hX : 1 ≤ X) :
    -(4 * Real.log 2 * (1 + 2 * (A.card : ℝ))) ≤
      originalDenseRectangle A X X (Real.log (2 * (X : ℝ))) := by
  let T : ℝ := Real.log (2 * (X : ℝ))
  have hLower :=
    original_same_tag_masked_ge_negative_mask_budget
      emptyPrimeBand true A (balancedBlock X T)
        X hX (Subset.rfl)
  have hOriginal :
      taggedDenseRectangle emptyPrimeBand.primes true true A X X T =
        originalDenseRectangle A X X T := by
    unfold taggedDenseRectangle originalDenseRectangle
    apply Finset.sum_congr rfl
    intro m hm
    apply Finset.sum_congr rfl
    intro n hn
    rw [emptyBank_rough_eq_original m, emptyBank_rough_eq_original n]
  change -(4 * Real.log 2 * (1 + 2 * (A.card : ℝ))) ≤
    originalDenseRectangle A X X T
  have hSource :
      maskedTaggedBlock emptyPrimeBand.primes true true A
        (balancedBlock X T) (balancedBlock X T) T =
          taggedDenseRectangle emptyPrimeBand.primes true true A X X T := rfl
  rw [hSource, hOriginal] at hLower
  exact hLower

end GRWTSK.NumberTheory.Moebius.SignedMaskWaveEnergyBridge
