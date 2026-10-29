-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IntervalAuto.Variantfb152a48331977e89e3fed3ac79f15ba3cc64c9558045c4c79ffee8386ddb83e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fb152a48331977e89e3fed3ac79f15ba3cc64c9558045c4c79ffee8386ddb83e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.IntervalAuto.Variantfb152a48331977e89e3fed3ac79f15ba3cc64c9558045c4c79ffee8386ddb83e","mathematical_subject":"Foundations.Unclassified","original_sha256":"fb152a48331977e89e3fed3ac79f15ba3cc64c9558045c4c79ffee8386ddb83e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/LeanCert/Test/test_subdiv_strict.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
  Test interval_bound_subdiv with strict inequalities
-/
import LeanCert.Tactic.IntervalAuto


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IntervalAuto.Variantfb152a48331977e89e3fed3ac79f15ba3cc64c9558045c4c79ffee8386ddb83e

open LeanCert.Core
open Set

-- Strict upper bound (f x < c)
example : ∀ x ∈ Icc (0 : ℝ) 1, x * x < 2 := by
  interval_bound_subdiv

example : ∀ x ∈ Icc (0 : ℝ) 1, Real.sin x < 2 := by
  interval_bound_subdiv

example : ∀ x ∈ Icc (0 : ℝ) 1, Real.exp x < 4 := by
  interval_bound_subdiv 15

-- Strict lower bound (c < f x)
example : ∀ x ∈ Icc (0 : ℝ) 1, -1 < x * x := by
  interval_bound_subdiv

example : ∀ x ∈ Icc (0 : ℝ) 1, -2 < Real.sin x := by
  interval_bound_subdiv

example : ∀ x ∈ Icc (0 : ℝ) 1, 0 < Real.exp x := by
  interval_bound_subdiv 15

-- Combining strict and non-strict
example : ∀ x ∈ Icc (0 : ℝ) 1, x * x ≤ 1 := by
  interval_bound_subdiv

example : ∀ x ∈ Icc (0 : ℝ) 1, x * x < (3/2 : ℚ) := by
  interval_bound_subdiv

-- tanh strict bounds
example : ∀ x ∈ Icc (-5 : ℝ) 5, Real.tanh x < 2 := by
  interval_bound_subdiv

example : ∀ x ∈ Icc (-5 : ℝ) 5, -2 < Real.tanh x := by
  interval_bound_subdiv
