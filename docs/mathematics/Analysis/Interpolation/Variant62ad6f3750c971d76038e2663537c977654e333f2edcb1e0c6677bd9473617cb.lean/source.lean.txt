-- corpus-organization-transform:v1
-- Mathematical subject: Analysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.Linear.Variant1dd68421096b2fea52a69c73d4959600bd2b150a9a8671f3a6787bbc17c1b8c4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1dd68421096b2fea52a69c73d4959600bd2b150a9a8671f3a6787bbc17c1b8c4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.Linear.Variant1dd68421096b2fea52a69c73d4959600bd2b150a9a8671f3a6787bbc17c1b8c4","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"1dd68421096b2fea52a69c73d4959600bd2b150a9a8671f3a6787bbc17c1b8c4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/GammaBridge/Interpolation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.GammaBridge.Exact
import Mathlib.Analysis.Normed.Module.Basic
import Mathlib.Tactic

/-! # Affine Gamma interpolation -/


namespace GRWTSK.Analysis.Linear.Variant1dd68421096b2fea52a69c73d4959600bd2b150a9a8671f3a6787bbc17c1b8c4

namespace Mathematics.GammaBridge

variable {E : Type*} [AddCommMonoid E] [Module ℝ E]

def linear (left right : E) (time : ℝ) : E :=
  (1 - time) • left + time • right

@[simp] theorem left_endpoint (left right : E) :
    linear left right 0 = left := by
  simp [linear]

@[simp] theorem right_endpoint (left right : E) :
    linear left right 1 = right := by
  simp [linear]

def exactLinear (id : GammaBridgeId) (left right : E) : Exact E where
  id := id
  path := linear left right
  left := left
  right := right
  left_endpoint := left_endpoint left right
  right_endpoint := right_endpoint left right

def scalarLinear (left right time : ℝ) : ℝ :=
  (1 - time) * left + time * right

theorem monotone
    {left right first second : ℝ}
    (hendpoints : left ≤ right)
    (htime : first ≤ second) :
    scalarLinear left right first ≤ scalarLinear left right second := by
  have hproduct :
      0 ≤ (second - first) * (right - left) :=
    mul_nonneg (sub_nonneg.mpr htime) (sub_nonneg.mpr hendpoints)
  dsimp [scalarLinear]
  nlinarith

end Mathematics.GammaBridge
