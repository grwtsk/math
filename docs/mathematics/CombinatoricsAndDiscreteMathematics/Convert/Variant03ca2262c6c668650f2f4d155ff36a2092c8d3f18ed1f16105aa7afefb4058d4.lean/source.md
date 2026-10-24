# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Convert.Variant03ca2262c6c668650f2f4d155ff36a2092c8d3f18ed1f16105aa7afefb4058d4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1529b4e68ea001c6e0454d7f3a8f9e4e716f76c5` · SHA-256 `12004b42258896fdc6cf302a71eab865c2eff3f800e7eb4935578154e879e98a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.Fintype.Variantc69f7641d973f03c1056f6c7c0b074a9c0e97fc8bdc78c5d02ccf460221d7d9c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c69f7641d973f03c1056f6c7c0b074a9c0e97fc8bdc78c5d02ccf460221d7d9c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.Fintype.Variantc69f7641d973f03c1056f6c7c0b074a9c0e97fc8bdc78c5d02ccf460221d7d9c","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"c69f7641d973f03c1056f6c7c0b074a9c0e97fc8bdc78c5d02ccf460221d7d9c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/test/convert.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.Convert
import Std.Tactic.GuardExpr
import Mathlib.Algebra.Group.Basic
import Mathlib.Data.Set.Image


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.Fintype.Variantc69f7641d973f03c1056f6c7c0b074a9c0e97fc8bdc78c5d02ccf460221d7d9c

set_option autoImplicit true

namespace Tests

example (P : Prop) (h : P) : P := by convert h

example (α β : Type) (h : α = β) (b : β) : α := by
  convert b

example (α β : Type) (h : ∀ α β : Type, α = β) (b : β) : α := by
  convert b
  apply h

example (m n : Nat) (h : m = n) (b : Fin n) : Nat × Nat × Nat × Fin m := by
  convert (37, 57, 2, b)

example (α β : Type) (h : α = β) (b : β) : Nat × α := by
  -- type eq ok since arguments to `Prod` are explicit
  convert (37, b)

example (α β : Type) (h : β = α) (b : β) : Nat × α := by
  convert ← (37, b)

example (α β : Type) (h : α = β) (b : β) : Nat × Nat × Nat × α := by
  convert (37, 57, 2, b)

example (α β : Type) (h : α = β) (b : β) : Nat × Nat × Nat × α := by
  convert (37, 57, 2, b) using 2
  guard_target = (Nat × α) = (Nat × β)
  congr!

example {f : β → α} {x y : α} (h : x ≠ y) : f ⁻¹' {x} ∩ f ⁻¹' {y} = ∅ := by
  have : {x} ∩ {y} = (∅ : Set α) := by simpa [ne_comm] using h
  convert Set.preimage_empty
  rw [←Set.preimage_inter, this]

section convert_to

example {α} [AddCommMonoid α] {a b c d : α} (H : a = c) (H' : b = d) : a + b = d + c := by
  convert_to c + d = _ using 2
  rw [add_comm]

example {α} [AddCommMonoid α] {a b c d : α} (H : a = c) (H' : b = d) : a + b = d + c := by
  convert_to c + d = _ -- defaults to `using 1`
  congr 2
  rw [add_comm]

-- Check that `using 1` gives the same behavior as the default.
example {α} [AddCommMonoid α] {a b c d : α} (H : a = c) (H' : b = d) : a + b = d + c := by
  convert_to c + d = _ using 1
  congr 2
  rw [add_comm]

end convert_to

example (prime : Nat → Prop) (n : Nat) (h : prime (2 * n + 1)) :
    prime (n + n + 1) := by
  convert h
  · guard_target = (HAdd.hAdd : Nat → Nat → Nat) = HMul.hMul
    sorry
  · guard_target = n = 2
    sorry

example (prime : Nat → Prop) (n : Nat) (h : prime (2 * n + 1)) :
    prime (n + n + 1) := by
  convert (config := .unfoldSameFun) h
  guard_target = n + n = 2 * n
  sorry

example (p q : Nat → Prop) (h : ∀ ε > 0, p ε) :
    ∀ ε > 0, q ε := by
  convert h using 2 with ε hε
  guard_hyp hε : ε > 0
  guard_target = q ε ↔ p ε
  sorry

class Fintype (α : Type _) where
  card : Nat

axiom Fintype.foo (α : Type _) [Fintype α] : Fintype.card α = 2

axiom Fintype.foo' (α : Type _) [Fintype α] [Fintype (Option α)] : Fintype.card α = 2

axiom instFintypeBool : Fintype Bool

/- Would be "failed to synthesize instance Fintype ?m" without allowing TC failure. -/
example : @Fintype.card Bool instFintypeBool = 2 := by
  convert Fintype.foo _

example : @Fintype.card Bool instFintypeBool = 2 := by
  convert Fintype.foo' _ using 1
  guard_target = Fintype (Option Bool)
  sorry

example : True := by
  convert_to ?x + ?y = ?z
  case x => exact 1
  case y => exact 2
  case z => exact 3
  all_goals try infer_instance
  · simp
  · simp

example [Fintype α] [Fintype β] : Fintype.card α = Fintype.card β := by
  congr!
  guard_target = Fintype.card α = Fintype.card β
  congr! (config := {typeEqs := true})
  · guard_target = α = β
    sorry
  · rename_i inst1 inst2 h
    guard_target = HEq inst1 inst2
    have : Subsingleton (Fintype α) := sorry
    congr!
```
