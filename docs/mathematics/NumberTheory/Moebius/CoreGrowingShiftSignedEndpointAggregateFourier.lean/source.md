# Complete source: GRWTSK.NumberTheory.Moebius.CoreGrowingShiftSignedEndpointAggregateFourier

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4d474e11dfdcc770ce0249d92df027b85fee216d` · SHA-256 `979d282510816f8487e07ed5febd7dc4c7186a482e565b276c1b897051690dfb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #840. Parent: draft PR #838 at
`d9ccacbaca79d9d97fa45ee834d2a6ee1ef69092`.
-/
import GRWTSK.NumberTheory.Moebius.CoreGrowingShiftSignedEndpointFourier

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Prefixes at which one ordinary strict endpoint pair belongs to the exact
endpoint support. -/
def coreGrowingShiftEndpointActivePrefixSet
    (j n m : ℕ) : Finset ℕ :=
  (coreGrowingShiftSignedStaircasePrefixSet j).filter fun N =>
    (n, m) ∈ coreGrowingShiftSignedEndpointPairSet j N

/-- Explicit lower endpoint of the active-prefix interval for a fixed strict
ordinary endpoint pair. -/
def coreGrowingShiftEndpointAggregatePrefixLower
    (j n m : ℕ) : ℕ :=
  max (logarithmicShiftThreshold j + 1)
    (max n (2 ^ j - (m - n)))

/-- Explicit exclusive upper endpoint of the active-prefix interval for a
fixed strict ordinary endpoint pair. -/
def coreGrowingShiftEndpointAggregatePrefixUpper
    (j n m : ℕ) : ℕ :=
  min (2 ^ (j + 1) - logarithmicShiftThreshold j)
    (2 ^ (j + 1) - (m - n))

/-- Explicit active-prefix interval for one strict endpoint pair. -/
def coreGrowingShiftEndpointExplicitPrefixSet
    (j n m : ℕ) : Finset ℕ :=
  Finset.Ico
    (coreGrowingShiftEndpointAggregatePrefixLower j n m)
    (coreGrowingShiftEndpointAggregatePrefixUpper j n m)

/-- For strict endpoints inside the right dyadic interval, the inherited
prefix/shift support is exactly one ordinary interval in the prefix
coordinate. -/
theorem coreGrowingShiftEndpointActivePrefixSet_eq_explicit
    {j n m : ℕ}
    (hn : 1 ≤ n)
    (hnm : n < m)
    (hmY : m < 2 ^ (j + 1)) :
    coreGrowingShiftEndpointActivePrefixSet j n m =
      coreGrowingShiftEndpointExplicitPrefixSet j n m := by
  ext N
  simp only [coreGrowingShiftEndpointActivePrefixSet,
    Finset.mem_filter,
    coreGrowingShiftSignedStaircasePrefixSet,
    Finset.mem_Ico,
    mem_coreGrowingShiftSignedEndpointPairSet_iff,
    coreGrowingShiftSignedStaircaseShiftSet,
    coreGrowingShiftSignedStaircaseLower,
    coreGrowingShiftSignedStaircaseUpper,
    coreGrowingShiftEndpointExplicitPrefixSet,
    coreGrowingShiftEndpointAggregatePrefixLower,
    coreGrowingShiftEndpointAggregatePrefixUpper]
  constructor
  · rintro ⟨⟨hH, hYH⟩,
      ⟨⟨⟨_hn, hnN⟩, ⟨_hm, _hmY⟩⟩, _hnm, ⟨hlo, hhi⟩⟩⟩
    constructor <;> omega
  · rintro ⟨hloN, hhiN⟩
    refine ⟨⟨?_, ?_⟩, ?_⟩
    · omega
    · omega
    · refine ⟨⟨⟨hn, by omega⟩, ⟨by omega, hmY⟩⟩, hnm, ?_⟩
      constructor <;> omega

