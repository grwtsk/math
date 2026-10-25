# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Guardexpr.Variante540ab48c4a95f9d73d87d51fd606aabfa1f714bcc81f51c0191594a4ad2ba0d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `01d0782a29c3669924310325f8369e1c75f9421d` · SHA-256 `0b4260a7abbef02bc5a84913ee231e3e972d2dcb8bee0774ca29bc01d2af3f6f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GuardExpr.Variantc2a4286281f5623d4788ac4d096addbebff3dbad45bc8300a15634cf4246a4fb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c2a4286281f5623d4788ac4d096addbebff3dbad45bc8300a15634cf4246a4fb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.GuardExpr.Variantc2a4286281f5623d4788ac4d096addbebff3dbad45bc8300a15634cf4246a4fb","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"c2a4286281f5623d4788ac4d096addbebff3dbad45bc8300a15634cf4246a4fb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/test/guardexpr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Std.Tactic.GuardExpr
import Std.Tactic.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GuardExpr.Variantc2a4286281f5623d4788ac4d096addbebff3dbad45bc8300a15634cf4246a4fb

example (n : Nat) : Nat := by
  guard_hyp n :ₛ Nat
  let m : Nat := 1
  guard_expr 1 =ₛ (by exact 1)
  fail_if_success guard_expr 1 = (by exact 2)
  guard_hyp m := 1
  guard_hyp m : (λ x => x) Nat :=~ id 1
  guard_target = Nat
  have : 1 = 1 := by conv =>
    guard_hyp m := 1
    guard_expr ‹Nat› = m
    fail_if_success guard_target = 1
    lhs
    guard_target = 1
  exact 0

-- Now with a generic type to test that default instances work correctly
example [∀ n, OfNat α n] (n : α) : α := by
  guard_hyp n
  fail_if_success guard_hyp m
  guard_hyp n :ₛ α
  let q : α := 1
  guard_expr (1 : α) =ₛ 1
  fail_if_success guard_expr 1 =ₛ (2 : α)
  fail_if_success guard_expr 1 =ₛ (by exact (2 : α))
  guard_hyp q := 1
  guard_hyp q : α := 1
  guard_hyp q : (λ x => x) α :=~ id 1
  guard_target = α
  have : (1 : α) = 1 := by conv =>
    guard_hyp q := 1
    guard_expr ‹α› = q
    fail_if_success guard_target = 1
    lhs
    guard_target = 1
  exact 0

#guard_expr 1 = 1
#guard_expr 1 =ₛ 1
#guard_expr 2 = 1 + 1

section
variable {α : Type} [∀ n, OfNat α n]
#guard_expr (1 : α) = 1
end

#guard true
#guard 2 == 1 + 1
#guard 2 = 1 + 1

instance (p : Bool → Prop) [DecidablePred p] : Decidable (∀ b, p b) :=
  if h : p false ∧ p true then
    isTrue (by { intro b; cases h; cases b <;> assumption })
  else
    isFalse (by { intro h'; simp [h'] at h })

#guard ∀ (b : Bool), b = !!b
```
