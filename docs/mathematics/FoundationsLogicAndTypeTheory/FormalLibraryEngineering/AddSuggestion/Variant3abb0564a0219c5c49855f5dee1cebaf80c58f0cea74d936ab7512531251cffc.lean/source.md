# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AddSuggestion.Variant3abb0564a0219c5c49855f5dee1cebaf80c58f0cea74d936ab7512531251cffc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1557c19eb290e30d15dcdb87f0ec9c0715c02fe6` · SHA-256 `96350c9a695ea066ecb528c60baf720639f43cf109fcf9d3baced3a9a66de528`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Longdef.Variantc21f4b7558ce4829e41db2efaab905f37ea7616d2d1d09989c325b94beede7cd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c21f4b7558ce4829e41db2efaab905f37ea7616d2d1d09989c325b94beede7cd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Longdef.Variantc21f4b7558ce4829e41db2efaab905f37ea7616d2d1d09989c325b94beede7cd","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"c21f4b7558ce4829e41db2efaab905f37ea7616d2d1d09989c325b94beede7cd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/test/add_suggestion.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Std.Tactic.TryThis


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Longdef.Variantc21f4b7558ce4829e41db2efaab905f37ea7616d2d1d09989c325b94beede7cd

set_option linter.unusedVariables false
set_option linter.missingDocs false

section width
-- here we test that the width of try this suggestions is not too big

-- simulate a long and complicated term
def longdef (a b : Nat) (h h h h h h h h h h h h h h h h h
    h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h
    h h h h h h h h h h h h h h h h h h h h h h h
    h h h h h h h h h h h h h h h h h h h h h : a = b) :
  2 * a = 2 * b := by rw [h]

namespace Std.Tactic.TryThis
open Lean Elab Tactic

set_option hygiene false in
elab "test" : tactic => do
  addSuggestion (← getRef) (←
  `(tactic| exact longdef a b h h h h h h h h h h h h h h
      h h h h h h h h h h h h h h h h h h h h h h
      h h h h h h h h h h h h h h h h h h h h h h
      h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h))

end Std.Tactic.TryThis

-- ideally we would have a #guard_widgets or #guard_infos too, but instead we can simply check by
-- hand that the widget suggestion (not the message) fits into 100 columns
theorem asda (a b : Nat) (h : a = b) : 2 * a = 2 * b := by
  test
--exact
--  longdef a b h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h
--    h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h
--    h h h h h
  have : 2 * a = 2 * b := by
    test
--  exact
--    longdef a b h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h
--      h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h h
--      h h h h h h h
    sorry
  sorry
```
