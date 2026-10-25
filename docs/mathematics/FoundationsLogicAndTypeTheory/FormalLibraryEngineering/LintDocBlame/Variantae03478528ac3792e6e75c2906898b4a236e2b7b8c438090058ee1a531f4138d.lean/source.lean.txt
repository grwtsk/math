-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AtLeastThirtySeven.Variant1eb70267614b6070881277e7e778693d783532df3ce6b8aed0a7272b2a5e60f1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1eb70267614b6070881277e7e778693d783532df3ce6b8aed0a7272b2a5e60f1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.AtLeastThirtySeven.Variant1eb70267614b6070881277e7e778693d783532df3ce6b8aed0a7272b2a5e60f1","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"1eb70267614b6070881277e7e778693d783532df3ce6b8aed0a7272b2a5e60f1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/test/lint_docBlame.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Std.Tactic.Lint


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AtLeastThirtySeven.Variant1eb70267614b6070881277e7e778693d783532df3ce6b8aed0a7272b2a5e60f1

set_option linter.missingDocs false

/-- A docstring is needed here -/
structure AtLeastThirtySeven where
  /-- and here -/
  val : Nat := 1
  -- but not here
  prop : 37 ≤ val

-- or here
theorem AtLeastThirtySeven.lt (x : AtLeastThirtySeven) : 36 < x.val := x.prop

#lint- only docBlame
