/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusEllipticFiberKernelComparison
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.PickupDyadicEndpoint
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMKaehlerZQGaugeFullReturn
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusPrimeBlockSignedFrame
import Mathlib.Tactic

/-!
# Exact original source, prime-rough gaps, elliptic full residual and U(1) gauge

All original Möbius signs, squareful zeros, integer labels, the causal response
Gram, both ordered orientations and diagonal exclusion are unchanged.
The rough index is n/gcd(n,Q), so this is an actual original-index partition,
not a surrogate arithmetic source.

The exact regrouping is an unconditional algebraic proof candidate. The
conditional RH theorem at the bottom needs three explicit all-positive-rate
signed estimates. In particular the dense far rough-index estimate is NOT
supplied. No geometric or elliptic point-count statement is being taken as
a new signed cancellation estimate.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory
namespace GRWTSK.NumberTheory.Moebius.PrimeRoughGapSourceReturn
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.Moebius.EllipticFiberEndpointComparison
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
open GRWTSK.NumberTheory.Moebius.PrimeBlockSignedFrame
open GRWTSK.NumberTheory.Moebius.DyadicSignedResidueWaveform
open GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential
open GRWTSK.NumberTheory.Moebius.GoodScaleEnergyCriterion
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMKaehlerZQGaugedResidueAnchor
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMKaehlerZQGaugeFullReturn

def roughKey (Q n : ℕ) : ℕ := n / Nat.gcd n Q

def originalRoughLabels (Q : ℕ) (T : ℝ) : Finset ℕ :=
  (endpointIndex T).image (roughKey Q)

def originalRoughFiber (Q : ℕ) (T : ℝ) (m : ℕ) : Finset ℕ :=
  (endpointIndex T).filter (fun n => roughKey Q n = m)

/-- Literal original integer responses, including zero Möbius coefficients. -/
def originalRoughWave (Q : ℕ) (T : ℝ) (m : ℕ) (u : ℝ) : ℝ :=
  ∑ n ∈ endpointIndex T with roughKey Q n = m,
    moebiusReal n * pickupResponse n u

/-- Instantiate the existing finite signed-block amplitude with the old source. -/
theorem originalRoughWave_eq_finiteBlock (Q : ℕ) (T : ℝ) (m : ℕ) (u : ℝ) :
    originalRoughWave Q T m u =
      blockAmplitude (originalRoughFiber Q T)
        (fun _ n => moebiusReal n * pickupResponse n u) m := by
  rfl

/-- Every signed source term appears in one and only one rough fiber. -/
theorem sum_originalRoughWave (Q : ℕ) (T u : ℝ) :
    (∑ m ∈ originalRoughLabels Q T, originalRoughWave Q T m u) =
      ∑ n ∈ endpointIndex T, moebiusReal n * pickupResponse n u := by
  classical
  unfold originalRoughLabels originalRoughWave
  exact Finset.sum_fiberwise_of_maps_to
    (fun n hn => Finset.mem_image_of_mem (roughKey Q) hn)
    (fun n => moebiusReal n * pickupResponse n u)

/-- Restore the exact wholePickup on its original causal time window. -/
theorem sum_originalRoughWave_eq_wholePickup
    (Q : ℕ) (T u : ℝ) (hu : 0 ≤ u) (hTu : u ≤ T) :
    (∑ m ∈ originalRoughLabels Q T, originalRoughWave Q T m u) =
      wholePickup u := by
  rw [sum_originalRoughWave]
  simpa only [endpointIndex] using (wholePickup_fixed_inventory hu hTu).symm

/-- On each rough fiber, gcd(n,Q) is an injective actual positive divisor. -/
theorem originalRoughFiber_card_le_divisors
    {Q : ℕ} (hQ : 0 < Q) (T : ℝ) (m : ℕ) :
    ((endpointIndex T).filter (fun n => roughKey Q n = m)).card ≤
      (Nat.divisors Q).card := by
  classical
  refine Finset.card_le_card_of_injOn (fun n => Nat.gcd n Q) ?_ ?_
  · intro n hn
    exact Nat.mem_divisors.mpr ⟨Nat.gcd_dvd_right n Q, Nat.ne_of_gt hQ⟩
  · intro n hn k hk heq
    have hnrough : roughKey Q n = m := (Finset.mem_filter.mp hn).2
    have hkrough : roughKey Q k = m := (Finset.mem_filter.mp hk).2
    have hnreconstruct : Nat.gcd n Q * roughKey Q n = n := by
      simpa only [roughKey, mul_comm] using
        (Nat.mul_div_cancel' (Nat.gcd_dvd_left n Q))
    have hkreconstruct : Nat.gcd k Q * roughKey Q k = k := by
      simpa only [roughKey, mul_comm] using
        (Nat.mul_div_cancel' (Nat.gcd_dvd_left k Q))
    calc
      n = Nat.gcd n Q * roughKey Q n := hnreconstruct.symm
      _ = Nat.gcd k Q * roughKey Q k := by rw [heq, hnrough, hkrough]
      _ = k := hkreconstruct

/-- Source pointwise signed-frame diagonal bounded without any Mertens premise. -/
theorem originalRoughFrame_sq_le_divisor_card
    {Q : ℕ} (hQ : 0 < Q) (T u : ℝ) :
    (∑ m ∈ originalRoughLabels Q T, (originalRoughWave Q T m u) ^ 2) ≤
      ((Nat.divisors Q).card : ℝ) *
        ∑ n ∈ endpointIndex T, (moebiusReal n * pickupResponse n u) ^ 2 := by
  classical
  let M : Finset ℕ := originalRoughLabels Q T
  let D : ℕ → Finset ℕ := originalRoughFiber Q T
  let a : ℕ → ℕ → ℝ := fun _ n => moebiusReal n * pickupResponse n u
  have hcard : ∀ m ∈ M, (D m).card ≤ (Nat.divisors Q).card := by
    intro m _hm
    exact originalRoughFiber_card_le_divisors hQ T m
  have hfinite := blockDiagonal_le_card_mul M D a (Nat.divisors Q).card hcard
  have hsource : sourceDiagonal M D a =
      ∑ n ∈ endpointIndex T, (moebiusReal n * pickupResponse n u) ^ 2 := by
    change (∑ m ∈ (endpointIndex T).image (roughKey Q),
      ∑ n ∈ endpointIndex T with roughKey Q n = m,
        (moebiusReal n * pickupResponse n u) ^ 2) = _
    exact Finset.sum_fiberwise_of_maps_to
      (fun n hn => Finset.mem_image_of_mem (roughKey Q) hn) _
  calc
    (∑ m ∈ originalRoughLabels Q T, (originalRoughWave Q T m u) ^ 2) =
        blockDiagonal M D a := by rfl
    _ ≤ ((Nat.divisors Q).card : ℝ) * sourceDiagonal M D a := hfinite
    _ = _ := by rw [hsource]

/-- All same-rough ordered original pairs, with diagonal omitted. -/
def originalInternalCross (Q : ℕ) (T : ℝ) : ℝ :=
  ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
    if m ≠ n ∧ roughKey Q m = roughKey Q n then
      moebiusReal m * moebiusReal n * pickupResponseGram T m n
    else 0

/-- Nearby but distinct rough labels; all original signs and pairs retained. -/
def originalNearRoughCross (Q H : ℕ) (T : ℝ) : ℝ :=
  ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
    if m ≠ n ∧ roughKey Q m ≠ roughKey Q n ∧
        Nat.dist (roughKey Q m) (roughKey Q n) ≤ H then
      moebiusReal m * moebiusReal n * pickupResponseGram T m n
    else 0

/-- Complete far-rough signed packet: arithmetic cancellation still OPEN. -/
def originalFarRoughCross (Q H : ℕ) (T : ℝ) : ℝ :=
  ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
    if m ≠ n ∧ roughKey Q m ≠ roughKey Q n ∧
        H < Nat.dist (roughKey Q m) (roughKey Q n) then
      moebiusReal m * moebiusReal n * pickupResponseGram T m n
    else 0

/-- Literal three-way partition of the complete ordered source cross. -/
theorem pickupCross_eq_original_rough_partition (Q H : ℕ) (T : ℝ) :
    pickupCross T = originalInternalCross Q T +
      originalNearRoughCross Q H T + originalFarRoughCross Q H T := by
  unfold pickupCross originalInternalCross originalNearRoughCross
    originalFarRoughCross endpointIndex
  rw [← Finset.sum_add_distrib, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  rw [← Finset.sum_add_distrib, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hmn : m = n
  · simp [hmn]
  · by_cases hrough : roughKey Q m = roughKey Q n
    · simp [hmn, hrough]
    · by_cases hnear : Nat.dist (roughKey Q m) (roughKey Q n) ≤ H
      · have hfar : ¬ H < Nat.dist (roughKey Q m) (roughKey Q n) := by omega
        simp [hmn, hrough, hnear, hfar]
      · have hfar : H < Nat.dist (roughKey Q m) (roughKey Q n) := by omega
        simp [hmn, hrough, hnear, hfar]

/-- Entire signed endpoint correction retained, rather than redefined. -/
theorem endpointSum_eq_far_plus_all_paid (Q H : ℕ) (T : ℝ) :
    endpointSum T = originalFarRoughCross Q H T +
      originalInternalCross Q T + originalNearRoughCross Q H T +
      signedEndpointCorrection T := by
  calc
    endpointSum T = pickupCross T + signedEndpointCorrection T := by
      unfold signedEndpointCorrection
      ring
    _ = originalFarRoughCross Q H T + originalInternalCross Q T +
          originalNearRoughCross Q H T + signedEndpointCorrection T := by
      rw [pickupCross_eq_original_rough_partition Q H T]
      ring

/-- Both complete original elliptic and rough-index ledgers have one source. -/
theorem elliptic_complete_eq_original_rough_partition
    {W : WeierstrassCurve ℤ} (B : GoodPrimeBank W) (Q H : ℕ) (T : ℝ) :
    matchedEllipticPacket B T + fullSignedResidual B T =
      originalInternalCross Q T + originalNearRoughCross Q H T +
        originalFarRoughCross Q H T := by
  calc
    matchedEllipticPacket B T + fullSignedResidual B T = pickupCross T :=
      (pickupCross_eq_elliptic_add_full_residual B T).symm
    _ = _ := pickupCross_eq_original_rough_partition Q H T

/-- Complete residue classes, all four mixed sectors, ORIGINAL real energy. -/
theorem completeResidueEnergy_eq_original_rough_partition
    (j d Q H : ℕ) [NeZero d] :
    completeResidueEnergy j d = pickupDiagonal (dyadicTime j) +
      originalInternalCross Q (dyadicTime j) +
      originalNearRoughCross Q H (dyadicTime j) +
      originalFarRoughCross Q H (dyadicTime j) := by
  calc
    completeResidueEnergy j d = pickupEnergy (dyadicTime j) :=
      completeResidueEnergy_eq_pickupEnergy j d
    _ = pickupDiagonal (dyadicTime j) + pickupCross (dyadicTime j) :=
      pickupEnergy_eq_diagonal_add_cross (dyadicTime_nonnegative j)
    _ = _ := by
      rw [pickupCross_eq_original_rough_partition Q H]
      ring

/-- Exact compensated gauge detector, not a source-independent Kakeya gain. -/
theorem gauged_energy_eq_original_rough_partition
    (j d Q H : ℕ) [NeZero d] (g : Gauge d) :
    (∫ t in (0 : ℝ)..dyadicTime j,
       ((detector d g (gaugePacket d g (originalSectorPacket j d t))).re) ^ 2) =
      pickupDiagonal (dyadicTime j) +
      originalInternalCross Q (dyadicTime j) +
      originalNearRoughCross Q H (dyadicTime j) +
      originalFarRoughCross Q H (dyadicTime j) := by
  calc
    (∫ t in (0 : ℝ)..dyadicTime j,
       ((detector d g (gaugePacket d g (originalSectorPacket j d t))).re) ^ 2) =
        pickupEnergy (dyadicTime j) :=
      (compensated_original_energy j d g).symm
    _ = pickupDiagonal (dyadicTime j) + pickupCross (dyadicTime j) :=
      pickupEnergy_eq_diagonal_add_cross (dyadicTime_nonnegative j)
    _ = _ := by
      rw [pickupCross_eq_original_rough_partition Q H]
      ring

/-- Same-set subexponential addition, with explicit rate-dependent constants. -/
theorem subexponentialOn_add_same {G : Set ℝ} {f g : ℝ → ℝ}
    (hf : SubexponentialOn f G) (hg : SubexponentialOn g G) :
    SubexponentialOn (fun T => f T + g T) G := by
  intro ε hε
  obtain ⟨C, T₁, hC, hT₁, hCf⟩ := hf ε hε
  obtain ⟨D, T₂, hD, hT₂, hDg⟩ := hg ε hε
  refine ⟨C + D, max T₁ T₂, add_nonneg hC hD,
    hT₁.trans (le_max_left _ _), ?_⟩
  intro T hG hT
  have hTf : T₁ ≤ T := (le_max_left _ _).trans hT
  have hTg : T₂ ≤ T := (le_max_right _ _).trans hT
  simpa only [add_mul] using add_le_add (hCf T hG hTf) (hDg T hG hTg)

/-- Conditional RH return; all three signed upper bounds are premises.
The exact far-rough arithmetic estimate has not been constructed. -/
theorem riemannHypothesis_of_rough_partition_good_scales
    (G : Set ℝ) (Q H : ℝ → ℕ) (hcover : AffineFrequent G)
    (hintra : SubexponentialOn (fun T => originalInternalCross (Q T) T) G)
    (hnear : SubexponentialOn (fun T => originalNearRoughCross (Q T) (H T) T) G)
    (hfar : SubexponentialOn (fun T => originalFarRoughCross (Q T) (H T) T) G) :
    _root_.RiemannHypothesis := by
  have hfirst := subexponentialOn_add_same hintra hnear
  have hthree := subexponentialOn_add_same hfirst hfar
  have heq : (fun T => originalInternalCross (Q T) T +
      originalNearRoughCross (Q T) (H T) T +
        originalFarRoughCross (Q T) (H T) T) = pickupCross := by
    funext T
    exact (pickupCross_eq_original_rough_partition (Q T) (H T) T).symm
  have hsource : SubexponentialOn pickupCross G := by
    rw [← heq]
    exact hthree
  exact riemannHypothesis_of_cross_good_scales hcover hsource

end GRWTSK.NumberTheory.Moebius.PrimeRoughGapSourceReturn
