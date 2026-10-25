# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Itauto.Variant388c2442ee205619881f8f40144ff501f8380edf5144f20fbfaae2bdf7dbc99e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `010380a0d67281e185eefd0f008cdf7677d5fc64` · SHA-256 `273d2104bd29cadf939a82dad90783e6291f545ba53f8155190c608aa54cd350`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ITauto.Variantc1a8b24c29c709c7698b1e0c7d446745813acc41d024026613b0f8a6864af1bf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c1a8b24c29c709c7698b1e0c7d446745813acc41d024026613b0f8a6864af1bf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ITauto.Variantc1a8b24c29c709c7698b1e0c7d446745813acc41d024026613b0f8a6864af1bf","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"c1a8b24c29c709c7698b1e0c7d446745813acc41d024026613b0f8a6864af1bf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/itauto.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Mathlib.Tactic.ITauto


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ITauto.Variantc1a8b24c29c709c7698b1e0c7d446745813acc41d024026613b0f8a6864af1bf

section ITauto₀
variable (p q r : Prop)
variable (h : p ∧ q ∨ p ∧ r)

example : p ∧ p := by itauto

end ITauto₀

section ITauto₃

example (p : Prop) : ¬(p ↔ ¬p) := by itauto
example (p : Prop) : ¬p = ¬p := by itauto
example (p : Prop) : p ≠ ¬p := by itauto

example (p : Prop) : p ∧ True ↔ p := by itauto
example (p : Prop) : p ∨ False ↔ p := by itauto
example (p q : Prop) (h0 : q) : p → q := by itauto
example (p q r : Prop) : p ∨ q ∧ r → (p ∨ q) ∧ (r ∨ p ∨ r) := by itauto
example (p q r : Prop) : p ∨ q ∧ r → (p ∨ q) ∧ (r ∨ p ∨ r) := by itauto
example (p q r : Prop) (h : p) : (p → q ∨ r) → q ∨ r := by itauto
example (p q : Prop) (h : ¬(p ↔ q)) (h' : p) : ¬q := by itauto
example (p q : Prop) (h : ¬(p ↔ q)) (h' : q) : ¬p := by itauto
example (p q : Prop) (h : ¬(p ↔ q)) (h' : ¬q) (h'' : ¬p) : False := by itauto
example (p q r : Prop) (h : p ↔ q) (h' : r ↔ q) (h'' : ¬r) : ¬p := by itauto
example (p q r : Prop) (h : p ↔ q) (h' : r ↔ q) : p ↔ r := by itauto
example (p q : Prop) : Xor' p q → (p ↔ ¬q) := by itauto
example (p q : Prop) : Xor' p q → Xor' q p := by itauto

example (p q r : Prop) (h : ¬(p ↔ q)) (h' : r ↔ q) : ¬(p ↔ r) := by itauto

example (p : Prop) : p → ¬(p → ¬p) := by itauto

example (p : Prop) (em : p ∨ ¬p) : ¬(p ↔ ¬p) := by itauto

example (p : Prop) [Decidable p] : p ∨ ¬p := by itauto *
example (p : Prop) [Decidable p] : ¬(p ↔ ¬p) := by itauto
example (p q r : Prop) [Decidable p] : (p → q ∨ r) → (p → q) ∨ (p → r) := by itauto *
example (p q r : Prop) [Decidable q] : (p → q ∨ r) → (p → q) ∨ (p → r) := by itauto [q]

example (xl yl zl xr yr zr : Prop) :
    (xl ∧ yl ∨ xr ∧ yr) ∧ zl ∨ (xl ∧ yr ∨ xr ∧ yl) ∧ zr ↔
      xl ∧ (yl ∧ zl ∨ yr ∧ zr) ∨ xr ∧ (yl ∧ zr ∨ yr ∧ zl) := by itauto

example : 0 < 1 ∨ ¬0 < 1 := by itauto *
example (p : Prop) (h : 0 < 1 → p) (h2 : ¬0 < 1 → p) : p := by itauto *

example (b : Bool) : ¬b ∨ b := by itauto *
example (p : Prop) : ¬p ∨ p := by itauto! [p]
example (p : Prop) : ¬p ∨ p := by itauto! *

set_option linter.unusedVariables false in
set_option linter.unusedTactic false in
-- failure tests
example (p q r : Prop) : True := by
  haveI : p ∨ ¬p := by (fail_if_success itauto); sorry
  clear this; haveI : ¬(p ↔ q) → ¬p → q := by (fail_if_success itauto); sorry
  clear this; haveI : ¬(p ↔ q) → (r ↔ q) → (p ↔ ¬r) := by (fail_if_success itauto); sorry
  trivial

example (P : Nat → Prop) (n : Nat)
    (h : ¬(n = 7 ∨ n = 0) ∧ P n) : ¬(P n → n = 7 ∨ n = 0) := by itauto

section ModuloSymmetry
variable {p q r : Prop} {α : Type} {x y : α}
variable (h : x = y)
variable (h'' : (p ∧ q ↔ q ∨ r) ↔ (r ∧ p ↔ r ∨ q))
example (h' : ¬x = y) : p ∧ q := by itauto
example : x = y := by itauto
end ModuloSymmetry

end ITauto₃

example (p1 p2 p3 p4 p5 p6 f : Prop)
    (h : (
      (p1 ∧ p2 ∧ p3 ∧ p4 ∧ p5 ∧ p6 ∧ True) ∨
      (((p1 → f) → f) → f) ∨
      (p2 → f) ∨
      (p3 → f) ∨
      (p4 → f) ∨
      (p5 → f) ∨
      (p6 → f) ∨
      False
    ) → f) : f := by itauto
```
