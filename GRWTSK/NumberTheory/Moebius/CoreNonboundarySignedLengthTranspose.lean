/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #678. Parent: draft PR #676 at
`fdb885abbcc648bff0b2531c49038968fdab18a6`.
-/
import GRWTSK.NumberTheory.Moebius.CoreNonboundaryReciprocalSquareL1

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Signed terminal contribution with only the exceptional maximal active
length removed. -/
def coreNonboundarySignedTerminalContribution
    (j t : ℕ) : ℝ :=
  if harmonicShiftCount j t = 2 ^ j then 0 else
    harmonicTerminalCumulativeContribution j t

/-- Exact signed long-interior second-Abel sum, before the outer factor two. -/
def harmonicSignedLongInteriorContribution
    (j t : ℕ) : ℝ :=
  ∑ k ∈ (Finset.range (harmonicShiftCount j t - 1)).filter
      (fun k => logarithmicShiftThreshold j ≤ k + 1),
    cumulativeHarmonicShiftCorrelation j t (k + 1) *
      harmonicShiftSecondDifference j t k

/-- Removing the signed boundary terminal term leaves exactly the remaining
terminal term plus the signed long-interior second-Abel sum. -/
theorem coreNonboundarySignedDepthRemainder_eq_terminal_add_interior
    (j t : ℕ) :
    coreNonboundarySignedDepthRemainder j t =
      2 * (coreNonboundarySignedTerminalContribution j t +
        harmonicSignedLongInteriorContribution j t) := by
  unfold coreNonboundarySignedDepthRemainder
  rw [logarithmicLongDepthRemainder_eq_terminal_add_longInterior]
  unfold coreBoundarySignedDepthContribution
    coreNonboundarySignedTerminalContribution
    harmonicSignedLongInteriorContribution
    harmonicCumulativeLongContribution
  have hY :
      (0 : ℝ) < ((2 ^ (j + 1) : ℕ) : ℝ) := by positivity
  by_cases hboundary : harmonicShiftCount j t = 2 ^ j
  · rw [if_pos hboundary, if_pos hboundary]
    field_simp [ne_of_gt hY]
    ring
  · rw [if_neg hboundary, if_neg hboundary, sub_zero]
    field_simp [ne_of_gt hY]
    ring

private theorem sum_succ_range_filter_eq_Ico_signed
    (F : ℕ → ℝ) {H N : ℕ} (hHN : H ≤ N) :
    (∑ k ∈ (Finset.range (N - 1)).filter (fun k => H ≤ k + 1),
      F (k + 1)) =
      ∑ n ∈ Finset.Ico H N, F n := by
  classical
  apply Finset.sum_bij (fun k _ => k + 1)
  · intro k hk
    simp only [Finset.mem_filter, Finset.mem_range] at hk
    simp only [Finset.mem_Ico]
    constructor
    · exact hk.2
    · omega
  · intro k₁ hk₁ k₂ hk₂ h
    omega
  · intro n hn
    simp only [Finset.mem_Ico] at hn
    refine ⟨n - 1, ?_, ?_⟩
    · simp only [Finset.mem_filter, Finset.mem_range]
      constructor <;> omega
    · omega
  · intro k hk
    rfl

/-- Exact retained-length selector identity for the signed non-boundary
terminal term at one genuine core depth. -/
theorem coreNonboundarySignedTerminalContribution_eq_selector
    {j t : ℕ}
    (hcore : t ∈ coreLongDeepDepths j) :
    coreNonboundarySignedTerminalContribution j t =
      ∑ n ∈ Finset.Ico (logarithmicShiftThreshold j) (2 ^ j),
        cumulativeHarmonicShiftCorrelation j t n *
          coreTerminalLengthCoefficient j t n := by
  have hN :
      logarithmicShiftThreshold j ≤ harmonicShiftCount j t := by
    simpa [coreLongDeepDepths] using
      (Finset.mem_filter.mp hcore).2
  have hNle : harmonicShiftCount j t ≤ 2 ^ j :=
    harmonicShiftCount_le_leftScale j t
  have hHpos : 0 < logarithmicShiftThreshold j := by
    unfold logarithmicShiftThreshold
    omega
  have hNpos : 0 < harmonicShiftCount j t :=
    lt_of_lt_of_le hHpos hN
  unfold coreNonboundarySignedTerminalContribution
  by_cases hboundary : harmonicShiftCount j t = 2 ^ j
  · rw [if_pos hboundary]
    apply Finset.sum_eq_zero
    intro n hn
    simp only [Finset.mem_Ico] at hn
    unfold coreTerminalLengthCoefficient
    simp [hboundary, hn.2.ne]
  · rw [if_neg hboundary]
    unfold harmonicTerminalCumulativeContribution
    rw [if_neg (Nat.ne_of_gt hNpos)]
    classical
    rw [Finset.sum_eq_single (harmonicShiftCount j t)]
    · unfold coreTerminalLengthCoefficient
      simp [hNpos]
    · intro n hn hne
      unfold coreTerminalLengthCoefficient
      simp [hne]
    · simp only [Finset.mem_Ico]
      exact ⟨hN, lt_of_le_of_ne hNle hboundary⟩

