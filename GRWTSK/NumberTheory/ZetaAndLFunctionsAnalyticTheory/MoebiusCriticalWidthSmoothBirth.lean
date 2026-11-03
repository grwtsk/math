/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusSmoothBirthDenseSingleBudget
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusEndpointGapLocalization
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory

/-!
# Critical-width smooth birth at h_n = kappa / sqrt(n)

This is the ORIGINAL integer-indexed causal Möbius Gram with its
real-time response smoothed in the right birth window of width
kappa / sqrt(n), n >= 1. The base source, prime/residue address,
ordered orientations and actual Putnam complement remain unchanged.

The source below proves (as a Lean proof CANDIDATE, not yet compiled):
the pointwise real-response comparison, actual kernel nonnegativity,
exact complementary signed defect and a fixed-G growth equivalence
conditional ONLY on a named analytic unsigned Gram bound.

The remaining analytic source estimate, proved on paper in the review,
is the concrete unsignedFullDefect <= 8 * sqrt(e) * kappa^2 * (1+T)
for all T>=0, 0<kappa<=1, and a 0-to-1 right-flat step eta.
It is NOT asserted as a theorem in this file, and the required Lean
integral/summation proof remains OPEN. RH cancellation remains OPEN.
-/

namespace GRWTSK.NumberTheory.Moebius.CriticalWidthSmoothBirth

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.LiouvilleDoubleAbelAnalyticGates
open GRWTSK.NumberTheory.LiouvilleCausalPhysicalGramIntegrability
open GRWTSK.NumberTheory.Moebius.SmoothBirthDenseSingleBudget
open GRWTSK.NumberTheory.Moebius.SmoothBirthSectorTransport
open GRWTSK.NumberTheory.Moebius.PutnamSparseGapProof
open GRWTSK.NumberTheory.MoebiusEndpointPutnamEnergyCounting
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII

/-- A right-hand C-infinity smoothing window of width
kappa / sqrt(n), for every ORIGINAL positive integer n. -/
def criticalResponse (eta : ℝ → ℝ) (κ : ℝ) (n : ℕ) (u : ℝ) : ℝ :=
  2 * ((Real.sqrt (n : ℝ))⁻¹ - Real.exp (-u / 2)) *
    eta ((Real.sqrt (n : ℝ) / κ) * (u - Real.log (n : ℝ)))

/-- The smooth response is identically zero through the original birth
when the real cutoff is right-flat. -/
theorem criticalResponse_before
    (eta : ℝ → ℝ) (κ : ℝ) (n : ℕ) (u : ℝ)
    (hκ : 0 < κ)
    (hzero : ∀ x : ℝ, x ≤ 0 → eta x = 0)
    (hu : u ≤ Real.log (n : ℝ)) :
    criticalResponse eta κ n u = 0 := by
  have hs : 0 ≤ Real.sqrt (n : ℝ) / κ :=
    div_nonneg (Real.sqrt_nonneg _) (le_of_lt hκ)
  have hx : u - Real.log (n : ℝ) ≤ 0 := sub_nonpos.mpr hu
  have ha :
      (Real.sqrt (n : ℝ) / κ) * (u - Real.log (n : ℝ)) ≤ 0 :=
    mul_nonpos_of_nonneg_of_nonpos hs hx
  simp [criticalResponse, hzero _ ha]

/-- Beyond the original birth window, the response is LITERALLY the
unchanged original r_n. -/
theorem criticalResponse_after
    (eta : ℝ → ℝ) (κ : ℝ) (n : ℕ) (u : ℝ)
    (hone : ∀ x : ℝ, 1 ≤ x → eta x = 1)
    (hbirth : Real.log (n : ℝ) ≤ u)
    (harg : 1 ≤ (Real.sqrt (n : ℝ) / κ) *
      (u - Real.log (n : ℝ))) :
    criticalResponse eta κ n u = pickupResponse n u := by
  simp [criticalResponse, pickupResponse, hbirth, hone _ harg]

/-- Every individual regularized response is globally C-infinity
in the REAL observation coordinate, assuming a smooth step. -/
theorem criticalResponse_contDiff
    (eta : ℝ → ℝ) (κ : ℝ) (n : ℕ)
    (hη : ContDiff ℝ ∞ eta) :
    ContDiff ℝ ∞ (criticalResponse eta κ n) := by
  unfold criticalResponse
  fun_prop

