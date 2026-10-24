# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.HerglotzRepresentation.Variant933d07cfc970bdfe6355681a459081e137cfb35a56ee52da347138c305253f60

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b390cbbf52679e4166ef4d08b7b937db05b605e6` · SHA-256 `ff33cb4a311c1f7561c77630bfc606aefa5918d5cb243876c3fdd07cb9c2e9c1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.Representation.Variant04e494bb998ce93194361106afa827d10f1c374e637b0c9172ae93563de5cd8f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"04e494bb998ce93194361106afa827d10f1c374e637b0c9172ae93563de5cd8f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.Representation.Variant04e494bb998ce93194361106afa827d10f1c374e637b0c9172ae93563de5cd8f","mathematical_subject":"Analysis.Integration","original_sha256":"04e494bb998ce93194361106afa827d10f1c374e637b0c9172ae93563de5cd8f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/HerglotzRepresentation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.ConductorThreeWeylFunction
public import Mathlib.MeasureTheory.Integral.Bochner.Basic
import Mathlib.Tactic

/-!
# Real-line Herglotz representation boundary

Pinned Mathlib does not package the Nevanlinna/Herglotz representation on the
upper half-plane.  This module gives that missing theorem an exact target and
separates it from the conductor-three atom-identification theorem.

No measure is chosen from a list of zeros.  A future conductor-three measure
must first represent the prime-constructed Weyl function; only afterward may
meromorphic boundary continuation identify its atoms with the Xi divisor.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.Representation.Variant04e494bb998ce93194361106afa827d10f1c374e637b0c9172ae93563de5cd8f

public section

namespace Surface.Core.HerglotzRepresentation

noncomputable section

open MeasureTheory
open scoped ENNReal
open Surface.Core.ConductorThreeCompletedL
open Surface.Core.ConductorThreeWeylFunction
open Surface.Core.NevanlinnaKernel

/-- Standard normalized real-line Herglotz integrand. -/
@[expose]
def herglotzIntegrand (z : ℂ) (lambda : ℝ) : ℂ :=
  1 / ((lambda : ℂ) - z) -
    ((lambda / (1 + lambda ^ 2) : ℝ) : ℂ)

/-- Data of a normalized Herglotz representation. -/
structure Representation (M : ℂ → ℂ) where
  constant : ℝ
  slope : ℝ
  slope_nonneg : 0 ≤ slope
  measure : Measure ℝ
  weightedMoment :
    Integrable (fun lambda : ℝ ↦ (1 + lambda ^ 2)⁻¹) measure
  integrable_kernel :
    ∀ z ∈ upperHalfPlane, Integrable (herglotzIntegrand z) measure
  formula :
    ∀ z ∈ upperHalfPlane,
      M z = (constant : ℂ) + (slope : ℂ) * z +
        ∫ lambda, herglotzIntegrand z lambda ∂measure

/-- Generic theorem absent from pinned Mathlib. -/
@[expose]
def HerglotzRepresentationTheorem : Prop :=
  ∀ M : ℂ → ℂ, IsHerglotz M → Nonempty (Representation M)

/-- A measure is concentrated on a countable set of nonzero atoms. -/
@[expose]
def IsPurelyAtomic (measure : Measure ℝ) : Prop :=
  ∃ support : Set ℝ,
    support.Countable ∧
    measure supportᶜ = 0 ∧
    ∀ lambda ∈ support, measure {lambda} ≠ 0

/-- Multiplicity statement for the conductor-three representing measure.
The sign `-lambda` is forced by the convention
`M_3(z) = logDeriv Xi_3(-z)`. -/
@[expose]
def ConductorThreeAtomsMatchXiDivisor
    (representation : Representation conductorThreeWeylFunction) : Prop :=
  IsPurelyAtomic representation.measure ∧
    ∀ lambda : ℝ,
      representation.measure {lambda} =
        (Int.toNat
          (conductorThreeXiDivisor (-(lambda : ℂ))) : ℝ≥0∞)

/-- The custom boundary-support/residue theorem still needed after obtaining
a representation.  Meromorphic continuation and real boundary values must
rule out continuous mass; divisor orders must then identify each atom. -/
@[expose]
def ConductorThreeHerglotzAtomTheorem : Prop :=
  ∀ representation : Representation conductorThreeWeylFunction,
    ConductorThreeAtomsMatchXiDivisor representation

end

end Surface.Core.HerglotzRepresentation
```