/-- Aggregate ordinary endpoint coefficient before cyclic zero padding.  It is
the exact sum of the inherited clamped reciprocal kernel over all retained
prefixes supporting `(n,m)`. -/
def coreGrowingShiftEndpointAggregateKernel
    (j n m : ℕ) : ℝ :=
  ∑ N ∈ coreGrowingShiftEndpointActivePrefixSet j n m,
    coreGrowingShiftSignedEndpointKernel j N n m

/-- The aggregate ordinary kernel is the exact interval sum on strict endpoint
support. -/
theorem coreGrowingShiftEndpointAggregateKernel_eq_explicitInterval
    {j n m : ℕ}
    (hn : 1 ≤ n)
    (hnm : n < m)
    (hmY : m < 2 ^ (j + 1)) :
    coreGrowingShiftEndpointAggregateKernel j n m =
      ∑ N ∈ coreGrowingShiftEndpointExplicitPrefixSet j n m,
        coreGrowingShiftSignedEndpointKernel j N n m := by
  unfold coreGrowingShiftEndpointAggregateKernel
  rw [coreGrowingShiftEndpointActivePrefixSet_eq_explicit hn hnm hmY]

/-- The complete zero-padded endpoint kernel after the exact prefix sum has
been absorbed. -/
def coreGrowingShiftEndpointAggregateKernelZeroPad
    (j : ℕ)
    (x y : CoreGrowingShiftEndpointFourierIndex j) : ℂ :=
  ∑ N ∈ coreGrowingShiftSignedStaircasePrefixSet j,
    coreGrowingShiftEndpointKernelZeroPad j N x y

/-- Zero-padding commutes exactly with prefix aggregation. -/
theorem coreGrowingShiftEndpointAggregateKernelZeroPad_eq_cast
    (j : ℕ)
    (x y : CoreGrowingShiftEndpointFourierIndex j) :
    coreGrowingShiftEndpointAggregateKernelZeroPad j x y =
      (coreGrowingShiftEndpointAggregateKernel j x.val y.val : ℂ) := by
  classical
  unfold coreGrowingShiftEndpointAggregateKernelZeroPad
    coreGrowingShiftEndpointAggregateKernel
    coreGrowingShiftEndpointActivePrefixSet
    coreGrowingShiftEndpointKernelZeroPad
  rw [Finset.sum_filter]
  simp

/-- On strict ordinary representatives, the aggregate zero-padded kernel is
the complexification of the explicit active-prefix interval sum. -/
theorem coreGrowingShiftEndpointAggregateKernelZeroPad_eq_explicitInterval
    {j : ℕ}
    {x y : CoreGrowingShiftEndpointFourierIndex j}
    (hx : 1 ≤ x.val)
    (hxy : x.val < y.val) :
    coreGrowingShiftEndpointAggregateKernelZeroPad j x y =
      (∑ N ∈
          coreGrowingShiftEndpointExplicitPrefixSet j x.val y.val,
        coreGrowingShiftSignedEndpointKernel j N x.val y.val : ℂ) := by
  rw [coreGrowingShiftEndpointAggregateKernelZeroPad_eq_cast]
  rw [coreGrowingShiftEndpointAggregateKernel_eq_explicitInterval
    hx hxy (ZMod.val_lt y)]
  simp

/-- The aggregate kernel remains strictly upper triangular. -/
theorem coreGrowingShiftEndpointAggregateKernelZeroPad_eq_zero_of_not_lt
    {j : ℕ}
    {x y : CoreGrowingShiftEndpointFourierIndex j}
    (hxy : ¬ x.val < y.val) :
    coreGrowingShiftEndpointAggregateKernelZeroPad j x y = 0 := by
  classical
  unfold coreGrowingShiftEndpointAggregateKernelZeroPad
  apply Finset.sum_eq_zero
  intro N hN
  unfold coreGrowingShiftEndpointKernelZeroPad
  have hnot :
      (x.val, y.val) ∉
        coreGrowingShiftSignedEndpointPairSet j N := by
    intro hp
    obtain ⟨_hx1, _hxN, hlt, _hyY, _hlo, _hhi⟩ :=
      coreGrowingShiftSignedEndpointPair_support hp
    exact hxy hlt
  simp [hnot]

