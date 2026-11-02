/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
LEAN_SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/

import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusSignedMaskWaveEnergyBridge
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusDyadicBirthHighLowLongGap
import Mathlib

/-!
# Young transfer for the ORIGINAL signed high/low time waveforms

The prior original signed-mask module established the literal finite
identity masked + excluded = integral of W_I(u)*W_J(u), with excluded
pair absolute <= C_A := 4*log(2)*(1+2*card A).

The NEW analytic step is the real finite-interval Young inequality:
  2*abs(integral_0^T f*g) <= integral_0^T f^2+integral_0^T g^2.
It uses ONLY the nonnegative integrals of the actual squares
(f +/- g)^2. No positivity is assumed for the MASKED signed Gram.

The original positive-index pickupResponse is continuous. Thus every
finite original signed taggedSourceWave is continuous, which gives
the required interval integrability. The exact source theorem for
arbitrary original subinventories I,J is:
  |maskedTaggedBlock P a b A I J T|
    <= (E(P,a,I,T)+E(P,b,J,T))/2 + C_A,
  T=log(2X), I,J subset balancedBlock X T.

The high-source unary energy is paid unconditionally by
  E_high,a <= 8*log(2)*exp(2*sqrt(T))*V_P^2 + 4*log(2).
This follows from the published masked HH count and the SAME
exact diagonal-mask correction; no new sign cancellation premise.

For all four ordered original sectors, the full taggedDenseRectangle
then satisfies an explicit upper by the TWO original low unary
energies plus TWO high allowances and four finite-mask corrections.
The resulting conditional all-rate transfer is source-exact, and
the missing low-wave arithmetic energy estimate remains EXPLICIT.

This file does NOT assert a proof of that energy input, RH, or the
global cross-shell scale covering. All proofs are uncompiled source
candidates until pinned Lean acceptance and independent kernel audit.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory

namespace GRWTSK.NumberTheory.Moebius.SignedWaveYoungTransfer

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.LiouvilleFinitePrimeSieveOperator
open GRWTSK.NumberTheory.LiouvilleCausalPhysicalGramIntegrability
open GRWTSK.NumberTheory.Moebius.BalancedTwoSidedPNTDense
open GRWTSK.NumberTheory.Moebius.HighSmoothDensePairs
open GRWTSK.NumberTheory.Moebius.DyadicBirthHighLowLongGap
open GRWTSK.NumberTheory.Moebius.SignedMaskWaveEnergyBridge

