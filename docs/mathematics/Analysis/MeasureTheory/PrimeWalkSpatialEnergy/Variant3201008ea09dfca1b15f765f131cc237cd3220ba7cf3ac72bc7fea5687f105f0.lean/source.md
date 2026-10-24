# Complete source: GRWTSK.Analysis.MeasureTheory.PrimeWalkSpatialEnergy.Variant3201008ea09dfca1b15f765f131cc237cd3220ba7cf3ac72bc7fea5687f105f0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8a3fe816600203380448f61f152eb18abff552de` · SHA-256 `3201008ea09dfca1b15f765f131cc237cd3220ba7cf3ac72bc7fea5687f105f0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public meta import Surface.Core.Classification
public import Surface.Core.PrimeWalkSpatialEncoding
public import Mathlib.MeasureTheory.Integral.Lebesgue.Markov
import Mathlib.Tactic

/-!
# Square-function energy and superlevel volume

This module proves the analytic inequality needed before any Kakeya input is
considered:

`threshold² * volume {threshold < G} ≤ integral G²`.

The proof is carried out in `ENNReal`, so no finiteness is silently lost by
applying `ENNReal.toReal` to an infinite measure.  For a finite packet family,
the square-function energy is then identified exactly with the sum of the
individual packet energies.
-/

public section

namespace Surface.Core.PrimeWalkSpatialEnergy

noncomputable section

open MeasureTheory Set
open scoped BigOperators ENNReal
open Surface.Core.PrimeWalkSpatialEncoding
open Surface.Core.PrimeWalkTwoScaleGrains

variable {α : Type*} [MeasurableSpace α] {μ : Measure α}

/-- `ENNReal` square energy of a nonnegative real-valued function. -/
@[expose]
def squareEnergy (G : α → ℝ) (μ : Measure α) : ℝ≥0∞ :=
  ∫⁻ x, (ENNReal.ofReal (G x)) ^ (2 : ℕ) ∂μ

/-- Markov/Chebyshev inequality for a strict square-function superlevel set.
No finiteness assumption is required in the `ENNReal` formulation. -/
@[surface_adapter, surface_published]
theorem threshold_sq_mul_measure_superlevel_le_squareEnergy
    (G : α → ℝ) (hG : AEMeasurable G μ) (threshold : ℝ) :
    (ENNReal.ofReal threshold) ^ (2 : ℕ) *
        μ {x | threshold < G x} ≤
      squareEnergy G μ := by
  let energyDensity : α → ℝ≥0∞ :=
    fun x => (ENNReal.ofReal (G x)) ^ (2 : ℕ)
  have hDensity : AEMeasurable energyDensity μ :=
    hG.ennreal_ofReal.pow_const 2
  have hSubset :
      {x | threshold < G x} ⊆
        {x | (ENNReal.ofReal threshold) ^ (2 : ℕ) ≤ energyDensity x} := by
    intro x hx
    dsimp [energyDensity]
    exact ENNReal.pow_le_pow_left (ENNReal.ofReal_le_ofReal hx.le)
  calc
    (ENNReal.ofReal threshold) ^ (2 : ℕ) *
          μ {x | threshold < G x} ≤
        (ENNReal.ofReal threshold) ^ (2 : ℕ) *
          μ {x | (ENNReal.ofReal threshold) ^ (2 : ℕ) ≤
            energyDensity x} :=
      by
        gcongr
    _ ≤ ∫⁻ x, energyDensity x ∂μ :=
      mul_meas_ge_le_lintegral₀ hDensity _
    _ = squareEnergy G μ := rfl

/-- A positive threshold and finite square energy force the superlevel set to
have finite measure.  This is the missing side condition needed before any
`ENNReal.toReal` conversion. -/
@[surface_novel, surface_published]
theorem measure_superlevel_ne_top_of_squareEnergy_ne_top
    (G : α → ℝ) (hG : AEMeasurable G μ) {threshold : ℝ}
    (hThreshold : 0 < threshold)
    (hEnergyFinite : squareEnergy G μ ≠ ∞) :
    μ {x | threshold < G x} ≠ ∞ := by
  have hMarkov :=
    threshold_sq_mul_measure_superlevel_le_squareEnergy
      G hG threshold
  intro hMeasureTop
  have hThresholdENNReal : ENNReal.ofReal threshold ≠ 0 :=
    ENNReal.ofReal_ne_zero_iff.mpr hThreshold
  have hThresholdSq : (ENNReal.ofReal threshold) ^ (2 : ℕ) ≠ 0 :=
    pow_ne_zero _ hThresholdENNReal
  have hLeftTop :
      (ENNReal.ofReal threshold) ^ (2 : ℕ) *
          μ {x | threshold < G x} = ∞ := by
    simp [hMeasureTop, hThresholdSq]
  rw [hLeftTop] at hMarkov
  exact hEnergyFinite (top_unique hMarkov)

