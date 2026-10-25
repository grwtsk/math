# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FiniteCertificate.Variant714053d739f9c6376062c44052d266a0cede4f2ccf383fefa3b14f7bc87a6417

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `18a1749dcdd80907299c8a0f21db428bb7bb4e8c` · SHA-256 `be3a9ae4904fdd2f530da810379bfcfa0740cd2ccfda28af73787bf3f1662a81`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FinitePremises.Variantb14023b887e69377fba29290654ef9db5cb96869fd8e13707d859b5cbc69e9dc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b14023b887e69377fba29290654ef9db5cb96869fd8e13707d859b5cbc69e9dc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.FinitePremises.Variantb14023b887e69377fba29290654ef9db5cb96869fd8e13707d859b5cbc69e9dc","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"b14023b887e69377fba29290654ef9db5cb96869fd8e13707d859b5cbc69e9dc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/common-mean-stieltjes-20261004/finite-stieltjes-independent-review/overlay/scratch/common_mean_20261004/FiniteCertificate.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic

/-!
# Exact rational finite certificate and conditional scalar transports

Ignored scratch only. Originating mathematical direction, theorem selection,
corrections, and evaluation: grwtsk contributors. Lean development and audit:
OpenAI Codex AI assistance, separately credited.

This file proves the archived final rational inequality in Lean and transports
explicit head/tail, source-formula, and gamma hypotheses. It does not instantiate
the actual zeta zeros, rerun Platt--Trudgian's complete computation, prove
Bellotti--Wong's counting theorem, derive the Stieltjes tail inequality, or prove
the real-parameter endpoint envelope. Those dependencies remain explicit in the
conditional `FinitePremises` interface below. There is no axiom or admitted proof.

In particular, the tail premise is an absolute bound on a separately specified
tail, not the desired spectral lower bound under another name. Actual source
admission and identification of the head and tail must precede its instantiation.
This is not an accepted-main finite theorem or an all-scale bound witness.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FinitePremises.Variantb14023b887e69377fba29290654ef9db5cb96869fd8e13707d859b5cbc69e9dc

set_option autoImplicit false

namespace CommonMean20261004.FiniteCertificate

/-- Exactly the rational final expression in the archived standard-library
checker, including both ordinate signs and the maximum of both A endpoints.
The natural height 3*10^12 is represented exactly in Q. -/
def rationalTailBound : ℚ :=
  2 * ((146 : ℚ) / (150 * (3 * 10 ^ 12) ^ 5) +
    17 / (3 * 10 ^ 12) ^ 6) * 385 ^ 2 * (17 / 16) ^ 2 /
    (4096 / 109395) *
    max 6 (((2719 / 1000 : ℚ) ^ 160 + 3) / 160 ^ 9)

/-- Kernel-checked rational arithmetic; no displayed decimal is trusted. -/
theorem rationalTailBound_lt : rationalTailBound < (1 / 500000 : ℚ) := by
  norm_num [rationalTailBound]

/-- The rational certificate is nonnegative. -/
theorem rationalTailBound_nonneg : (0 : ℚ) ≤ rationalTailBound := by
  norm_num [rationalTailBound]

/-- The same exact rational certificate embedded into the real numbers. -/
def tailBound : ℝ := rationalTailBound

theorem tailBound_lt : tailBound < (1 / 500000 : ℝ) := by
  change (rationalTailBound : ℝ) < (1 / 500000 : ℝ)
  have hc : (rationalTailBound : ℝ) < ((1 / 500000 : ℚ) : ℝ) :=
    (Rat.cast_lt (K := ℝ)).2 rationalTailBound_lt
  norm_num only [Rat.cast_div, Rat.cast_one, Rat.cast_ofNat] at hc
  exact hc

theorem tailBound_nonneg : (0 : ℝ) ≤ tailBound := by
  change (0 : ℝ) ≤ (rationalTailBound : ℝ)
  exact_mod_cast rationalTailBound_nonneg

/-- Nonnegative complete verified head plus an absolutely bounded strict tail
implies the finite spectral lower bound. Head and tail remain independent data. -/
theorem spectral_lower_of_head_tail {S head tail : ℝ}
    (hdecomposition : S = head + tail) (hhead : 0 ≤ head)
    (htail : |tail| ≤ tailBound) : -(1 / 500000 : ℝ) ≤ S := by
  have htailLower := (abs_le.mp htail).1
  have hsmall := tailBound_lt
  linarith