/-- A real finite-interval Young inequality proved directly by
squares. It needs only continuity and T>=0, with no arithmetic. -/
theorem interval_young_for_continuous
    (f g : ℝ → ℝ) (T : ℝ) (hT : 0 ≤ T)
    (hf : Continuous f) (hg : Continuous g) :
    2 * |∫ u in (0 : ℝ)..T, f u * g u| ≤
      (∫ u in (0 : ℝ)..T, (f u) ^ 2) +
        (∫ u in (0 : ℝ)..T, (g u) ^ 2) := by
  let J : ℝ := ∫ u in (0 : ℝ)..T, f u * g u
  let E : ℝ :=
    (∫ u in (0 : ℝ)..T, (f u) ^ 2) +
      (∫ u in (0 : ℝ)..T, (g u) ^ 2)
  have hProd :
      IntervalIntegrable (fun u : ℝ => f u * g u) volume 0 T :=
    (hf.mul hg).intervalIntegrable 0 T
  have hF :
      IntervalIntegrable (fun u : ℝ => (f u) ^ 2) volume 0 T :=
    (hf.pow 2).intervalIntegrable 0 T
  have hG :
      IntervalIntegrable (fun u : ℝ => (g u) ^ 2) volume 0 T :=
    (hg.pow 2).intervalIntegrable 0 T
  have hSum :
      IntervalIntegrable
        (fun u : ℝ => (f u) ^ 2 + (g u) ^ 2) volume 0 T :=
    hF.add hG
  have hPointPlus (u : ℝ) :
      2 * (f u * g u) ≤ (f u) ^ 2 + (g u) ^ 2 := by
    nlinarith [sq_nonneg (f u - g u)]
  have hPointMinus (u : ℝ) :
      (-2 : ℝ) * (f u * g u) ≤
        (f u) ^ 2 + (g u) ^ 2 := by
    nlinarith [sq_nonneg (f u + g u)]
  have hPlus : 2 * J ≤ E := by
    have h := intervalIntegral.integral_mono hT
      (hProd.const_mul (2 : ℝ)) hSum
      (fun u => hPointPlus u)
    dsimp [J, E]
    rw [intervalIntegral.integral_const_mul,
      intervalIntegral.integral_add hF hG] at h
    exact h
  have hMinus : (-2 : ℝ) * J ≤ E := by
    have h := intervalIntegral.integral_mono hT
      (hProd.const_mul (-2 : ℝ)) hSum
      (fun u => hPointMinus u)
    dsimp [J, E]
    rw [intervalIntegral.integral_const_mul,
      intervalIntegral.integral_add hF hG] at h
    exact h
  have hAbs : |(2 : ℝ) * J| ≤ E :=
    abs_le.mpr ⟨by nlinarith [hMinus], hPlus⟩
  have hAbs' : 2 * |J| ≤ E := by
    simpa [abs_mul] using hAbs
  exact hAbs'

/-- Every finite ORIGINAL signed response waveform with strictly
positive source indices is a continuous real function. The finite
sum retains negative Möbius signs and squareful-zero coefficients. -/
theorem taggedSourceWave_continuous
    (P : Finset ℕ) (a : Bool) (I : Finset ℕ)
    (hI : ∀ n ∈ I, 0 < n) :
    Continuous (fun u : ℝ => taggedSourceWave P a I u) := by
  classical
  revert hI
  induction I using Finset.induction_on with
  | empty =>
      intro hI
      simpa [taggedSourceWave] using
        (continuous_const : Continuous (fun _ : ℝ => (0 : ℝ)))
  | @insert n S hn ih =>
      intro hI
      have hnPos : 0 < n :=
        hI n (Finset.mem_insert_self n S)
      have hsPos : ∀ k ∈ S, 0 < k := by
        intro k hk
        exact hI k (Finset.mem_insert_of_mem hk)
      have hfirst :
          Continuous (fun u : ℝ =>
            taggedMoebius P a n * pickupResponse n u) :=
        continuous_const.mul (pickupResponse_continuous n hnPos)
      have hrest :
          Continuous (fun u : ℝ => taggedSourceWave P a S u) :=
        ih hsPos
      simpa [taggedSourceWave, Finset.sum_insert hn]
        using hfirst.add hrest

/-- The ORIGINAL wave bilinear Young bound for all finite positive
source inventories, including the two DISTINCT ordered tag choices. -/
theorem tagged_waves_integral_young
    (P : Finset ℕ) (a b : Bool) (I J : Finset ℕ)
    (T : ℝ) (hT : 0 ≤ T)
    (hI : ∀ n ∈ I, 0 < n) (hJ : ∀ n ∈ J, 0 < n) :
    2 * |∫ u in (0 : ℝ)..T,
        taggedSourceWave P a I u * taggedSourceWave P b J u| ≤
      taggedSourceEnergy P a I T + taggedSourceEnergy P b J T := by
  have h :=
    interval_young_for_continuous
      (fun u => taggedSourceWave P a I u)
      (fun u => taggedSourceWave P b J u)
      T hT
      (taggedSourceWave_continuous P a I hI)
      (taggedSourceWave_continuous P b J hJ)
  simpa only [taggedSourceEnergy] using h

