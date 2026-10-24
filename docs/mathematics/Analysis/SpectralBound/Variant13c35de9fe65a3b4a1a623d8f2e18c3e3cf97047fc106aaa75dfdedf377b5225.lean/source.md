# Complete source: GRWTSK.Analysis.SpectralBound.Variant13c35de9fe65a3b4a1a623d8f2e18c3e3cf97047fc106aaa75dfdedf377b5225

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a29fc61941d1e3b9556d35c39b7ea0e198f94a07` · SHA-256 `65f7223e5819d8dd7c296dace34d2861f148f5976d2cc9fbc83aa5547ff3d605`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.SpectralBoundKind.Variant2b046b1b6aaf0dec8cb3b3b76d1664454f4721d708757f79a9c0125688a66ef6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2b046b1b6aaf0dec8cb3b3b76d1664454f4721d708757f79a9c0125688a66ef6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.SpectralBoundKind.Variant2b046b1b6aaf0dec8cb3b3b76d1664454f4721d708757f79a9c0125688a66ef6","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"2b046b1b6aaf0dec8cb3b3b76d1664454f4721d708757f79a9c0125688a66ef6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/AbelReynolds/SpectralBound.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Tactic
import Mathematics.AbelReynolds.DiscrepancyTrace

/-!
# Same-spectrum purity and multiplicity control

The estimate is dependent on one exact trace object, so it cannot silently
switch spectra between the trace identity and the purity or temperedness
bound.  Coefficient total variation controls spectral multiplicity, while the
declared Jordan order controls the logarithmic loss.
-/


namespace GRWTSK.Analysis.SpectralBoundKind.Variant2b046b1b6aaf0dec8cb3b3b76d1664454f4721d708757f79a9c0125688a66ef6

namespace Mathematics.AbelReynolds

open scoped BigOperators

universe u v w

/-- The certified source of the half-plane or square-root spectral bound. -/
inductive SpectralBoundKind
  | purity
  | temperedness
  | certifiedHalfPlane
  deriving DecidableEq, Repr

/--
All analytic controls for the exact same finite spectrum appearing in `trace`.
-/
structure SameSpectrumControl
    {Scale : Type u} {Spectrum : Type v} {Carrier : Type w}
    [Fintype Spectrum] [NormedAddCommGroup Carrier]
    (trace : ExactDiscrepancyTrace Scale Spectrum Carrier) where
  boundKind : SpectralBoundKind
  mass : Scale → ℝ
  mass_ge_one : ∀ scale, 1 ≤ mass scale
  jordanOrder : Nat
  envelope : Scale → ℝ
  envelope_exact :
    ∀ scale,
      envelope scale =
        Real.sqrt (mass scale) *
          (1 + Real.log (mass scale)) ^ jordanOrder
  envelope_nonnegative : ∀ scale, 0 ≤ envelope scale
  coefficient : Spectrum → ℝ
  coefficient_nonnegative : ∀ spectral, 0 ≤ coefficient spectral
  coefficientMass : ℝ
  coefficientMass_nonnegative : 0 ≤ coefficientMass
  coefficient_totalVariation :
    (∑ spectral : Spectrum, coefficient spectral) ≤ coefficientMass
  spectralTerm_bound :
    ∀ scale spectral,
      ‖trace.spectralTerm scale spectral‖ ≤
        coefficient spectral * envelope scale
  multiplicityBound : Nat
  multiplicity_control :
    Fintype.card Spectrum ≤ multiplicityBound
  remainderCoefficient : ℝ
  remainderCoefficient_nonnegative : 0 ≤ remainderCoefficient
  remainder_bound :
    ∀ scale,
      ‖trace.remainder scale‖ ≤
        remainderCoefficient * envelope scale

namespace SameSpectrumControl

variable {Scale : Type u} {Spectrum : Type v} {Carrier : Type w}
  [Fintype Spectrum] [NormedAddCommGroup Carrier]
  {trace : ExactDiscrepancyTrace Scale Spectrum Carrier}

/-- Total variation turns termwise same-spectrum bounds into one finite bound. -/
theorem spectral_sum_bound
    (control : SameSpectrumControl trace)
    (scale : Scale) :
    ‖∑ spectral : Spectrum, trace.spectralTerm scale spectral‖ ≤
      control.coefficientMass * control.envelope scale := by
  calc
    ‖∑ spectral : Spectrum, trace.spectralTerm scale spectral‖
        ≤ ∑ spectral : Spectrum,
            ‖trace.spectralTerm scale spectral‖ :=
      norm_sum_le _ _
    _ ≤ ∑ spectral : Spectrum,
          control.coefficient spectral * control.envelope scale :=
      Finset.sum_le_sum fun spectral _ =>
        control.spectralTerm_bound scale spectral
    _ =
        (∑ spectral : Spectrum, control.coefficient spectral) *
          control.envelope scale := by
      rw [Finset.sum_mul]
    _ ≤ control.coefficientMass * control.envelope scale :=
      mul_le_mul_of_nonneg_right
        control.coefficient_totalVariation
        (control.envelope_nonnegative scale)

/--
After invariant-bias removal, purity or temperedness on the exact trace
spectrum gives the certified square-root/logarithmic envelope.
-/
theorem centeredDiscrepancy_bound
    (control : SameSpectrumControl trace)
    (scale : Scale) :
    ‖trace.centeredDiscrepancy scale‖ ≤
      (control.coefficientMass + control.remainderCoefficient) *
        control.envelope scale := by
  rw [trace.centered_eq_spectral_sum_add_remainder]
  calc
    ‖(∑ spectral : Spectrum, trace.spectralTerm scale spectral) +
        trace.remainder scale‖
        ≤ ‖∑ spectral : Spectrum, trace.spectralTerm scale spectral‖ +
            ‖trace.remainder scale‖ :=
      norm_add_le _ _
    _ ≤ control.coefficientMass * control.envelope scale +
          control.remainderCoefficient * control.envelope scale :=
      add_le_add
        (control.spectral_sum_bound scale)
        (control.remainder_bound scale)
    _ =
        (control.coefficientMass + control.remainderCoefficient) *
          control.envelope scale := by ring

/-- The same bound with the square-root and Jordan logarithm made explicit. -/
theorem centeredDiscrepancy_squareRootLog_bound
    (control : SameSpectrumControl trace)
    (scale : Scale) :
    ‖trace.centeredDiscrepancy scale‖ ≤
      (control.coefficientMass + control.remainderCoefficient) *
        (Real.sqrt (control.mass scale) *
          (1 + Real.log (control.mass scale)) ^ control.jordanOrder) := by
  rw [← control.envelope_exact scale]
  exact control.centeredDiscrepancy_bound scale

end SameSpectrumControl

end Mathematics.AbelReynolds
```
