/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilWeightedEighthStage

/-!
# Source-bound theta-radical compression at defect one sixteenth

This module formalizes the finite arithmetic and source-return assembly of the
three-mode theta-radical compression described in the supplied
`radical_compression_round/proof.md`.

The actual source is unchanged.  The physical test is `sigma * u`, the metric
is `coordinateMass u`, and the literal zeta form remains
`shiftedOddWeilEnergy T 0` with its negative odd pole.  The exact `n = 2`
prime term and the complete residual prime allowance are reused from
`WeilWeightedEighthStage`.

The continuum claims that a compressed vector is obtained by orthogonal
projection off the genuine theta radical, that this projection preserves the
literal Weil source, that it removes the recorded amount of the positive band
trace, and that it leaves the stated pole residual remain EXPLICIT hypotheses
in `ZetaRadicalCompressionInputs`.  The interval endpoints and their exact
rational consequences do not construct those analytical facts by decoding a
record.

The primary argument is the source-radical identity
`Q (u) = Q (compressed)` together with contraction in the SAME weighted norm.
After compression, the exact `n = 2` band, every residual prime power, the
complete `Delta_8` tail, and the remaining negative pole fit below `1/16`.
An arbitrary contraction without the source-return identity would not justify
this transfer.

Consumer: the zeta component of `obligation.weighted-half-gap` at defect
`1/16`.  The primitive nonprincipal component is the existing conditional
consumer `primitive_pair_sixteenthStage_of_source_inputs`.  The sharp half-gap,
the continuum construction of the radical projection, RH, and Dirichlet GRH
remain unresolved.

Representable finite data reuse the existing dependent `Lossless` codec and
dyadic coverage heat, including the complete unobserved tail.  Neither coding
nor coverage supplies an arithmetic sign.  The downstream actual spectral
semigroup bound additionally requires the closed reference-operator/source
bridge and is not asserted by the scalar theorem in this file.

Mathematical source base: grwtsk/math
`0e7d541461c6eff445ab2bae1c13af283ad74471`.
Closest local source: `WeilWeightedEighthStage.lean` and the supplied
three-mode radical-compression proof.  The finite arithmetic below is exact;
its transcendental interval premises and continuum source correspondence have
not been independently reviewed.  Lean elaboration/compilation, fresh kernel
replay, and transitive axiom auditing: NOT_RUN at publication.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set

namespace GRWTSK.NumberTheory.WeilQuadraticForm.WeightedStage

open LowSchur OddRootProjection OddSineForm OddHighComplement OddLiteralWindow
open GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory

namespace RadicalCompressionObservation

/-- Certified lower amount of the positive `n = 2` band trace captured by the
three-column radical frame. -/
def traceFloor : ℚ := 569 / 10000

/-- Certified price of the negative zeta pole after radical compression. -/
def poleUpper : ℚ := 1 / 50000

/-- Exact Gershgorin margins proving strict contraction of the three-column
frame against the enclosed weighted Gram matrix. -/
def contractionMargin0 : ℚ :=
  3550881411680955534371161445656063414927908007611110359217246043974516972045781823791961617802742050423 /
    200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000

def contractionMargin1 : ℚ :=
  1649323131677323867744939280649864629309780572277447092026712102316511621607477506213083919251583158693 /
    100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000

def contractionMargin2 : ℚ :=
  3028701391978597241617635511519533269247079934175279181925083005743040265628529213845869898353564357089 /
    200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000

/-- Directed endpoints of the computed finite-frame trace observation. -/
def traceReductionLower : ℚ :=
  1139521687716094902293157649 / 20000000000000000000000000000

def traceReductionUpper : ℚ :=
  1330847809442131468982450337 / 20000000000000000000000000000

/-- Directed endpoints for the squared residual of the pole vector after
projection to the three-mode radical.  The source pole costs one half of this. -/
def tauResidualSquareLower : ℚ :=
  -2120867254559031115560017414939419238952558286339755495274407928237612849435005045590668676735930363 /
    500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000

def tauResidualSquareUpper : ℚ :=
  1626965126374598412684757755401068649432827642639873104679690158631261230373073470408841790239771729 /
    50000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000

/-- The exact compressed negative-band price. -/
def compressedBandUpper : ℚ := EighthObservation.zetaBandUpper - traceFloor

/-- Complete source price after radical compression. -/
def zetaSixteenthPrice : ℚ :=
  compressedBandUpper + EighthObservation.residualWithTail + poleUpper

/-- Recorded reduced fraction of `zetaSixteenthPrice`. -/
def recordedZetaSixteenthPrice : ℚ :=
  25146892339808994427929475600016090149 /
    403323959649275107012821919989760000000

/-- Exact finite strict contraction witness. -/
theorem contractionMargins_pos :
    0 < contractionMargin0 ∧ 0 < contractionMargin1 ∧ 0 < contractionMargin2 := by
  norm_num [contractionMargin0, contractionMargin1, contractionMargin2]

