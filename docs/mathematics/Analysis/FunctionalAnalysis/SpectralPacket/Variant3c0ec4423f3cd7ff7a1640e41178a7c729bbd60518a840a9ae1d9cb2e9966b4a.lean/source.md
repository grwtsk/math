# Complete source: GRWTSK.Analysis.FunctionalAnalysis.SpectralPacket.Variant3c0ec4423f3cd7ff7a1640e41178a7c729bbd60518a840a9ae1d9cb2e9966b4a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c5a06acdb4c72e7ff26b5893b012c5501abed36d` · SHA-256 `3c0ec4423f3cd7ff7a1640e41178a7c729bbd60518a840a9ae1d9cb2e9966b4a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Hilbert.Finite
import Mathlib.Analysis.SpecialFunctions.Exp
import Mathlib.Data.Matrix.Reflection
import Mathlib.Tactic.FinCases

/-!
# Normalized finite spectral packets

A continuous spectral delta is not an `L²` vector.  The executable finite
profile therefore uses a strictly positive Gaussian-shaped packet on a finite
spectral grid and normalizes it by its exact Hilbert norm.  The construction
does not identify this truncation with the analytic Gaussian integral.
-/

noncomputable section

namespace DAF.Hilbert

universe u

/-- Parameters for a nondegenerate packet on a finite real spectral grid. -/
structure SpectralPacketData (Grid : Type u) where
  spectralValue : Grid → ℝ
  center : ℝ
  width : ℝ
  width_pos : 0 < width

namespace SpectralPacketData

variable {Grid : Type u} [Fintype Grid] [Nonempty Grid]

/-- Positive Gaussian amplitude before normalization. -/
def rawAmplitude (packet : SpectralPacketData Grid) (index : Grid) : ℝ :=
  Real.exp (-((packet.spectralValue index - packet.center) ^ 2) /
    (2 * packet.width ^ 2))

omit [Fintype Grid] [Nonempty Grid] in
theorem rawAmplitude_pos
    (packet : SpectralPacketData Grid) (index : Grid) :
    0 < packet.rawAmplitude index :=
  Real.exp_pos _

/-- A fixed unit spin sheet is used in the initial finite profile. -/
def rawVector (packet : SpectralPacketData Grid) :
    FiniteHilbert (Grid × Fin 2) :=
  WithLp.toLp 2 fun index ↦
    if index.2 = 0 then ((packet.rawAmplitude index.1 : ℝ) : ℂ) else 0

omit [Nonempty Grid] in
@[simp]
theorem rawVector_apply_zero
    (packet : SpectralPacketData Grid) (index : Grid) :
    packet.rawVector (index, 0) = (packet.rawAmplitude index : ℂ) := by
  simp [rawVector]

theorem rawVector_ne_zero (packet : SpectralPacketData Grid) :
    packet.rawVector ≠ 0 := by
  intro zeroVector
  let index : Grid := Classical.choice inferInstance
  have pointwise := congrArg (fun vector : FiniteHilbert (Grid × Fin 2) ↦
    vector (index, 0)) zeroVector
  simp only [packet.rawVector_apply_zero, PiLp.zero_apply] at pointwise
  exact ne_of_gt (packet.rawAmplitude_pos index) (Complex.ofReal_eq_zero.mp pointwise)

/-- Exact norm-normalized spectral packet. -/
def vector (packet : SpectralPacketData Grid) :
    FiniteHilbert (Grid × Fin 2) :=
  ((‖packet.rawVector‖⁻¹ : ℝ) : ℂ) • packet.rawVector

theorem vector_norm (packet : SpectralPacketData Grid) :
    ‖packet.vector‖ = 1 := by
  rw [vector, norm_smul, Complex.norm_real, Real.norm_eq_abs,
    abs_of_nonneg (inv_nonneg.mpr (norm_nonneg _)),
    inv_mul_cancel₀]
  exact norm_ne_zero_iff.mpr packet.rawVector_ne_zero

/-- A packet state records the actual vector and its normalization theorem;
there is no constructor for a delta distribution. -/
structure NormalizedSpectralPacket (Grid : Type u) [Fintype Grid] where
  data : SpectralPacketData Grid
  vector : FiniteHilbert (Grid × Fin 2)
  norm_one : ‖vector‖ = 1

def normalized (packet : SpectralPacketData Grid) :
    NormalizedSpectralPacket Grid where
  data := packet
  vector := packet.vector
  norm_one := packet.vector_norm

end SpectralPacketData

end DAF.Hilbert
```
