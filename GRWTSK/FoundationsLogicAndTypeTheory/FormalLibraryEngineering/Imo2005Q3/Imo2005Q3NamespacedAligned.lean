-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.KeyInsight.Variantbc852b86356dfea54efd57c3aa5c748d95a19f0c9094d5617a0456f8e43dfd67","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bc852b86356dfea54efd57c3aa5c748d95a19f0c9094d5617a0456f8e43dfd67","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.KeyInsight.Variantbc852b86356dfea54efd57c3aa5c748d95a19f0c9094d5617a0456f8e43dfd67","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"bc852b86356dfea54efd57c3aa5c748d95a19f0c9094d5617a0456f8e43dfd67","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Archive/Imo/Imo2005Q3.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Manuel Candales. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Manuel Candales
-/
import Mathlib.Data.Real.Basic
import Mathlib.Tactic.Positivity


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.KeyInsight.Variantbc852b86356dfea54efd57c3aa5c748d95a19f0c9094d5617a0456f8e43dfd67

#align_import imo.imo2005_q3 from "leanprover-community/mathlib"@"308826471968962c6b59c7ff82a22757386603e3"

/-!
# IMO 2005 Q3
Let `x`, `y` and `z` be positive real numbers such that `xyz ≥ 1`. Prove that:
`(x^5 - x^2)/(x^5 + y^2 + z^2) + (y^5 - y^2)/(y^5 + z^2 + x^2) + (z^5 - z^2)/(z^5 + x^2 + y^2) ≥ 0`

# Solution
The solution by Iurie Boreico from Moldova is presented, which won a special prize during the exam.
The key insight is that `(x^5-x^2)/(x^5+y^2+z^2) ≥ (x^2-y*z)/(x^2+y^2+z^2)`, which is proven by
factoring `(x^5-x^2)/(x^5+y^2+z^2) - (x^5-x^2)/(x^3*(x^2+y^2+z^2))` into a non-negative expression
and then making use of `xyz ≥ 1` to show `(x^5-x^2)/(x^3*(x^2+y^2+z^2)) ≥ (x^2-y*z)/(x^2+y^2+z^2)`.
-/


namespace Imo2005Q3

theorem key_insight (x y z : ℝ) (hx : x > 0) (hy : y > 0) (hz : z > 0) (h : x * y * z ≥ 1) :
    (x ^ 5 - x ^ 2) / (x ^ 5 + y ^ 2 + z ^ 2) ≥ (x ^ 2 - y * z) / (x ^ 2 + y ^ 2 + z ^ 2) := by
  have key :
    (x ^ 5 - x ^ 2) / (x ^ 5 + y ^ 2 + z ^ 2) -
        (x ^ 5 - x ^ 2 * 1) / (x ^ 3 * (x ^ 2 + y ^ 2 + z ^ 2)) =
      (x ^ 3 - 1) ^ 2 * x ^ 2 * (y ^ 2 + z ^ 2) /
        ((x ^ 5 + y ^ 2 + z ^ 2) * (x ^ 3 * (x ^ 2 + y ^ 2 + z ^ 2))) := by
    field_simp
    ring
  have h₅ :
    (x ^ 3 - 1) ^ 2 * x ^ 2 * (y ^ 2 + z ^ 2) /
        ((x ^ 5 + y ^ 2 + z ^ 2) * (x ^ 3 * (x ^ 2 + y ^ 2 + z ^ 2))) ≥
      0 :=
    by positivity
  calc
    (x ^ 5 - x ^ 2) / (x ^ 5 + y ^ 2 + z ^ 2)
      ≥ (x ^ 5 - x ^ 2 * 1) / (x ^ 3 * (x ^ 2 + y ^ 2 + z ^ 2)) := by linarith only [key, h₅]
    _ ≥ (x ^ 5 - x ^ 2 * (x * y * z)) / (x ^ 3 * (x ^ 2 + y ^ 2 + z ^ 2)) := by gcongr
    _ = (x ^ 2 - y * z) / (x ^ 2 + y ^ 2 + z ^ 2) := by field_simp; ring
#align imo2005_q3.key_insight Imo2005Q3.key_insight

end Imo2005Q3

open Imo2005Q3

theorem imo2005_q3 (x y z : ℝ) (hx : x > 0) (hy : y > 0) (hz : z > 0) (h : x * y * z ≥ 1) :
    (x ^ 5 - x ^ 2) / (x ^ 5 + y ^ 2 + z ^ 2) + (y ^ 5 - y ^ 2) / (y ^ 5 + z ^ 2 + x ^ 2) +
        (z ^ 5 - z ^ 2) / (z ^ 5 + x ^ 2 + y ^ 2) ≥
      0 := by
  calc
    (x ^ 5 - x ^ 2) / (x ^ 5 + y ^ 2 + z ^ 2) + (y ^ 5 - y ^ 2) / (y ^ 5 + z ^ 2 + x ^ 2) +
          (z ^ 5 - z ^ 2) / (z ^ 5 + x ^ 2 + y ^ 2) ≥
        (x ^ 2 - y * z) / (x ^ 2 + y ^ 2 + z ^ 2) + (y ^ 2 - z * x) / (y ^ 2 + z ^ 2 + x ^ 2) +
          (z ^ 2 - x * y) / (z ^ 2 + x ^ 2 + y ^ 2) := by
      gcongr ?_ + ?_ + ?_ <;> apply key_insight <;> linarith
    _ = 1 / 2 * ((x - y) ^ 2 + (y - z) ^ 2 + (z - x) ^ 2) / (x ^ 2 + y ^ 2 + z ^ 2) := by ring
    _ ≥ 0 := by positivity
#align imo2005_q3 imo2005_q3