/-- Real-valued form of the superlevel inequality, with finiteness proved
rather than silently assumed. -/
@[surface_novel, surface_published]
theorem threshold_sq_mul_measureReal_superlevel_le_energyReal
    (G : α → ℝ) (hG : AEMeasurable G μ) {threshold : ℝ}
    (hThreshold : 0 < threshold)
    (hEnergyFinite : squareEnergy G μ ≠ ∞) :
    threshold ^ 2 * (μ {x | threshold < G x}).toReal ≤
      (squareEnergy G μ).toReal := by
  have hMeasureFinite : μ {x | threshold < G x} ≠ ∞ :=
    measure_superlevel_ne_top_of_squareEnergy_ne_top
      G hG hThreshold hEnergyFinite
  have hENNReal :=
    threshold_sq_mul_measure_superlevel_le_squareEnergy
      G hG threshold
  have hLeftFinite :
      (ENNReal.ofReal threshold) ^ (2 : ℕ) *
          μ {x | threshold < G x} ≠ ∞ :=
    ENNReal.mul_ne_top
      (ENNReal.pow_ne_top ENNReal.ofReal_ne_top)
      hMeasureFinite
  have hReal :=
    (ENNReal.toReal_le_toReal hLeftFinite hEnergyFinite).2 hENNReal
  simpa [ENNReal.toReal_mul, ENNReal.toReal_pow,
    ENNReal.toReal_ofReal hThreshold.le] using hReal

/-! ## Exact finite packet energy -/

variable
    {Packet : Type*} [DecidableEq Packet]
    (packets : Finset Packet)
    (wavePacket : Packet → SpatialSignal)

/-- Sum of the individual `L²` packet energies, represented as lintegrals of
the squared pointwise norm. -/
@[expose]
def packetEnergy : ℝ≥0∞ :=
  ∑ packet ∈ packets,
    ∫⁻ point : SpatialPoint,
      ‖wavePacket packet point‖ₑ ^ (2 : ℕ) ∂volume

omit [DecidableEq Packet] in
/-- Finite `L²` packet families have finite total square energy. -/
@[surface_novel, surface_published]
theorem packetEnergy_ne_top
    (hPacket : ∀ packet ∈ packets,
      MemLp (wavePacket packet) 2
        (volume : Measure SpatialPoint)) :
    packetEnergy packets wavePacket ≠ ∞ := by
  apply ENNReal.sum_ne_top.2
  intro packet hpacket
  have hIntegral :
      (∫⁻ point : SpatialPoint,
        ‖wavePacket packet point‖ₑ ^ (2 : ℝ) ∂volume) < ∞ :=
    lintegral_rpow_enorm_lt_top_of_eLpNorm_lt_top
      (p := (2 : ℝ≥0∞)) (by norm_num) (by norm_num)
      (hPacket packet hpacket).2
  simpa using hIntegral.ne

/-- The pointwise packet square function squares to the sum of squared packet
norms, with the equality expressed directly in `ENNReal`. -/
@[surface_novel, surface_published]
theorem packetSquareFunction_enorm_sq (point : SpatialPoint) :
    (ENNReal.ofReal (packetSquareFunction packets wavePacket point)) ^
        (2 : ℕ) =
      ∑ packet ∈ packets,
        ‖wavePacket packet point‖ₑ ^ (2 : ℕ) := by
  unfold packetSquareFunction
  rw [← ENNReal.ofReal_pow (Real.sqrt_nonneg _) 2]
  rw [Real.sq_sqrt (by positivity)]
  rw [ENNReal.ofReal_sum_of_nonneg]
  · simp only [ENNReal.ofReal_pow (norm_nonneg _) 2, ofReal_norm]
  · intro packet hpacket
    exact sq_nonneg _

/-- Exact square-function energy identity for a finite family of measurable
packets. -/
@[surface_novel, surface_published]
theorem packetSquareEnergy_eq_sum
    (hPacket : ∀ packet ∈ packets,
      AEStronglyMeasurable (wavePacket packet)
        (volume : Measure SpatialPoint)) :
    squareEnergy (packetSquareFunction packets wavePacket)
        (volume : Measure SpatialPoint) =
      packetEnergy packets wavePacket := by
  rw [squareEnergy]
  simp_rw [packetSquareFunction_enorm_sq packets wavePacket]
  exact lintegral_finsetSum' packets (fun packet hpacket =>
    (hPacket packet hpacket).enorm.pow_const 2)

/-- A finite family of `L²` packets has a finite square-function energy. -/
@[surface_novel, surface_published]
theorem packetSquareEnergy_ne_top
    (hPacket : ∀ packet ∈ packets,
      MemLp (wavePacket packet) 2
        (volume : Measure SpatialPoint)) :
    squareEnergy (packetSquareFunction packets wavePacket)
        (volume : Measure SpatialPoint) ≠ ∞ := by
  rw [packetSquareEnergy_eq_sum packets wavePacket
    (fun packet hpacket => (hPacket packet hpacket).1)]
  exact packetEnergy_ne_top packets wavePacket hPacket

