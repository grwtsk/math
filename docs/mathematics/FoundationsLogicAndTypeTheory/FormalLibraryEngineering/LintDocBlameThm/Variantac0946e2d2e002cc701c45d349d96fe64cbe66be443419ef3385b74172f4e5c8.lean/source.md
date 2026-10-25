# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LintDocBlameThm.Variantac0946e2d2e002cc701c45d349d96fe64cbe66be443419ef3385b74172f4e5c8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bcd7f2272179af2ea3c123133a4918eee9e324fa` · SHA-256 `0529ecc84a0177542ac41ed834f2907aaeb441c79234512d200de1d8d7acbb4b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AtLeastThirtySeven.Variant67255151da44a503f5f55a19b3fb9fdbc8f5cd0d6126516485cac0394eb4fc01","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"67255151da44a503f5f55a19b3fb9fdbc8f5cd0d6126516485cac0394eb4fc01","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.AtLeastThirtySeven.Variant67255151da44a503f5f55a19b3fb9fdbc8f5cd0d6126516485cac0394eb4fc01","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"67255151da44a503f5f55a19b3fb9fdbc8f5cd0d6126516485cac0394eb4fc01","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/test/lint_docBlameThm.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Std.Tactic.Lint


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AtLeastThirtySeven.Variant67255151da44a503f5f55a19b3fb9fdbc8f5cd0d6126516485cac0394eb4fc01

set_option linter.missingDocs false

-- A docstring is not needed here
structure AtLeastThirtySeven where
  -- or here
  val : Nat := 1
  /-- but is needed here -/
  prop : 37 ≤ val

/-- and here -/
theorem AtLeastThirtySeven.lt (x : AtLeastThirtySeven) : 36 < x.val := x.prop

#lint- only docBlameThm
```