/-- The directed trace observation genuinely supports the simpler rational
floor used by the source consumer. -/
theorem traceFloor_lt_traceReductionLower :
    traceFloor < traceReductionLower := by
  norm_num [traceFloor, traceReductionLower]

/-- The directed pole residual supports the stated half-price. -/
theorem half_tauResidualSquareUpper_lt_poleUpper :
    tauResidualSquareUpper / 2 < poleUpper := by
  norm_num [tauResidualSquareUpper, poleUpper]

/-- Exact reduction of the assembled finite arithmetic. -/
theorem zetaSixteenthPrice_eq_recorded :
    zetaSixteenthPrice = recordedZetaSixteenthPrice := by
  norm_num [zetaSixteenthPrice, compressedBandUpper, traceFloor,
    EighthObservation.zetaBandUpper, EighthObservation.residualWithTail,
    EighthObservation.residualPrimeUpper, Observation.deltaEight, poleUpper,
    recordedZetaSixteenthPrice]

/-- Strict terminal margin required by the zeta sixteenth-stage consumer. -/
theorem zetaSixteenthPrice_lt_sixteenth : zetaSixteenthPrice < 1 / 16 := by
  rw [zetaSixteenthPrice_eq_recorded]
  norm_num [recordedZetaSixteenthPrice]

end RadicalCompressionObservation

/-- Analytical/source inputs required to return the three-mode radical
compression to the literal zeta source.

`compressed` is intended to be `(I - P_R) u`, where `P_R` is the weighted
orthogonal projection onto the three genuine theta-radical directions.  This
structure does not assert that construction by naming it: source invariance,
metric contraction, the compressed band estimate, the entire residual prime
allowance, and the remaining pole price are separate fields. -/
structure ZetaRadicalCompressionInputs (T : ℝ) (sigma u compressed : ℝ → ℝ) : Prop where
  sourceReturn :
    shiftedOddWeilEnergy T 0 (physicalTest sigma u) =
      shiftedOddWeilEnergy T 0 (physicalTest sigma compressed)
  massContractive : coordinateMass compressed ≤ coordinateMass u
  archTwo :
    -(RadicalCompressionObservation.compressedBandUpper : ℝ) *
        coordinateMass compressed ≤
      gammaConstant 1 0 * coordinateMass (physicalTest sigma compressed) +
        oddArchimedeanEnergy (physicalTest sigma compressed) -
        zetaTwoPrimeTerm sigma compressed
  residualPrime :
    zetaResidualPrime T sigma compressed ≤
      (EighthObservation.residualWithTail : ℝ) * coordinateMass compressed
  pole :
    2 * (∫ t : ℝ,
      physicalTest sigma compressed t * Real.sinh (t / 2)) ^ 2 ≤
      (RadicalCompressionObservation.poleUpper : ℝ) *
        coordinateMass compressed

/-- Source-bound zeta sixteenth stage from a genuine radical compression.

All domain and support hypotheses for the original and compressed physical
tests remain visible.  The proof itself is the scalar source assembly after
those analytical facts have been supplied. -/
theorem zeta_sixteenthStage_of_radical_compression
    (T : ℝ) (sigma u compressed : ℝ → ℝ)
    (_hu : MemLp u 2 volume)
    (_hcompressed : MemLp compressed 2 volume)
    (_hphysical : MemLp (physicalTest sigma u) 2 volume)
    (_hphysicalCompressed : MemLp (physicalTest sigma compressed) 2 volume)
    (_hodd : Function.Odd (physicalTest sigma u))
    (_hoddCompressed : Function.Odd (physicalTest sigma compressed))
    (_hsupport : ∀ᵐ t : ℝ,
      t ∉ Icc (-T) T → physicalTest sigma u t = 0)
    (_hsupportCompressed : ∀ᵐ t : ℝ,
      t ∉ Icc (-T) T → physicalTest sigma compressed t = 0)
    (_henergy : IntegrableOn (fun r => parityKernel 0 r *
      (∫ t : ℝ, (physicalTest sigma u (t + r) -
        physicalTest sigma u t) ^ 2)) (Ioi 0))
    (_henergyCompressed : IntegrableOn (fun r => parityKernel 0 r *
      (∫ t : ℝ, (physicalTest sigma compressed (t + r) -
        physicalTest sigma compressed t) ^ 2)) (Ioi 0))
    (h : ZetaRadicalCompressionInputs T sigma u compressed) :
    -(1 / 16) * coordinateMass u ≤
      shiftedOddWeilEnergy T 0 (physicalTest sigma u) := by
  have hmass : 0 ≤ coordinateMass compressed := coordinateMass_nonneg compressed
  have hpriceQ := RadicalCompressionObservation.zetaSixteenthPrice_lt_sixteenth
  have hprice :
      (RadicalCompressionObservation.zetaSixteenthPrice : ℝ) ≤ 1 / 16 := by
    exact_mod_cast hpriceQ.le
  have hpriceMass := mul_le_mul_of_nonneg_right hprice hmass
  have hcompressedLower :
      -(1 / 16) * coordinateMass compressed ≤
        shiftedOddWeilEnergy T 0 (physicalTest sigma compressed) := by
    have harch := h.archTwo
    have hprime := h.residualPrime
    have hpole := h.pole
    have hbudget :
        (RadicalCompressionObservation.compressedBandUpper : ℝ) *
              coordinateMass compressed +
            (EighthObservation.residualWithTail : ℝ) *
              coordinateMass compressed +
            (RadicalCompressionObservation.poleUpper : ℝ) *
              coordinateMass compressed ≤
          (1 / 16) * coordinateMass compressed := by
      simpa [RadicalCompressionObservation.zetaSixteenthPrice,
        add_mul] using hpriceMass
    simp only [shiftedOddWeilEnergy, shiftedOddCoreEnergy, sub_zero,
      Real.norm_eq_abs, sq_abs]
    change -(1 / 16) * coordinateMass compressed ≤
      gammaConstant 1 0 * coordinateMass (physicalTest sigma compressed) +
        oddArchimedeanEnergy (physicalTest sigma compressed) -
        primeEnergy T (physicalTest sigma compressed) -
        2 * (∫ t : ℝ,
          physicalTest sigma compressed t * Real.sinh (t / 2)) ^ 2
    unfold zetaResidualPrime at hprime
    linarith
  rw [h.sourceReturn]
  nlinarith [h.massContractive]

