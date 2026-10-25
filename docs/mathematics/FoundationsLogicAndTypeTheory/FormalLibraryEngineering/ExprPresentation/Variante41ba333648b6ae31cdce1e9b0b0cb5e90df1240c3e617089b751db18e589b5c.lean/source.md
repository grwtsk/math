# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExprPresentation.Variante41ba333648b6ae31cdce1e9b0b0cb5e90df1240c3e617089b751db18e589b5c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cc2797cabe0c52145ec6a67c5b9dc983cf58d0e6` · SHA-256 `74660faa6f74dda5e957bf382f0946ae9261e9936300abb74d33efb00941cbb7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Presenter.Variant8284158e02bbc67b45521193a25a3bc37055edc99d2743ef491a3b24671d1511","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8284158e02bbc67b45521193a25a3bc37055edc99d2743ef491a3b24671d1511","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Presenter.Variant8284158e02bbc67b45521193a25a3bc37055edc99d2743ef491a3b24671d1511","mathematical_subject":"Foundations.Unclassified","original_sha256":"8284158e02bbc67b45521193a25a3bc37055edc99d2743ef491a3b24671d1511","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/proofwidgets/ProofWidgets/Demos/ExprPresentation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ProofWidgets.Component.SelectionPanel
import ProofWidgets.Component.GoalTypePanel


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Presenter.Variant8284158e02bbc67b45521193a25a3bc37055edc99d2743ef491a3b24671d1511

open ProofWidgets Jsx

@[expr_presenter]
def presenter : ExprPresenter where
  userName := "With octopodes"
  layoutKind := .inline
  present e :=
    return Html.ofTHtml
      <span>
        {.text "🐙 "}<InteractiveCode fmt={← Lean.Widget.ppExprTagged e} />{.text " 🐙"}
      </span>

example : 2 + 2 = 4 ∧ 3 + 3 = 6 := by
  with_panel_widgets [GoalTypePanel]
    -- Place cursor here.
    constructor
    rfl
    rfl

example (h : 2 + 2 = 5) : 2 + 2 = 4 := by
  with_panel_widgets [SelectionPanel]
    -- Place cursor here and select subexpressions in the goal with shift-click.
    rfl
```