/-- Exact scalar transport retaining the ordinary-square source identity and
the full gamma upper bound. Arithmetic alone requires no extra regularity. -/
theorem residual_upper_of_spectral_lower {A S r G a0 : ℝ}
    (hS : -(1 / 500000 : ℝ) ≤ S) (hformula : 2 * r = G - S)
    (hgamma : G ≤ a0 + 390 / A ^ 2) :
    r ≤ a0 / 2 + 195 / A ^ 2 + (1 / 1000000 : ℝ) := by
  simp only [div_eq_mul_inv] at hgamma ⊢
  linarith

/-- The finite residual estimate is strictly negative on A >= 10, provided
the independent gamma constant satisfies a0 < -4. Its use on [10,160] below
retains the finite theorem's upper endpoint. -/
theorem residual_negative_of_upper {A r a0 : ℝ} (hA : 10 ≤ A)
    (ha0 : a0 < -4)
    (hr : r ≤ a0 / 2 + 195 / A ^ 2 + (1 / 1000000 : ℝ)) : r < 0 := by
  have hA2 : (100 : ℝ) ≤ A ^ 2 := by nlinarith [sq_nonneg (A - 10)]
  have hA2pos : 0 < A ^ 2 := by linarith
  have hquot : 195 / A ^ 2 ≤ (195 / 100 : ℝ) := by
    apply (div_le_iff₀ hA2pos).2
    nlinarith
  linarith

/-- Named conditional analytic premises on the complete finite real interval.

`verifiedHeadNonnegative` is to be obtained from the complete verified-height
input, real-zero exclusion, both ordinate signs, and multiplicities; a sampled
list of zeros cannot instantiate it. `strictTailAbsoluteBound` requires the
actual transform/strip estimate, corrected counting input, strict Stieltjes
endpoint subtraction, both signs, and continuum endpoint maximum. None is
proved by the rational arithmetic theorem alone. The source identity and gamma
budget must be instantiated from the actual repository family and original Z_A.
-/
structure FinitePremises
    (S r G verifiedHead strictTail : ℝ → ℝ) (a0 : ℝ) : Prop where
  decomposition : ∀ A : ℝ, 1 ≤ A → A ≤ 160 →
    S A = verifiedHead A + strictTail A
  verifiedHeadNonnegative : ∀ A : ℝ, 1 ≤ A → A ≤ 160 →
    0 ≤ verifiedHead A
  strictTailAbsoluteBound : ∀ A : ℝ, 1 ≤ A → A ≤ 160 →
    |strictTail A| ≤ tailBound
  sourceFormula : ∀ A : ℝ, 1 ≤ A → A ≤ 160 →
    2 * r A = G A - S A
  fullGammaUpper : ∀ A : ℝ, 1 ≤ A → A ≤ 160 →
    G A ≤ a0 + 390 / A ^ 2
  gammaConstantLtNegFour : a0 < -4

/-- Conditional finite theorem, with every unresolved analytic input carried
in `FinitePremises`. It creates neither a premise instance nor a global witness. -/
theorem finite_bounds {S r G verifiedHead strictTail : ℝ → ℝ} {a0 : ℝ}
    (h : FinitePremises S r G verifiedHead strictTail a0) :
    (∀ A : ℝ, 1 ≤ A → A ≤ 160 →
      -(1 / 500000 : ℝ) ≤ S A ∧
        r A ≤ a0 / 2 + 195 / A ^ 2 + (1 / 1000000 : ℝ)) ∧
    (∀ A : ℝ, 10 ≤ A → A ≤ 160 → r A < 0) := by
  have hfinite : ∀ A : ℝ, 1 ≤ A → A ≤ 160 →
      -(1 / 500000 : ℝ) ≤ S A ∧
        r A ≤ a0 / 2 + 195 / A ^ 2 + (1 / 1000000 : ℝ) := by
    intro A hA hA160
    have hS := spectral_lower_of_head_tail
      (h.decomposition A hA hA160) (h.verifiedHeadNonnegative A hA hA160)
      (h.strictTailAbsoluteBound A hA hA160)
    exact ⟨hS, residual_upper_of_spectral_lower hS
      (h.sourceFormula A hA hA160) (h.fullGammaUpper A hA hA160)⟩
  refine ⟨hfinite, ?_⟩
  intro A hA hA160
  have hA1 : 1 ≤ A := by linarith
  exact residual_negative_of_upper hA h.gammaConstantLtNegFour
    (hfinite A hA1 hA160).2

end CommonMean20261004.FiniteCertificate
```