/-- For EVERY original clipped dyadic source rectangle and any
finite distance mask, the actual signed two-coordinate packet
is bounded by the HALF-SUM OF ITS TWO TRUE WAVE ENERGIES plus
the exact finite-mask defect. The masked signed Gram itself need
not be positive semidefinite. -/
theorem masked_rect_abs_le_half_source_energies
    (B : PrimeBand) (a b : Bool) (A I J : Finset ℕ)
    (X : ℕ) (hX : 1 ≤ X)
    (hI : I ⊆ balancedBlock X (Real.log (2 * (X : ℝ))))
    (hJ : J ⊆ balancedBlock X (Real.log (2 * (X : ℝ)))) :
    |maskedTaggedBlock B.primes a b A I J
      (Real.log (2 * (X : ℝ)))| ≤
      (taggedSourceEnergy B.primes a I
        (Real.log (2 * (X : ℝ))) +
       taggedSourceEnergy B.primes b J
        (Real.log (2 * (X : ℝ)))) / 2 +
      4 * Real.log 2 * (1 + 2 * (A.card : ℝ)) := by
  let T : ℝ := Real.log (2 * (X : ℝ))
  let D : ℝ := maskedTaggedBlock B.primes a b A I J T
  let W : ℝ :=
    ∫ u in (0 : ℝ)..T,
      taggedSourceWave B.primes a I u *
        taggedSourceWave B.primes b J u
  let E : ℝ :=
    taggedSourceEnergy B.primes a I T +
      taggedSourceEnergy B.primes b J T
  let C : ℝ := 4 * Real.log 2 * (1 + 2 * (A.card : ℝ))
  have hT : 0 ≤ T := by
    dsimp [T]
    have hx : (1 : ℝ) ≤ (X : ℝ) := by exact_mod_cast hX
    exact Real.log_nonneg (by nlinarith : (1 : ℝ) ≤ 2 * (X : ℝ))
  have hIPos : ∀ n ∈ I, 0 < n := by
    intro n hn
    have hs := balancedBlock_mem_shell X n T (hI hn)
    omega
  have hJPos : ∀ n ∈ J, 0 < n := by
    intro n hn
    have hs := balancedBlock_mem_shell X n T (hJ hn)
    omega
  have hYoung : 2 * |W| ≤ E :=
    tagged_waves_integral_young
      B.primes a b I J T hT hIPos hJPos
  have hDef : |D - W| ≤ C :=
    masked_minus_wave_bilinear_abs_le
      B a b A I J X hX hI hJ
  have hTri : |D| ≤ |W| + C := by
    calc
      |D| = |(D - W) + W| := by ring
      _ ≤ |D - W| + |W| := abs_add_le _ _
      _ ≤ C + |W| := add_le_add_right hDef _
      _ = |W| + C := add_comm _ _
  change |D| ≤ E / 2 + C
  linarith

