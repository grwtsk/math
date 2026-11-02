/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.Combinatorics.ShapePhysicalBitHilbertComparator
import GRWTSK.Combinatorics.GraphTheory.FiniteAdmissibleSampler

set_option autoImplicit false
noncomputable section

/-!
# Finite uniform versus Gibbs-random comparison for indexed physical bits

The random law is one ACTUAL normalized transition row of the existing
`FiniteAdmissibleSampler.Sampler`, not an unproved independent or
asymptotic sampling model. The comparison law is the deterministic
uniform average over the very same finite source-index slots.

Each slot reads the EXISTING two-polarization bitfield and original
integer index through `indexedHilbertDistanceSq`. Unavailable samples
(including missing and incorrectly indexed observations) contribute zero
only to the EXPLICITLY MASKED distance statistic, while their
unavailable probability mass is recorded separately. This convention
never changes `observedCoeff`, `readoutError`, `pickupCross`, or
`signedReadoutDefect`. A correctly indexed corrupted record may still
have nonzero source error; index validity alone is not source fidelity.

The output is a finite exact expectation identity and an L1-in-law
discrepancy bound. No independence, concentration, cusp convergence,
dissociated-support randomisation, or Möbius cancellation is asserted.
-/

namespace Folder.Research.ShapePhysicalBitFiniteSampling

open Carrier
open Mathematics.Cubical
open ShapePhysicalBitTransport
open ShapePhysicalBitHilbertComparator
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteAdmissibleSampler
open GRWTSK.DifferentialGeometry.GodelObserverMetricVorticity
open GRWTSK.NumberTheory.Moebius.PhysicalBitGramReturn

/-- The existing Gibbs sampler specialized to a genuinely uniform
finite row: every transition is allowed, and all costs are zero. -/
def uniformSampler (N : ℕ) (hN : 0 < N) : Sampler (Fin N) where
  allowed := fun _ _ => true
  arcCost := fun _ _ => 0
  beta := 0
  beta_nonneg := by norm_num
  arcCost_nonneg := by intro _ _; norm_num
  outgoing := by
    intro _
    exact ⟨⟨0, hN⟩, rfl⟩

/-- The Gibbs probability row is exactly the uniform finite law. -/
theorem uniformSampler_probability (N : ℕ) (hN : 0 < N)
    (origin target : Fin N) :
    (uniformSampler N hN).probability origin target = (N : ℝ)⁻¹ := by
  simp [Sampler.probability, Sampler.weight, Sampler.partition, uniformSampler]

/-- An exact finite expectation using an existing normalized Gibbs row. -/
def sampledExpectation {N : ℕ}
    (S : Sampler (Fin N)) (origin : Fin N)
    (f : Fin N → ℝ) : ℝ :=
  ∑ i, S.probability origin i * f i

/-- Deterministic uniform average on the same finite index slots.
The sum is a probability mean when N is positive; for N = 0 it is 0. -/
def uniformAverage {N : ℕ} (f : Fin N → ℝ) : ℝ :=
  ∑ i, (N : ℝ)⁻¹ * f i

/-- The original sampler, rather than an independent normalization axiom,
certifies that the random row has total probability one. -/
theorem sampledExpectation_one {N : ℕ}
    (S : Sampler (Fin N)) (origin : Fin N) :
    sampledExpectation S origin (fun _ => (1 : ℝ)) = 1 := by
  simpa [sampledExpectation] using S.probability_row_sum_one origin

/-- The deterministic average is exactly the expectation against the
specialized existing uniform Gibbs row. -/
theorem uniformSampler_expectation (N : ℕ) (hN : 0 < N)
    (origin : Fin N) (f : Fin N → ℝ) :
    sampledExpectation (uniformSampler N hN) origin f = uniformAverage f := by
  unfold sampledExpectation uniformAverage
  apply Finset.sum_congr rfl
  intro i _
  rw [uniformSampler_probability]

theorem uniformAverage_one (N : ℕ) (hN : 0 < N) (origin : Fin N) :
    uniformAverage (fun _ : Fin N => (1 : ℝ)) = 1 := by
  calc
    uniformAverage (fun _ : Fin N => (1 : ℝ)) =
        sampledExpectation (uniformSampler N hN) origin (fun _ => 1) :=
      (uniformSampler_expectation N hN origin _).symm
    _ = 1 := sampledExpectation_one _ _

