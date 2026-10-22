/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #831. Parent: draft PR #826 at
`4725f7d9d987621cb8c98496a5e4e6170dbee368`.
-/
import GRWTSK.NumberTheory.Moebius.CoreGrowingShiftSignedStaircase
import Mathlib.Algebra.BigOperators.Group.Finset.Sigma

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- One source occurrence before expanding a binary Möbius prefix.  The first
coordinate is an exact signed-staircase point `(N,h)` and the second is the
zero-based prefix coordinate `a`. -/
abbrev CoreGrowingShiftSignedEndpointSourceCell :=
  Σ y : CoreGrowingShiftSignedStaircaseIndex, ℕ

/-- One strict endpoint coordinate, ordered as prefix length and then the pair
`(n,m)`. -/
abbrev CoreGrowingShiftSignedEndpointIndex :=
  Σ N : ℕ, ℕ × ℕ

/-- Exact source cells obtained by adjoining `a<N` to every signed staircase
point `(N,h)`. -/
def coreGrowingShiftSignedEndpointSourceCells
    (j : ℕ) : Finset CoreGrowingShiftSignedEndpointSourceCell :=
  (coreGrowingShiftSignedStaircaseIndices j).sigma fun y =>
    Finset.range y.1

/-- Strict endpoint pairs at one prefix length.  The right endpoint is placed
inside the ambient interval `[1,2^(j+1))`; the shift difference must remain in
the exact staircase shift interval. -/
def coreGrowingShiftSignedEndpointPairSet
    (j N : ℕ) : Finset (ℕ × ℕ) :=
  ((Finset.Icc 1 N).product
      (Finset.Ico 1 (2 ^ (j + 1)))).filter fun p =>
    p.1 < p.2 ∧
      p.2 - p.1 ∈ coreGrowingShiftSignedStaircaseShiftSet j N

/-- Complete prefix/strict-endpoint support. -/
def coreGrowingShiftSignedEndpointIndices
    (j : ℕ) : Finset CoreGrowingShiftSignedEndpointIndex :=
  (coreGrowingShiftSignedStaircasePrefixSet j).sigma fun N =>
    coreGrowingShiftSignedEndpointPairSet j N

/-- Explicit membership conditions for one strict endpoint pair. -/
theorem mem_coreGrowingShiftSignedEndpointPairSet_iff
    {j N n m : ℕ} :
    (n, m) ∈ coreGrowingShiftSignedEndpointPairSet j N ↔
      ((1 ≤ n ∧ n ≤ N) ∧
        (1 ≤ m ∧ m < 2 ^ (j + 1))) ∧
      n < m ∧
      m - n ∈ coreGrowingShiftSignedStaircaseShiftSet j N := by
  simp [coreGrowingShiftSignedEndpointPairSet]

/-- Every endpoint pair is strictly upper triangular, lies below the right
scale, and has a difference in the exact staircase interval. -/
theorem coreGrowingShiftSignedEndpointPair_support
    {j N n m : ℕ}
    (hp : (n, m) ∈ coreGrowingShiftSignedEndpointPairSet j N) :
    1 ≤ n ∧ n ≤ N ∧ n < m ∧ m < 2 ^ (j + 1) ∧
      coreGrowingShiftSignedStaircaseLower j N ≤ m - n ∧
      m - n < coreGrowingShiftSignedStaircaseUpper j N := by
  have hp' :=
    (mem_coreGrowingShiftSignedEndpointPairSet_iff).mp hp
  rcases hp' with
    ⟨⟨⟨hnlo, hnhi⟩, ⟨_hmlo, hmhi⟩⟩, hnm, hshift⟩
  have hshift' :
      coreGrowingShiftSignedStaircaseLower j N ≤ m - n ∧
        m - n < coreGrowingShiftSignedStaircaseUpper j N := by
    simpa [coreGrowingShiftSignedStaircaseShiftSet] using hshift
  exact ⟨hnlo, hnhi, hnm, hmhi, hshift'.1, hshift'.2⟩