/-- Finite Fubini for a family of bilinear kernels. -/
private theorem finite_bilinear_kernel_sum_fubini
    {ι α : Type*}
    [DecidableEq ι] [Fintype α]
    (S : Finset ι)
    (f : α → ℂ)
    (K : ι → α → α → ℂ) :
    (∑ i ∈ S, ∑ x : α, ∑ y : α,
      f x * f y * K i x y) =
      ∑ x : α, ∑ y : α,
        f x * f y * (∑ i ∈ S, K i x y) := by
  classical
  calc
    (∑ i ∈ S, ∑ x : α, ∑ y : α,
      f x * f y * K i x y) =
        ∑ x : α, ∑ i ∈ S, ∑ y : α,
          f x * f y * K i x y := by
            rw [Finset.sum_comm]
    _ = ∑ x : α, ∑ y : α, ∑ i ∈ S,
          f x * f y * K i x y := by
            apply Fintype.sum_congr
            intro x
            rw [Finset.sum_comm]
    _ = ∑ x : α, ∑ y : α,
        f x * f y * (∑ i ∈ S, K i x y) := by
      apply Fintype.sum_congr
      intro x
      apply Fintype.sum_congr
      intro y
      rw [Finset.mul_sum]

/-- One complex bilinear form using the single prefix-aggregated real-space
kernel. -/
def coreGrowingShiftSignedEndpointAggregateZeroPaddedPacketComplex
    (j : ℕ) : ℂ :=
  ∑ x : CoreGrowingShiftEndpointFourierIndex j,
    ∑ y : CoreGrowingShiftEndpointFourierIndex j,
      coreGrowingShiftEndpointMobiusZeroPad j x *
        coreGrowingShiftEndpointMobiusZeroPad j y *
          coreGrowingShiftEndpointAggregateKernelZeroPad j x y

/-- The complete strict endpoint packet is exactly the bilinear form for the
single aggregate zero-padded kernel. -/
theorem coreGrowingShiftSignedEndpointBilinearPacket_cast_eq_aggregateZeroPadded
    (j : ℕ) :
    (coreGrowingShiftSignedEndpointBilinearPacket j : ℂ) =
      coreGrowingShiftSignedEndpointAggregateZeroPaddedPacketComplex j := by
  classical
  calc
    (coreGrowingShiftSignedEndpointBilinearPacket j : ℂ) =
        ∑ N ∈ coreGrowingShiftSignedStaircasePrefixSet j,
          (coreGrowingShiftSignedEndpointBilinearSlice j N : ℂ) := by
      rw [coreGrowingShiftSignedEndpointBilinearPacket_eq_sum_slices]
      simp
    _ = ∑ N ∈ coreGrowingShiftSignedStaircasePrefixSet j,
        coreGrowingShiftSignedEndpointZeroPaddedSlice j N := by
      apply Finset.sum_congr rfl
      intro N hN
      exact coreGrowingShiftSignedEndpointBilinearSlice_eq_zeroPadded hN
    _ = coreGrowingShiftSignedEndpointAggregateZeroPaddedPacketComplex j := by
      simpa [coreGrowingShiftSignedEndpointZeroPaddedSlice,
        coreGrowingShiftSignedEndpointAggregateZeroPaddedPacketComplex,
        coreGrowingShiftEndpointAggregateKernelZeroPad] using
        finite_bilinear_kernel_sum_fubini
          (coreGrowingShiftSignedStaircasePrefixSet j)
          (coreGrowingShiftEndpointMobiusZeroPad j)
          (fun N => coreGrowingShiftEndpointKernelZeroPad j N)

/-- Two-dimensional DFT of the single prefix-aggregated kernel. -/
def coreGrowingShiftEndpointAggregateKernelDFT2
    (j : ℕ)
    (r s : CoreGrowingShiftEndpointFourierIndex j) : ℂ :=
  finiteZModKernelDFT2
    (coreGrowingShiftEndpointAggregateKernelZeroPad j) r s