/-- The L1 difference between the actual one-step Gibbs law and the
uniform finite law. It is not silently called a TV distance: TV is half
this quantity on a normalized finite probability space. -/
def probabilityL1Gap {N : ℕ}
    (S : Sampler (Fin N)) (origin : Fin N) : ℝ :=
  ∑ i, |S.probability origin i - (N : ℝ)⁻¹|

theorem probabilityL1Gap_nonneg {N : ℕ}
    (S : Sampler (Fin N)) (origin : Fin N) :
    0 ≤ probabilityL1Gap S origin := by
  unfold probabilityL1Gap
  exact Finset.sum_nonneg (fun _ _ => abs_nonneg _)

/-- Exact finite expectation difference, without any probabilistic
independence or limiting argument. -/
theorem sampled_sub_uniform_eq_sum {N : ℕ}
    (S : Sampler (Fin N)) (origin : Fin N) (f : Fin N → ℝ) :
    sampledExpectation S origin f - uniformAverage f =
      ∑ i, (S.probability origin i - (N : ℝ)⁻¹) * f i := by
  unfold sampledExpectation uniformAverage
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro i _
  ring

/-- Every function bounded in absolute value by 1 has finite
uniform-versus-random expectation discrepancy at most the actual
row-to-uniform L1 gap. This bound needs no independent draws. -/
theorem sampled_sub_uniform_abs_le_L1 {N : ℕ}
    (S : Sampler (Fin N)) (origin : Fin N)
    (f : Fin N → ℝ) (hf : ∀ i, |f i| ≤ 1) :
    |sampledExpectation S origin f - uniformAverage f| ≤
      probabilityL1Gap S origin := by
  rw [sampled_sub_uniform_eq_sum]
  unfold probabilityL1Gap
  calc
    |∑ i : Fin N, (S.probability origin i - (N : ℝ)⁻¹) * f i| ≤
        ∑ i : Fin N, |(S.probability origin i - (N : ℝ)⁻¹) * f i| :=
      Finset.abs_sum_le_sum_abs _ _
    _ = ∑ i : Fin N,
          |S.probability origin i - (N : ℝ)⁻¹| * |f i| := by
      simp only [abs_mul]
    _ ≤ ∑ i : Fin N, |S.probability origin i - (N : ℝ)⁻¹| := by
      apply Finset.sum_le_sum
      intro i _
      simpa using mul_le_mul_of_nonneg_left (hf i)
        (abs_nonneg (S.probability origin i - (N : ℝ)⁻¹))

/-- The actual two-bit Hamming count never exceeds its TWO coordinates.
No bound is claimed here for a spectral tensor metric. -/
theorem hammingCount_two_le (b c : StableBitfield 2) :
    hammingCount b c ≤ 2 := by
  unfold hammingCount
  calc
    (∑ i : Fin 2, if b i ≠ c i then (1 : ℕ) else 0) ≤
        ∑ _i : Fin 2, (1 : ℕ) := by
      apply Finset.sum_le_sum
      intro i _
      split_ifs <;> omega
    _ = 2 := by simp

/-- Squared Hilbert distance between two physical two-bit words is
nonnegative and at most 2, precisely because it is Hamming distance. -/
theorem hilbertDistanceSq_two_bounds (b c : StableBitfield 2) :
    0 ≤ hilbertDistanceSq b c ∧ hilbertDistanceSq b c ≤ 2 := by
  rw [hilbertDistanceSq_eq_hamming]
  constructor
  · exact Nat.cast_nonneg _
  · exact_mod_cast hammingCount_two_le b c

/-- Any available indexed Hilbert comparison has genuine two-bit
distance, never an arbitrary externally chosen loss value. -/
theorem indexedHilbertDistanceSq_bounds (p : Parameters)
    {base : GridShape} {k level width : ℕ}
    (X Y : ObservedShapeState base k level width) (index : ℕ)
    (d : ℝ) (hd : indexedHilbertDistanceSq p X Y index = some d) :
    0 ≤ d ∧ d ≤ 2 := by
  unfold indexedHilbertDistanceSq at hd
  cases hx : indexedBits p X index with
  | none =>
      simp [hx] at hd
  | some x =>
      rcases x with ⟨ix, b⟩
      cases hy : indexedBits p Y index with
      | none =>
          simp [hx, hy] at hd
      | some y =>
          rcases y with ⟨iy, c⟩
          by_cases hv : ix = index ∧ iy = index
          · simp [hx, hy, hv] at hd
            rw [← hd]
            exact hilbertDistanceSq_two_bounds b c
          · simp [hx, hy, hv] at hd