/-- The original genuine high-source SAME-TAG wave energy has
the already-published HH termwise/source count allowance plus
ONE explicitly paid diagonal defect, with no low-energy premise.
This true positive energy is NOT the masked signed HH packet. -/
theorem high_wave_energy_le_absolute_envelope
    (B : PrimeBand) (a : Bool) (X : ℕ) (hX : 1 ≤ X) :
    taggedSourceEnergy B.primes a
      (highSmoothBlock B X (Real.log (2 * (X : ℝ))))
      (Real.log (2 * (X : ℝ))) ≤
      8 * Real.log 2 *
        Real.exp (2 * Real.sqrt (Real.log (2 * (X : ℝ)))) *
          (bankSquareRootWeight B.primes) ^ 2 +
      4 * Real.log 2 := by
  let T : ℝ := Real.log (2 * (X : ℝ))
  let H : Finset ℕ := highSmoothBlock B X T
  let D : ℝ := maskedTaggedBlock B.primes a a ∅ H H T
  let E : ℝ := taggedSourceEnergy B.primes a H T
  let U : ℝ :=
    8 * Real.log 2 * Real.exp (2 * Real.sqrt T) *
      (bankSquareRootWeight B.primes) ^ 2
  let C0 : ℝ := 4 * Real.log 2
  have hSub : H ⊆ balancedBlock X T :=
    (high_low_subset_source B X T).1
  have hDist : |D - E| ≤ C0 := by
    have h := masked_minus_wave_bilinear_abs_le
      B a a ∅ H H X hX hSub hSub
    simpa [D, E, C0, H, T, taggedSourceEnergy, pow_two]
      using h
  have hHH : |D| ≤ U := by
    simpa only [D, H, U, T] using
      original_masked_high_high_logTwo_bound B a a ∅ X hX
  have hE : E ≤ |D| + C0 := by
    calc
      E = (E - D) + D := by ring
      _ ≤ |E - D| + |D| :=
        add_le_add (le_abs_self _) (le_abs_self _)
      _ = |D - E| + |D| := by rw [abs_sub_comm]
      _ ≤ C0 + |D| := add_le_add_right hDist _
      _ = |D| + C0 := by ring
  change E ≤ U + C0
  exact hE.trans (add_le_add_right hHH C0)

/-- First ORIGINAL ordered high/low signed mixed packet, with the
unproved low-wave energy displayed numerically and no hidden
RH-scale hypothesis in the theorem statement. -/
theorem original_high_low_young
    (B : PrimeBand) (a b : Bool) (A : Finset ℕ)
    (X : ℕ) (hX : 1 ≤ X) :
    |maskedTaggedBlock B.primes a b A
      (highSmoothBlock B X (Real.log (2 * (X : ℝ))))
      (lowSmoothBlock B X (Real.log (2 * (X : ℝ))))
      (Real.log (2 * (X : ℝ)))| ≤
      (taggedSourceEnergy B.primes a
        (highSmoothBlock B X (Real.log (2 * (X : ℝ))))
        (Real.log (2 * (X : ℝ))) +
       taggedSourceEnergy B.primes b
        (lowSmoothBlock B X (Real.log (2 * (X : ℝ))))
        (Real.log (2 * (X : ℝ)))) / 2 +
      4 * Real.log 2 * (1 + 2 * (A.card : ℝ)) := by
  let T : ℝ := Real.log (2 * (X : ℝ))
  exact masked_rect_abs_le_half_source_energies
    B a b A
      (highSmoothBlock B X T) (lowSmoothBlock B X T)
      X hX
      (high_low_subset_source B X T).1
      (high_low_subset_source B X T).2

/-- OTHER ORIGINAL ordered low/high signed mixed packet, with
independent a,b tags. No unjustified signed symmetry is used. -/
theorem original_low_high_young
    (B : PrimeBand) (a b : Bool) (A : Finset ℕ)
    (X : ℕ) (hX : 1 ≤ X) :
    |maskedTaggedBlock B.primes a b A
      (lowSmoothBlock B X (Real.log (2 * (X : ℝ))))
      (highSmoothBlock B X (Real.log (2 * (X : ℝ))))
      (Real.log (2 * (X : ℝ)))| ≤
      (taggedSourceEnergy B.primes a
        (lowSmoothBlock B X (Real.log (2 * (X : ℝ))))
        (Real.log (2 * (X : ℝ))) +
       taggedSourceEnergy B.primes b
        (highSmoothBlock B X (Real.log (2 * (X : ℝ))))
        (Real.log (2 * (X : ℝ)))) / 2 +
      4 * Real.log 2 * (1 + 2 * (A.card : ℝ)) := by
  let T : ℝ := Real.log (2 * (X : ℝ))
  exact masked_rect_abs_le_half_source_energies
    B a b A
      (lowSmoothBlock B X T) (highSmoothBlock B X T)
      X hX
      (high_low_subset_source B X T).2
      (high_low_subset_source B X T).1

