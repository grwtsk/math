-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IntervalAuto.Variant0cd833e58870525c76553c9f177143e3495b21de3b065834347fee7ad3e3fc8f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0cd833e58870525c76553c9f177143e3495b21de3b065834347fee7ad3e3fc8f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.IntervalAuto.Variant0cd833e58870525c76553c9f177143e3495b21de3b065834347fee7ad3e3fc8f","mathematical_subject":"Foundations.Unclassified","original_sha256":"0cd833e58870525c76553c9f177143e3495b21de3b065834347fee7ad3e3fc8f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/LeanCert/Test/test_subdiv_lower.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
  Test interval_bound_subdiv with lower bounds
-/
import LeanCert.Tactic.IntervalAuto


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IntervalAuto.Variant0cd833e58870525c76553c9f177143e3495b21de3b065834347fee7ad3e3fc8f

open LeanCert.Core
open Set

-- Simple lower bound - should work without subdivision
example : ∀ x ∈ Icc (0 : ℝ) 1, 0 ≤ x * x := by
  interval_bound_subdiv

-- Lower bound with transcendental
example : ∀ x ∈ Icc (0 : ℝ) 1, -1 ≤ Real.sin x := by
  interval_bound_subdiv

-- Lower bound on exp (always ≥ 1 for positive input, but exp 0 = 1)
example : ∀ x ∈ Icc (0 : ℝ) 1, 1 ≤ Real.exp x := by
  interval_bound_subdiv 15

-- x² - x has minimum at x=0.5 with value -0.25
-- With subdivision, we can prove tighter bounds than without
-- Without subdivision: interval arithmetic gives [-1, 1]
-- With subdivision to depth 5: can prove ≥ -1 easily (and tighter)
example : ∀ x ∈ Icc (0 : ℝ) 1, -1 ≤ x * x - x := by
  interval_bound_subdiv 10 3

-- Upper and lower together
example : ∀ x ∈ Icc (0 : ℝ) 1, 0 ≤ x * x := by
  interval_bound_subdiv

example : ∀ x ∈ Icc (0 : ℝ) 1, x * x ≤ 1 := by
  interval_bound_subdiv

-- tanh bounds
example : ∀ x ∈ Icc (-5 : ℝ) 5, -1 ≤ Real.tanh x := by
  interval_bound_subdiv

example : ∀ x ∈ Icc (-5 : ℝ) 5, Real.tanh x ≤ 1 := by
  interval_bound_subdiv

-- cosh is always ≥ 1
example : ∀ x ∈ Icc (-2 : ℝ) 2, 1 ≤ Real.cosh x := by
  interval_bound_subdiv

-- cos is in [-1, 1]
example : ∀ x ∈ Icc (0 : ℝ) 7, -1 ≤ Real.cos x := by
  interval_bound_subdiv
