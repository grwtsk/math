# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CalcQuestionMark.Variantd39e84df34196bfc9fd4ae9068bc276f6e3aa4be2ca064b01a2d19bdac0c5c80

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6745d589c0d36ae1737970309631f8d8512b97a2` · SHA-256 `d77fd1422dfbb5ed49c04aa129a285ad9a6d225c043cd084c038e426371ae05f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Calc.Variantf295dde2eb427005be4946689bd52f39aed82f8375758249714b85753077b0e0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f295dde2eb427005be4946689bd52f39aed82f8375758249714b85753077b0e0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Calc.Variantf295dde2eb427005be4946689bd52f39aed82f8375758249714b85753077b0e0","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"f295dde2eb427005be4946689bd52f39aed82f8375758249714b85753077b0e0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/CalcQuestionMark.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.Widget.Calc

/-!
Note that while the suggestions look incorrectly indented here,
this is an artifact of the rendering to a string for `guard_msgs` (leanprover/lean4#7191).

When used from the widget that appears in VSCode, they insert correctly-indented code.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Calc.Variantf295dde2eb427005be4946689bd52f39aed82f8375758249714b85753077b0e0

/--
info: Create calc tactic:
• calc
    1 = 1 := by sorry
---
warning: declaration uses 'sorry'
-/
#guard_msgs in
example : 1 = 1 := by
  have := 0
  calc?


/--
info: Create calc tactic:
• calc
    a ≤ a := by sorry
---
warning: declaration uses 'sorry'
-/
#guard_msgs in
example (a : Nat) : a ≤ a := by
  calc?

-- an indented `calc?`

/--
info: Create calc tactic:
• calc
    a ≤ a := by sorry
---
warning: declaration uses 'sorry'
-/
#guard_msgs in
example (a : Nat) : a ≤ a := by
  all_goals
    calc?

-- a deliberately long line
/--
info: Create calc tactic:
• calc
    1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 +
              1 +
            1 +
          1 =
        8 + 8 + 8 + 8 :=
      by sorry
---
warning: declaration uses 'sorry'
-/
#guard_msgs in
example :
    1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 +
    1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 +
    1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 +
    1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 = 8 + 8 + 8 + 8 := by
  calc?
```
