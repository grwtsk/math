# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RenameBvar.Variant999ecea7ee25ae901a294568814325f9e1d0addfa0859a7d8e98d5172782a8df

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4d54aa340b207e3c11f7ec543bc2a5f1c8ad53a7` · SHA-256 `85c838b7e89606e21eb77d2cd8565da11c15ad3763f0fa400fa71c43f351d0d7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestSorry.Variant962c1f1773c9ac4aa2214fb0ebc07ffb6d4f02344f5ec54e185eed258f98bd64","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"962c1f1773c9ac4aa2214fb0ebc07ffb6d4f02344f5ec54e185eed258f98bd64","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.TestSorry.Variant962c1f1773c9ac4aa2214fb0ebc07ffb6d4f02344f5ec54e185eed258f98bd64","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"962c1f1773c9ac4aa2214fb0ebc07ffb6d4f02344f5ec54e185eed258f98bd64","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/renameBvar.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.RenameBVar
import Lean


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestSorry.Variant962c1f1773c9ac4aa2214fb0ebc07ffb6d4f02344f5ec54e185eed258f98bd64

set_option linter.unusedVariables false
axiom test_sorry {α : Sort _} : α

/- This test is somewhat flaky since it depends on the pretty printer. -/
/--
info: ℕ : Sort u_1
P : ℕ → ℕ → Prop
h : ∀ (n : ℕ), ∃ m, P n m
⊢ ∀ (l : ℕ), ∃ m, P l m
---
info: ℕ : Sort u_1
P : ℕ → ℕ → Prop
h : ∀ (q : ℕ), ∃ m, P q m
⊢ ∀ (l : ℕ), ∃ m, P l m
---
info: ℕ : Sort u_1
P : ℕ → ℕ → Prop
h : ∀ (q : ℕ), ∃ m, P q m
⊢ ∀ (l : ℕ), ∃ n, P l n
---
info: ℕ : Sort u_1
P : ℕ → ℕ → Prop
h : ∀ (q : ℕ), ∃ m, P q m
⊢ ∀ (m : ℕ), ∃ n, P m n
-/
#guard_msgs in
example (P : ℕ → ℕ → Prop) (h : ∀ n, ∃ m, P n m) : ∀ l, ∃ m, P l m := by
  trace_state
  rename_bvar n → q at h
  trace_state
  rename_bvar m → n
  trace_state
  rename_bvar l → m
  trace_state
  exact h

/--
info: case intro
a b c : Int
h2 : b ∣ c
k : Int
hk : b = a * k
⊢ ∃ k, c = a * k
---
info: case intro
a b c : Int
h2 : b ∣ c
k : Int
hk : b = a * k
⊢ ∃ m, c = a * m
-/
#guard_msgs in
example (a b c : Int) (h1 : a ∣ b) (h2 : b ∣ c) : a ∣ c := by
  rcases h1 with ⟨k, hk⟩
  show ∃ k, c = a * k
  trace_state
  rename_bvar k → m
  trace_state
  exact test_sorry
```
