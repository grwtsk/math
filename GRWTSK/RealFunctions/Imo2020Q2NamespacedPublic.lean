-- corpus-organization-transform:v1
-- Mathematical subject: Analysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.Imo2020Q2.Variant7d551f0ad3a2fc812ebfdb97f4656b851de429cd58f876ed8d3b245515d72345","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7d551f0ad3a2fc812ebfdb97f4656b851de429cd58f876ed8d3b245515d72345","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.GeneralAnalysis.SourceCorpus.Imo2020Q2.Variant7d551f0ad3a2fc812ebfdb97f4656b851de429cd58f876ed8d3b245515d72345","mathematical_subject":"Analysis.GeneralAnalysis","original_sha256":"7d551f0ad3a2fc812ebfdb97f4656b851de429cd58f876ed8d3b245515d72345","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Archive/Imo/Imo2020Q2.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Joseph Myers. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joseph Myers, Yury Kudryashov
-/
module

public import Mathlib.Analysis.MeanInequalities

/-!
# IMO 2020 Q2

The real numbers `a`, `b`, `c`, `d` are such that `a ≥ b ≥ c ≥ d > 0` and `a + b + c + d = 1`.
Prove that `(a + 2b + 3c + 4d) a^a b^b c^c d^d < 1`.

A solution is to eliminate the powers using weighted AM-GM and replace
`1` by `(a+b+c+d)^3`, leaving a homogeneous inequality that can be
proved in many ways by expanding, rearranging and comparing individual
terms.  The version here using factors such as `a+3b+3c+3d` is from
the official solutions.
-/


namespace GRWTSK.Analysis.Imo2020Q2.Variant7d551f0ad3a2fc812ebfdb97f4656b851de429cd58f876ed8d3b245515d72345

open Real

public theorem imo2020_q2 (a b c d : ℝ) (hd0 : 0 < d) (hdc : d ≤ c) (hcb : c ≤ b) (hba : b ≤ a)
    (h1 : a + b + c + d = 1) : (a + 2 * b + 3 * c + 4 * d) * a ^ a * b ^ b * c ^ c * d ^ d < 1 := by
  have hp : a ^ a * b ^ b * c ^ c * d ^ d ≤ a * a + b * b + c * c + d * d := by
    refine geom_mean_le_arith_mean4_weighted ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ h1 <;> linarith
  calc
    (a + 2 * b + 3 * c + 4 * d) * a ^ a * b ^ b * c ^ c * d ^ d =
        (a + 2 * b + 3 * c + 4 * d) * (a ^ a * b ^ b * c ^ c * d ^ d) := by ac_rfl
    _ ≤ (a + 2 * b + 3 * c + 4 * d) * (a * a + b * b + c * c + d * d) := by gcongr; linarith
    _ = (a + 2 * b + 3 * c + 4 * d) * a ^ 2 + (a + 2 * b + 3 * c + 4 * d) * b ^ 2
        + (a + 2 * b + 3 * c + 4 * d) * c ^ 2 + (a + 2 * b + 3 * c + 4 * d) * d ^ 2 := by ring
    _ ≤ (a + 3 * b + 3 * c + 3 * d) * a ^ 2 + (3 * a + b + 3 * c + 3 * d) * b ^ 2
        + (3 * a + 3 * b + c + 3 * d) * c ^ 2 + (3 * a + 3 * b + 3 * c + d) * d ^ 2 := by
        gcongr ?_ * _ + ?_ * _ + ?_ * _ + ?_ * _ <;> linarith
    _ < (a + 3 * b + 3 * c + 3 * d) * a ^ 2 + (3 * a + b + 3 * c + 3 * d) * b ^ 2
        + (3 * a + 3 * b + c + 3 * d) * c ^ 2 + (3 * a + 3 * b + 3 * c + d) * d ^ 2
        + (6 * a * b * c + 6 * a * b * d + 6 * a * c * d + 6 * b * c * d) :=
        (lt_add_of_pos_right _ (by apply_rules [add_pos, mul_pos, zero_lt_one] <;> linarith))
    _ = (a + b + c + d) ^ 3 := by ring
    _ = 1 := by simp [h1]
