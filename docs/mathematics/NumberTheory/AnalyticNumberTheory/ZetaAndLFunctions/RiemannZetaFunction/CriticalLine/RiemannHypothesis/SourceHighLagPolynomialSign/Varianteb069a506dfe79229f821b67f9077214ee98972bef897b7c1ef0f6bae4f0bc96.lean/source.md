# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceHighLagPolynomialSign.Varianteb069a506dfe79229f821b67f9077214ee98972bef897b7c1ef0f6bae4f0bc96

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d99a22ca5a4bf2b55bff40f90b16966e1d5862e4` · SHA-256 `e08997af6354429725a10b98947c3b6ad205b4bccbaa206624f90d6c0e202740`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.EdgeNumerator.Variantaade3178f623adb7f78d20b5a87eeb98f1f26f76afe888c72f2038f11a96c82f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"aade3178f623adb7f78d20b5a87eeb98f1f26f76afe888c72f2038f11a96c82f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.EdgeNumerator.Variantaade3178f623adb7f78d20b5a87eeb98f1f26f76afe888c72f2038f11a96c82f","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"aade3178f623adb7f78d20b5a87eeb98f1f26f76afe888c72f2038f11a96c82f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle27/regent-high-work-certificate-investigation-v1/SourceHighLagPolynomialSign.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib

/-!
# Algebraic edge certificate for the literal source mixed kernel

UNCOMPILED proof-text preparation. No analytic integral transport is asserted.
Exact coefficient expansion of h(A-y)=A^-4*y^4*(2-y/A)^4 and the two edge
factors of h''-h/4 gives R(A)/A^16 for the unnormalized lag 2A-1 mixed pairing.
The independent Fraction calculation is recorded next to this preparation.
Connecting that coefficient expression to the actual normalized q_A integral
requires a separate source/support/FTC adapter and warning-fatal kernel checks.

This sign certificate rejects universal positive-atom or PSD sum-kernel routes
after transport; it supplies no counterexample to the actual weighted work,
no estimate for independent counterterms, and no RH tail witness.

Research direction and evaluation: grwtsk contributors.
Proof-text preparation: OpenAI Codex; independent verification is pending.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.EdgeNumerator.Variantaade3178f623adb7f78d20b5a87eeb98f1f26f76afe888c72f2038f11a96c82f

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceHighLagPolynomialSign

/-- Independent exact edge-integral coefficient polynomial, before normalization. -/
def edgeNumerator (A : ℝ) : ℝ :=
  -(567547583 / 14002560 : ℝ) + (366914879 / 411840 : ℝ) * A -
    (229060439 / 27720 : ℝ) * A ^ 2 + (137227271 / 3276 : ℝ) * A ^ 3 -
    (22614675119 / 180180 : ℝ) * A ^ 4 + (1554342731 / 6930 : ℝ) * A ^ 5 -
    (794584522 / 3465 : ℝ) * A ^ 6 + (37743836 / 315 : ℝ) * A ^ 7 -
    (7452862 / 315 : ℝ) * A ^ 8

/-- Algebraic edge coefficient. It is not defined as an arithmetic residual. -/
def algebraicEdgeCoefficient (A : ℝ) : ℝ := edgeNumerator A / A ^ 16

/-- All nine shifted coefficients have the same strict negative sign. -/
theorem edgeNumerator_at_ten_add (B : ℝ) :
    edgeNumerator (10 + B) =
      -((134860219395915291461 / 98017920 : ℝ) +
        (1134801394026326989 / 960960 : ℝ) * B +
        (159668232038614207 / 360360 : ℝ) * B ^ 2 +
        (29236826705263 / 308 : ℝ) * B ^ 3 +
        (254274878880091 / 20020 : ℝ) * B ^ 4 +
        (119554866043 / 110 : ℝ) * B ^ 5 +
        (201279980402 / 3465 : ℝ) * B ^ 6 +
        (186161708 / 105 : ℝ) * B ^ 7 + (7452862 / 315 : ℝ) * B ^ 8) := by
  unfold edgeNumerator
  ring

/-- The independent polynomial stays negative at every scale at least ten. -/
theorem edgeNumerator_neg {A : ℝ} (hA : 10 ≤ A) : edgeNumerator A < 0 := by
  have hB : 0 ≤ A - 10 := sub_nonneg.mpr hA
  have hs := edgeNumerator_at_ten_add (A - 10)
  rw [show 10 + (A - 10) = A by ring] at hs
  rw [hs]
  have hp :
      0 < (134860219395915291461 / 98017920 : ℝ) +
        (1134801394026326989 / 960960 : ℝ) * (A - 10) +
        (159668232038614207 / 360360 : ℝ) * (A - 10) ^ 2 +
        (29236826705263 / 308 : ℝ) * (A - 10) ^ 3 +
        (254274878880091 / 20020 : ℝ) * (A - 10) ^ 4 +
        (119554866043 / 110 : ℝ) * (A - 10) ^ 5 +
        (201279980402 / 3465 : ℝ) * (A - 10) ^ 6 +
        (186161708 / 105 : ℝ) * (A - 10) ^ 7 +
        (7452862 / 315 : ℝ) * (A - 10) ^ 8 := by positivity
  linarith

/-- Positive scale division retains the independently computed edge sign. -/
theorem algebraicEdgeCoefficient_neg {A : ℝ} (hA : 10 ≤ A) :
    algebraicEdgeCoefficient A < 0 := by
  have hp : 0 < A := by linarith
  change edgeNumerator A / A ^ 16 < 0
  exact div_neg_of_neg_of_pos (edgeNumerator_neg hA) (pow_pos hp 16)

/-- The fixed-scale rational certificate is exact, rather than floating point. -/
theorem algebraicEdgeCoefficient_ten :
    algebraicEdgeCoefficient 10 =
      -(134860219395915291461 / 980179200000000000000000 : ℝ) := by
  norm_num [algebraicEdgeCoefficient, edgeNumerator]

/-- Positive normalization cannot make this algebraic edge coefficient nonnegative. -/
theorem algebraicEdgeCoefficient_normalized_neg {A Z : ℝ}
    (hA : 10 ≤ A) (hZ : 0 < Z) : algebraicEdgeCoefficient A / (A * Z) < 0 := by
  have hp : 0 < A := by linarith
  exact div_neg_of_neg_of_pos (algebraicEdgeCoefficient_neg hA) (mul_pos hp hZ)

/-- Even eventual positivity of the algebraic edge family contradicts its exact sign. -/
theorem not_eventually_algebraicEdgeCoefficient_nonneg :
    ¬ ∃ R : ℝ, ∀ A : ℝ, R ≤ A → 0 ≤ algebraicEdgeCoefficient A := by
  rintro ⟨R, hR⟩
  have hn := algebraicEdgeCoefficient_neg (le_max_right R 10)
  have hp := hR (max R 10) (le_max_left R 10)
  linarith

end FormalResearch.RiemannHypothesis.SourceHighLagPolynomialSign
```