/-- Unconditional COMPLETE ORIGINAL signed tagged dyadic upper
in terms of FOUR true source-wave energies, not an assumed
cancellation bound. HH, HL, LH, LL and both ordered mixed
orientations are all kept and each actual removed-mask defect is
paid in the safe direction. -/
theorem original_full_tagged_le_four_wave_energies
    (B : PrimeBand) (a b : Bool) (A : Finset ℕ)
    (X : ℕ) (hX : 1 ≤ X) :
    |taggedDenseRectangle B.primes a b A X X
      (Real.log (2 * (X : ℝ)))| ≤
      taggedSourceEnergy B.primes a
        (highSmoothBlock B X (Real.log (2 * (X : ℝ))))
        (Real.log (2 * (X : ℝ))) +
      taggedSourceEnergy B.primes b
        (highSmoothBlock B X (Real.log (2 * (X : ℝ))))
        (Real.log (2 * (X : ℝ))) +
      taggedSourceEnergy B.primes a
        (lowSmoothBlock B X (Real.log (2 * (X : ℝ))))
        (Real.log (2 * (X : ℝ))) +
      taggedSourceEnergy B.primes b
        (lowSmoothBlock B X (Real.log (2 * (X : ℝ))))
        (Real.log (2 * (X : ℝ))) +
      4 * (4 * Real.log 2 * (1 + 2 * (A.card : ℝ))) := by
  let T : ℝ := Real.log (2 * (X : ℝ))
  let H : Finset ℕ := highSmoothBlock B X T
  let L : Finset ℕ := lowSmoothBlock B X T
  let HH : ℝ := maskedTaggedBlock B.primes a b A H H T
  let HL : ℝ := maskedTaggedBlock B.primes a b A H L T
  let LH : ℝ := maskedTaggedBlock B.primes a b A L H T
  let LL : ℝ := maskedTaggedBlock B.primes a b A L L T
  let EHa : ℝ := taggedSourceEnergy B.primes a H T
  let EHb : ℝ := taggedSourceEnergy B.primes b H T
  let ELa : ℝ := taggedSourceEnergy B.primes a L T
  let ELb : ℝ := taggedSourceEnergy B.primes b L T
  let C : ℝ := 4 * Real.log 2 * (1 + 2 * (A.card : ℝ))
  have hsubH := (high_low_subset_source B X T).1
  have hsubL := (high_low_subset_source B X T).2
  have hHH : |HH| ≤ (EHa + EHb) / 2 + C :=
    masked_rect_abs_le_half_source_energies
      B a b A H H X hX hsubH hsubH
  have hHL : |HL| ≤ (EHa + ELb) / 2 + C :=
    masked_rect_abs_le_half_source_energies
      B a b A H L X hX hsubH hsubL
  have hLH : |LH| ≤ (ELa + EHb) / 2 + C :=
    masked_rect_abs_le_half_source_energies
      B a b A L H X hX hsubL hsubH
  have hLL : |LL| ≤ (ELa + ELb) / 2 + C :=
    masked_rect_abs_le_half_source_energies
      B a b A L L X hX hsubL hsubL
  have hTriangle :
      |HH + HL + LH + LL| ≤
        |HH| + |HL| + |LH| + |LL| := by
    calc
      |HH + HL + LH + LL| ≤ |HH + HL + LH| + |LL| :=
        abs_add_le _ _
      _ ≤ (|HH + HL| + |LH|) + |LL| :=
        add_le_add_right (abs_add_le _ _) _
      _ ≤ |HH| + |HL| + |LH| + |LL| := by
        linarith [abs_add_le HH HL]
  rw [taggedDenseRectangle_eq_four_smooth_strata]
  change |HH + HL + LH + LL| ≤ EHa + EHb + ELa + ELb + 4 * C
  linarith

/-- The only still-open rate-one source input is exposed as the
TWO original low-wave energies; the complete signed four-sector
rectangle is bounded in terms of them and a fully unconditional
high-support envelope plus explicit gap-mask cost.

