/- 
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #757. Direct stacked parent: draft PR #756 at exact head
`e7851e000b9f292d16eeeff14f68a1e4a33b9c6e`.
-/
import GRWTSK.NumberTheory.Moebius.RegularOrbitFullFrequencyL2Reduction
import Mathlib.Analysis.Fourier.ZMod

/-!
# Exact bridge to Mathlib's ZMod discrete Fourier transform

The repository transform is

`F(k) = sum_s C(s) * ZMod.stdAddChar (k*s)`.

Mathlib's `ZMod.dft` uses

`dft(C)(k) = sum_s ZMod.stdAddChar (-(s*k)) * C(s)`.

Because `ZMod (d*d)` is commutative, the repository transform at `k` is
exactly Mathlib's DFT at `-k`.  Negation is a permutation of the full
frequency group, so the complete squared L2 energies are identical.

This module proves only that normalization bridge and reduces the repository
Parseval proposition to an unnormalized Mathlib-DFT Parseval proposition.
No DFT Parseval norm identity is proved here.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Exact pointwise identification with Mathlib's DFT at the negated
frequency. -/
theorem stdAddCharResidueFourier_eq_mathlibDft_neg
    (d : ℕ) [NeZero d]
    (C : ZMod (d * d) → ℂ)
    (k : ZMod (d * d)) :
    stdAddCharResidueFourier d C k =
      ZMod.dft C (-k) := by
  unfold stdAddCharResidueFourier
  rw [ZMod.dft_apply]
  apply Finset.sum_congr rfl
  intro s _hs
  simp only [smul_eq_mul]
  have harg :
      -(s * (-k)) = k * s := by
    ring
  rw [harg]
  ring

/-- Full-frequency square energy is unchanged by the frequency-negation
reindex. -/
theorem sum_norm_sq_stdAddCharResidueFourier_eq_mathlibDft
    (d : ℕ) [NeZero d]
    (C : ZMod (d * d) → ℂ) :
    (∑ k : ZMod (d * d),
      ‖stdAddCharResidueFourier d C k‖ ^ 2) =
      ∑ k : ZMod (d * d), ‖ZMod.dft C k‖ ^ 2 := by
  simp_rw [stdAddCharResidueFourier_eq_mathlibDft_neg]
  exact
    Fintype.sum_equiv
      (Equiv.neg (ZMod (d * d)))
      (fun k => ‖ZMod.dft C (-k)‖ ^ 2)
      (fun k => ‖ZMod.dft C k‖ ^ 2)
      (fun k => by
        simp)

/-- Exact unnormalized Parseval proposition for Mathlib's `ZMod.dft`.

This proposition is typed but not inhabited in this module. -/
def UnnormalizedZModDFTParseval : Prop :=
  ∀ d : ℕ, ∀ _hd : NeZero d,
    ∀ C : ZMod (d * d) → ℂ,
      (∑ k : ZMod (d * d), ‖ZMod.dft C k‖ ^ 2) =
        ((d * d : ℕ) : ℝ) *
          (∑ s : ZMod (d * d), ‖C s‖ ^ 2)

/-- The repository Parseval proposition is exactly equivalent to the
unnormalized Mathlib-DFT Parseval proposition. -/
theorem stdAddCharSquareModulusParseval_iff_mathlibDft :
    StdAddCharSquareModulusParseval ↔
      UnnormalizedZModDFTParseval := by
  constructor
  · intro hRepo d hd C
    let : NeZero d := hd
    rw [← sum_norm_sq_stdAddCharResidueFourier_eq_mathlibDft d C]
    exact hRepo d hd C
  · intro hDft d hd C
    let : NeZero d := hd
    rw [sum_norm_sq_stdAddCharResidueFourier_eq_mathlibDft d C]
    exact hDft d hd C

/-- Proof-relevant adapter from the exact Mathlib-DFT norm proposition into
the repository Parseval proposition. -/
def mathlibDftParsevalToStdAddCharAdapter :
    ToStdAddCharSquareModulusParsevalAdapter
      UnnormalizedZModDFTParseval where
  toParseval :=
    stdAddCharSquareModulusParseval_iff_mathlibDft.mpr

/-- Reverse proof-relevant adapter, useful for auditing exact equivalence. -/
structure ToUnnormalizedZModDFTParsevalAdapter
    (source : Prop) : Type where
  toDftParseval :
    source → UnnormalizedZModDFTParseval

/-- Repository Parseval implies the exact unnormalized Mathlib-DFT norm
identity. -/
def stdAddCharParsevalToMathlibDftAdapter :
    ToUnnormalizedZModDFTParsevalAdapter
      StdAddCharSquareModulusParseval where
  toDftParseval :=
    stdAddCharSquareModulusParseval_iff_mathlibDft.mp

/-- Conservative source profile for the still-open DFT norm identity. -/
structure UnnormalizedZModDFTParsevalSourceData where
  theoremStatement : Prop
  mathlibZModDftMatched : Prop
  countingMeasureNormalizationMatched : Prop
  noUnitaryNormalizationInserted : Prop
  fullFrequencySetMatched : Prop
  fullResidueSetMatched : Prop
  normSquareConventionMatched : Prop
  modulusFactorExactlyDSquared : Prop

/-- Source proposition for a future exact Mathlib-DFT Parseval theorem. -/
def UnnormalizedZModDFTParsevalSource
    (d : UnnormalizedZModDFTParsevalSourceData) : Prop :=
  d.theoremStatement ∧
    d.mathlibZModDftMatched ∧
    d.countingMeasureNormalizationMatched ∧
    d.noUnitaryNormalizationInserted ∧
    d.fullFrequencySetMatched ∧
    d.fullResidueSetMatched ∧
    d.normSquareConventionMatched ∧
    d.modulusFactorExactlyDSquared

abbrev UnnormalizedZModDFTParsevalSourceAdapter
    (d : UnnormalizedZModDFTParsevalSourceData) :=
  ToUnnormalizedZModDFTParsevalAdapter
    (UnnormalizedZModDFTParsevalSource d)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.stdAddCharResidueFourier_eq_mathlibDft_neg
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.sum_norm_sq_stdAddCharResidueFourier_eq_mathlibDft
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.stdAddCharSquareModulusParseval_iff_mathlibDft
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.mathlibDftParsevalToStdAddCharAdapter