/-- A masked normalized distance uses d/2 for a present correctly
indexed pair and zero for unavailable pairs. Its zero is NOT evidence
of a correct source coefficient: unavailable mass is tracked separately. -/
def maskedNormalizedLoss (p : Parameters)
    {base : GridShape} {k level width : ℕ}
    (X Y : ObservedShapeState base k level width) (index : ℕ) : ℝ :=
  match indexedHilbertDistanceSq p X Y index with
  | none => 0
  | some d => d / 2

/-- The separate unavailable indicator is 1 for a missing or
incorrectly indexed pair and 0 for an available index-valid pair. -/
def unavailableIndicator (p : Parameters)
    {base : GridShape} {k level width : ℕ}
    (X Y : ObservedShapeState base k level width) (index : ℕ) : ℝ :=
  match indexedHilbertDistanceSq p X Y index with
  | none => 1
  | some _ => 0

/-- Actual two-bit Hilbert normalization yields an unconditional
finite range 0 ≤ masked loss ≤ 1. -/
theorem maskedNormalizedLoss_bounds (p : Parameters)
    {base : GridShape} {k level width : ℕ}
    (X Y : ObservedShapeState base k level width) (index : ℕ) :
    0 ≤ maskedNormalizedLoss p X Y index ∧
      maskedNormalizedLoss p X Y index ≤ 1 := by
  cases h : indexedHilbertDistanceSq p X Y index with
  | none =>
      simp [maskedNormalizedLoss, h]
  | some d =>
      obtain ⟨hd0, hd2⟩ := indexedHilbertDistanceSq_bounds p X Y index d h
      constructor
      · simp [maskedNormalizedLoss, h]
        linarith
      · simp [maskedNormalizedLoss, h]
        linarith

theorem maskedNormalizedLoss_abs_le_one (p : Parameters)
    {base : GridShape} {k level width : ℕ}
    (X Y : ObservedShapeState base k level width) (index : ℕ) :
    |maskedNormalizedLoss p X Y index| ≤ 1 := by
  obtain ⟨h0, h1⟩ := maskedNormalizedLoss_bounds p X Y index
  simpa [abs_of_nonneg h0] using h1

theorem unavailableIndicator_abs_le_one (p : Parameters)
    {base : GridShape} {k level width : ℕ}
    (X Y : ObservedShapeState base k level width) (index : ℕ) :
    |unavailableIndicator p X Y index| ≤ 1 := by
  cases h : indexedHilbertDistanceSq p X Y index with
  | none => simp [unavailableIndicator, h]
  | some d => simp [unavailableIndicator, h]

/-- Shells may differ; the original indexed Hamming statistic is
unchanged because the original records and both polarizations survive. -/
@[simp] theorem maskedNormalizedLoss_lift (p : Parameters)
    (base : GridShape) (k : ℕ) {level width : ℕ}
    (P Q : ShapeStepPayload base k level)
    (X Y : ObservedShapeState base k level width) (index : ℕ) :
    maskedNormalizedLoss p (lift base k P X) (lift base k Q Y) index =
      maskedNormalizedLoss p X Y index := by
  simp [maskedNormalizedLoss, indexedHilbertDistanceSq_lift]

@[simp] theorem unavailableIndicator_lift (p : Parameters)
    (base : GridShape) (k : ℕ) {level width : ℕ}
    (P Q : ShapeStepPayload base k level)
    (X Y : ObservedShapeState base k level width) (index : ℕ) :
    unavailableIndicator p (lift base k P X) (lift base k Q Y) index =
      unavailableIndicator p X Y index := by
  simp [unavailableIndicator, indexedHilbertDistanceSq_lift]

/-- Observer-coordinate shifts preserve the normalized finite
comparison and its unavailable status, not an arbitrary bundle metric. -/
@[simp] theorem maskedNormalizedLoss_shift (p : Parameters) (s : ℝ)
    {base : GridShape} {k level width : ℕ}
    (X Y : ObservedShapeState base k level width) (index : ℕ) :
    maskedNormalizedLoss p (shift s X) (shift s Y) index =
      maskedNormalizedLoss p X Y index := by
  simp [maskedNormalizedLoss, indexedHilbertDistanceSq_shift]

@[simp] theorem unavailableIndicator_shift (p : Parameters) (s : ℝ)
    {base : GridShape} {k level width : ℕ}
    (X Y : ObservedShapeState base k level width) (index : ℕ) :
    unavailableIndicator p (shift s X) (shift s Y) index =
      unavailableIndicator p X Y index := by
  simp [unavailableIndicator, indexedHilbertDistanceSq_shift]