NO assertion that low-wave energy has all-positive-rate growth. -/
theorem original_full_tagged_le_low_energies_plus_known_high
    (B : PrimeBand) (a b : Bool) (A : Finset ℕ)
    (X : ℕ) (hX : 1 ≤ X) :
    |taggedDenseRectangle B.primes a b A X X
      (Real.log (2 * (X : ℝ)))| ≤
      taggedSourceEnergy B.primes a
        (lowSmoothBlock B X (Real.log (2 * (X : ℝ))))
        (Real.log (2 * (X : ℝ))) +
      taggedSourceEnergy B.primes b
        (lowSmoothBlock B X (Real.log (2 * (X : ℝ))))
        (Real.log (2 * (X : ℝ))) +
      2 * (8 * Real.log 2 *
        Real.exp (2 * Real.sqrt (Real.log (2 * (X : ℝ)))) *
          (bankSquareRootWeight B.primes) ^ 2 +
        4 * Real.log 2) +
      4 * (4 * Real.log 2 * (1 + 2 * (A.card : ℝ))) := by
  let T : ℝ := Real.log (2 * (X : ℝ))
  let H : Finset ℕ := highSmoothBlock B X T
  let L : Finset ℕ := lowSmoothBlock B X T
  let EHa : ℝ := taggedSourceEnergy B.primes a H T
  let EHb : ℝ := taggedSourceEnergy B.primes b H T
  let ELa : ℝ := taggedSourceEnergy B.primes a L T
  let ELb : ℝ := taggedSourceEnergy B.primes b L T
  let U : ℝ := 8 * Real.log 2 * Real.exp (2 * Real.sqrt T) *
      (bankSquareRootWeight B.primes) ^ 2 + 4 * Real.log 2
  let C : ℝ := 4 * Real.log 2 * (1 + 2 * (A.card : ℝ))
  have hAll :
      |taggedDenseRectangle B.primes a b A X X T| ≤
        EHa + EHb + ELa + ELb + 4 * C :=
    original_full_tagged_le_four_wave_energies B a b A X hX
  have hEHa : EHa ≤ U :=
    high_wave_energy_le_absolute_envelope B a X hX
  have hEHb : EHb ≤ U :=
    high_wave_energy_le_absolute_envelope B b X hX
  change |taggedDenseRectangle B.primes a b A X X T| ≤
    ELa + ELb + 2 * U + 4 * C
  linarith

/-- A PURE conditional transfer with the exact missing original
LOW wave arithmetic displayed as hLa/hLb. This result does not
assume a RH-strength supplier in the previous unconditional
bridge: the low-wave upper hypotheses appear only HERE. -/
theorem original_full_tagged_le_of_two_low_wave_bounds
    (B : PrimeBand) (a b : Bool) (A : Finset ℕ)
    (X : ℕ) (hX : 1 ≤ X) (M : ℝ)
    (hLa :
      taggedSourceEnergy B.primes a
        (lowSmoothBlock B X (Real.log (2 * (X : ℝ))))
        (Real.log (2 * (X : ℝ))) ≤ M)
    (hLb :
      taggedSourceEnergy B.primes b
        (lowSmoothBlock B X (Real.log (2 * (X : ℝ))))
        (Real.log (2 * (X : ℝ))) ≤ M) :
    |taggedDenseRectangle B.primes a b A X X
      (Real.log (2 * (X : ℝ)))| ≤
      2 * M +
      2 * (8 * Real.log 2 *
        Real.exp (2 * Real.sqrt (Real.log (2 * (X : ℝ)))) *
          (bankSquareRootWeight B.primes) ^ 2 +
        4 * Real.log 2) +
      4 * (4 * Real.log 2 * (1 + 2 * (A.card : ℝ))) := by
  have h :=
    original_full_tagged_le_low_energies_plus_known_high
      B a b A X hX
  linarith

