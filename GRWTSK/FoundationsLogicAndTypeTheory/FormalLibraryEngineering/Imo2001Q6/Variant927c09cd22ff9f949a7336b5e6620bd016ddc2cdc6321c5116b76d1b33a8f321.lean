-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Imo2001Q6.Variantad91a0b769cf3b9e0f1ae74e27403063010826787827322a04eb90de0b73f6c2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ad91a0b769cf3b9e0f1ae74e27403063010826787827322a04eb90de0b73f6c2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Imo2001Q6.Variantad91a0b769cf3b9e0f1ae74e27403063010826787827322a04eb90de0b73f6c2","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"ad91a0b769cf3b9e0f1ae74e27403063010826787827322a04eb90de0b73f6c2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Archive/Imo/Imo2001Q6.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Sara Díaz Real. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sara Díaz Real
-/
import Mathlib.Algebra.Ring.Associated
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.LinearCombination

/-!
# IMO 2001 Q6
Let $a$, $b$, $c$, $d$ be integers with $a > b > c > d > 0$. Suppose that

$$ a*c + b*d = (a + b - c + d) * (-a + b + c + d). $$

Prove that $a*b + c*d$ is not prime.

-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Imo2001Q6.Variantad91a0b769cf3b9e0f1ae74e27403063010826787827322a04eb90de0b73f6c2

variable {a b c d : ℤ}

theorem imo2001_q6 (hd : 0 < d) (hdc : d < c) (hcb : c < b) (hba : b < a)
    (h : a * c + b * d = (a + b - c + d) * (-a + b + c + d)) : ¬Prime (a * b + c * d) := by
  intro (h0 : Prime (a * b + c * d))
  have ha : 0 < a := by omega
  have hb : 0 < b := by omega
  have hc : 0 < c := by omega
  -- the key step is to show that `a*c + b*d` divides the product `(a*b + c*d) * (a*d + b*c)`
  have dvd_mul : a * c + b * d ∣ (a * b + c * d) * (a * d + b * c) := by
    use b ^ 2 + b * d + d ^ 2
    linear_combination b * d * h
  -- since `a*b + c*d` is prime (by assumption), it must divide `a*c + b*d` or `a*d + b*c`
  obtain (h1 : a * b + c * d ∣ a * c + b * d) | (h2 : a * c + b * d ∣ a * d + b * c) :=
    h0.left_dvd_or_dvd_right_of_dvd_mul dvd_mul
  -- in both cases, we derive a contradiction
  · have aux : 0 < a * c + b * d := by nlinarith only [ha, hb, hc, hd]
    have : a * b + c * d ≤ a * c + b * d := Int.le_of_dvd aux h1
    nlinarith only [hba, hcb, hdc, h, this]
  · have aux : 0 < a * d + b * c := by nlinarith only [ha, hb, hc, hd]
    have : a * c + b * d ≤ a * d + b * c := Int.le_of_dvd aux h2
    nlinarith only [hba, hdc, h, this]