/-- The actual original positive-index response multiplied by the
cutoff. Crucially the original birth branch is preserved. -/
theorem criticalResponse_eq_pickup_mul
    (eta : ℝ → ℝ) (κ : ℝ) (n : ℕ) (u : ℝ)
    (hκ : 0 < κ)
    (hzero : ∀ x : ℝ, x ≤ 0 → eta x = 0) :
    criticalResponse eta κ n u =
      pickupResponse n u *
        eta ((Real.sqrt (n : ℝ) / κ) *
          (u - Real.log (n : ℝ))) := by
  by_cases hb : Real.log (n : ℝ) ≤ u
  · simp [criticalResponse, pickupResponse, hb]
  · have hu : u ≤ Real.log (n : ℝ) :=
      le_of_lt (lt_of_not_ge hb)
    rw [criticalResponse_before eta κ n u hκ hzero hu]
    simp [pickupResponse, hb]

/-- Pointwise nonnegativity is a property of the actual positive
response and a cutoff in [0,1], not of Möbius cancellation. -/
theorem criticalResponse_nonneg
    (eta : ℝ → ℝ) (κ : ℝ) (n : ℕ) (u : ℝ)
    (hn : 1 ≤ n) (hκ : 0 < κ)
    (hzero : ∀ x : ℝ, x ≤ 0 → eta x = 0)
    (hη0 : ∀ x : ℝ, 0 ≤ eta x) :
    0 ≤ criticalResponse eta κ n u := by
  rw [criticalResponse_eq_pickup_mul eta κ n u hκ hzero]
  exact mul_nonneg (pickupResponse_nonneg_positive n hn u) (hη0 _)

/-- The positive critical response never exceeds the ORIGINAL
causal response; no changed arithmetic kernel is silently adopted. -/
theorem criticalResponse_le_pickup
    (eta : ℝ → ℝ) (κ : ℝ) (n : ℕ) (u : ℝ)
    (hn : 1 ≤ n) (hκ : 0 < κ)
    (hzero : ∀ x : ℝ, x ≤ 0 → eta x = 0)
    (hη1 : ∀ x : ℝ, eta x ≤ 1) :
    criticalResponse eta κ n u ≤ pickupResponse n u := by
  rw [criticalResponse_eq_pickup_mul eta κ n u hκ hzero]
  calc
    pickupResponse n u *
        eta ((Real.sqrt (n : ℝ) / κ) *
          (u - Real.log (n : ℝ))) ≤ pickupResponse n u * 1 :=
      mul_le_mul_of_nonneg_left (hη1 _)
        (pickupResponse_nonneg_positive n hn u)
    _ = pickupResponse n u := mul_one _

/-- Only the real time waveform has changed. -/
def criticalGram (eta : ℝ → ℝ) (κ T : ℝ) (m n : ℕ) : ℝ :=
  ∫ u in (0 : ℝ)..T,
    criticalResponse eta κ m u * criticalResponse eta κ n u

/-- With a C-infinity, [0,1]-valued step, the original response Gram
dominates the REAL regularized Gram for every pair of original
positive integer indices and T>=0. No arithmetic hypothesis. -/
theorem criticalGram_le_original
    (eta : ℝ → ℝ) (κ T : ℝ) (m n : ℕ)
    (hT : 0 ≤ T) (hm : 1 ≤ m) (hn : 1 ≤ n)
    (hκ : 0 < κ)
    (hη : ContDiff ℝ ∞ eta)
    (hzero : ∀ x : ℝ, x ≤ 0 → eta x = 0)
    (hη0 : ∀ x : ℝ, 0 ≤ eta x)
    (hη1 : ∀ x : ℝ, eta x ≤ 1) :
    criticalGram eta κ T m n ≤ pickupResponseGram T m n := by
  have hci :
      IntervalIntegrable
        (fun u : ℝ =>
          criticalResponse eta κ m u * criticalResponse eta κ n u)
        volume 0 T :=
    ((criticalResponse_contDiff eta κ m hη).continuous.mul
      (criticalResponse_contDiff eta κ n hη).continuous).intervalIntegrable 0 T
  have hoi :
      IntervalIntegrable
        (fun u : ℝ => pickupResponse m u * pickupResponse n u)
        volume 0 T :=
    pickupResponse_product_intervalIntegrable m n (by omega) (by omega) T
  unfold criticalGram pickupResponseGram
  apply intervalIntegral.integral_mono_on hT hci hoi
  intro u hu
  calc
    criticalResponse eta κ m u * criticalResponse eta κ n u ≤
        pickupResponse m u * criticalResponse eta κ n u :=
      mul_le_mul_of_nonneg_right
        (criticalResponse_le_pickup eta κ m u hm hκ hzero hη1)
        (criticalResponse_nonneg eta κ n u hn hκ hzero hη0)
    _ ≤ pickupResponse m u * pickupResponse n u :=
      mul_le_mul_of_nonneg_left
        (criticalResponse_le_pickup eta κ n u hn hκ hzero hη1)
        (pickupResponse_nonneg_positive m hm u)