/-- The first ACTUAL ordered high/low signed packet now exposes
only the low-wave energy of its low coordinate, with the high
energy paid by the previously published physical/count envelope.
This theorem is UNCONDITIONAL: it does not assume the low energy
has any prescribed growth. -/
theorem original_high_low_le_low_energy_plus_known_high
    (B : PrimeBand) (a b : Bool) (A : Finset ℕ)
    (X : ℕ) (hX : 1 ≤ X) :
    |maskedTaggedBlock B.primes a b A
      (highSmoothBlock B X (Real.log (2 * (X : ℝ))))
      (lowSmoothBlock B X (Real.log (2 * (X : ℝ))))
      (Real.log (2 * (X : ℝ)))| ≤
      (taggedSourceEnergy B.primes b
        (lowSmoothBlock B X (Real.log (2 * (X : ℝ))))
        (Real.log (2 * (X : ℝ))) +
       (8 * Real.log 2 *
        Real.exp (2 * Real.sqrt (Real.log (2 * (X : ℝ)))) *
          (bankSquareRootWeight B.primes) ^ 2 +
        4 * Real.log 2)) / 2 +
      4 * Real.log 2 * (1 + 2 * (A.card : ℝ)) := by
  have hYoung := original_high_low_young B a b A X hX
  have hHigh := high_wave_energy_le_absolute_envelope B a X hX
  linarith

/-- Second ORIGINAL ordered low/high packet. The high-source
energy is paid on the OTHER tag coordinate: no unjustified
symmetry across signed mixed source terms is used. -/
theorem original_low_high_le_low_energy_plus_known_high
    (B : PrimeBand) (a b : Bool) (A : Finset ℕ)
    (X : ℕ) (hX : 1 ≤ X) :
    |maskedTaggedBlock B.primes a b A
      (lowSmoothBlock B X (Real.log (2 * (X : ℝ))))
      (highSmoothBlock B X (Real.log (2 * (X : ℝ))))
      (Real.log (2 * (X : ℝ)))| ≤
      (taggedSourceEnergy B.primes a
        (lowSmoothBlock B X (Real.log (2 * (X : ℝ))))
        (Real.log (2 * (X : ℝ))) +
       (8 * Real.log 2 *
        Real.exp (2 * Real.sqrt (Real.log (2 * (X : ℝ)))) *
          (bankSquareRootWeight B.primes) ^ 2 +
        4 * Real.log 2)) / 2 +
      4 * Real.log 2 * (1 + 2 * (A.card : ℝ)) := by
  have hYoung := original_low_high_young B a b A X hX
  have hHigh := high_wave_energy_le_absolute_envelope B b X hX
  linarith

/-- The FULL ORIGINAL unpartitioned signed Möbius rectangle
is recovered from the four original rough/matched tag orientations,
and is bounded by precisely the TWO true low-wave energies
and a source-explicit high Euler and finite-mask allowance.