/-- A source base and active shift never wrap around the ambient right dyadic
endpoint. -/
theorem coreGrowingShiftSignedSourceRightEndpoint_lt_rightScale
    {j N h a : ℕ}
    (hh : h ∈ coreGrowingShiftSignedStaircaseShiftSet j N)
    (ha : a < N) :
    a + 1 + h < 2 ^ (j + 1) := by
  have hh' :
      coreGrowingShiftSignedStaircaseLower j N ≤ h ∧
        h < coreGrowingShiftSignedStaircaseUpper j N := by
    simpa [coreGrowingShiftSignedStaircaseShiftSet] using hh
  unfold coreGrowingShiftSignedStaircaseUpper at hh'
  omega

/-- Endpoint coordinate map

`(N,h,a) ↦ (N,a+1,a+1+h)`.
-/
def coreGrowingShiftSignedEndpointSourceToEndpoint
    (x : CoreGrowingShiftSignedEndpointSourceCell) :
    CoreGrowingShiftSignedEndpointIndex :=
  ⟨x.1.1, (x.2 + 1, x.2 + 1 + x.1.2)⟩

/-- Every active source cell maps into the exact strict endpoint support. -/
theorem coreGrowingShiftSignedEndpointSourceToEndpoint_mem
    {j : ℕ} {x : CoreGrowingShiftSignedEndpointSourceCell}
    (hx : x ∈ coreGrowingShiftSignedEndpointSourceCells j) :
    coreGrowingShiftSignedEndpointSourceToEndpoint x ∈
      coreGrowingShiftSignedEndpointIndices j := by
  rcases x with ⟨⟨N, h⟩, a⟩
  simp only [coreGrowingShiftSignedEndpointSourceCells,
    Finset.mem_sigma] at hx
  rcases hx with ⟨hy, ha⟩
  simp only [coreGrowingShiftSignedStaircaseIndices,
    Finset.mem_sigma] at hy
  rcases hy with ⟨hN, hh⟩
  have haN : a < N := Finset.mem_range.mp ha
  have hh' :
      coreGrowingShiftSignedStaircaseLower j N ≤ h ∧
        h < coreGrowingShiftSignedStaircaseUpper j N := by
    simpa [coreGrowingShiftSignedStaircaseShiftSet] using hh
  have hlowerOne :
      1 ≤ coreGrowingShiftSignedStaircaseLower j N := by
    unfold coreGrowingShiftSignedStaircaseLower
    exact le_max_left _ _
  have hhpos : 1 ≤ h := le_trans hlowerOne hh'.1
  have hmright : a + 1 + h < 2 ^ (j + 1) :=
    coreGrowingShiftSignedSourceRightEndpoint_lt_rightScale hh haN
  have hsub : a + 1 + h - (a + 1) = h := by omega
  simp only [coreGrowingShiftSignedEndpointIndices, Finset.mem_sigma]
  refine ⟨hN, (mem_coreGrowingShiftSignedEndpointPairSet_iff).2 ?_⟩
  refine ⟨⟨⟨by omega, by omega⟩, ⟨by omega, hmright⟩⟩,
    by omega, ?_⟩
  rw [hsub]
  exact hh

/-- The endpoint coordinate map is injective.  The prefix coordinate fixes
`N`; the left endpoint fixes `a`; the right endpoint then fixes `h`. -/
theorem coreGrowingShiftSignedEndpointSourceToEndpoint_injective :
    Function.Injective coreGrowingShiftSignedEndpointSourceToEndpoint := by
  intro x y hxy
  rcases x with ⟨⟨Nx, hx⟩, ax⟩
  rcases y with ⟨⟨Ny, hy⟩, ay⟩
  simp only [coreGrowingShiftSignedEndpointSourceToEndpoint,
    Sigma.mk.inj_iff, Prod.mk.injEq] at hxy
  rcases hxy with ⟨hN, hn, hm⟩
  subst Ny
  have ha : ax = ay := by omega
  subst ay
  have hh : hx = hy := by omega
  subst hy
  rfl

