-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.SpectralPacketData.Variant3c0ec4423f3cd7ff7a1640e41178a7c729bbd60518a840a9ae1d9cb2e9966b4a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3c0ec4423f3cd7ff7a1640e41178a7c729bbd60518a840a9ae1d9cb2e9966b4a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.SpectralPacketData.Variant3c0ec4423f3cd7ff7a1640e41178a7c729bbd60518a840a9ae1d9cb2e9966b4a","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"3c0ec4423f3cd7ff7a1640e41178a7c729bbd60518a840a9ae1d9cb2e9966b4a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Hilbert/SpectralPacket.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.Analysis.FunctionalAnalysis.SpectralPacketData.Variant3c0ec4423f3cd7ff7a1640e41178a7c729bbd60518a840a9ae1d9cb2e9966b4a

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
