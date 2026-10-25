# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Implications.Variantec61a961a7029b0abea22d17e4841dccbe9dcceb1e0836cb595c280369792b9e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d35182fbe0badf2bc11e51079744585f92409873` · SHA-256 `c686820bd7d81b9bba3981a69a1b0a4fbeb3c1cc70e902cf544ac98b22e39443`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TruePrime.Variante65c1df6248793b7996399a95a368db94f78e970771d6ac479f05e3a222d72e6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e65c1df6248793b7996399a95a368db94f78e970771d6ac479f05e3a222d72e6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.TruePrime.Variante65c1df6248793b7996399a95a368db94f78e970771d6ac479f05e3a222d72e6","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"e65c1df6248793b7996399a95a368db94f78e970771d6ac479f05e3a222d72e6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/MathlibTest/Tactic/GCongr/Implications.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.GCongr


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TruePrime.Variante65c1df6248793b7996399a95a368db94f78e970771d6ac479f05e3a222d72e6

variable {a b c d : Prop}

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

-- Binder names are inferred, using the binder names in the LHS.
example (f g : Nat → Nat → Prop) (h : ∀ i j, f i j → g i j) :
    (∃ ε > 0, ∃ δ > 0, f ε δ) → (∃ ε' > 0, ∃ δ' > 0, g ε' δ') := by
  gcongr
  exact h ε δ
```
