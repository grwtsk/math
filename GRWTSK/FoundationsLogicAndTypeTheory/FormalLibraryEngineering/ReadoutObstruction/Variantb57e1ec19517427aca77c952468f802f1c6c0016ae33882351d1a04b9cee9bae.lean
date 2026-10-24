-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BoundedReadoutForcesCoefficientEnergy.Variant0859bb76f9759e90677d379815c6306fe1204e65b8a0cab95adb76292e74b3a7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0859bb76f9759e90677d379815c6306fe1204e65b8a0cab95adb76292e74b3a7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.BoundedReadoutForcesCoefficientEnergy.Variant0859bb76f9759e90677d379815c6306fe1204e65b8a0cab95adb76292e74b3a7","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"0859bb76f9759e90677d379815c6306fe1204e65b8a0cab95adb76292e74b3a7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/TypeII/ReadoutObstruction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.PrimeLattice.PolarizedGram
import Mathlib.Tactic

/-!
# Uniform packet-readout obstruction

A bounded scalar functional which recovers every packet coefficient cannot be
combined with a sub-energy full-Gram estimate.  This file exposes that finite
Hilbert-space obstruction at the canonical Type II boundary.

No asymptotic estimate is assumed or proved here.  The results are exact
consequences of the Riesz representation theorem, already implemented for the
coefficient packet frame in `PrimeLattice.PolarizedGram`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BoundedReadoutForcesCoefficientEnergy.Variant0859bb76f9759e90677d379815c6306fe1204e65b8a0cab95adb76292e74b3a7

public section

namespace Surface.Core.TypeII.ReadoutObstruction

noncomputable section

open Surface.Core.PrimeLattice.MomentPath
open Surface.Core.PrimeLattice.PolarizedGram

/-- The canonical coefficient-energy obstruction.  A packet readout which
recovers every atom amplitude forces the squared readout norm times the full
Gram norm to dominate the total coefficient energy. -/
@[surface_novel, surface_published]
theorem boundedReadout_forces_coefficientEnergy {N : ℕ}
    (frame : ConductorThreeCoefficientPacketFrame N) :
    coefficientEnergy frame ≤
      ‖frame.readout‖ ^ 2 * ‖packetGramOperator frame‖ :=
  readout_forces_gram_lowerBound frame

/-- If every atom is read with unit amplitude, the obstruction becomes the
literal cardinality lower bound
`card Atom ≤ ‖readout‖² ‖Gram‖`.

This is the finite form of the reason a uniformly bounded scalar readout is
incompatible with a polynomially growing Type II packet family and an
almost-orthogonal full Gram operator. -/
@[surface_novel, surface_published]
theorem unitReadout_forces_cardinality {N : ℕ}
    (frame : ConductorThreeCoefficientPacketFrame N)
    (hunit : ∀ atom, frame.amplitude atom = 1) :
    (Fintype.card frame.Atom : ℝ) ≤
      ‖frame.readout‖ ^ 2 * ‖packetGramOperator frame‖ := by
  have henergy := boundedReadout_forces_coefficientEnergy frame
  simpa [coefficientEnergy, hunit] using henergy

/-- Rearranged form: once the readout norm is bounded by `R`, the full Gram
norm cannot be smaller than `card Atom / R²`.  The zero-readout case is
excluded by the unit-amplitude recovery hypothesis itself, expressed here as
the explicit positivity assumption on `R`. -/
@[surface_novel, surface_published]
theorem gramNorm_lowerBound_of_unitReadout {N : ℕ}
    (frame : ConductorThreeCoefficientPacketFrame N)
    (hunit : ∀ atom, frame.amplitude atom = 1)
    (R : ℝ) (hR : 0 < R) (hreadout : ‖frame.readout‖ ≤ R) :
    (Fintype.card frame.Atom : ℝ) / R ^ 2 ≤
      ‖packetGramOperator frame‖ := by
  have hcard := unitReadout_forces_cardinality frame hunit
  have hnorm_nonneg : 0 ≤ ‖packetGramOperator frame‖ := norm_nonneg _
  have hreadout_sq : ‖frame.readout‖ ^ 2 ≤ R ^ 2 := by
    exact (sq_le_sq₀ (norm_nonneg _) hR.le).2 hreadout
  have hdominated :
      (Fintype.card frame.Atom : ℝ) ≤
        R ^ 2 * ‖packetGramOperator frame‖ :=
    hcard.trans <| by gcongr
  exact (div_le_iff₀ (sq_pos_of_pos hR)).2 <| by
    simpa [mul_comm] using hdominated

end

end Surface.Core.TypeII.ReadoutObstruction