/-- The iterated DFT is linear in a finite family of kernels. -/
theorem finiteZModKernelDFT2_sum
    {Q ι : Type*}
    [Fintype Q]
    [DecidableEq ι]
    (S : Finset ι)
    (K : ι → Q → Q → ℂ)
    (r s : Q)
    (dft : (Q → ℂ) ≃ₗ[ℂ] (Q → ℂ)) :
    dft (fun x => dft (fun y => ∑ i ∈ S, K i x y) s) r =
      ∑ i ∈ S, dft (fun x => dft (K i x) s) r := by
  classical
  have hinner (x : Q) :
      dft (fun y => ∑ i ∈ S, K i x y) s =
        ∑ i ∈ S, dft (K i x) s := by
    have hfun :
        (fun y => ∑ i ∈ S, K i x y) =
          ∑ i ∈ S, K i x := by
      funext y
      simp
    rw [hfun, map_sum]
    simp
  have houter :
      (fun x => dft (fun y => ∑ i ∈ S, K i x y) s) =
        ∑ i ∈ S, fun x => dft (K i x) s := by
    funext x
    exact hinner x
  rw [houter, map_sum]
  simp

/-- Prefix aggregation may be performed before or after the two-dimensional
DFT. -/
theorem coreGrowingShiftEndpointAggregateKernelDFT2_eq_sum
    (j : ℕ)
    (r s : CoreGrowingShiftEndpointFourierIndex j) :
    coreGrowingShiftEndpointAggregateKernelDFT2 j r s =
      ∑ N ∈ coreGrowingShiftSignedStaircasePrefixSet j,
        coreGrowingShiftEndpointKernelDFT2 j N r s := by
  unfold coreGrowingShiftEndpointAggregateKernelDFT2
    coreGrowingShiftEndpointAggregateKernelZeroPad
    coreGrowingShiftEndpointKernelDFT2
    finiteZModKernelDFT2
  simpa using
    finiteZModKernelDFT2_sum
      (Q := CoreGrowingShiftEndpointFourierIndex j)
      (coreGrowingShiftSignedStaircasePrefixSet j)
      (fun N => coreGrowingShiftEndpointKernelZeroPad j N)
      r s
      (ZMod.dft (N := coreGrowingShiftEndpointFourierModulus j) (E := ℂ))

/-- Complete complex frequency packet for the single aggregate kernel. -/
def coreGrowingShiftSignedEndpointAggregateFourierPacketComplex
    (j : ℕ) : ℂ :=
  let Y : ℕ := coreGrowingShiftEndpointFourierModulus j
  (Y : ℂ)⁻¹ * (Y : ℂ)⁻¹ *
    ∑ r : CoreGrowingShiftEndpointFourierIndex j,
      ∑ s : CoreGrowingShiftEndpointFourierIndex j,
        ZMod.dft (coreGrowingShiftEndpointMobiusZeroPad j) (-r) *
          ZMod.dft (coreGrowingShiftEndpointMobiusZeroPad j) (-s) *
            coreGrowingShiftEndpointAggregateKernelDFT2 j r s

/-- The aggregate zero-padded bilinear form has the direct two-dimensional
frequency representation. -/
theorem coreGrowingShiftSignedEndpointAggregateZeroPaddedPacketComplex_eq_fourier
    (j : ℕ) :
    coreGrowingShiftSignedEndpointAggregateZeroPaddedPacketComplex j =
      coreGrowingShiftSignedEndpointAggregateFourierPacketComplex j := by
  unfold coreGrowingShiftSignedEndpointAggregateZeroPaddedPacketComplex
    coreGrowingShiftSignedEndpointAggregateFourierPacketComplex
    coreGrowingShiftEndpointAggregateKernelDFT2
  exact finite_zmod_bilinear_eq_iterated_dft
    (coreGrowingShiftEndpointMobiusZeroPad j)
    (coreGrowingShiftEndpointAggregateKernelZeroPad j)

