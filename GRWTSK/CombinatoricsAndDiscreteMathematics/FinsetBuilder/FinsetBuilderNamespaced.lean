-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.Fintype.Varianta19ee0c0ff37d3fee0276d7cc61301782eb315d04ae8b6b1de4d62ff0fcb3949","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a19ee0c0ff37d3fee0276d7cc61301782eb315d04ae8b6b1de4d62ff0fcb3949","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.Fintype.Varianta19ee0c0ff37d3fee0276d7cc61301782eb315d04ae8b6b1de4d62ff0fcb3949","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"a19ee0c0ff37d3fee0276d7cc61301782eb315d04ae8b6b1de4d62ff0fcb3949","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/Delab/FinsetBuilder.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Fintype.Defs


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.Fintype.Varianta19ee0c0ff37d3fee0276d7cc61301782eb315d04ae8b6b1de4d62ff0fcb3949

variable {α : Type*} [Fintype α] {p : α → Prop} {s : Finset α} {a : α}
    [DecidablePred p] [DecidableEq α] [Singleton α (Finset α)] [HasCompl (Finset α)]

/-- info: {x | p x} : Finset α -/
#guard_msgs in
#check ({x | p x} : Finset α)

/-- info: {x ∈ s | p x} : Finset α -/
#guard_msgs in
#check ({x ∈ s | p x})

/-- info: {x ≠ a | p x} : Finset α -/
#guard_msgs in
#check ({x ≠ a | p x} : Finset α)

/-- info: {x ∉ s | p x} : Finset α -/
#guard_msgs in
#check ({x ∉ s | p x})

/-- info: {x : α | p x} : Finset α -/
#guard_msgs in
set_option pp.funBinderTypes true in
#check ({x | p x} : Finset α)

/-- info: {x ∈ s | p x} : Finset α -/
#guard_msgs in
set_option pp.funBinderTypes true in
#check ({x ∈ s | p x})

/-- info: {x ≠ a | p x} : Finset α -/
#guard_msgs in
set_option pp.funBinderTypes true in
#check ({x ≠ a | p x} : Finset α)

/-- info: {x ∉ s | p x} : Finset α -/
#guard_msgs in
set_option pp.funBinderTypes true in
#check ({x ∉ s | p x})
