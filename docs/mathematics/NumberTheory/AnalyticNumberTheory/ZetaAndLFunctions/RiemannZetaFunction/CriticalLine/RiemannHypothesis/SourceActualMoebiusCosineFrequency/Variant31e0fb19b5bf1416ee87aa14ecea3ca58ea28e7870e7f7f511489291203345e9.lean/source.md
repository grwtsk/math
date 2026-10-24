# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualMoebiusCosineFrequency.Variant31e0fb19b5bf1416ee87aa14ecea3ca58ea28e7870e7f7f511489291203345e9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `339dbea49dd0034470e6d22e7efae93207a41486` · SHA-256 `c8ca758583bebbd39d13d9371f8d20b13ded693aec45c3a85b2be08c0d775d16`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualReciprocalMoebiusCosine.Variant4f52a943e459430672c3d992d68d250f5c184aa5bc1b9328fe371fcda4945107","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4f52a943e459430672c3d992d68d250f5c184aa5bc1b9328fe371fcda4945107","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualReciprocalMoebiusCosine.Variant4f52a943e459430672c3d992d68d250f5c184aa5bc1b9328fe371fcda4945107","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"4f52a943e459430672c3d992d68d250f5c184aa5bc1b9328fe371fcda4945107","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/root/check-20261006T202819Z-1791318499324661000/SourceActualMoebiusCosineFrequency.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualFiniteMoebiusDirichlet
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic

/-!
The actual closed two-term reciprocal Moebius cosine inventory exceeds one.
This challenges an extension of the proved real-exponent unit bound to arbitrary
Fourier frequencies. It supplies no RH counterexample or source pairing bound.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualReciprocalMoebiusCosine.Variant4f52a943e459430672c3d992d68d250f5c184aa5bc1b9328fe371fcda4945107

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualMoebiusCosineFrequency
open ArithmeticFunction
open scoped BigOperators
noncomputable section

/-- Independently specified complete actual reciprocal Moebius cosine inventory. -/
def actualReciprocalMoebiusCosine (N : ℕ) (tau : ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 N, (moebius n : ℝ) / n * Real.cos (tau * Real.log (n : ℝ))

/-- The closed unit and the actual prime-two Moebius sign are both retained. -/
theorem actualReciprocalMoebiusCosine_two (tau : ℝ) :
    actualReciprocalMoebiusCosine 2 tau = 1 - Real.cos (tau * Real.log 2) / 2 := by
  have hs : Finset.Icc 1 2 = ({1, 2} : Finset ℕ) := by decide
  norm_num [actualReciprocalMoebiusCosine, hs, moebius_apply_prime Nat.prime_two]
  ring

/-- A genuine actual frequency gives the exact larger-than-unit value. -/
theorem actualReciprocalMoebiusCosine_two_pi :
    actualReciprocalMoebiusCosine 2 (Real.pi / Real.log 2) = 3 / 2 := by
  have hlog : Real.log (2 : ℝ) ≠ 0 := (Real.log_pos (by norm_num : (1 : ℝ) < 2)).ne'
  rw [actualReciprocalMoebiusCosine_two, div_mul_cancel₀ _ hlog, Real.cos_pi]
  norm_num

/-- The real-exponent unit bound cannot be extended to every actual cosine frequency. -/
theorem actualReciprocalMoebiusCosine_not_uniform_unit :
    ¬ ∀ (N : ℕ) (tau : ℝ), |actualReciprocalMoebiusCosine N tau| ≤ 1 := by
  intro h
  have hh := h 2 (Real.pi / Real.log 2)
  rw [actualReciprocalMoebiusCosine_two_pi] at hh
  norm_num at hh

end
end FormalResearch.RiemannHypothesis.SourceActualMoebiusCosineFrequency
```