/-- The strict endpoint packet is the single aggregate-kernel frequency
packet. -/
theorem coreGrowingShiftSignedEndpointBilinearPacket_cast_eq_aggregateFourier
    (j : ℕ) :
    (coreGrowingShiftSignedEndpointBilinearPacket j : ℂ) =
      coreGrowingShiftSignedEndpointAggregateFourierPacketComplex j := by
  rw [coreGrowingShiftSignedEndpointBilinearPacket_cast_eq_aggregateZeroPadded,
    coreGrowingShiftSignedEndpointAggregateZeroPaddedPacketComplex_eq_fourier]

/-- The preceding prefix-indexed frequency packet and the aggregate-kernel
frequency packet are exactly equal. -/
theorem coreGrowingShiftSignedEndpointFourierPacketComplex_eq_aggregate
    (j : ℕ) :
    coreGrowingShiftSignedEndpointFourierPacketComplex j =
      coreGrowingShiftSignedEndpointAggregateFourierPacketComplex j := by
  rw [← coreGrowingShiftSignedEndpointBilinearPacket_cast_eq_fourierComplex,
    coreGrowingShiftSignedEndpointBilinearPacket_cast_eq_aggregateFourier]

/-- The aggregate complex frequency packet is real after the complete signed
two-frequency sum. -/
theorem coreGrowingShiftSignedEndpointAggregateFourierPacketComplex_im
    (j : ℕ) :
    (coreGrowingShiftSignedEndpointAggregateFourierPacketComplex j).im = 0 := by
  rw [← coreGrowingShiftSignedEndpointBilinearPacket_cast_eq_aggregateFourier]
  simp

/-- Real aggregate-kernel frequency packet. -/
def coreGrowingShiftSignedEndpointAggregateFourierPacket
    (j : ℕ) : ℝ :=
  (coreGrowingShiftSignedEndpointAggregateFourierPacketComplex j).re

/-- Exact real endpoint identity after prefix aggregation. -/
theorem coreGrowingShiftSignedEndpointBilinearPacket_eq_aggregateFourier
    (j : ℕ) :
    coreGrowingShiftSignedEndpointBilinearPacket j =
      coreGrowingShiftSignedEndpointAggregateFourierPacket j := by
  unfold coreGrowingShiftSignedEndpointAggregateFourierPacket
  have h := congrArg Complex.re
    (coreGrowingShiftSignedEndpointBilinearPacket_cast_eq_aggregateFourier j)
  simpa using h

/-- The prior real Fourier packet is exactly the aggregate-kernel packet. -/
theorem coreGrowingShiftSignedEndpointFourierPacket_eq_aggregate
    (j : ℕ) :
    coreGrowingShiftSignedEndpointFourierPacket j =
      coreGrowingShiftSignedEndpointAggregateFourierPacket j := by
  rw [← coreGrowingShiftSignedEndpointBilinearPacket_eq_fourier,
    coreGrowingShiftSignedEndpointBilinearPacket_eq_aggregateFourier]

/-- Exact RH-facing return through the single aggregate spectral kernel. -/
theorem coreGrowingShiftFirstDifferencePacket_eq_two_mul_endpointAggregateFourier
    (j : ℕ) :
    coreGrowingShiftFirstDifferencePacket j =
      2 * coreGrowingShiftSignedEndpointAggregateFourierPacket j := by
  rw [coreGrowingShiftFirstDifferencePacket_eq_two_mul_endpointBilinear,
    coreGrowingShiftSignedEndpointBilinearPacket_eq_aggregateFourier]

