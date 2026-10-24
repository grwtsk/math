# Complete source: GRWTSK.NumberTheory.Moebius.CoreGrowingShiftFirstDifference

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3eeb984404cfdf422b21d0f0d93855e1ab312327` · SHA-256 `bfeb1ac0f9bd287abb91e663442fd31f9ea2fdac3a5b0b35e6b8484ffd5d10ae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #688. Parent: draft PR #686 at
`38de323c5d09c8b808f77074b8dde2fc8daf7a76`.
-/
import GRWTSK.NumberTheory.Moebius.CoreNonboundarySignedMertensCells

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Truncated finite Abel telescope.  The terminal cumulative term plus the
second-difference tail on `[H,N)` equals one anchor cumulative term at `H`
plus the original first-difference tail on `[H,N)`. -/
theorem finite_cumulative_second_to_first_tail
    (c q : ℕ → ℝ) {H N : ℕ}
    (hH : 0 < H)
    (hHN : H ≤ N) :
    (∑ r ∈ Finset.range N, c r) * (q (N - 1) - q N) +
        ∑ n ∈ Finset.Ico H N,
          (∑ r ∈ Finset.range n, c r) *
            ((q (n - 1) - q n) - (q n - q (n + 1))) =
      (∑ r ∈ Finset.range H, c r) * (q (H - 1) - q H) +
        ∑ k ∈ Finset.Ico H N,
          c k * (q k - q (k + 1)) := by
  induction N, hHN using Nat.le_induction with
  | base =>
      simp
  | succ N hHN ih =>
      rw [Finset.sum_range_succ,
        Finset.sum_Ico_succ_top hHN,
        Finset.sum_Ico_succ_top hHN]
      rw [ih]
      have hNpos : 0 < N := lt_of_lt_of_le hH hHN
      have hsub : N + 1 - 1 = N := by omega
      rw [hsub]
      ring

private theorem sum_succ_range_filter_eq_Ico_growing
    (F : ℕ → ℝ) {H N : ℕ}
    (hHN : H ≤ N) :
    (∑ k ∈ (Finset.range (N - 1)).filter (fun k => H ≤ k + 1),
      F (k + 1)) =
      ∑ n ∈ Finset.Ico H N, F n := by
  classical
  apply Finset.sum_bij (fun k _ => k + 1)
  · intro k hk
    simp only [Finset.mem_filter, Finset.mem_range] at hk
    simp only [Finset.mem_Ico]
    exact ⟨hk.2, by omega⟩
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

/-- Signed anchor left after truncating the first-difference packet at the
logarithmic retained-length threshold. -/
def coreGrowingShiftAnchor
    (j t : ℕ) : ℝ :=
  cumulativeHarmonicShiftCorrelation
      j t (logarithmicShiftThreshold j) *
    harmonicShiftFirstDifference
      j t (logarithmicShiftThreshold j - 1)

/-- Explicit growing-shift binary Möbius tail.  The shift
`harmonicShiftLower j t + k` varies throughout the exact active range; no
absolute value is inserted. -/
def coreGrowingShiftFirstDifferenceTail
    (j t : ℕ) : ℝ :=
  ∑ k ∈ Finset.Ico (logarithmicShiftThreshold j)
      (harmonicShiftCount j t),
    mertensTwoPointPrefix
        (harmonicShiftLower j t + k) (t + 1) *
      harmonicShiftFirstDifference j t k

/-- One-depth signed packet in first-difference growing-shift coordinates. -/
def coreGrowingShiftFirstDifferenceDepth
    (j t : ℕ) : ℝ :=
  2 * (coreGrowingShiftAnchor j t +
    coreGrowingShiftFirstDifferenceTail j t)

/-- The normalized long remainder is exactly terminal plus the signed interior
second-Abel contribution. -/
theorem logarithmicLongDepthRemainder_eq_terminal_add_signedInterior
    (j t : ℕ) :
    logarithmicLongDepthRemainder j t =
      2 * (harmonicTerminalCumulativeContribution j t +
        harmonicSignedLongInteriorContribution j t) := by
  rw [logarithmicLongDepthRemainder_eq_terminal_add_longInterior]
  unfold harmonicSignedLongInteriorContribution
    harmonicCumulativeLongContribution
  let YR : ℝ := ((2 ^ (j + 1) : ℕ) : ℝ)
  have hYR : 0 < YR := by
    dsimp [YR]
    positivity
  field_simp [ne_of_gt hYR]
  ring

