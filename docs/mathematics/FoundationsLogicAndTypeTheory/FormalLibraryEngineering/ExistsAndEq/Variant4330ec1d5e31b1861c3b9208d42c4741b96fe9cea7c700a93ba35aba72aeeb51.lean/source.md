# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExistsAndEq.Variant4330ec1d5e31b1861c3b9208d42c4741b96fe9cea7c700a93ba35aba72aeeb51

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9d5dece2e1dd0066f57691eb208556d36876260f` · SHA-256 `d9c56e67680d246a0c62d5c0f82294ebf29bfdef1e2eaa57f044bb9a16551e2a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExistsAndEq.Variant7f9914251a3f85bdd16a2e0ba3c07760e68980994b4ec65228f6181c8cc58c43","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7f9914251a3f85bdd16a2e0ba3c07760e68980994b4ec65228f6181c8cc58c43","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ExistsAndEq.Variant7f9914251a3f85bdd16a2e0ba3c07760e68980994b4ec65228f6181c8cc58c43","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"7f9914251a3f85bdd16a2e0ba3c07760e68980994b4ec65228f6181c8cc58c43","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/Simproc/ExistsAndEq.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.Simproc.ExistsAndEq


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExistsAndEq.Variant7f9914251a3f85bdd16a2e0ba3c07760e68980994b4ec65228f6181c8cc58c43

universe u
variable (α : Type u) (p q : α → Prop)

example (a : α) (hp : p a) (hq : q a) : ∃ b : α, (p b ∧ b = a) ∧ q b := by
  simp only [existsAndEq]
  guard_target = (p a ∧ True) ∧ q a
  exact ⟨⟨hp, trivial⟩, hq⟩

example (a : α) : ∃ b : α, b = a := by
  simp only [existsAndEq]

/--
error: simp made no progress
-/
#guard_msgs in
example (f : α → α) : ∃ a : α, a = f a := by
  simp only [existsAndEq]
  sorry

open Lean Meta Simp

set_option linter.unusedTactic false in
example (a : α) (hp : p a) (hq : q a) : (∃ b : α, p b ∧ (∃ c : α, b = a ∧ q c)) := by
  -- the simproc doesn't handle nested `Exists`
  simp -failIfUnchanged only [existsAndEq]
  guard_target = ∃ b : α, p b ∧ (∃ c : α, b = a ∧ q c)
  simp only [exists_and_left]
  guard_target = ∃ b, p b ∧ b = a ∧ ∃ x, q x
  -- but can clean up the rest
  simp only [existsAndEq]
  guard_target = p a ∧ True ∧ ∃ x, q x
  exact ⟨hp, trivial, a, hq⟩
```
