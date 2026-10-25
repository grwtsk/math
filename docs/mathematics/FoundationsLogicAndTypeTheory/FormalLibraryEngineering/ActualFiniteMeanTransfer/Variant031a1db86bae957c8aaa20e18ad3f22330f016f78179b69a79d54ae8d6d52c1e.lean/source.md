# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ActualFiniteMeanTransfer.Variant031a1db86bae957c8aaa20e18ad3f22330f016f78179b69a79d54ae8d6d52c1e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5af308832db7a9a1259ee8862e5553abac15ba3e` · SHA-256 `ce1a1a6545c13cdf956a5ca42c74fe19ffdc184f4db637ce583478070dc41d79`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ActualMeanLower160.Variant6ad32b4d3260d8806e7f8744b3ac04501371f7066df1ab216cb47ae24b1e1af2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6ad32b4d3260d8806e7f8744b3ac04501371f7066df1ab216cb47ae24b1e1af2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ActualMeanLower160.Variant6ad32b4d3260d8806e7f8744b3ac04501371f7066df1ab216cb47ae24b1e1af2","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"6ad32b4d3260d8806e7f8744b3ac04501371f7066df1ab216cb47ae24b1e1af2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass7/finite_mean_review/coordinator-replay/ActualFiniteMeanTransfer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualCommonMeanZeroSide
import Mathlib.Tactic

/-! Exact conditional source transfer for #318's real window [10,176].
The two zero lower bounds and independent J_mean budget are explicit premises;
no published zero/correction result is added as an axiom or formal instance.
Direction: grwtsk contributors; scratch formalization: OpenAI Codex. -/

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ActualMeanLower160.Variant6ad32b4d3260d8806e7f8744b3ac04501371f7066df1ab216cb47ae24b1e1af2

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ActualFiniteMeanTransfer
open Set
open ContinuousResearch.ActualCommonMeanCalibration
open ContinuousResearch.ActualCommonMeanZeroSide

theorem actualMean_lower160 {A : ℝ} (hA : 10 ≤ A)
    (hJ : -(3033/200:ℝ)-206/A^2 < sourceMeanOffset A)
    (hS : -(1/500000:ℝ) ≤ (normalizedZeroSquare A).re) :
    -(17225001/1000000:ℝ) < sourceMean A := by
  have hsq : (100:ℝ) ≤ A^2 := by nlinarith [sq_nonneg (A-10)]
  have hb : (206:ℝ)/A^2 ≤ 206/100 :=
    div_le_div_of_nonneg_left (by norm_num) (by norm_num) hsq
  rw [sourceMean_eq_offset_zero (by linarith : 1 ≤ A)]
  linarith

theorem actualMean_lower176 {A : ℝ} (hA : 160 ≤ A)
    (hJ : -(3033/200:ℝ)-206/A^2 < sourceMeanOffset A)
    (hS : -(561/100:ℝ) ≤ (normalizedZeroSquare A).re) :
    -(230119/12800:ℝ) < sourceMean A := by
  have hsq : (25600:ℝ) ≤ A^2 := by nlinarith [sq_nonneg (A-160)]
  have hb : (206:ℝ)/A^2 ≤ 206/25600 :=
    div_le_div_of_nonneg_left (by norm_num) (by norm_num) hsq
  rw [sourceMean_eq_offset_zero (by linarith : 1 ≤ A)]
  linarith

/-- Every real point of the closed window, including A=160, is covered. -/
theorem actualMean_finite_window
    (hJ : ∀ A : ℝ, A ∈ Icc 10 176 →
      -(3033/200:ℝ)-206/A^2 < sourceMeanOffset A)
    (hS160 : ∀ A : ℝ, A ∈ Icc 1 160 →
      -(1/500000:ℝ) ≤ (normalizedZeroSquare A).re)
    (hS176 : ∀ A : ℝ, A ∈ Icc 1 176 →
      -(561/100:ℝ) ≤ (normalizedZeroSquare A).re) :
    ∀ A : ℝ, A ∈ Icc 10 176 → -(18:ℝ) < sourceMean A := by
  intro A hA
  by_cases h160 : A ≤ 160
  · have h := actualMean_lower160 hA.1 (hJ A hA)
      (hS160 A ⟨by linarith [hA.1], h160⟩)
    linarith
  · have h := actualMean_lower176 (by linarith) (hJ A hA)
      (hS176 A ⟨by linarith [hA.1], hA.2⟩)
    linarith

#print axioms actualMean_lower160
#print axioms actualMean_lower176
#print axioms actualMean_finite_window
end ContinuousResearch.ActualFiniteMeanTransfer
```
