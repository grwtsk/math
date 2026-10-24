# Complete source: GRWTSK.NumberTheory.Moebius.CoreGrowingShiftSignedEndpointFourier

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b9deb36196c1e5f3414f44dfba228190f2f45900` · SHA-256 `86c85daccd13f733f5f557d361078ffc21716fdadd2a8826821f5800ac4ed906`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #836. Parent: draft PR #833 at
`24e9b6a530d9a459091296491675cd3c93bd62c6`.
-/
import GRWTSK.NumberTheory.Moebius.CoreGrowingShiftSignedEndpointBilinear
import GRWTSK.NumberTheory.Moebius.CoreGrowingShiftEndpointCyclicCoordinates
import Mathlib.Analysis.Fourier.ZMod

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- The canonical representative equivalence.  It is used to make every
natural-to-cyclic reindexing auditable rather than relying on an implicit
cardinality argument. -/
private def zmodValEquiv (Q : ℕ) [NeZero Q] : ZMod Q ≃ Fin Q where
  toFun x := ⟨x.val, ZMod.val_lt x⟩
  invFun x := (x.val : ZMod Q)
  left_inv x := by
    simpa using ZMod.natCast_zmod_val x
  right_inv x := by
    apply Fin.ext
    exact ZMod.val_cast_of_lt x.isLt

private theorem sum_zmod_eq_sum_fin
    {Q : ℕ} [NeZero Q] (F : ZMod Q → ℂ) :
    (∑ x : ZMod Q, F x) =
      ∑ x : Fin Q, F (x.val : ZMod Q) := by
  refine Fintype.sum_equiv (zmodValEquiv Q) F
    (fun x : Fin Q => F (x.val : ZMod Q)) ?_
  intro x
  simp [zmodValEquiv, ZMod.natCast_zmod_val]

/-- Finite two-coordinate indicator reindexing.  The support hypothesis is the
entire no-wrap obligation: both natural coordinates must lie below `Q`. -/
private theorem sum_fin_pair_indicator_eq
    {Q : ℕ}
    (S : Finset (ℕ × ℕ))
    (hS : ∀ p ∈ S, p.1 < Q ∧ p.2 < Q)
    (F : ℕ × ℕ → ℂ) :
    (∑ x : Fin Q, ∑ y : Fin Q,
      if (x.val, y.val) ∈ S then F (x.val, y.val) else 0) =
      ∑ p ∈ S, F p := by
  classical
  let T : Finset (Fin Q × Fin Q) :=
    ((Finset.univ : Finset (Fin Q)).product
      (Finset.univ : Finset (Fin Q))).filter fun q =>
        (q.1.val, q.2.val) ∈ S
  calc
    (∑ x : Fin Q, ∑ y : Fin Q,
      if (x.val, y.val) ∈ S then F (x.val, y.val) else 0) =
        ∑ q ∈ ((Finset.univ : Finset (Fin Q)).product
          (Finset.univ : Finset (Fin Q))),
          if (q.1.val, q.2.val) ∈ S then
            F (q.1.val, q.2.val) else 0 := by
              rw [Finset.sum_product]
    _ = ∑ q ∈ T, F (q.1.val, q.2.val) := by
      unfold T
      rw [Finset.sum_filter]
    _ = ∑ p ∈ S, F p := by
      symm
      apply Finset.sum_bij
        (fun p hp =>
          (⟨p.1, (hS p hp).1⟩,
            ⟨p.2, (hS p hp).2⟩))
      · intro p hp
        simp [T, hp]
      · intro p hp q hq hpq
        apply Prod.ext
        · exact congrArg (fun z => z.1.val) hpq
        · exact congrArg (fun z => z.2.val) hpq
      · intro q hq
        have hmem : (q.1.val, q.2.val) ∈ S := by
          simpa [T] using hq
        refine ⟨(q.1.val, q.2.val), hmem, ?_⟩
        apply Prod.ext <;> rfl
      · intro p hp
        rfl

/-- One fixed-prefix slice of the real endpoint-bilinear packet. -/
def coreGrowingShiftSignedEndpointBilinearSlice
    (j N : ℕ) : ℝ :=
  ∑ p ∈ coreGrowingShiftSignedEndpointPairSet j N,
    moebiusReal p.1 * moebiusReal p.2 *
      coreGrowingShiftSignedEndpointKernel j N p.1 p.2

/-- The packet is the sum of its fixed-prefix slices. -/
theorem coreGrowingShiftSignedEndpointBilinearPacket_eq_sum_slices
    (j : ℕ) :
    coreGrowingShiftSignedEndpointBilinearPacket j =
      ∑ N ∈ coreGrowingShiftSignedStaircasePrefixSet j,
        coreGrowingShiftSignedEndpointBilinearSlice j N := by
  unfold coreGrowingShiftSignedEndpointBilinearPacket
    coreGrowingShiftSignedEndpointIndices
    coreGrowingShiftSignedEndpointCell
    coreGrowingShiftSignedEndpointBilinearSlice
  rw [Finset.sum_sigma]

/-- Möbius, zero-padded at the cyclic origin.  All nonzero canonical
representatives are ordinary integer endpoints in `[1,Y)`. -/
def coreGrowingShiftEndpointMobiusZeroPad
    (j : ℕ) (x : CoreGrowingShiftEndpointFourierIndex j) : ℂ :=
  if 1 ≤ x.val then (moebiusReal x.val : ℂ) else 0

/-- Strict endpoint kernel, zero-padded away from the exact support.  The
support predicate is evaluated on canonical representatives, so no modular
difference is introduced. -/
def coreGrowingShiftEndpointKernelZeroPad
    (j N : ℕ)
    (x y : CoreGrowingShiftEndpointFourierIndex j) : ℂ :=
  if (x.val, y.val) ∈ coreGrowingShiftSignedEndpointPairSet j N then
    (coreGrowingShiftSignedEndpointKernel j N x.val y.val : ℂ)
  else 0

/-- Zero-padded endpoint slice before Fourier transformation. -/
def coreGrowingShiftSignedEndpointZeroPaddedSlice
    (j N : ℕ) : ℂ :=
  ∑ x : CoreGrowingShiftEndpointFourierIndex j,
    ∑ y : CoreGrowingShiftEndpointFourierIndex j,
      coreGrowingShiftEndpointMobiusZeroPad j x *
        coreGrowingShiftEndpointMobiusZeroPad j y *
          coreGrowingShiftEndpointKernelZeroPad j N x y

/-- Natural endpoints below the right scale have distinct cyclic images. -/
theorem coreGrowingShiftEndpoint_natCast_injective
    {j n m : ℕ}
    (hn : n < coreGrowingShiftEndpointFourierModulus j)
    (hm : m < coreGrowingShiftEndpointFourierModulus j)
    (hcast :
      (n : CoreGrowingShiftEndpointFourierIndex j) =
        (m : CoreGrowingShiftEndpointFourierIndex j)) :
    n = m := by
  apply_fun ZMod.val at hcast
  simpa [ZMod.val_cast_of_lt hn, ZMod.val_cast_of_lt hm] using hcast

/-- Exact zero-padding of one prefix slice.  The proof uses the strict support
and right-endpoint no-wrap theorem from #831; no cyclic collision is hidden. -/
theorem coreGrowingShiftSignedEndpointBilinearSlice_eq_zeroPadded
    {j N : ℕ}
    (hN : N ∈ coreGrowingShiftSignedStaircasePrefixSet j) :
    (coreGrowingShiftSignedEndpointBilinearSlice j N : ℂ) =
      coreGrowingShiftSignedEndpointZeroPaddedSlice j N := by
  classical
  let Y : ℕ := coreGrowingShiftEndpointFourierModulus j
  have hNrange := hN
  simp only [coreGrowingShiftSignedStaircasePrefixSet,
    Finset.mem_Ico] at hNrange
  have hNY : N < Y := by
    unfold Y coreGrowingShiftEndpointFourierModulus
    omega
  have hsupport :
      ∀ p ∈ coreGrowingShiftSignedEndpointPairSet j N,
        p.1 < Y ∧ p.2 < Y := by
    intro p hp
    obtain ⟨hn1, hnN, hnm, hmY, _hlo, _hhi⟩ :=
      coreGrowingShiftSignedEndpointPair_support hp
    constructor
    · exact lt_of_le_of_lt hnN hNY
    · simpa [Y, coreGrowingShiftEndpointFourierModulus] using hmY
  symm
  unfold coreGrowingShiftSignedEndpointZeroPaddedSlice
  rw [sum_zmod_eq_sum_fin]
  simp_rw [sum_zmod_eq_sum_fin]
  calc
    (∑ x : Fin Y, ∑ y : Fin Y,
      coreGrowingShiftEndpointMobiusZeroPad j
          (x.val : CoreGrowingShiftEndpointFourierIndex j) *
        coreGrowingShiftEndpointMobiusZeroPad j
          (y.val : CoreGrowingShiftEndpointFourierIndex j) *
        coreGrowingShiftEndpointKernelZeroPad j N
          (x.val : CoreGrowingShiftEndpointFourierIndex j)
          (y.val : CoreGrowingShiftEndpointFourierIndex j)) =
      ∑ x : Fin Y, ∑ y : Fin Y,
        if (x.val, y.val) ∈
            coreGrowingShiftSignedEndpointPairSet j N then
          (moebiusReal x.val : ℂ) *
            (moebiusReal y.val : ℂ) *
              (coreGrowingShiftSignedEndpointKernel
                j N x.val y.val : ℂ)
        else 0 := by
          apply Fintype.sum_congr
          intro x
          apply Fintype.sum_congr
          intro y
          have hxval :
              ZMod.val
                (x.val : CoreGrowingShiftEndpointFourierIndex j) = x.val := by
            exact ZMod.val_cast_of_lt x.isLt
          have hyval :
              ZMod.val
                (y.val : CoreGrowingShiftEndpointFourierIndex j) = y.val := by
            exact ZMod.val_cast_of_lt y.isLt
          rw [hxval, hyval]
          by_cases hp :
              (x.val, y.val) ∈
                coreGrowingShiftSignedEndpointPairSet j N
          · obtain ⟨hn1, _hnN, hnm, _hmY, _hlo, _hhi⟩ :=
              coreGrowingShiftSignedEndpointPair_support hp
            have hm1 : 1 ≤ y.val := by omega
            simp [coreGrowingShiftEndpointMobiusZeroPad,
              coreGrowingShiftEndpointKernelZeroPad, hp, hn1, hm1]
          · simp [coreGrowingShiftEndpointKernelZeroPad, hp]
    _ = ∑ p ∈ coreGrowingShiftSignedEndpointPairSet j N,
        (moebiusReal p.1 : ℂ) * (moebiusReal p.2 : ℂ) *
          (coreGrowingShiftSignedEndpointKernel j N p.1 p.2 : ℂ) := by
      exact sum_fin_pair_indicator_eq
        (coreGrowingShiftSignedEndpointPairSet j N)
        hsupport
        (fun p =>
          (moebiusReal p.1 : ℂ) * (moebiusReal p.2 : ℂ) *
            (coreGrowingShiftSignedEndpointKernel j N p.1 p.2 : ℂ))
    _ = (coreGrowingShiftSignedEndpointBilinearSlice j N : ℂ) := by
      simp [coreGrowingShiftSignedEndpointBilinearSlice,
        map_mul, map_sum]

/-- Exact finite Fourier pairing with Mathlib's `ZMod.dft` sign convention. -/
theorem finite_zmod_pairing_eq_dft
    {Q : ℕ} [NeZero Q]
    (f g : ZMod Q → ℂ) :
    (∑ x : ZMod Q, f x * g x) =
      (Q : ℂ)⁻¹ *
        ∑ r : ZMod Q, ZMod.dft f (-r) * ZMod.dft g r := by
  classical
  have hinv (x : ZMod Q) :
      g x = (Q : ℂ)⁻¹ *
        ∑ r : ZMod Q,
          ZMod.stdAddChar (r * x) * ZMod.dft g r := by
    have h := congrFun
      ((ZMod.dft (N := Q) (E := ℂ)).symm_apply_apply g) x
    rw [ZMod.invDFT_apply] at h
    simpa [smul_eq_mul] using h.symm
  have hfreq (r : ZMod Q) :
      (∑ x : ZMod Q,
        f x * ZMod.stdAddChar (r * x)) =
        ZMod.dft f (-r) := by
    rw [ZMod.dft_apply]
    apply Finset.sum_congr rfl
    intro x _hx
    simp only [smul_eq_mul]
    have harg : -(x * -r) = r * x := by ring
    rw [harg]
    ring
  calc
    (∑ x : ZMod Q, f x * g x) =
      ∑ x : ZMod Q,
        f x * ((Q : ℂ)⁻¹ *
          ∑ r : ZMod Q,
            ZMod.stdAddChar (r * x) * ZMod.dft g r) := by
              apply Fintype.sum_congr
              intro x
              rw [hinv]
    _ = (Q : ℂ)⁻¹ *
        ∑ r : ZMod Q,
          (∑ x : ZMod Q,
            f x * ZMod.stdAddChar (r * x)) * ZMod.dft g r := by
      simp_rw [mul_sum, sum_mul]
      rw [sum_comm]
      ring
    _ = (Q : ℂ)⁻¹ *
        ∑ r : ZMod Q, ZMod.dft f (-r) * ZMod.dft g r := by
      congr 2
      apply Finset.sum_congr rfl
      intro r _hr
      rw [hfreq]

/-- Iterated two-dimensional DFT of a finite kernel. -/
def finiteZModKernelDFT2
    {Q : ℕ} [NeZero Q]
    (K : ZMod Q → ZMod Q → ℂ)
    (r s : ZMod Q) : ℂ :=
  ZMod.dft (fun x => ZMod.dft (K x) s) r

/-- Exact two-dimensional finite Fourier representation of a bilinear kernel.
No positivity or norm enters: this is two applications of finite inversion and
finite Fubini. -/
theorem finite_zmod_bilinear_eq_iterated_dft
    {Q : ℕ} [NeZero Q]
    (f : ZMod Q → ℂ)
    (K : ZMod Q → ZMod Q → ℂ) :
    (∑ x : ZMod Q, ∑ y : ZMod Q,
      f x * f y * K x y) =
      (Q : ℂ)⁻¹ * (Q : ℂ)⁻¹ *
        ∑ r : ZMod Q, ∑ s : ZMod Q,
          ZMod.dft f (-r) * ZMod.dft f (-s) *
            finiteZModKernelDFT2 K r s := by
  classical
  have hinner (x : ZMod Q) :
      (∑ y : ZMod Q, f y * K x y) =
        (Q : ℂ)⁻¹ *
          ∑ s : ZMod Q,
            ZMod.dft f (-s) * ZMod.dft (K x) s :=
    finite_zmod_pairing_eq_dft f (K x)
  have houter (s : ZMod Q) :
      (∑ x : ZMod Q, f x * ZMod.dft (K x) s) =
        (Q : ℂ)⁻¹ *
          ∑ r : ZMod Q,
            ZMod.dft f (-r) *
              finiteZModKernelDFT2 K r s := by
    simpa [finiteZModKernelDFT2] using
      finite_zmod_pairing_eq_dft f
        (fun x => ZMod.dft (K x) s)
  calc
    (∑ x : ZMod Q, ∑ y : ZMod Q,
      f x * f y * K x y) =
      ∑ x : ZMod Q, f x *
        (∑ y : ZMod Q, f y * K x y) := by
          apply Fintype.sum_congr
          intro x
          rw [Finset.mul_sum]
          apply Finset.sum_congr rfl
          intro y _hy
          ring
    _ = ∑ x : ZMod Q, f x *
        ((Q : ℂ)⁻¹ *
          ∑ s : ZMod Q,
            ZMod.dft f (-s) * ZMod.dft (K x) s) := by
          apply Fintype.sum_congr
          intro x
          rw [hinner]
    _ = (Q : ℂ)⁻¹ *
        ∑ s : ZMod Q,
          ZMod.dft f (-s) *
            (∑ x : ZMod Q, f x * ZMod.dft (K x) s) := by
      simp_rw [mul_sum, sum_mul]
      rw [sum_comm]
      ring
    _ = (Q : ℂ)⁻¹ *
        ∑ s : ZMod Q,
          ZMod.dft f (-s) *
            ((Q : ℂ)⁻¹ *
              ∑ r : ZMod Q,
                ZMod.dft f (-r) *
                  finiteZModKernelDFT2 K r s) := by
      congr 2
      apply Finset.sum_congr rfl
      intro s _hs
      rw [houter]
    _ = (Q : ℂ)⁻¹ * (Q : ℂ)⁻¹ *
        ∑ r : ZMod Q, ∑ s : ZMod Q,
          ZMod.dft f (-r) * ZMod.dft f (-s) *
            finiteZModKernelDFT2 K r s := by
      rw [sum_comm]
      simp_rw [mul_sum, sum_mul]
      ring

/-- Two-dimensional DFT of the exact zero-padded strict endpoint kernel. -/
def coreGrowingShiftEndpointKernelDFT2
    (j N : ℕ)
    (r s : CoreGrowingShiftEndpointFourierIndex j) : ℂ :=
  finiteZModKernelDFT2
    (coreGrowingShiftEndpointKernelZeroPad j N) r s

/-- Frequency representation of one fixed-prefix endpoint slice. -/
def coreGrowingShiftSignedEndpointFourierSlice
    (j N : ℕ) : ℂ :=
  let Y : ℕ := coreGrowingShiftEndpointFourierModulus j
  (Y : ℂ)⁻¹ * (Y : ℂ)⁻¹ *
    ∑ r : CoreGrowingShiftEndpointFourierIndex j,
      ∑ s : CoreGrowingShiftEndpointFourierIndex j,
        ZMod.dft (coreGrowingShiftEndpointMobiusZeroPad j) (-r) *
          ZMod.dft (coreGrowingShiftEndpointMobiusZeroPad j) (-s) *
            coreGrowingShiftEndpointKernelDFT2 j N r s

/-- Exact fixed-prefix two-dimensional Fourier identity. -/
theorem coreGrowingShiftSignedEndpointZeroPaddedSlice_eq_fourier
    (j N : ℕ) :
    coreGrowingShiftSignedEndpointZeroPaddedSlice j N =
      coreGrowingShiftSignedEndpointFourierSlice j N := by
  unfold coreGrowingShiftSignedEndpointZeroPaddedSlice
    coreGrowingShiftSignedEndpointFourierSlice
    coreGrowingShiftEndpointKernelDFT2
  exact finite_zmod_bilinear_eq_iterated_dft
    (coreGrowingShiftEndpointMobiusZeroPad j)
    (coreGrowingShiftEndpointKernelZeroPad j N)

/-- Complex frequency packet before taking its real part. -/
def coreGrowingShiftSignedEndpointFourierPacketComplex
    (j : ℕ) : ℂ :=
  ∑ N ∈ coreGrowingShiftSignedStaircasePrefixSet j,
    coreGrowingShiftSignedEndpointFourierSlice j N

/-- Real signed frequency packet.  Taking the real part loses nothing because
it is exactly equal to the original real endpoint packet. -/
def coreGrowingShiftSignedEndpointFourierPacket
    (j : ℕ) : ℝ :=
  (coreGrowingShiftSignedEndpointFourierPacketComplex j).re

/-- The complete zero-padded frequency packet is the complexification of the
original real endpoint-bilinear packet. -/
theorem coreGrowingShiftSignedEndpointBilinearPacket_cast_eq_fourierComplex
    (j : ℕ) :
    (coreGrowingShiftSignedEndpointBilinearPacket j : ℂ) =
      coreGrowingShiftSignedEndpointFourierPacketComplex j := by
  rw [coreGrowingShiftSignedEndpointBilinearPacket_eq_sum_slices]
  unfold coreGrowingShiftSignedEndpointFourierPacketComplex
  apply Finset.sum_congr rfl
  intro N hN
  rw [coreGrowingShiftSignedEndpointBilinearSlice_eq_zeroPadded hN,
    coreGrowingShiftSignedEndpointZeroPaddedSlice_eq_fourier]

/-- The imaginary part cancels exactly after the complete signed frequency
sum. -/
theorem coreGrowingShiftSignedEndpointFourierPacketComplex_im
    (j : ℕ) :
    (coreGrowingShiftSignedEndpointFourierPacketComplex j).im = 0 := by
  rw [← coreGrowingShiftSignedEndpointBilinearPacket_cast_eq_fourierComplex]
  simp

/-- Exact real packet identity in two-dimensional frequency coordinates. -/
theorem coreGrowingShiftSignedEndpointBilinearPacket_eq_fourier
    (j : ℕ) :
    coreGrowingShiftSignedEndpointBilinearPacket j =
      coreGrowingShiftSignedEndpointFourierPacket j := by
  unfold coreGrowingShiftSignedEndpointFourierPacket
  have h := congrArg Complex.re
    (coreGrowingShiftSignedEndpointBilinearPacket_cast_eq_fourierComplex j)
  simpa using h

/-- Exact RH-facing return in frequency coordinates. -/
theorem coreGrowingShiftFirstDifferencePacket_eq_two_mul_endpointFourier
    (j : ℕ) :
    coreGrowingShiftFirstDifferencePacket j =
      2 * coreGrowingShiftSignedEndpointFourierPacket j := by
  rw [coreGrowingShiftFirstDifferencePacket_eq_two_mul_endpointBilinear,
    coreGrowingShiftSignedEndpointBilinearPacket_eq_fourier]

/-- Source-facing condition on the exact signed two-dimensional frequency
packet. -/
def SubpolynomialCoreGrowingShiftSignedEndpointFourierPacket : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      2 * coreGrowingShiftSignedEndpointFourierPacket j ≤
        C * (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- Exact equivalence with the strict endpoint-bilinear source. -/
theorem subpolynomialCoreGrowingShiftSignedEndpointFourierPacket_iff_bilinear :
    SubpolynomialCoreGrowingShiftSignedEndpointFourierPacket ↔
      SubpolynomialCoreGrowingShiftSignedEndpointBilinearPacket := by
  constructor
  · intro hFourier δ hδ
    obtain ⟨C, hC, hbound⟩ := hFourier δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [coreGrowingShiftSignedEndpointBilinearPacket_eq_fourier]
    exact hbound j
  · intro hBilinear δ hδ
    obtain ⟨C, hC, hbound⟩ := hBilinear δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [← coreGrowingShiftSignedEndpointBilinearPacket_eq_fourier]
    exact hbound j

/-- Conditional RH endpoint stated on the exact two-dimensional frequency
packet. -/
theorem riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointFourierPacket
    (hFourier : SubpolynomialCoreGrowingShiftSignedEndpointFourierPacket) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointBilinearPacket
    (subpolynomialCoreGrowingShiftSignedEndpointFourierPacket_iff_bilinear.mp
      hFourier)

/-- Source profile for a theorem already stated on the complete signed
frequency packet. -/
structure SignedEndpointFourierSource where
  sourceStatement : Prop
  exactZeroPadding : Prop
  noWrapControl : Prop
  dftSignNormalization : Prop
  twoDimensionalInversion : Prop
  strictSupportPreservation : Prop
  clampedKernelPreservation : Prop
  signedFrequencyCancellation : Prop
  crossPrefixCancellation : Prop
  allScaleUniformity : Prop
  finiteSmallScaleControl : Prop

/-- Proof-producing boundary for a future Fourier/dispersion theorem. -/
structure ToCoreGrowingShiftSignedEndpointFourierPacket
    (d : SignedEndpointFourierSource) : Type where
  toFourier :
    d.sourceStatement →
      d.exactZeroPadding →
      d.noWrapControl →
      d.dftSignNormalization →
      d.twoDimensionalInversion →
      d.strictSupportPreservation →
      d.clampedKernelPreservation →
      d.signedFrequencyCancellation →
      d.crossPrefixCancellation →
      d.allScaleUniformity →
      d.finiteSmallScaleControl →
      SubpolynomialCoreGrowingShiftSignedEndpointFourierPacket

/-- Generic conditional endpoint through an explicitly constructed signed
frequency adapter. -/
theorem riemannHypothesis_of_signedEndpointFourierAdapter
    (d : SignedEndpointFourierSource)
    (bridge : ToCoreGrowingShiftSignedEndpointFourierPacket d)
    (hsource : d.sourceStatement)
    (hzero : d.exactZeroPadding)
    (hnowrap : d.noWrapControl)
    (hsign : d.dftSignNormalization)
    (hinversion : d.twoDimensionalInversion)
    (hsupport : d.strictSupportPreservation)
    (hclamp : d.clampedKernelPreservation)
    (hfrequency : d.signedFrequencyCancellation)
    (hprefix : d.crossPrefixCancellation)
    (huniform : d.allScaleUniformity)
    (hsmall : d.finiteSmallScaleControl) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointFourierPacket
    (bridge.toFourier hsource hzero hnowrap hsign hinversion hsupport
      hclamp hfrequency hprefix huniform hsmall)

/-- Hostile control: frequency cancellation may be exact while termwise
absolute frequency mass is positive. -/
theorem signedEndpointFourierCancellation_hostileWitness :
    ((1 : ℂ) + (-1 : ℂ)) = 0 ∧
      ‖(1 : ℂ)‖ + ‖(-1 : ℂ)‖ = 2 := by
  norm_num

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftSignedEndpointBilinearSlice_eq_zeroPadded
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.finite_zmod_pairing_eq_dft
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.finite_zmod_bilinear_eq_iterated_dft
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftSignedEndpointBilinearPacket_eq_fourier
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointFourierPacket
```