/-- Source-specific nonnegative kernel difference, available without
assuming any dense Möbius sign correlation. -/
theorem criticalKernelDifference_nonneg
    (eta : ℝ → ℝ) (κ T : ℝ) (m n : ℕ)
    (hT : 0 ≤ T) (hm : 1 ≤ m) (hn : 1 ≤ n)
    (hκ : 0 < κ) (hη : ContDiff ℝ ∞ eta)
    (hzero : ∀ x : ℝ, x ≤ 0 → eta x = 0)
    (hη0 : ∀ x : ℝ, 0 ≤ eta x)
    (hη1 : ∀ x : ℝ, eta x ≤ 1) :
    0 ≤ pickupResponseGram T m n - criticalGram eta κ T m n :=
  sub_nonneg.mpr (criticalGram_le_original eta κ T m n
    hT hm hn hκ hη hzero hη0 hη1)

/-- The exact smooth version of the ORIGINAL Putnam dense complement.
Every original integer and ordered pair survives. -/
def criticalDenseLongGapSource (eta : ℝ → ℝ) (κ ε T : ℝ) : ℝ :=
  signedComplementDefect
    (endpointIndex T) (putnamRateGapSet ε T) moebiusReal
    (criticalGram eta κ T)

/-- One complete positive unsigned source budget, with original
integer range (and diagonal only as a majorant). -/
def criticalUnsignedDefect (eta : ℝ → ℝ) (κ T : ℝ) : ℝ :=
  unsignedFullDefect (endpointIndex T)
    (fun m n => pickupResponseGram T m n - criticalGram eta κ T m n)

/-- Full source-minus-critical signed error is exactly ONE ordered
complementary source packet, not a difference of unconstrained errors. -/
theorem original_sub_criticalDense_eq_sector
    (eta : ℝ → ℝ) (κ ε T : ℝ) :
    denseLongGapSource ε T - criticalDenseLongGapSource eta κ ε T =
      signedComplementDefect
        (endpointIndex T) (putnamRateGapSet ε T) moebiusReal
        (fun m n => pickupResponseGram T m n -
          criticalGram eta κ T m n) := by
  rw [original_dense_eq_complement]
  unfold signedComplementDefect criticalDenseLongGapSource
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  by_cases h : m ≠ n ∧ Nat.dist m n ∉ putnamRateGapSet ε T
  · simp only [if_pos h]
    ring
  · simp [h]

/-- The FULL dense signed error is controlled by one unsigned
budget, with kernel positivity PROVED from the actual responses. -/
theorem criticalDense_abs_error_le_unsigned
    (eta : ℝ → ℝ) (κ ε T : ℝ)
    (hT : 0 ≤ T) (hκ : 0 < κ)
    (hη : ContDiff ℝ ∞ eta)
    (hzero : ∀ x : ℝ, x ≤ 0 → eta x = 0)
    (hη0 : ∀ x : ℝ, 0 ≤ eta x)
    (hη1 : ∀ x : ℝ, eta x ≤ 1) :
    |denseLongGapSource ε T - criticalDenseLongGapSource eta κ ε T| ≤
      criticalUnsignedDefect eta κ T := by
  rw [original_sub_criticalDense_eq_sector]
  unfold criticalUnsignedDefect
  apply abs_signedComplementDefect_le_unsigned
    (endpointIndex T) (putnamRateGapSet ε T) moebiusReal
    (fun m n => pickupResponseGram T m n - criticalGram eta κ T m n)
    (fun n _ => moebiusReal_abs_le_one n)
  intro m hm n hn
  have hmpos : 1 ≤ m := (Finset.mem_Icc.mp hm).1
  have hnpos : 1 ≤ n := (Finset.mem_Icc.mp hn).1
  exact criticalKernelDifference_nonneg eta κ T m n hT
    hmpos hnpos hκ hη hzero hη0 hη1