/-- At one genuine core depth, the terminal cumulative coefficient and the
second-difference interior telescope exactly to the logarithmic anchor plus the
explicit growing-shift first-difference tail. -/
theorem harmonicTerminal_add_signedInterior_eq_growingShift
    {j t : ℕ}
    (hcore : t ∈ coreLongDeepDepths j) :
    harmonicTerminalCumulativeContribution j t +
        harmonicSignedLongInteriorContribution j t =
      coreGrowingShiftAnchor j t +
        coreGrowingShiftFirstDifferenceTail j t := by
  have hHN :
      logarithmicShiftThreshold j ≤ harmonicShiftCount j t := by
    simpa [coreLongDeepDepths] using
      (Finset.mem_filter.mp hcore).2
  have hHpos : 0 < logarithmicShiftThreshold j := by
    unfold logarithmicShiftThreshold
    omega
  have hNpos : 0 < harmonicShiftCount j t :=
    lt_of_lt_of_le hHpos hHN
  unfold harmonicTerminalCumulativeContribution
  rw [if_neg (Nat.ne_of_gt hNpos)]
  unfold harmonicSignedLongInteriorContribution
  rw [sum_succ_range_filter_eq_Ico_growing
    (F := fun n =>
      cumulativeHarmonicShiftCorrelation j t n *
        harmonicShiftSecondDifference j t (n - 1)) hHN]
  have hinterior :
      (∑ n ∈ Finset.Ico (logarithmicShiftThreshold j)
          (harmonicShiftCount j t),
        cumulativeHarmonicShiftCorrelation j t n *
          harmonicShiftSecondDifference j t (n - 1)) =
      ∑ n ∈ Finset.Ico (logarithmicShiftThreshold j)
          (harmonicShiftCount j t),
        cumulativeHarmonicShiftCorrelation j t n *
          ((harmonicShiftReciprocal j t (n - 1) -
              harmonicShiftReciprocal j t n) -
            (harmonicShiftReciprocal j t n -
              harmonicShiftReciprocal j t (n + 1))) := by
    apply Finset.sum_congr rfl
    intro n hn
    have hnI := Finset.mem_Ico.mp hn
    have hnpos : 0 < n := lt_of_lt_of_le hHpos hnI.1
    unfold harmonicShiftSecondDifference harmonicShiftFirstDifference
    have h1 : n - 1 + 1 = n := by omega
    have h2 : n - 1 + 2 = n + 1 := by omega
    rw [h1, h2]
  rw [hinterior]
  have habel := finite_cumulative_second_to_first_tail
    (c := harmonicShiftCorrelation j t)
    (q := harmonicShiftReciprocal j t)
    (H := logarithmicShiftThreshold j)
    (N := harmonicShiftCount j t)
    hHpos hHN
  unfold coreGrowingShiftAnchor
    coreGrowingShiftFirstDifferenceTail
  simpa [cumulativeHarmonicShiftCorrelation,
    harmonicShiftFirstDifference,
    harmonicShiftCorrelation] using habel

/-- Exact one-depth return from the second-Abel/cell presentation to the
first-difference growing-shift packet. -/
theorem logarithmicLongDepthRemainder_eq_growingShift
    {j t : ℕ}
    (hcore : t ∈ coreLongDeepDepths j) :
    logarithmicLongDepthRemainder j t =
      coreGrowingShiftFirstDifferenceDepth j t := by
  rw [logarithmicLongDepthRemainder_eq_terminal_add_signedInterior,
    harmonicTerminal_add_signedInterior_eq_growingShift hcore]
  rfl

/-- Packet-level first-difference growing-shift observable. -/
def coreGrowingShiftFirstDifferencePacket
    (j : ℕ) : ℝ :=
  ∑ t ∈ coreLongDeepDepths j,
    coreGrowingShiftFirstDifferenceDepth j t

/-- The inherited RH-facing core remainder is exactly the growing-shift
first-difference packet. -/
theorem coreLongDeepRemainderPacket_eq_growingShift
    (j : ℕ) :
    coreLongDeepRemainderPacket j =
      coreGrowingShiftFirstDifferencePacket j := by
  unfold coreLongDeepRemainderPacket
    coreGrowingShiftFirstDifferencePacket
  apply Finset.sum_congr rfl
  intro t ht
  exact logarithmicLongDepthRemainder_eq_growingShift ht