/-! The finite evidence record remains distinct from the continuum premises. -/

/-- Hex digits of the exact source revision used to author the record. -/
def radicalCompressionSourceRevision : List ℕ :=
  [0, 14, 7, 13, 5, 4, 1, 4, 6, 1, 12, 6, 14, 15, 15, 4, 4, 5, 10, 11,
    2, 11, 10, 14, 1, 12, 1, 3, 10, 15, 2, 8, 3, 10, 13, 7, 4, 4, 7, 1]

/-- Descriptor tokens: defect denominator, radical dimension, exact-prime
label, spatial cells, frequency cells, multiplier terms, then source revision. -/
def radicalCompressionDescriptor : List ℕ :=
  [16, 3, 1, 3, 5, 2, 8192, 4096, 128] ++ radicalCompressionSourceRevision

/-- Exact finite parameters and terminal observations.  The ordering is
recorded in the module documentation; these numbers do not certify the
continuum fields of `ZetaRadicalCompressionInputs`. -/
def radicalCompressionPayload : List ℚ :=
  [1052113 / 1000000, 100946 / 1000000, -36426 / 1000000,
    0, 997273 / 1000000, -374774 / 1000000,
    0, 0, 1057605 / 1000000,
    114117 / 1000000, 11664 / 1000000, -3931 / 1000000,
    RadicalCompressionObservation.contractionMargin0,
    RadicalCompressionObservation.contractionMargin1,
    RadicalCompressionObservation.contractionMargin2,
    RadicalCompressionObservation.traceReductionLower,
    RadicalCompressionObservation.traceReductionUpper,
    RadicalCompressionObservation.traceFloor,
    RadicalCompressionObservation.tauResidualSquareLower,
    RadicalCompressionObservation.tauResidualSquareUpper,
    RadicalCompressionObservation.poleUpper,
    RadicalCompressionObservation.zetaSixteenthPrice]

abbrev RadicalCompressionRecord := EighthStageRecord

def recordedRadicalCompression : RadicalCompressionRecord :=
  ⟨radicalCompressionDescriptor, radicalCompressionPayload⟩

def radicalCompressionRecordCodec : Lossless RadicalCompressionRecord ℕ :=
  eighthStageRecordCodec

/-- Lossless transport retains the dependent descriptor and all exact finite
parameters together. -/
theorem recordedRadicalCompression_roundtrip :
    radicalCompressionRecordCodec.decode
        (radicalCompressionRecordCodec.encode recordedRadicalCompression) =
      some recordedRadicalCompression :=
  radicalCompressionRecordCodec.roundtrip recordedRadicalCompression

/-- Coverage of this representable record is not validity of its analytical
premises. -/
theorem recordedRadicalCompression_covered
    {x : ℕ → ℝ} (hx : ∀ n, 0 ≤ x n) (hm : 0 < ∑' n : ℕ, x n) :
    ∃ n : ℕ, Encodable.decode n = some recordedRadicalCompression ∧
      0 < stageCoverageStep x n :=
  every_eighthStage_record_covered hx hm recordedRadicalCompression

/-- The entire unobserved dyadic coverage tail is retained. -/
theorem radicalCompression_coverage_tail (J : ℕ) :
    (∑' k : ℕ, stageCoverageWeight (J + k)) = (1 / 2 : ℝ) ^ J :=
  eighthStage_coverage_tail J

end GRWTSK.NumberTheory.WeilQuadraticForm.WeightedStage