/-- Use the ACTUAL original integer index at each finite sampling
slot, with no identification of the slot index and source index. -/
def randomMaskedLoss {N : ℕ} {base : GridShape} {k level width : ℕ}
    (S : Sampler (Fin N)) (origin : Fin N) (p : Parameters)
    (X Y : ObservedShapeState base k level width)
    (sourceIndex : Fin N → ℕ) : ℝ :=
  sampledExpectation S origin
    (fun i => maskedNormalizedLoss p X Y (sourceIndex i))

def uniformMaskedLoss {N : ℕ} {base : GridShape} {k level width : ℕ}
    (p : Parameters) (X Y : ObservedShapeState base k level width)
    (sourceIndex : Fin N → ℕ) : ℝ :=
  uniformAverage (fun i : Fin N => maskedNormalizedLoss p X Y (sourceIndex i))

/-- The unavailable-mass statistic is kept separate from zero-valued
valid Hamming observations and from the signed arithmetic readout error. -/
def randomUnavailableMass {N : ℕ} {base : GridShape} {k level width : ℕ}
    (S : Sampler (Fin N)) (origin : Fin N) (p : Parameters)
    (X Y : ObservedShapeState base k level width)
    (sourceIndex : Fin N → ℕ) : ℝ :=
  sampledExpectation S origin
    (fun i => unavailableIndicator p X Y (sourceIndex i))

def uniformUnavailableMass {N : ℕ} {base : GridShape} {k level width : ℕ}
    (p : Parameters) (X Y : ObservedShapeState base k level width)
    (sourceIndex : Fin N → ℕ) : ℝ :=
  uniformAverage (fun i : Fin N => unavailableIndicator p X Y (sourceIndex i))

/-- The actual Gibbs-versus-uniform mean bit-loss discrepancy is bounded
by the actual finite L1 probability-law discrepancy, without independence. -/
theorem random_uniform_maskedLoss_abs_le_L1
    {N : ℕ} {base : GridShape} {k level width : ℕ}
    (S : Sampler (Fin N)) (origin : Fin N) (p : Parameters)
    (X Y : ObservedShapeState base k level width)
    (sourceIndex : Fin N → ℕ) :
    |randomMaskedLoss S origin p X Y sourceIndex -
        uniformMaskedLoss p X Y sourceIndex| ≤
      probabilityL1Gap S origin := by
  exact sampled_sub_uniform_abs_le_L1 S origin
    (fun i => maskedNormalizedLoss p X Y (sourceIndex i))
    (fun i => maskedNormalizedLoss_abs_le_one p X Y (sourceIndex i))

/-- The probability mass of unavailable observations satisfies the
same unconditional finite law-comparison bound. -/
theorem random_uniform_unavailableMass_abs_le_L1
    {N : ℕ} {base : GridShape} {k level width : ℕ}
    (S : Sampler (Fin N)) (origin : Fin N) (p : Parameters)
    (X Y : ObservedShapeState base k level width)
    (sourceIndex : Fin N → ℕ) :
    |randomUnavailableMass S origin p X Y sourceIndex -
        uniformUnavailableMass p X Y sourceIndex| ≤
      probabilityL1Gap S origin := by
  exact sampled_sub_uniform_abs_le_L1 S origin
    (fun i => unavailableIndicator p X Y (sourceIndex i))
    (fun i => unavailableIndicator_abs_le_one p X Y (sourceIndex i))

/-- Even when the shells differ, the entire Gibbs sample statistic
is exactly preserved; no spectral isometry is inferred. -/
theorem randomMaskedLoss_lift
    {N : ℕ} (base : GridShape) (k : ℕ) {level width : ℕ}
    (S : Sampler (Fin N)) (origin : Fin N) (p : Parameters)
    (P Q : ShapeStepPayload base k level)
    (X Y : ObservedShapeState base k level width)
    (sourceIndex : Fin N → ℕ) :
    randomMaskedLoss S origin p (lift base k P X) (lift base k Q Y) sourceIndex =
      randomMaskedLoss S origin p X Y sourceIndex := by
  simp [randomMaskedLoss, sampledExpectation, maskedNormalizedLoss_lift]

theorem uniformMaskedLoss_lift
    {N : ℕ} (base : GridShape) (k : ℕ) {level width : ℕ}
    (p : Parameters) (P Q : ShapeStepPayload base k level)
    (X Y : ObservedShapeState base k level width)
    (sourceIndex : Fin N → ℕ) :
    uniformMaskedLoss p (lift base k P X) (lift base k Q Y) sourceIndex =
      uniformMaskedLoss p X Y sourceIndex := by
  simp [uniformMaskedLoss, uniformAverage, maskedNormalizedLoss_lift]

