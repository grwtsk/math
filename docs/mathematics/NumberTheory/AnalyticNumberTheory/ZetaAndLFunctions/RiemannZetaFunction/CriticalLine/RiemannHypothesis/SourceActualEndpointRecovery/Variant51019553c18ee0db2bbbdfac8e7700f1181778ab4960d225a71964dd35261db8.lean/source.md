# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualEndpointRecovery.Variant51019553c18ee0db2bbbdfac8e7700f1181778ab4960d225a71964dd35261db8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6360afefd30717f501de0f8c646167245d06395b` · SHA-256 `1d4a0784ce71416f678ac5d0d0d750a6cd319d72fc1d9dbd80bec81a5093cb72`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.EndpointPlus.Variantcde3accd5aa4fea072dd03e5f48d4b05d8eb28b3c4c8d95c4a57d357cbcb552f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cde3accd5aa4fea072dd03e5f48d4b05d8eb28b3c4c8d95c4a57d357cbcb552f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.EndpointPlus.Variantcde3accd5aa4fea072dd03e5f48d4b05d8eb28b3c4c8d95c4a57d357cbcb552f","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"cde3accd5aa4fea072dd03e5f48d4b05d8eb28b3c4c8d95c4a57d357cbcb552f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/root-formal/source-actual-endpoint-recovery/attempt01/SourceActualEndpointRecovery.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualBumpTransform

/-! Literal ordinary-square endpoint recovery for the actual normalized source.
Direction: grwtsk contributors. Formalization: OpenAI Codex root.
All source jets, physical mixed term and original normalization are retained. -/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.EndpointPlus.Variantcde3accd5aa4fea072dd03e5f48d4b05d8eb28b3c4c8d95c4a57d357cbcb552f

set_option autoImplicit false
noncomputable section
namespace RH16ActualEndpointRecovery
open FormalResearch.RiemannHypothesis
open SourcePairing SourceBumpLaplace SourceActualBumpTransform
open ActualCorrelationOppositeHalf ActualComplexCorrelationSquare

/-- The complete positive exponential endpoint polynomial. -/
def endpointPlus (w : ℂ) : ℂ :=
  1 - 10 / w + 45 / w ^ 2 - 105 / w ^ 3 + 105 / w ^ 4

/-- The complete reflected negative exponential endpoint polynomial. -/
def endpointMinus (w : ℂ) : ℂ :=
  1 + 10 / w + 45 / w ^ 2 + 105 / w ^ 3 + 105 / w ^ 4

/-- Actual normalized common factor; its component pole is excluded in the theorem. -/
def endpointCommon (A : ℝ) (z : ℂ) : ℂ :=
  ((384 ^ 2 / (sourceNormalization A * A ^ 9) : ℝ) : ℂ) *
    ((z ^ 2 - 1 / 4) / z ^ 5) ^ 2

def positiveEndpoint (A : ℝ) (z : ℂ) : ℂ :=
  endpointCommon A z * Complex.exp (2 * (A : ℂ) * z) * endpointPlus ((A : ℂ) * z) ^ 2

def negativeEndpoint (A : ℝ) (z : ℂ) : ℂ :=
  endpointCommon A z * Complex.exp (-2 * (A : ℂ) * z) * endpointMinus ((A : ℂ) * z) ^ 2

def invariantMixed (A : ℝ) (z : ℂ) : ℂ :=
  -2 * endpointCommon A z * endpointPlus ((A : ℂ) * z) * endpointMinus ((A : ℂ) * z)

/-- Exact complete polynomial product, including all quadratic cross terms. -/
theorem endpoint_product (w : ℂ) :
    endpointPlus w * endpointMinus w =
      1 - 10 / w ^ 2 + 135 / w ^ 4 - 1575 / w ^ 6 + 11025 / w ^ 8 := by
  unfold endpointPlus endpointMinus
  ring

/-- The actual full transform is the sum of both endpoints and their invariant mixed sector. -/
theorem actual_source_endpoint_recovery {A : ℝ} (hA : 1 ≤ A) (z : ℂ) (hz : z ≠ 0) :
    actualBilateralCorrelationTransform A z =
      positiveEndpoint A z + negativeEndpoint A z + invariantMixed A z := by
  have hAn : A ≠ 0 := by linarith
  have hAc : (A : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr hAn
  have hZn : sourceNormalization A ≠ 0 := (source_normalization_pos A hA).ne'
  have hZc : (sourceNormalization A : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr hZn
  have hb : actualBilateralCorrelationTransform A z =
      ((A / sourceNormalization A : ℝ) : ℂ) * (z ^ 2 - 1 / 4) ^ 2 *
        bumpLaplace ((A : ℂ) * z) ^ 2 := by
    have h := actualBilateralCorrelationTransform_eq_bump hA (z + 1 / 2)
    convert h using 1 <;> ring
  rw [hb, bump_laplace_endpoint_formula ((A : ℂ) * z) (mul_ne_zero hAc hz)]
  have hep : Complex.exp (2 * (A : ℂ) * z) = Complex.exp ((A : ℂ) * z) ^ 2 := by
    rw [pow_two, ← Complex.exp_add]
    congr 1
    ring
  have hem : Complex.exp (-2 * (A : ℂ) * z) = Complex.exp (-((A : ℂ) * z)) ^ 2 := by
    rw [pow_two, ← Complex.exp_add]
    congr 1
    ring
  have hepm : Complex.exp ((A : ℂ) * z) * Complex.exp (-((A : ℂ) * z)) = 1 := by
    rw [← Complex.exp_add]
    simp
  unfold positiveEndpoint negativeEndpoint invariantMixed endpointCommon endpointPlus endpointMinus
  rw [hep, hem]
  push_cast
  field_simp
  ring_nf
```