/-- Exact retained-length selector identity for the signed long-interior term
at one genuine core depth. -/
theorem harmonicSignedLongInteriorContribution_eq_selector
    {j t : ℕ}
    (hcore : t ∈ coreLongDeepDepths j) :
    harmonicSignedLongInteriorContribution j t =
      ∑ n ∈ Finset.Ico (logarithmicShiftThreshold j) (2 ^ j),
        cumulativeHarmonicShiftCorrelation j t n *
          coreInteriorLengthCoefficient j t n := by
  let H : ℕ := logarithmicShiftThreshold j
  let N : ℕ := harmonicShiftCount j t
  let X : ℕ := 2 ^ j
  have hHN : H ≤ N := by
    simpa [H, N, coreLongDeepDepths] using
      (Finset.mem_filter.mp hcore).2
  have hNX : N ≤ X := by
    simpa [N, X] using harmonicShiftCount_le_leftScale j t
  unfold harmonicSignedLongInteriorContribution
  rw [sum_succ_range_filter_eq_Ico_signed
    (F := fun n =>
      cumulativeHarmonicShiftCorrelation j t n *
        harmonicShiftSecondDifference j t (n - 1)) hHN]
  have hfirst :
      (∑ n ∈ Finset.Ico H N,
        cumulativeHarmonicShiftCorrelation j t n *
          harmonicShiftSecondDifference j t (n - 1)) =
      ∑ n ∈ Finset.Ico H N,
        cumulativeHarmonicShiftCorrelation j t n *
          coreInteriorLengthCoefficient j t n := by
    apply Finset.sum_congr rfl
    intro n hn
    have hnI := Finset.mem_Ico.mp hn
    unfold coreInteriorLengthCoefficient
    simp [H, N, hnI.1, hnI.2]
  rw [hfirst]
  rw [← Finset.sum_Ico_consecutive
    (fun n =>
      cumulativeHarmonicShiftCorrelation j t n *
        coreInteriorLengthCoefficient j t n) hHN hNX]
  have hzero :
      (∑ n ∈ Finset.Ico N X,
        cumulativeHarmonicShiftCorrelation j t n *
          coreInteriorLengthCoefficient j t n) = 0 := by
    apply Finset.sum_eq_zero
    intro n hn
    have hnN : N ≤ n := (Finset.mem_Ico.mp hn).1
    unfold coreInteriorLengthCoefficient
    have hnot : ¬ (logarithmicShiftThreshold j ≤ n ∧
        n < harmonicShiftCount j t) := by
      intro h
      dsimp [N] at hnN
      omega
    simp [hnot]
  rw [hzero, add_zero]

/-- Exact one-depth signed retained-length representation. -/
theorem coreNonboundarySignedDepthRemainder_eq_lengthwise
    {j t : ℕ}
    (hcore : t ∈ coreLongDeepDepths j) :
    coreNonboundarySignedDepthRemainder j t =
      2 * ∑ n ∈ Finset.Ico (logarithmicShiftThreshold j) (2 ^ j),
        cumulativeHarmonicShiftCorrelation j t n *
          (coreTerminalLengthCoefficient j t n +
            coreInteriorLengthCoefficient j t n) := by
  rw [coreNonboundarySignedDepthRemainder_eq_terminal_add_interior,
    coreNonboundarySignedTerminalContribution_eq_selector hcore,
    harmonicSignedLongInteriorContribution_eq_selector hcore]
  rw [← Finset.sum_add_distrib]
  apply congrArg (fun x : ℝ => 2 * x)
  apply Finset.sum_congr rfl
  intro n _hn
  ring

/-- Signed retained-length slice after summing every core depth. -/
def coreNonboundarySignedLengthSlice
    (j n : ℕ) : ℝ :=
  2 * ∑ t ∈ coreLongDeepDepths j,
    cumulativeHarmonicShiftCorrelation j t n *
      (coreTerminalLengthCoefficient j t n +
        coreInteriorLengthCoefficient j t n)

/-- Complete signed non-boundary retained-length packet.  Absolute value is
not introduced until after both the depth and retained-length sums. -/
def coreNonboundarySignedLengthPacket
    (j : ℕ) : ℝ :=
  ∑ n ∈ Finset.Ico (logarithmicShiftThreshold j) (2 ^ j),
    coreNonboundarySignedLengthSlice j n

/-- The packet-level non-boundary remainder is the sum of its exact signed
depth remainders. -/
theorem coreNonboundarySignedRemainderPacket_eq_sum_depth
    (j : ℕ) :
    coreNonboundarySignedRemainderPacket j =
      ∑ t ∈ coreLongDeepDepths j,
        coreNonboundarySignedDepthRemainder j t := by
  unfold coreNonboundarySignedRemainderPacket
    coreLongDeepRemainderPacket coreBoundarySignedPacket
    coreNonboundarySignedDepthRemainder
  rw [Finset.sum_sub_distrib]

