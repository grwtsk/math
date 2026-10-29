-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ByCases.Variant48e6ecddc743be443fae8aa5fce194a23f8410e01af2d3e1f73e3b650028255a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"48e6ecddc743be443fae8aa5fce194a23f8410e01af2d3e1f73e3b650028255a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.ByCases.Variant48e6ecddc743be443fae8aa5fce194a23f8410e01af2d3e1f73e3b650028255a","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"48e6ecddc743be443fae8aa5fce194a23f8410e01af2d3e1f73e3b650028255a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/test/by_cases.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Std.Tactic.ByCases


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ByCases.Variant48e6ecddc743be443fae8aa5fce194a23f8410e01af2d3e1f73e3b650028255a

example : True := by
  if 1 + 1 = 2 then _ else ?_
  case pos => trivial
  fail_if_success case neg => contradiction
  · contradiction

example (p : Prop) : True := by
  if p then ?foo else trivial
  case foo => trivial