/-- Source-facing condition on the exact aggregate-kernel signed frequency
packet. -/
def SubpolynomialCoreGrowingShiftSignedEndpointAggregateFourierPacket : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      2 * coreGrowingShiftSignedEndpointAggregateFourierPacket j ≤
        C * (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- Exact equivalence with the preceding prefix-indexed Fourier source. -/
theorem subpolynomialCoreGrowingShiftSignedEndpointAggregateFourierPacket_iff_fourier :
    SubpolynomialCoreGrowingShiftSignedEndpointAggregateFourierPacket ↔
      SubpolynomialCoreGrowingShiftSignedEndpointFourierPacket := by
  constructor
  · intro hAggregate δ hδ
    obtain ⟨C, hC, hbound⟩ := hAggregate δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [coreGrowingShiftSignedEndpointFourierPacket_eq_aggregate]
    exact hbound j
  · intro hFourier δ hδ
    obtain ⟨C, hC, hbound⟩ := hFourier δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [← coreGrowingShiftSignedEndpointFourierPacket_eq_aggregate]
    exact hbound j

/-- Conditional RH endpoint stated on the single aggregate spectral kernel. -/
theorem riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointAggregateFourierPacket
    (hAggregate :
      SubpolynomialCoreGrowingShiftSignedEndpointAggregateFourierPacket) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointFourierPacket
    (subpolynomialCoreGrowingShiftSignedEndpointAggregateFourierPacket_iff_fourier.mp
      hAggregate)

/-- Source profile for a theorem stated directly on the single aggregate
spectral kernel.  Cross-prefix cancellation is no longer an independent
analytic premise: it has been absorbed exactly into the kernel. -/
structure SignedEndpointAggregateFourierSource where
  sourceStatement : Prop
  exactPrefixAggregation : Prop
  explicitActivePrefixInterval : Prop
  exactZeroPadding : Prop
  noWrapControl : Prop
  dftSignNormalization : Prop
  aggregateKernelTransform : Prop
  strictSupportPreservation : Prop
  clampedKernelPreservation : Prop
  signedTwoFrequencyCancellation : Prop
  allScaleUniformity : Prop
  finiteSmallScaleControl : Prop

/-- Proof-producing boundary for a future signed aggregate-kernel estimate. -/
structure ToCoreGrowingShiftSignedEndpointAggregateFourierPacket
    (d : SignedEndpointAggregateFourierSource) : Type where
  toAggregateFourier :
    d.sourceStatement →
      d.exactPrefixAggregation →
      d.explicitActivePrefixInterval →
      d.exactZeroPadding →
      d.noWrapControl →
      d.dftSignNormalization →
      d.aggregateKernelTransform →
      d.strictSupportPreservation →
      d.clampedKernelPreservation →
      d.signedTwoFrequencyCancellation →
      d.allScaleUniformity →
      d.finiteSmallScaleControl →
      SubpolynomialCoreGrowingShiftSignedEndpointAggregateFourierPacket

/-- Generic conditional endpoint through an explicitly constructed
aggregate-kernel frequency adapter. -/
theorem riemannHypothesis_of_signedEndpointAggregateFourierAdapter
    (d : SignedEndpointAggregateFourierSource)
    (bridge : ToCoreGrowingShiftSignedEndpointAggregateFourierPacket d)
    (hsource : d.sourceStatement)
    (haggregate : d.exactPrefixAggregation)
    (hinterval : d.explicitActivePrefixInterval)
    (hzero : d.exactZeroPadding)
    (hnowrap : d.noWrapControl)
    (hsign : d.dftSignNormalization)
    (htransform : d.aggregateKernelTransform)
    (hsupport : d.strictSupportPreservation)
    (hclamp : d.clampedKernelPreservation)
    (hfrequency : d.signedTwoFrequencyCancellation)
    (huniform : d.allScaleUniformity)
    (hsmall : d.finiteSmallScaleControl) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointAggregateFourierPacket
    (bridge.toAggregateFourier hsource haggregate hinterval hzero hnowrap
      hsign htransform hsupport hclamp hfrequency huniform hsmall)

/-- Hostile control: cancellation across prefixes can be exact before the
aggregate kernel is estimated, while termwise prefix mass remains positive. -/
theorem signedEndpointAggregatePrefixCancellation_hostileWitness :
    ((1 : ℂ) + (-1 : ℂ)) = 0 ∧
      ‖(1 : ℂ)‖ + ‖(-1 : ℂ)‖ = 2 := by
  norm_num

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftEndpointActivePrefixSet_eq_explicit
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftSignedEndpointBilinearPacket_cast_eq_aggregateZeroPadded
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftEndpointAggregateKernelDFT2_eq_sum
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftSignedEndpointBilinearPacket_eq_aggregateFourier
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointAggregateFourierPacket
```
