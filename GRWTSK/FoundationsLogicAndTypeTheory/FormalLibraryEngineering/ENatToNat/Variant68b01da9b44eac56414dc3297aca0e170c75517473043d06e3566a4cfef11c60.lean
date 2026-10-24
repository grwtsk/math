-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ENatToNat.Variant2b449fbc6b9d203d738cc7dbc2726438072790501b672ffe321a641270eed46a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2b449fbc6b9d203d738cc7dbc2726438072790501b672ffe321a641270eed46a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ENatToNat.Variant2b449fbc6b9d203d738cc7dbc2726438072790501b672ffe321a641270eed46a","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"2b449fbc6b9d203d738cc7dbc2726438072790501b672ffe321a641270eed46a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/enat_to_nat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.ENatToNat


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ENatToNat.Variant2b449fbc6b9d203d738cc7dbc2726438072790501b672ffe321a641270eed46a

example (a b : ENat) (h : a = b) : a - b = b - a := by
  enat_to_nat
  omega

example (a b : ENat) (h : a ≤ b) : a - b < b + 1 := by
  enat_to_nat
  omega

example (a b : ENat) (h : a ≤ b) : a - 2 * b ≤ b + 1 := by
  enat_to_nat
  omega

example (a b c : ENat) (hab : a ≥ b) (hbc : b ≥ c) : a ≥ c := by
  enat_to_nat
  omega

example (a b : ENat) (h : a = b) : a - b = b - a := by
  -- to test if the tactic works with inaccessible names
  let a : ℤ := 42
  let b : ℤ := 32
  enat_to_nat
  omega