/-- Exact outer finite Fubini across depth and retained length. -/
theorem coreNonboundarySignedRemainderPacket_eq_lengthPacket
    (j : ℕ) :
    coreNonboundarySignedRemainderPacket j =
      coreNonboundarySignedLengthPacket j := by
  rw [coreNonboundarySignedRemainderPacket_eq_sum_depth]
  unfold coreNonboundarySignedLengthPacket
    coreNonboundarySignedLengthSlice
  have hdepth :
      (∑ t ∈ coreLongDeepDepths j,
        coreNonboundarySignedDepthRemainder j t) =
      ∑ t ∈ coreLongDeepDepths j,
        2 * ∑ n ∈ Finset.Ico (logarithmicShiftThreshold j) (2 ^ j),
          cumulativeHarmonicShiftCorrelation j t n *
            (coreTerminalLengthCoefficient j t n +
              coreInteriorLengthCoefficient j t n) := by
    apply Finset.sum_congr rfl
    intro t ht
    rw [coreNonboundarySignedDepthRemainder_eq_lengthwise ht]
  rw [hdepth, ← Finset.mul_sum, Finset.sum_comm]

/-- Canonical signed non-boundary supplier. -/
def SubpolynomialCoreNonboundarySignedLengthPacket : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      |coreNonboundarySignedLengthPacket j| ≤
        C * (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- The positive reciprocal-square L1 source from #673 is one sufficient route
into the weaker signed retained-length supplier. -/
theorem subpolynomialCoreNonboundarySignedLengthPacket_of_reciprocalSquareL1
    (hReciprocal :
      SubpolynomialReciprocalSquareAmbientShortIntervalL1Packet) :
    SubpolynomialCoreNonboundarySignedLengthPacket := by
  have hL1 :=
    subpolynomialCoreNonboundaryShortIntervalL1Packet_of_reciprocalSquare
      hReciprocal
  intro δ hδ
  obtain ⟨C, hC, hbound⟩ := hL1 δ hδ
  refine ⟨C, hC, ?_⟩
  intro j
  rw [← coreNonboundarySignedRemainderPacket_eq_lengthPacket]
  exact le_trans
    (abs_coreNonboundarySignedRemainderPacket_le_l1 j)
    (hbound j)

/-- Boundary control plus the exact signed non-boundary length supplier gives
the complete signed core remainder. -/
theorem subpolynomialCoreLongDeepRemainderPacket_of_boundary_and_signedLength
    (hBoundary : SubpolynomialCoreBoundarySignedPacket)
    (hNonboundary : SubpolynomialCoreNonboundarySignedLengthPacket) :
    SubpolynomialCoreLongDeepRemainderPacket := by
  intro δ hδ
  obtain ⟨Cb, hCb, hb⟩ := hBoundary δ hδ
  obtain ⟨Cn, hCn, hn⟩ := hNonboundary δ hδ
  refine ⟨Cb + Cn, add_nonneg hCb hCn, ?_⟩
  intro j
  rw [coreLongDeepRemainderPacket_eq_boundary_add_nonboundary,
    coreNonboundarySignedRemainderPacket_eq_lengthPacket]
  calc
    coreBoundarySignedPacket j + coreNonboundarySignedLengthPacket j ≤
      |coreBoundarySignedPacket j| +
        |coreNonboundarySignedLengthPacket j| := by
      exact add_le_add (le_abs_self _) (le_abs_self _)
    _ ≤ Cb * (((2 ^ j : ℕ) : ℝ) ^ δ) +
        Cn * (((2 ^ j : ℕ) : ℝ) ^ δ) := by
      exact add_le_add (hb j) (hn j)
    _ = (Cb + Cn) * (((2 ^ j : ℕ) : ℝ) ^ δ) := by ring

/-- Exact conditional endpoint with classical Weak Mertens on the exceptional
boundary and signed cancellation retained throughout the non-boundary packet. -/
theorem riemannHypothesis_of_classicalWeakMertensStep_and_signedLength
    (hBoundary : ClassicalWeakMertensStepSource)
    (hNonboundary : SubpolynomialCoreNonboundarySignedLengthPacket) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialCoreLongDeepRemainderPacket
    (subpolynomialCoreLongDeepRemainderPacket_of_boundary_and_signedLength
      (subpolynomialCoreBoundarySignedPacket_of_classicalWeakMertensStep
        hBoundary)
      hNonboundary)

/-- Finite hostile witness: cancellation across retained lengths can be exact
while the corresponding positive L1 replacement is strictly positive. -/
theorem signedRetainedLengthCancellation_hostileWitness :
    (1 : ℝ) + (-1 : ℝ) = 0 ∧
      |(1 : ℝ)| + |(-1 : ℝ)| = 2 := by
  norm_num

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreNonboundarySignedDepthRemainder_eq_lengthwise
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreNonboundarySignedRemainderPacket_eq_lengthPacket
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.subpolynomialCoreNonboundarySignedLengthPacket_of_reciprocalSquareL1
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_classicalWeakMertensStep_and_signedLength