/-- The earlier signed boundary/non-boundary Mertens-cell split reunifies
exactly into the single growing-shift first-difference packet. -/
theorem coreBoundary_add_nonboundaryMertensCells_eq_growingShift
    (j : ℕ) :
    coreBoundarySignedPacket j +
        coreNonboundarySignedMertensCellPacket j =
      coreGrowingShiftFirstDifferencePacket j := by
  rw [← coreNonboundarySignedLengthPacket_eq_mertensCellPacket,
    ← coreNonboundarySignedRemainderPacket_eq_lengthPacket,
    ← coreLongDeepRemainderPacket_eq_boundary_add_nonboundary,
    coreLongDeepRemainderPacket_eq_growingShift]

/-- Canonical signed growing-shift supplier.  This is one-sided in exactly the
same sense as the inherited core remainder supplier; all arithmetic signs are
retained inside the packet. -/
def SubpolynomialCoreGrowingShiftFirstDifferencePacket : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      coreGrowingShiftFirstDifferencePacket j ≤
        C * (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- Exact equivalence with the inherited RH-facing core remainder supplier. -/
theorem subpolynomialCoreGrowingShiftFirstDifferencePacket_iff_coreRemainder :
    SubpolynomialCoreGrowingShiftFirstDifferencePacket ↔
      SubpolynomialCoreLongDeepRemainderPacket := by
  constructor
  · intro h δ hδ
    obtain ⟨C, hC, hbound⟩ := h δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [coreLongDeepRemainderPacket_eq_growingShift]
    exact hbound j
  · intro h δ hδ
    obtain ⟨C, hC, hbound⟩ := h δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [← coreLongDeepRemainderPacket_eq_growingShift]
    exact hbound j

/-- Conditional RH endpoint stated directly on the growing-shift
first-difference packet. -/
theorem riemannHypothesis_of_subpolynomialCoreGrowingShiftFirstDifferencePacket
    (h : SubpolynomialCoreGrowingShiftFirstDifferencePacket) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialCoreLongDeepRemainderPacket
    (subpolynomialCoreGrowingShiftFirstDifferencePacket_iff_coreRemainder.mp h)

/-- Scope descriptor for a quantitative binary Möbius-correlation theorem
intended to control the exact growing-shift packet. -/
structure GrowingShiftBinaryMobiusSource where
  sourceStatement : Prop
  anchorControl : Prop
  growingShiftRangeControl : Prop
  firstDifferenceWeightControl : Prop
  depthUniformity : Prop
  finiteSmallScaleControl : Prop

/-- A proof-producing adapter is required before any Chowla, corrected
Elliott, dispersion, or related theorem can supply the exact packet. -/
structure ToCoreGrowingShiftFirstDifferencePacketAdapter
    (d : GrowingShiftBinaryMobiusSource) : Type where
  toPacket :
    d.sourceStatement →
      d.anchorControl →
      d.growingShiftRangeControl →
      d.firstDifferenceWeightControl →
      d.depthUniformity →
      d.finiteSmallScaleControl →
      SubpolynomialCoreGrowingShiftFirstDifferencePacket

/-- Generic conditional endpoint through an explicitly constructed
quantitative growing-shift adapter. -/
theorem riemannHypothesis_of_growingShiftBinaryAdapter
    (d : GrowingShiftBinaryMobiusSource)
    (bridge : ToCoreGrowingShiftFirstDifferencePacketAdapter d)
    (hsource : d.sourceStatement)
    (hanchor : d.anchorControl)
    (hshift : d.growingShiftRangeControl)
    (hweight : d.firstDifferenceWeightControl)
    (hdepth : d.depthUniformity)
    (hsmall : d.finiteSmallScaleControl) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialCoreGrowingShiftFirstDifferencePacket
    (bridge.toPacket hsource hanchor hshift hweight hdepth hsmall)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.finite_cumulative_second_to_first_tail
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.logarithmicLongDepthRemainder_eq_growingShift
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreLongDeepRemainderPacket_eq_growingShift
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreBoundary_add_nonboundaryMertensCells_eq_growingShift
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_subpolynomialCoreGrowingShiftFirstDifferencePacket
```
