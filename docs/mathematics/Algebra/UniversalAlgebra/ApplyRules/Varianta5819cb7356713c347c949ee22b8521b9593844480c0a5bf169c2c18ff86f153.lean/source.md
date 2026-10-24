# Complete source: GRWTSK.Algebra.UniversalAlgebra.ApplyRules.Varianta5819cb7356713c347c949ee22b8521b9593844480c0a5bf169c2c18ff86f153

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dbdd89e6faaa5017da63890987d2c541e0a83d65` · SHA-256 `9e0f29cad803e25c0c269eccc06ee1d34c60d5522cffa14fe1e605aa70d091ce`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.Field.Variantf87bd8b4c26b3ab93ea4af72c602463f5e23f3774b73c719240e55b34e0eabfe","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f87bd8b4c26b3ab93ea4af72c602463f5e23f3774b73c719240e55b34e0eabfe","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.Field.Variantf87bd8b4c26b3ab93ea4af72c602463f5e23f3774b73c719240e55b34e0eabfe","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"f87bd8b4c26b3ab93ea4af72c602463f5e23f3774b73c719240e55b34e0eabfe","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/apply_rules.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Algebra.Order.Field.Basic


namespace GRWTSK.Algebra.UniversalAlgebra.Field.Variantf87bd8b4c26b3ab93ea4af72c602463f5e23f3774b73c719240e55b34e0eabfe

set_option autoImplicit true
open Nat

example {a b c d e : Nat} (h1 : a ≤ b) (h2 : c ≤ d) (h3 : 0 ≤ e) :
    a + c * e + a + c + 0 ≤ b + d * e + b + d + e :=
  Nat.add_le_add (Nat.add_le_add (Nat.add_le_add
    (Nat.add_le_add h1 (Nat.mul_le_mul_right _ h2)) h1) h2) h3

example {a b c d e : Nat} (h1 : a ≤ b) (h2 : c ≤ d) (h3 : 0 ≤ e) :
    a + c * e + a + c + 0 ≤ b + d * e + b + d + e := by
  apply_rules [Nat.add_le_add, Nat.mul_le_mul_right]

-- Check that when we supply an iteration bound,
-- `apply_rules` works up to that bound and returns the remaining goals.
example {a b c d e : Nat} (h1 : a ≤ b) (h2 : c ≤ d) (h3 : 0 ≤ e) :
    a + c * e + a + c + 0 ≤ b + d * e + b + d + e := by
  apply_rules (config := {maxDepth := 9}) [Nat.add_le_add, Nat.mul_le_mul_right]
  guard_target = 0 ≤ e
  assumption

-- Check that `apply_rules only` works.
example {P Q : Prop} (p : P) (f : P → Q) : Q := by
  apply_rules only [f]
  exact p

-- Check that `apply_rules [-p]` works.
example {P Q : Prop} (p : P) (f : P → Q) : Q := by
  apply_rules [-p]
  exact p

-- Test that metavariables created for implicit arguments don't get stuck
-- This required extra work in Lean 3, but doesn't seem to be a problem in Lean 4.
example (P : Nat → Type) (f : {n : Nat} → P n → P (n + 1)) (g : P 0) : P 2 := by
  apply_rules only [f, g]

-- Check that `apply_rules` solves goals that come after goals that it can't solve
example (Q : Type) (f : Nat → Q) : Int × Q := by
  apply_rules only [Prod.mk, f]
  guard_target = Int
  exact 0
  guard_target = Nat
  exact 37

-- Test that with transparency set to `.reducible`, the tactic will not unfold `/` to the underlying
-- `*` to match the form of the lemma `mul_le_mul`
example [Field α] [LinearOrder α] [IsStrictOrderedRing α] {a b : α} (hb : 0 ≤ b) (hab : a ≤ b) :
    a / 2 ≤ b / 2 := by
  fail_if_success
    apply_rules (config := { transparency := .reducible }) [mul_le_mul]
  guard_target = a / 2 ≤ b / 2
  exact div_le_div₀ hb hab zero_lt_two le_rfl
```