/-- Every exact endpoint-support cell has the unique inverse

`a=n-1`, `h=m-n`.
-/
theorem coreGrowingShiftSignedEndpointSourceToEndpoint_surjective
    {j : ℕ} {z : CoreGrowingShiftSignedEndpointIndex}
    (hz : z ∈ coreGrowingShiftSignedEndpointIndices j) :
    ∃ x ∈ coreGrowingShiftSignedEndpointSourceCells j,
      coreGrowingShiftSignedEndpointSourceToEndpoint x = z := by
  rcases z with ⟨N, ⟨n, m⟩⟩
  simp only [coreGrowingShiftSignedEndpointIndices,
    Finset.mem_sigma] at hz
  rcases hz with ⟨hN, hp⟩
  have hp' :=
    (mem_coreGrowingShiftSignedEndpointPairSet_iff).mp hp
  rcases hp' with
    ⟨⟨⟨hnlo, hnhi⟩, ⟨_hmlo, _hmhi⟩⟩, hnm, hshift⟩
  let a : ℕ := n - 1
  let h : ℕ := m - n
  let y : CoreGrowingShiftSignedStaircaseIndex := ⟨N, h⟩
  let x : CoreGrowingShiftSignedEndpointSourceCell := ⟨y, a⟩
  have haN : a < N := by
    dsimp [a]
    omega
  have hy : y ∈ coreGrowingShiftSignedStaircaseIndices j := by
    simp only [coreGrowingShiftSignedStaircaseIndices,
      Finset.mem_sigma]
    exact ⟨hN, by simpa [h] using hshift⟩
  refine ⟨x, ?_, ?_⟩
  · simp only [coreGrowingShiftSignedEndpointSourceCells,
      Finset.mem_sigma]
    exact ⟨hy, Finset.mem_range.mpr haN⟩
  · apply Sigma.ext
    · rfl
    · dsimp [x, y, a, h,
        coreGrowingShiftSignedEndpointSourceToEndpoint]
      apply Prod.ext <;> omega

/-- Signed value of one expanded source cell. -/
def coreGrowingShiftSignedEndpointSourceValue
    (j : ℕ) (x : CoreGrowingShiftSignedEndpointSourceCell) : ℝ :=
  moebiusReal (x.2 + 1) *
    moebiusReal (x.2 + 1 + x.1.2) *
    coreGrowingShiftSignedStaircaseWeight j x.1.1 x.1.2

/-- Sum over expanded source cells. -/
def coreGrowingShiftSignedEndpointSourceEnergy
    (j : ℕ) : ℝ :=
  ∑ x ∈ coreGrowingShiftSignedEndpointSourceCells j,
    coreGrowingShiftSignedEndpointSourceValue j x

/-- Exact signed endpoint kernel.  It is used only on strict support, so the
natural subtraction `m-n` loses no information. -/
def coreGrowingShiftSignedEndpointKernel
    (j N n m : ℕ) : ℝ :=
  coreGrowingShiftSignedStaircaseWeight j N (m - n)

/-- One strict endpoint-bilinear cell. -/
def coreGrowingShiftSignedEndpointCell
    (j : ℕ) (z : CoreGrowingShiftSignedEndpointIndex) : ℝ :=
  moebiusReal z.2.1 * moebiusReal z.2.2 *
    coreGrowingShiftSignedEndpointKernel j z.1 z.2.1 z.2.2

/-- Canonical signed endpoint-bilinear packet. -/
def coreGrowingShiftSignedEndpointBilinearPacket
    (j : ℕ) : ℝ :=
  ∑ z ∈ coreGrowingShiftSignedEndpointIndices j,
    coreGrowingShiftSignedEndpointCell j z