/-- The remaining pure real-variable and harmonic-series estimate
is intentionally a named, source-specific requirement, not an axiom
or an assumption about Möbius signed cancellation.
It is analytically proved in the companion review. -/
def CriticalUnsignedLinearBudget (eta : ℝ → ℝ) (κ : ℝ) : Prop :=
  ∀ T : ℝ, 0 ≤ T →
    criticalUnsignedDefect eta κ T ≤
      (8 * Real.sqrt (Real.exp 1) * κ ^ 2) * (1 + T)

/-- The same fixed G and every positive ε: growth bounds transport
across a LINEAR, rather than constant, real-time comparison error. -/
theorem allPositiveRateOn_transport_linear
    {f g : ℝ → ℝ → ℝ} {G : Set ℝ}
    {K : ℝ} (hK : 0 ≤ K)
    (hfg : ∀ ε T : ℝ, 0 < ε → 0 ≤ T →
      g ε T ≤ f ε T + K * (1 + T))
    (hf : AllPositiveRateOn f G) :
    AllPositiveRateOn g G := by
  have hpoly : SubexponentialUpper (fun T : ℝ => K * (1 + T)) :=
    subexponentialUpper_of_polynomial (C := K) (q := 1) hK (by
      intro T hT
      simp)
  intro ε hε
  obtain ⟨C, R, hC, hR, hb⟩ := hf ε hε
  obtain ⟨D, hD, hdb⟩ := hpoly ε hε
  refine ⟨C + D, R, add_nonneg hC hD, hR, ?_⟩
  intro T hG hTR
  have hT : 0 ≤ T := hR.trans hTR
  calc
    g ε T ≤ f ε T + K * (1 + T) := hfg ε T hε hT
    _ ≤ C * Real.exp (ε * T) + D * Real.exp (ε * T) :=
      add_le_add (hb T hG hTR) (hdb T hT)
    _ = (C + D) * Real.exp (ε * T) := by ring

theorem allPositiveRateOn_iff_of_linear_error
    {f g : ℝ → ℝ → ℝ} {G : Set ℝ}
    {K : ℝ} (hK : 0 ≤ K)
    (herror : ∀ ε T : ℝ, 0 < ε → 0 ≤ T →
      |f ε T - g ε T| ≤ K * (1 + T)) :
    AllPositiveRateOn f G ↔ AllPositiveRateOn g G := by
  constructor
  · intro hf
    apply allPositiveRateOn_transport_linear hK (f := f) (g := g)
    · intro ε T hε hT
      have h := (abs_le.mp (herror ε T hε hT)).1
      linarith
    · exact hf
  · intro hg
    apply allPositiveRateOn_transport_linear hK (f := g) (g := f)
    · intro ε T hε hT
      have h := (abs_le.mp (herror ε T hε hT)).2
      linarith
    · exact hg

def CriticalDenseAllPositiveRatesOn
    (eta : ℝ → ℝ) (κ : ℝ) (G : Set ℝ) : Prop :=
  AllPositiveRateOn (criticalDenseLongGapSource eta κ) G

/-- The critical-width smooth dense target is equivalent to the
unchanged ORIGINAL dense target on the SAME G, once the separately
stated arithmetic-free unsigned linear estimate is established.
No dense signed bound or RH conclusion is assumed or proved here. -/
theorem denseLongGapAllRateOn_iff_critical
    (eta : ℝ → ℝ) (κ : ℝ) (G : Set ℝ)
    (hκ : 0 < κ) (hκ1 : κ ≤ 1)
    (hη : ContDiff ℝ ∞ eta)
    (hzero : ∀ x : ℝ, x ≤ 0 → eta x = 0)
    (hη0 : ∀ x : ℝ, 0 ≤ eta x)
    (hη1 : ∀ x : ℝ, eta x ≤ 1)
    (hunsigned : CriticalUnsignedLinearBudget eta κ) :
    DenseLongGapAllRateOn G ↔
      CriticalDenseAllPositiveRatesOn eta κ G := by
  change AllPositiveRateOn (fun ε T => denseLongGapSource ε T) G ↔
    AllPositiveRateOn (criticalDenseLongGapSource eta κ) G
  apply allPositiveRateOn_iff_of_linear_error
    (K := 8 * Real.sqrt (Real.exp 1) * κ ^ 2) (by positivity)
  intro ε T hε hT
  exact (criticalDense_abs_error_le_unsigned eta κ ε T
    hT hκ hη hzero hη0 hη1).trans (hunsigned T hT)

end GRWTSK.NumberTheory.Moebius.CriticalWidthSmoothBirth
