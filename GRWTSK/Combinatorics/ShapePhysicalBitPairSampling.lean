/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.Combinatorics.ShapePhysicalBitMaximalCoupling
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# An unbiased finite Gibbs pair readout of the COMPLETE signed Möbius source

The sampling population is the ACTUAL endpointIndex T. In particular,
every source integer, original Möbius coefficient, ordered off-diagonal
pair orientation, and original signed readout defect is retained.
This is not a replacement cutoff, sieve-randomized arithmetic source,
or an unproved asymptotic assertion.

A full-support Gibbs row on the original endpoint-index subtype gives
positive, normalized weights w(n). The product w(m)*w(n) is a chosen
law for two independent INDEX draws with replacement, not a claim that
the underlying Möbius signs or signed source kernels are independent.
Importance correction recovers original signed pair sums EXACTLY.

The centered second moment is retained. No bound on its magnitude, no
arithmetic cancellation and no good-scale RH estimate is asserted.
-/

namespace Folder.Research.ShapePhysicalBitPairSampling

open scoped BigOperators
open Carrier
open Folder.Research.ShapePhysicalBitTransport
open Folder.Research.ShapePhysicalBitMaximalCoupling
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.PhysicalBitGramReturn
open GRWTSK.DifferentialGeometry.GodelObserverMetricVorticity
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteAdmissibleSampler

/-- The ACTUAL original endpoint support, preserving each integer. -/
abbrev OriginalWindowIndex (T : ℝ) := {n : ℕ // n ∈ endpointIndex T}

/-- Strict positivity is necessary for full inverse-probability recovery. -/
structure PositiveWindowLaw (T : ℝ) (w : ℕ → ℝ) : Prop where
  positive : ∀ n ∈ endpointIndex T, 0 < w n
  total_one : (∑ n ∈ endpointIndex T, w n) = 1

/-- The existing Gibbs row on the original-index subtype, extended
by zero OUTSIDE the actual support. No new indices are manufactured. -/
def windowGibbsWeight (T : ℝ)
    (S : Sampler (OriginalWindowIndex T))
    (origin : OriginalWindowIndex T) (n : ℕ) : ℝ :=
  if h : n ∈ endpointIndex T then
    S.probability origin ⟨n, h⟩
  else 0

/-- Exact normalization follows from the existing Sampler theorem,
not from an assumed probabilistic normalization axiom. -/
theorem windowGibbsWeight_total_one (T : ℝ)
    (S : Sampler (OriginalWindowIndex T))
    (origin : OriginalWindowIndex T) :
    (∑ n ∈ endpointIndex T, windowGibbsWeight T S origin n) = 1 := by
  classical
  calc
    (∑ n ∈ endpointIndex T, windowGibbsWeight T S origin n) =
      ∑ n : OriginalWindowIndex T, windowGibbsWeight T S origin n.val := by
        symm
        exact Finset.sum_coe_sort (endpointIndex T) (windowGibbsWeight T S origin)
    _ = ∑ n : OriginalWindowIndex T, S.probability origin n := by
      apply Finset.sum_congr rfl
      intro n _
      simp [windowGibbsWeight, n.property]
    _ = 1 := S.probability_row_sum_one origin

/-- Full source-window support is an EXPLICIT Gibbs admissibility
hypothesis. A Sampler need not have every transition allowed. -/
theorem windowGibbsWeight_pos (T : ℝ)
    (S : Sampler (OriginalWindowIndex T))
    (origin : OriginalWindowIndex T)
    (hfull : ∀ n : OriginalWindowIndex T,
      S.allowed origin n = true) :
    ∀ n ∈ endpointIndex T, 0 < windowGibbsWeight T S origin n := by
  intro n hn
  have hp := S.probability_pos_of_allowed origin
    (⟨n, hn⟩ : OriginalWindowIndex T) (hfull ⟨n, hn⟩)
  simpa [windowGibbsWeight, hn] using hp

theorem windowGibbsWeight_isPositiveWindowLaw (T : ℝ)
    (S : Sampler (OriginalWindowIndex T))
    (origin : OriginalWindowIndex T)
    (hfull : ∀ n : OriginalWindowIndex T,
      S.allowed origin n = true) :
    PositiveWindowLaw T (windowGibbsWeight T S origin) :=
  ⟨windowGibbsWeight_pos T S origin hfull,
    windowGibbsWeight_total_one T S origin⟩

/-- Product sampling on all ORDERED pairs. This independence concerns
the two selected indices; it does not randomize arithmetic coefficients. -/
def windowPairExpectation (T : ℝ) (w : ℕ → ℝ)
    (f : ℕ → ℕ → ℝ) : ℝ :=
  ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
    w m * w n * f m n

theorem windowPairExpectation_one (T : ℝ) (w : ℕ → ℝ)
    (law : PositiveWindowLaw T w) :
    windowPairExpectation T w (fun _ _ => 1) = 1 := by
  unfold windowPairExpectation
  simp only [mul_one]
  calc
    (∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T, w m * w n) =
        (∑ m ∈ endpointIndex T, w m) *
          (∑ n ∈ endpointIndex T, w n) := by
            rw [Finset.sum_mul_sum]
    _ = 1 := by rw [law.total_one]; ring

theorem windowPairExpectation_congr (T : ℝ) (w : ℕ → ℝ)
    (f g : ℕ → ℕ → ℝ)
    (h : ∀ m ∈ endpointIndex T, ∀ n ∈ endpointIndex T,
      f m n = g m n) :
    windowPairExpectation T w f = windowPairExpectation T w g := by
  unfold windowPairExpectation
  apply Finset.sum_congr rfl
  intro m hm
  apply Finset.sum_congr rfl
  intro n hn
  rw [h m hm n hn]

theorem windowPairExpectation_add (T : ℝ) (w : ℕ → ℝ)
    (f g : ℕ → ℕ → ℝ) :
    windowPairExpectation T w (fun m n => f m n + g m n) =
      windowPairExpectation T w f + windowPairExpectation T w g := by
  simp only [windowPairExpectation, mul_add, Finset.sum_add_distrib]

theorem windowPairExpectation_sub (T : ℝ) (w : ℕ → ℝ)
    (f g : ℕ → ℕ → ℝ) :
    windowPairExpectation T w (fun m n => f m n - g m n) =
      windowPairExpectation T w f - windowPairExpectation T w g := by
  simp only [windowPairExpectation, mul_sub, Finset.sum_sub_distrib]

theorem windowPairExpectation_const_mul (T : ℝ) (w : ℕ → ℝ)
    (c : ℝ) (f : ℕ → ℕ → ℝ) :
    windowPairExpectation T w (fun m n => c * f m n) =
      c * windowPairExpectation T w f := by
  unfold windowPairExpectation
  calc
    (∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
      w m * w n * (c * f m n)) =
      ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
        c * (w m * w n * f m n) := by
          apply Finset.sum_congr rfl
          intro m hm
          apply Finset.sum_congr rfl
          intro n hn
          ring
    _ = c * (∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
      w m * w n * f m n) := by
        simp only [Finset.mul_sum]

/-- Original signed source: all true integer indices and the original
Gram/window weights, excluding ONLY the original diagonal m=n. -/
def originalSignedPair (T : ℝ) (m n : ℕ) : ℝ :=
  if m ≠ n then sourceKernel T m n else 0

def observedSignedPair (p : Parameters) (chart T : ℝ)
    (stream : PhysicalStream) (m n : ℕ) : ℝ :=
  if m ≠ n then observedKernel p chart T stream m n else 0

/-- No missing or incorrectly indexed record is silently substituted
for a zero Möbius coefficient: its signed readout cost survives here. -/
def defectSignedPair (p : Parameters) (chart T : ℝ)
    (stream : PhysicalStream) (m n : ℕ) : ℝ :=
  if m ≠ n then
    sourceKernel T m n - observedKernel p chart T stream m n
  else 0

theorem originalSignedPair_eq_observed_add_defect
    (p : Parameters) (chart T : ℝ) (stream : PhysicalStream)
    (m n : ℕ) :
    originalSignedPair T m n =
      observedSignedPair p chart T stream m n +
        defectSignedPair p chart T stream m n := by
  by_cases h : m ≠ n
  · simp [originalSignedPair, observedSignedPair, defectSignedPair, h]
  · simp [originalSignedPair, observedSignedPair, defectSignedPair, h]

/-- Exact finite importance cancellation, with a declared positive
denominator at EACH original source index. -/
theorem windowPairImportance_eq_originalSum (T : ℝ)
    (w : ℕ → ℝ) (law : PositiveWindowLaw T w)
    (f : ℕ → ℕ → ℝ) :
    windowPairExpectation T w
      (fun m n => f m n / (w m * w n)) =
      ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T, f m n := by
  unfold windowPairExpectation
  apply Finset.sum_congr rfl
  intro m hm
  apply Finset.sum_congr rfl
  intro n hn
  have hwm : w m ≠ 0 := ne_of_gt (law.positive m hm)
  have hwn : w n ≠ 0 := ne_of_gt (law.positive n hn)
  have hprod : w m * w n ≠ 0 := mul_ne_zero hwm hwn
  field_simp [hprod]

/-- Unbiased recovery of the COMPLETE signed arithmetic source, not
an independent or unsigned randomized surrogate. -/
theorem importance_originalSignedPair_eq_pickupCross
    (T : ℝ) (w : ℕ → ℝ) (law : PositiveWindowLaw T w) :
    windowPairExpectation T w
      (fun m n => originalSignedPair T m n / (w m * w n)) =
      pickupCross T := by
  rw [windowPairImportance_eq_originalSum T w law]
  rfl

theorem importance_observedSignedPair_eq_packet
    (p : Parameters) (chart T : ℝ)
    (stream : PhysicalStream) (w : ℕ → ℝ)
    (law : PositiveWindowLaw T w) :
    windowPairExpectation T w
      (fun m n => observedSignedPair p chart T stream m n /
        (w m * w n)) = observedPacket p chart T stream := by
  rw [windowPairImportance_eq_originalSum T w law]
  rfl

theorem importance_defectSignedPair_eq_defect
    (p : Parameters) (chart T : ℝ)
    (stream : PhysicalStream) (w : ℕ → ℝ)
    (law : PositiveWindowLaw T w) :
    windowPairExpectation T w
      (fun m n => defectSignedPair p chart T stream m n /
        (w m * w n)) = signedReadoutDefect p chart T stream := by
  rw [windowPairImportance_eq_originalSum T w law]
  rfl

theorem importance_original_signed_return
    (p : Parameters) (chart T : ℝ)
    (stream : PhysicalStream) (w : ℕ → ℝ)
    (law : PositiveWindowLaw T w) :
    windowPairExpectation T w
      (fun m n => originalSignedPair T m n / (w m * w n)) =
      windowPairExpectation T w
        (fun m n => observedSignedPair p chart T stream m n /
          (w m * w n)) +
      windowPairExpectation T w
        (fun m n => defectSignedPair p chart T stream m n /
          (w m * w n)) := by
  rw [importance_originalSignedPair_eq_pickupCross T w law,
    importance_observedSignedPair_eq_packet p chart T stream w law,
    importance_defectSignedPair_eq_defect p chart T stream w law]
  exact pickupCross_eq_observed_add_defect p chart T stream

/-- Full centered variance of the source importance estimator; this
is NOT asserted small even when a bounded bit loss has small TV error. -/
def windowPairVariance (T : ℝ) (w : ℕ → ℝ)
    (f : ℕ → ℕ → ℝ) : ℝ :=
  windowPairExpectation T w
    (fun m n => (f m n - windowPairExpectation T w f) ^ 2)

theorem windowPairVariance_nonneg (T : ℝ) (w : ℕ → ℝ)
    (law : PositiveWindowLaw T w) (f : ℕ → ℕ → ℝ) :
    0 ≤ windowPairVariance T w f := by
  unfold windowPairVariance windowPairExpectation
  apply Finset.sum_nonneg
  intro m hm
  apply Finset.sum_nonneg
  intro n hn
  exact mul_nonneg
    (mul_nonneg (le_of_lt (law.positive m hm))
      (le_of_lt (law.positive n hn)))
    (sq_nonneg _)

/-- Exact variance accounting: second moment MINUS squared mean,
without dropping any ordered cross term inside the source estimator. -/
theorem windowPairVariance_eq_secondMoment_sub_sq
    (T : ℝ) (w : ℕ → ℝ) (law : PositiveWindowLaw T w)
    (f : ℕ → ℕ → ℝ) :
    windowPairVariance T w f =
      windowPairExpectation T w (fun m n => (f m n) ^ 2) -
        (windowPairExpectation T w f) ^ 2 := by
  let μ : ℝ := windowPairExpectation T w f
  have hpoint (m n : ℕ) :
      (f m n - μ) ^ 2 =
        f m n ^ 2 - (2 * μ) * f m n + μ ^ 2 * 1 := by ring
  calc
    windowPairVariance T w f =
        windowPairExpectation T w
          (fun m n => f m n ^ 2 - (2 * μ) * f m n + μ ^ 2 * 1) := by
            unfold windowPairVariance
            apply windowPairExpectation_congr
            intro m hm n hn
            exact hpoint m n
    _ = windowPairExpectation T w (fun m n => f m n ^ 2) -
          (2 * μ) * windowPairExpectation T w f +
          (μ ^ 2) * windowPairExpectation T w (fun _ _ => 1) := by
            rw [windowPairExpectation_add, windowPairExpectation_sub,
              windowPairExpectation_const_mul, windowPairExpectation_const_mul]
    _ = windowPairExpectation T w (fun m n => f m n ^ 2) -
          (windowPairExpectation T w f) ^ 2 := by
            rw [windowPairExpectation_one T w law]
            dsimp [μ]
            ring

def originalSignedPairVariance (T : ℝ) (w : ℕ → ℝ) : ℝ :=
  windowPairVariance T w
    (fun m n => originalSignedPair T m n / (w m * w n))

theorem originalSignedPairVariance_nonneg
    (T : ℝ) (w : ℕ → ℝ) (law : PositiveWindowLaw T w) :
    0 ≤ originalSignedPairVariance T w :=
  windowPairVariance_nonneg T w law _

/-- Exact second-moment debt is explicit; without controlling the
inverse weights, this is not a new quantitative arithmetic estimate. -/
theorem originalSignedPairVariance_eq_secondMoment
    (T : ℝ) (w : ℕ → ℝ) (law : PositiveWindowLaw T w) :
    originalSignedPairVariance T w =
      windowPairExpectation T w
        (fun m n => (originalSignedPair T m n / (w m * w n)) ^ 2) -
          (pickupCross T) ^ 2 := by
  unfold originalSignedPairVariance
  rw [windowPairVariance_eq_secondMoment_sub_sq T w law,
    importance_originalSignedPair_eq_pickupCross T w law]

/-- A full-support actual Gibbs row returns the source and separately
accounts for nonnegative centered importance variance and signed defect. -/
theorem gibbs_importance_and_signed_return
    (T : ℝ)
    (S : Sampler (OriginalWindowIndex T))
    (origin : OriginalWindowIndex T)
    (hfull : ∀ n : OriginalWindowIndex T,
      S.allowed origin n = true)
    (p : Parameters) (chart : ℝ) (stream : PhysicalStream) :
    let w := windowGibbsWeight T S origin
    (windowPairExpectation T w
        (fun m n => originalSignedPair T m n / (w m * w n)) =
      pickupCross T) ∧
    (0 ≤ originalSignedPairVariance T w) ∧
    (pickupCross T =
      observedPacket p chart T stream +
        signedReadoutDefect p chart T stream) := by
  let w := windowGibbsWeight T S origin
  have hw : PositiveWindowLaw T w :=
    windowGibbsWeight_isPositiveWindowLaw T S origin hfull
  exact ⟨importance_originalSignedPair_eq_pickupCross T w hw,
    originalSignedPairVariance_nonneg T w hw,
    pickupCross_eq_observed_add_defect p chart T stream⟩

end Folder.Research.ShapePhysicalBitPairSampling