/-- The exact packet-energy form of the superlevel inequality. -/
@[surface_novel, surface_published]
theorem threshold_sq_mul_measure_packetSuperlevel_le_energy
    (hPacket : ∀ packet ∈ packets,
      AEStronglyMeasurable (wavePacket packet)
        (volume : Measure SpatialPoint))
    (threshold : ℝ) :
    (ENNReal.ofReal threshold) ^ (2 : ℕ) *
        volume
          (spatialSuperlevelSet
            (packetSquareFunction packets wavePacket) threshold) ≤
      packetEnergy packets wavePacket := by
  have hSquare :
      AEMeasurable (packetSquareFunction packets wavePacket)
        (volume : Measure SpatialPoint) := by
    unfold packetSquareFunction
    apply AEMeasurable.sqrt
    exact Finset.aemeasurable_fun_sum packets (fun packet hpacket =>
      ((hPacket packet hpacket).norm.aemeasurable.pow_const 2))
  calc
    (ENNReal.ofReal threshold) ^ (2 : ℕ) *
        volume
          (spatialSuperlevelSet
            (packetSquareFunction packets wavePacket) threshold) ≤
      squareEnergy (packetSquareFunction packets wavePacket)
        (volume : Measure SpatialPoint) := by
          exact threshold_sq_mul_measure_superlevel_le_squareEnergy
            _ hSquare threshold
    _ = packetEnergy packets wavePacket :=
      packetSquareEnergy_eq_sum packets wavePacket hPacket

/-- Specialization to the packet family carried by a spatial encoding. -/
@[surface_novel, surface_published]
theorem SpatialEncodedTrajectory.threshold_sq_mul_superlevel_le_packetEnergy
    {S : ErrorTrajectory}
    {FineTube CoarseTube Grain : Type*}
    [DecidableEq FineTube] [DecidableEq CoarseTube] [DecidableEq Grain]
    (encoding : SpatialEncodedTrajectory S FineTube CoarseTube Grain) :
    (ENNReal.ofReal encoding.amplitudeThreshold) ^ (2 : ℕ) *
        volume
          (spatialSuperlevelSet
            (packetSquareFunction encoding.grains.fineTubes
              encoding.wavePacket)
            encoding.amplitudeThreshold) ≤
      packetEnergy encoding.grains.fineTubes encoding.wavePacket := by
  exact threshold_sq_mul_measure_packetSuperlevel_le_energy
    encoding.grains.fineTubes encoding.wavePacket
    (fun packet hpacket =>
      (encoding.packet_memLp packet hpacket).1)
    encoding.amplitudeThreshold

/-! ## Real calibration inequality -/

/-- Algebraic endpoint of the energy--volume argument.

The measure-theoretic layer should supply `threshold_sq_mul_volume_le_energy`
only after establishing that the relevant `ENNReal` quantities are finite and
converting them to real numbers.  Keeping this step separate prevents
`ENNReal.toReal ⊤ = 0` from entering the proof unnoticed. -/
@[surface_novel, surface_published]
theorem matrixNorm_le_of_superlevelVolume
    {matrixNorm calibrationConstant threshold decodedResidual
      squareFunctionEnergy superlevelVolume : ℝ}
    (hCalibration_pos : 0 < calibrationConstant)
    (hThreshold_nonneg : 0 ≤ threshold)
    (hVolume_pos : 0 < superlevelVolume)
    (hCalibration :
      calibrationConstant * matrixNorm ≤ threshold + decodedResidual)
    (hEnergy :
      threshold ^ 2 * superlevelVolume ≤ squareFunctionEnergy) :
    matrixNorm ≤ calibrationConstant⁻¹ *
      (Real.sqrt (squareFunctionEnergy / superlevelVolume) +
        decodedResidual) := by
  have hRatio :
      threshold ^ 2 ≤ squareFunctionEnergy / superlevelVolume :=
    (le_div_iff₀ hVolume_pos).2 hEnergy
  have hThreshold :
      threshold ≤ Real.sqrt (squareFunctionEnergy / superlevelVolume) :=
    (Real.le_sqrt hThreshold_nonneg
      ((sq_nonneg threshold).trans hRatio)).2 hRatio
  have hDivide :
      matrixNorm ≤ (threshold + decodedResidual) / calibrationConstant :=
    (le_div_iff₀ hCalibration_pos).2 (by
      simpa [mul_comm] using hCalibration)
  calc
    matrixNorm ≤ (threshold + decodedResidual) / calibrationConstant := hDivide
    _ ≤ (Real.sqrt (squareFunctionEnergy / superlevelVolume) +
          decodedResidual) / calibrationConstant := by
      exact (div_le_div_iff_of_pos_right hCalibration_pos).2
        (add_le_add hThreshold le_rfl)
    _ = calibrationConstant⁻¹ *
        (Real.sqrt (squareFunctionEnergy / superlevelVolume) +
          decodedResidual) := by
      rw [div_eq_inv_mul]

end

end Surface.Core.PrimeWalkSpatialEnergy
```
