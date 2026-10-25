# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Core.Variant2dea7bdabdcc87f4b89dac119fe35adfdb12cb1749efb966460b3cbcb0a5da6d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a132e0ccd5e88fbf5472afd7812a5d5edb59f668` · SHA-256 `19d62a4c878a2f35302355dce58f644ad291d70dc70cc21be7e8667a596d8b44`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ImpMono.Variant05c78b367f54f9a41a33d79985f3e0623534390d1cedebe74a6bacf7f6558f08","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"05c78b367f54f9a41a33d79985f3e0623534390d1cedebe74a6bacf7f6558f08","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ImpMono.Variant05c78b367f54f9a41a33d79985f3e0623534390d1cedebe74a6bacf7f6558f08","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"05c78b367f54f9a41a33d79985f3e0623534390d1cedebe74a6bacf7f6558f08","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/MathlibTest/Tactic/GCongr/Core.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.GCongr.Core


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ImpMono.Variant05c78b367f54f9a41a33d79985f3e0623534390d1cedebe74a6bacf7f6558f08

variable {a b c d : Prop}

lemma imp_mono (h₁ : c → a) (h₂ : c → b → d) : (a → b) → c → d :=
  fun h₃ hc => h₂ hc (h₃ (h₁ hc))

lemma and_mono (h₁ : a → c) (h₂ : a → b → d) : (a ∧ b) → c ∧ d :=
  fun ⟨ha, hb⟩ => ⟨h₁ ha, h₂ ha hb⟩

attribute [gcongr] mt Or.imp and_mono imp_mono forall_imp Exists.imp

example (h : a → b) : (a ∧ ¬b) ∨ c → (b ∧ ¬a) ∨ c := by gcongr
example (h : a → b) : (a ∧ ¬b) ∨ c → (b ∧ ¬a) ∨ c := by gcongr ?_ ∧ ¬?_ ∨ c

example (h : d → b) : (a ∨ b ∧ c → d) → (a ∨ d ∧ c → b) := by gcongr
example (h : d → b) : (a ∨ b ∧ c → d) → (a ∨ d ∧ c → b) := by gcongr a ∨ ?_ ∧ c → ?_

example (h : a → b) : ¬ ¬ ¬ b → ¬ ¬ ¬ a := by gcongr
example (h : a → b) : ¬ ¬ ¬ b → ¬ ¬ ¬ a := by gcongr ¬ ¬ ¬ ?_

example (h : a → b) : (∃ i, ∀ j, i ∧ b → j) → (∃ i, ∀ j, i ∧ a → j) := by gcongr
example (h : a → b) : (∃ i, ∀ j, i ∧ b → j) → (∃ i, ∀ j, i ∧ a → j) := by
  gcongr ∃ i, ∀ j, i ∧ ?_ → j

example (h : c → b) : (a → b → c) → (a → b → b) := by
  gcongr 1
  guard_target =ₛ (b → c) → (b → b)
  gcongr 1

/--
error: `gcongr` did not make progress.

a b c d : Prop
⊢ (∀ (n : Nat), 0 ≤ n) → ∀ (n : Int), 0 ≤ n
-/
#guard_msgs in
example (h : ∀ n : Nat, 0 ≤ n) : ∀ n : Int, 0 ≤ n := by
  revert h
  gcongr

def True' := True

example (h : a → b) : (b → True) → (a → True') := by
  gcongr ?_ → _

example (h : a → b) : (b → True) → (a → True') := by
  gcongr
  exact id
```
