# Complete source: GRWTSK.Analysis.FunctionalAnalysis.PolarizedGram.Variantb657f92fd9093384fcb945439ad77fd597e1784c84ee4cb7576a56307692670c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `141db213772536431a9e2507329c18ec6c9736c1` · SHA-256 `ca9fc8d524f2689e6b338f55a919494d2c9dbb1e58852b4b18c6e99b25e84783`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.PolarizedInteractionControl.Variantc22305c0ed4422d69577fb4d78d924302a62b9ce101407b9f0c5123a1f01ff4e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c22305c0ed4422d69577fb4d78d924302a62b9ce101407b9f0c5123a1f01ff4e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.PolarizedInteractionControl.Variantc22305c0ed4422d69577fb4d78d924302a62b9ce101407b9f0c5123a1f01ff4e","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"c22305c0ed4422d69577fb4d78d924302a62b9ce101407b9f0c5123a1f01ff4e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:a2f9e71745958989db370315/workspace/lib/Surface/Core/PrimeLattice/PolarizedGram.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.PrimeLattice.MomentPath
public import Mathlib.Analysis.InnerProductSpace.Adjoint
public import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Tactic

/-!
# Polarized packet Gram data

The Boolean object in this module is only an incidence mask.  Amplitudes and
Gram entries remain complex.  An interaction certificate contains local
off-diagonal estimates, never the desired global arithmetic bound.
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.PolarizedInteractionControl.Variantc22305c0ed4422d69577fb4d78d924302a62b9ce101407b9f0c5123a1f01ff4e

public section

namespace Surface.Core.PrimeLattice.PolarizedGram

noncomputable section

open scoped InnerProductSpace
open Surface.Core.PrimeLattice.MomentPath

/-- Pairwise packet inner product. -/
@[expose]
def packetGram {N : ℕ} (frame : ConductorThreeCoefficientPacketFrame N)
    (left right : frame.Atom) : ℂ :=
  ⟪frame.packet left, frame.packet right⟫_ℂ

/-- Complex Gram matrix of a coefficient packet frame. -/
@[expose]
def packetGramMatrix {N : ℕ}
    (frame : ConductorThreeCoefficientPacketFrame N) :
    Matrix frame.Atom frame.Atom ℂ :=
  fun left right ↦ packetGram frame left right

/-- The finite-dimensional Gram operator. -/
@[expose]
def packetGramOperator {N : ℕ}
    (frame : ConductorThreeCoefficientPacketFrame N) :
    EuclideanSpace ℂ frame.Atom →L[ℂ] EuclideanSpace ℂ frame.Atom := by
  classical
  exact (packetGramMatrix frame).toEuclideanLin.toContinuousLinearMap

/-- Local geometric interaction evidence.  A false mask entry forces either
exact orthogonality or the supplied rapidly decaying error. -/
structure PolarizedInteractionControl {N : ℕ}
    (frame : ConductorThreeCoefficientPacketFrame N) where
  interactionMask : frame.Atom → frame.Atom → Bool
  offDiagonalError : ℝ
  offDiagonalError_nonneg : 0 ≤ offDiagonalError
  gram_small_of_mask_false : ∀ left right,
    interactionMask left right = false →
      ‖packetGram frame left right‖ ≤ offDiagonalError

/-- Exact-disjointness specialization of the interaction certificate. -/
@[expose]
def PolarizedInteractionControl.IsExact {N : ℕ}
    {frame : ConductorThreeCoefficientPacketFrame N}
    (control : PolarizedInteractionControl frame) : Prop :=
  control.offDiagonalError = 0

@[surface_novel, surface_published]
theorem gram_zero_of_interactionMask_false {N : ℕ}
    {frame : ConductorThreeCoefficientPacketFrame N}
    (control : PolarizedInteractionControl frame)
    (hexact : control.IsExact) (left right : frame.Atom)
    (hmask : control.interactionMask left right = false) :
    packetGram frame left right = 0 := by
  have hnorm := control.gram_small_of_mask_false left right hmask
  rw [hexact] at hnorm
  simpa using (norm_eq_zero.mp (le_antisymm hnorm (norm_nonneg _)))

/-- Scale-uniform operator-norm conclusion sought from the signed `TT*`
argument.  This is a predicate, not an asserted theorem. -/
@[expose]
def PacketGramPowerBound
    (frame : (N : ℕ) → ConductorThreeCoefficientPacketFrame N) : Prop :=
  ∀ epsilon : ℝ, 0 < epsilon →
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ N : ℕ, 2 ≤ N →
        ‖packetGramOperator (frame N)‖ ≤
          C * (N : ℝ) ^ epsilon

end

end Surface.Core.PrimeLattice.PolarizedGram
```