theorem randomUnavailableMass_lift
    {N : ℕ} (base : GridShape) (k : ℕ) {level width : ℕ}
    (S : Sampler (Fin N)) (origin : Fin N) (p : Parameters)
    (P Q : ShapeStepPayload base k level)
    (X Y : ObservedShapeState base k level width)
    (sourceIndex : Fin N → ℕ) :
    randomUnavailableMass S origin p (lift base k P X) (lift base k Q Y)
        sourceIndex = randomUnavailableMass S origin p X Y sourceIndex := by
  simp [randomUnavailableMass, sampledExpectation, unavailableIndicator_lift]

/-- Both physical bit streams may be shifted together, preserving
the same original integer sampling positions and exact finite loss. -/
theorem randomMaskedLoss_shift
    {N : ℕ} {base : GridShape} {k level width : ℕ}
    (S : Sampler (Fin N)) (origin : Fin N) (p : Parameters) (s : ℝ)
    (X Y : ObservedShapeState base k level width)
    (sourceIndex : Fin N → ℕ) :
    randomMaskedLoss S origin p (shift s X) (shift s Y) sourceIndex =
      randomMaskedLoss S origin p X Y sourceIndex := by
  simp [randomMaskedLoss, sampledExpectation, maskedNormalizedLoss_shift]

theorem uniformMaskedLoss_shift
    {N : ℕ} {base : GridShape} {k level width : ℕ}
    (p : Parameters) (s : ℝ)
    (X Y : ObservedShapeState base k level width)
    (sourceIndex : Fin N → ℕ) :
    uniformMaskedLoss p (shift s X) (shift s Y) sourceIndex =
      uniformMaskedLoss p X Y sourceIndex := by
  simp [uniformMaskedLoss, uniformAverage, maskedNormalizedLoss_shift]

theorem randomUnavailableMass_shift
    {N : ℕ} {base : GridShape} {k level width : ℕ}
    (S : Sampler (Fin N)) (origin : Fin N) (p : Parameters) (s : ℝ)
    (X Y : ObservedShapeState base k level width)
    (sourceIndex : Fin N → ℕ) :
    randomUnavailableMass S origin p (shift s X) (shift s Y) sourceIndex =
      randomUnavailableMass S origin p X Y sourceIndex := by
  simp [randomUnavailableMass, sampledExpectation, unavailableIndicator_shift]

/-- If the Gibbs row is itself uniform, its random and deterministic
finite means agree EXACTLY, even for unavailable indexed observations. -/
theorem randomMaskedLoss_uniformSampler
    {base : GridShape} {k level width : ℕ}
    (N : ℕ) (hN : 0 < N) (origin : Fin N) (p : Parameters)
    (X Y : ObservedShapeState base k level width)
    (sourceIndex : Fin N → ℕ) :
    randomMaskedLoss (uniformSampler N hN) origin p X Y sourceIndex =
      uniformMaskedLoss p X Y sourceIndex :=
  uniformSampler_expectation N hN origin _

theorem probabilityL1Gap_uniformSampler
    (N : ℕ) (hN : 0 < N) (origin : Fin N) :
    probabilityL1Gap (uniformSampler N hN) origin = 0 := by
  simp [probabilityL1Gap, uniformSampler_probability]

/-- A source-exact return travels alongside the finite random-versus-
uniform comparator. A small sampling-law gap DOES NOT by itself bound
the complete signed Möbius packet or its independent signed defect. -/
theorem sampled_comparison_with_original_signed_return
    {N : ℕ} {base : GridShape} {k level width : ℕ}
    (S : Sampler (Fin N)) (origin : Fin N) (p : Parameters)
    (chart T : ℝ) (X Y : ObservedShapeState base k level width)
    (sourceIndex : Fin N → ℕ) :
    (|randomMaskedLoss S origin p X Y sourceIndex -
         uniformMaskedLoss p X Y sourceIndex| ≤ probabilityL1Gap S origin) ∧
      (pickupCross T = packet p chart T X + defect p chart T X) :=
  ⟨random_uniform_maskedLoss_abs_le_L1 S origin p X Y sourceIndex,
    pickupCross_eq_packet_add_defect p chart T X⟩

end Folder.Research.ShapePhysicalBitFiniteSampling