/-- Expanding every two-point prefix gives the exact source-cell sum. -/
theorem coreGrowingShiftSignedStaircasePacket_eq_endpointSourceEnergy
    (j : ℕ) :
    coreGrowingShiftSignedStaircasePacket j =
      coreGrowingShiftSignedEndpointSourceEnergy j := by
  classical
  unfold coreGrowingShiftSignedEndpointSourceEnergy
    coreGrowingShiftSignedEndpointSourceCells
  rw [Finset.sum_sigma]
  unfold coreGrowingShiftSignedStaircasePacket
    coreGrowingShiftSignedStaircaseCell
    coreGrowingShiftSignedEndpointSourceValue
  apply Finset.sum_congr rfl
  intro y _hy
  rcases y with ⟨N, h⟩
  unfold mertensTwoPointPrefix
  rw [Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro a _ha
  ring

/-- A source-cell value is exactly the endpoint-bilinear value at its image. -/
theorem coreGrowingShiftSignedEndpointSourceValue_eq_endpoint
    (j : ℕ) (x : CoreGrowingShiftSignedEndpointSourceCell) :
    coreGrowingShiftSignedEndpointSourceValue j x =
      coreGrowingShiftSignedEndpointCell j
        (coreGrowingShiftSignedEndpointSourceToEndpoint x) := by
  rcases x with ⟨⟨N, h⟩, a⟩
  have hsub : a + 1 + h - (a + 1) = h := by omega
  simp [coreGrowingShiftSignedEndpointSourceValue,
    coreGrowingShiftSignedEndpointCell,
    coreGrowingShiftSignedEndpointKernel,
    coreGrowingShiftSignedEndpointSourceToEndpoint, hsub]

/-- Exact finite endpoint reindexing. -/
theorem coreGrowingShiftSignedEndpointSourceEnergy_eq_bilinear
    (j : ℕ) :
    coreGrowingShiftSignedEndpointSourceEnergy j =
      coreGrowingShiftSignedEndpointBilinearPacket j := by
  classical
  unfold coreGrowingShiftSignedEndpointSourceEnergy
    coreGrowingShiftSignedEndpointBilinearPacket
  apply Finset.sum_bij
    (fun x _hx => coreGrowingShiftSignedEndpointSourceToEndpoint x)
  · intro x hx
    exact coreGrowingShiftSignedEndpointSourceToEndpoint_mem hx
  · intro x hx y hy hxy
    exact coreGrowingShiftSignedEndpointSourceToEndpoint_injective hxy
  · intro z hz
    obtain ⟨x, hx, hxz⟩ :=
      coreGrowingShiftSignedEndpointSourceToEndpoint_surjective hz
    exact ⟨x, hx, hxz⟩
  · intro x hx
    exact coreGrowingShiftSignedEndpointSourceValue_eq_endpoint j x

/-- The signed staircase is exactly one strict Möbius–Möbius endpoint
bilinear form. -/
theorem coreGrowingShiftSignedStaircasePacket_eq_endpointBilinear
    (j : ℕ) :
    coreGrowingShiftSignedStaircasePacket j =
      coreGrowingShiftSignedEndpointBilinearPacket j := by
  rw [coreGrowingShiftSignedStaircasePacket_eq_endpointSourceEnergy,
    coreGrowingShiftSignedEndpointSourceEnergy_eq_bilinear]

/-- Exact RH-facing packet identity in endpoint-bilinear coordinates. -/
theorem coreGrowingShiftFirstDifferencePacket_eq_two_mul_endpointBilinear
    (j : ℕ) :
    coreGrowingShiftFirstDifferencePacket j =
      2 * coreGrowingShiftSignedEndpointBilinearPacket j := by
  rw [coreGrowingShiftFirstDifferencePacket_eq_two_mul_signedStaircase,
    coreGrowingShiftSignedStaircasePacket_eq_endpointBilinear]

/-- Source-facing all-scale condition on the exact endpoint-bilinear packet.
The outer factor two is retained so the normalization is literally the
RH-facing first-difference packet. -/
def SubpolynomialCoreGrowingShiftSignedEndpointBilinearPacket : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      2 * coreGrowingShiftSignedEndpointBilinearPacket j ≤
        C * (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- Exact equivalence with the inherited signed staircase source. -/
theorem subpolynomialCoreGrowingShiftSignedEndpointBilinearPacket_iff_staircase :
    SubpolynomialCoreGrowingShiftSignedEndpointBilinearPacket ↔
      SubpolynomialCoreGrowingShiftSignedStaircasePacket := by
  constructor
  · intro hEnd δ hδ
    obtain ⟨C, hC, hbound⟩ := hEnd δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [coreGrowingShiftSignedStaircasePacket_eq_endpointBilinear]
    exact hbound j
  · intro hStair δ hδ
    obtain ⟨C, hC, hbound⟩ := hStair δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [← coreGrowingShiftSignedStaircasePacket_eq_endpointBilinear]
    exact hbound j

/-- Conditional RH endpoint stated on the strict endpoint-bilinear packet. -/
theorem riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointBilinearPacket
    (hEnd : SubpolynomialCoreGrowingShiftSignedEndpointBilinearPacket) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedStaircasePacket
    (subpolynomialCoreGrowingShiftSignedEndpointBilinearPacket_iff_staircase.mp
      hEnd)

/-- Source profile for a theorem already stated on the exact strict endpoint
bilinear packet. -/
structure SignedEndpointBilinearSource where
  sourceStatement : Prop
  exactPrefixSupport : Prop
  strictEndpointSupport : Prop
  clampedReciprocalKernelControl : Prop
  signedBilinearControl : Prop
  allScaleUniformity : Prop
  finiteSmallScaleControl : Prop

structure ToCoreGrowingShiftSignedEndpointBilinearPacket
    (d : SignedEndpointBilinearSource) : Type where
  toEndpointBilinear :
    d.sourceStatement →
      d.exactPrefixSupport →
      d.strictEndpointSupport →
      d.clampedReciprocalKernelControl →
      d.signedBilinearControl →
      d.allScaleUniformity →
      d.finiteSmallScaleControl →
      SubpolynomialCoreGrowingShiftSignedEndpointBilinearPacket

/-- Profile for a finite Fourier or dispersion theorem after zero-padding into
`[1,2^(j+1))`.  No-wrap and exact transform/inversion remain separate
load-bearing obligations. -/
structure SignedEndpointBilinearFourierSource where
  sourceStatement : Prop
  zeroPadding : Prop
  rightEndpointNoWrap : Prop
  exactFiniteTransform : Prop
  exactFiniteInversion : Prop
  strictSupportPreservation : Prop
  clampedKernelPreservation : Prop
  signedFrequencyCancellation : Prop
  crossPrefixCancellation : Prop
  allScaleUniformity : Prop
  finiteSmallScaleControl : Prop

structure ToCoreGrowingShiftSignedEndpointBilinearPacketFromFourier
    (d : SignedEndpointBilinearFourierSource) : Type where
  toEndpointBilinear :
    d.sourceStatement →
      d.zeroPadding →
      d.rightEndpointNoWrap →
      d.exactFiniteTransform →
      d.exactFiniteInversion →
      d.strictSupportPreservation →
      d.clampedKernelPreservation →
      d.signedFrequencyCancellation →
      d.crossPrefixCancellation →
      d.allScaleUniformity →
      d.finiteSmallScaleControl →
      SubpolynomialCoreGrowingShiftSignedEndpointBilinearPacket

/-- Finite hostile witness: a strict signed bilinear form may cancel exactly
while its termwise absolute mass is positive. -/
theorem signedEndpointBilinearCancellation_hostileWitness :
    ((1 : ℝ) * 1 + (1 : ℝ) * (-1)) = 0 ∧
      |(1 : ℝ) * 1| + |(1 : ℝ) * (-1)| = 2 := by
  norm_num

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftSignedEndpointSourceToEndpoint_mem
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftSignedEndpointSourceEnergy_eq_bilinear
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftSignedStaircasePacket_eq_endpointBilinear
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftFirstDifferencePacket_eq_two_mul_endpointBilinear
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointBilinearPacket
