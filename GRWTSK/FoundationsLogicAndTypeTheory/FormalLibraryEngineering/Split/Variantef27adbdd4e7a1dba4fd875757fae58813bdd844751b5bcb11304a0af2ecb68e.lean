-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variant9a3a3d0a94b14e4dac4a46772b4cf0af2722620fcec2987015a42e4ee09265c2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9a3a3d0a94b14e4dac4a46772b4cf0af2722620fcec2987015a42e4ee09265c2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Tactic.Variant9a3a3d0a94b14e4dac4a46772b4cf0af2722620fcec2987015a42e4ee09265c2","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"9a3a3d0a94b14e4dac4a46772b4cf0af2722620fcec2987015a42e4ee09265c2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/Split.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variant9a3a3d0a94b14e4dac4a46772b4cf0af2722620fcec2987015a42e4ee09265c2

example : (α : Type) × List α := by
  constructor
  · exact [0,1]

-- example : (α : Type) × List α := by
--   fsplit
--   - exact ℕ
--   - exact [0,1]