The coefficient source is the original moebiusReal n on BOTH
ordered axes, including squareful zeros. This theorem is a
conditional-strength REDUCTION, not an all-positive-rate theorem:
the two actual low-wave energies remain on the right. -/
theorem original_full_moebius_dense_le_two_low_energies
    (B : PrimeBand) (A : Finset ℕ)
    (X : ℕ) (hX : 1 ≤ X) :
    |originalDenseRectangle A X X (Real.log (2 * (X : ℝ)))| ≤
      4 * (taggedSourceEnergy B.primes true
          (lowSmoothBlock B X (Real.log (2 * (X : ℝ))))
          (Real.log (2 * (X : ℝ))) +
        taggedSourceEnergy B.primes false
          (lowSmoothBlock B X (Real.log (2 * (X : ℝ))))
          (Real.log (2 * (X : ℝ)))) +
      8 * (8 * Real.log 2 *
        Real.exp (2 * Real.sqrt (Real.log (2 * (X : ℝ)))) *
          (bankSquareRootWeight B.primes) ^ 2 +
        4 * Real.log 2) +
      16 * (4 * Real.log 2 * (1 + 2 * (A.card : ℝ))) := by
  let T : ℝ := Real.log (2 * (X : ℝ))
  let RR : ℝ := taggedDenseRectangle B.primes true true A X X T
  let RM : ℝ := taggedDenseRectangle B.primes true false A X X T
  let MR : ℝ := taggedDenseRectangle B.primes false true A X X T
  let MM : ℝ := taggedDenseRectangle B.primes false false A X X T
  let ER : ℝ := taggedSourceEnergy B.primes true
    (lowSmoothBlock B X T) T
  let EM : ℝ := taggedSourceEnergy B.primes false
    (lowSmoothBlock B X T) T
  let U : ℝ := 8 * Real.log 2 * Real.exp (2 * Real.sqrt T) *
    (bankSquareRootWeight B.primes) ^ 2 + 4 * Real.log 2
  let C : ℝ := 4 * Real.log 2 * (1 + 2 * (A.card : ℝ))
  have hRR : |RR| ≤ ER + ER + 2 * U + 4 * C :=
    original_full_tagged_le_low_energies_plus_known_high
      B true true A X hX
  have hRM : |RM| ≤ ER + EM + 2 * U + 4 * C :=
    original_full_tagged_le_low_energies_plus_known_high
      B true false A X hX
  have hMR : |MR| ≤ EM + ER + 2 * U + 4 * C :=
    original_full_tagged_le_low_energies_plus_known_high
      B false true A X hX
  have hMM : |MM| ≤ EM + EM + 2 * U + 4 * C :=
    original_full_tagged_le_low_energies_plus_known_high
      B false false A X hX
  have hTriangle :
      |RR + RM + MR + MM| ≤ |RR| + |RM| + |MR| + |MM| := by
    calc
      |RR + RM + MR + MM| ≤ |RR + RM + MR| + |MM| :=
        abs_add_le _ _
      _ ≤ (|RR + RM| + |MR|) + |MM| :=
        add_le_add_right (abs_add_le _ _) _
      _ ≤ |RR| + |RM| + |MR| + |MM| := by
        linarith [abs_add_le RR RM]
  rw [originalDenseRectangle_eq_four_tagged B.primes A X X T]
  change |RR + RM + MR + MM| ≤ 4 * (ER + EM) + 8 * U + 16 * C
  linarith

/-- No arithmetic premise is hidden: only HERE, after the exact
unconditional original source theorem, we assume the missing
two low-wave estimates as explicit hypotheses. -/
theorem original_full_moebius_dense_le_of_two_low_energy_bounds
    (B : PrimeBand) (A : Finset ℕ)
    (X : ℕ) (hX : 1 ≤ X) (M : ℝ)
    (hR :
      taggedSourceEnergy B.primes true
        (lowSmoothBlock B X (Real.log (2 * (X : ℝ))))
        (Real.log (2 * (X : ℝ))) ≤ M)
    (hM :
      taggedSourceEnergy B.primes false
        (lowSmoothBlock B X (Real.log (2 * (X : ℝ))))
        (Real.log (2 * (X : ℝ))) ≤ M) :
    |originalDenseRectangle A X X (Real.log (2 * (X : ℝ)))| ≤
      8 * M +
      8 * (8 * Real.log 2 *
        Real.exp (2 * Real.sqrt (Real.log (2 * (X : ℝ)))) *
          (bankSquareRootWeight B.primes) ^ 2 +
        4 * Real.log 2) +
      16 * (4 * Real.log 2 * (1 + 2 * (A.card : ℝ))) := by
  have h := original_full_moebius_dense_le_two_low_energies B A X hX
  linarith

end GRWTSK.NumberTheory.Moebius.SignedWaveYoungTransfer
