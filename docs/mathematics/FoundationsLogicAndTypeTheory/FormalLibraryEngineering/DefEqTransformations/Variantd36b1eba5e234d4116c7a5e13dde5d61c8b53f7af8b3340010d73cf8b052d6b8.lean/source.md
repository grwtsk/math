# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DefEqTransformations.Variantd36b1eba5e234d4116c7a5e13dde5d61c8b53f7af8b3340010d73cf8b052d6b8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d2da777dec0df6d60ae6a751789bd59854a33ec1` · SHA-256 `c9b9a8875127631d8e45d4f369dfbfd29bc1020496794bf6b7eaf03c43e1b21e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootFinVal2.Varianta88e2f345dd95db904e154b25bc3a49bca960519a585ee6519ed3e012ee23e98","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a88e2f345dd95db904e154b25bc3a49bca960519a585ee6519ed3e012ee23e98","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.RootFinVal2.Varianta88e2f345dd95db904e154b25bc3a49bca960519a585ee6519ed3e012ee23e98","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"a88e2f345dd95db904e154b25bc3a49bca960519a585ee6519ed3e012ee23e98","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/test/DefEqTransformations.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.DefEqTransformations
import Mathlib.Init.Logic
import Std.Tactic.GuardExpr


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootFinVal2.Varianta88e2f345dd95db904e154b25bc3a49bca960519a585ee6519ed3e012ee23e98

namespace Tests

example : id (1 = 1) := by
  with_reducible whnf
  guard_target =ₛ id (1 = 1)
  whnf
  guard_target =ₛ 1 = 1
  rfl

example : (fun x => 1 + x) 1 = 2 := by
  beta_reduce
  guard_target =ₛ 1 + 1 = 2
  rfl

example : (fun x => 1 + x) 2 = (fun y => 2 + y) 3 := by
  conv =>
    lhs
    beta_reduce
    guard_target =ₛ 1 + 2
  guard_target =ₛ 1 + 2 = (fun y => 2 + y) 3
  sorry

example : 1 + 2 * 3 = 7 := by
  reduce
  guard_target =ₛ nat_lit 7 = nat_lit 7
  rfl

example : let x := 1; let y := 2; x + y = y + x := by
  intro x y
  unfold_let x
  guard_target =ₛ 1 + y = y + 1
  let z := 3
  have h : z - 3 = 0 := rfl
  unfold_let z at h
  guard_hyp h :ₛ 3 - 3 = 0
  unfold_let y
  guard_target =ₛ 1 + 2 = 2 + 1
  rfl

example : let x := 1; let y := 2; x + y = y + x := by
  intro x y
  unfold_let x y
  guard_target =ₛ 1 + 2 = 2 + 1
  rfl

example : let x := 1; let y := 2; x + y = y + x := by
  intro x y
  unfold_let
  guard_target =ₛ 1 + 2 = 2 + 1
  rfl

example : let x := 1; let y := 2 + x; y = 3 := by
  intro x y
  unfold_let x
  guard_target =ₛ y = 3
  unfold_let y
  guard_target =ₛ 2 + x = 3
  unfold_let x
  guard_target =ₛ 2 + 1 = 3
  rfl

example : let x := 1; let y := 2 + x; y = 3 := by
  intro x y
  unfold_let x y
  guard_target =ₛ 2 + 1 = 3
  rfl

example : 1 + 2 = 2 + 1 := by
  unfold_projs
  guard_target =ₛ Nat.add (nat_lit 1) (nat_lit 2) = Nat.add (nat_lit 2) (nat_lit 1)
  rfl

example (m n : Nat) : (m == n) = true := by
  unfold_projs
  guard_target =ₛ Nat.beq m n = true
  sorry

example (f : Nat → Nat) : (fun a => f a) = (fun a => f (f a)) := by
  eta_expand
  guard_target =ₛ (fun a => f a) = (fun a => f (f a))
  eta_reduce
  guard_target =ₛ f = fun a => f (f a)
  eta_expand
  guard_target =ₛ (fun a => f a) = (fun a => f (f a))
  sorry

example : (fun (a b : Nat) => a + b) = (· + ·) := by
  eta_reduce
  guard_target =ₛ (HAdd.hAdd : Nat → Nat → Nat) = HAdd.hAdd
  eta_expand
  guard_target =ₛ (fun (a b : Nat) => a + b) = fun a b => a + b
  rfl

example : (fun (a : Nat) => 1 + a) = (1 + ·) := by
  eta_reduce
  guard_target =ₛ (HAdd.hAdd 1) = HAdd.hAdd 1
  eta_expand
  guard_target =ₛ (fun a ↦ 1 + a) = fun a ↦ 1 + a
  rfl

example (f : Nat → Nat → Nat) : (fun x => f 1 x) 2 = 3 := by
  eta_expand
  guard_target =ₛ f 1 2 = 3
  sorry

example : (fun (a : Nat) => 1 + a) 2 = (1 + ·) 2 := by
  eta_expand
  guard_target =ₛ 1 + 2 = 1 + 2
  rfl

example (p : Nat × Nat) : (p.1, p.2) = (p.2, p.1) := by
  eta_struct
  guard_target =ₛ p = (p.2, p.1)
  sorry

example (p : Nat × Nat) : ((p.1, p.2).1, (p.1, p.2).2) = ((p.1, p.2).2, (p.1, p.2).1) := by
  eta_struct
  guard_target =ₛ p = (p.2, p.1)
  sorry

example (n : Fin 5) : n = ⟨n.1, n.2⟩ := by
  eta_struct
  guard_target =ₛ n = n
  rfl

abbrev _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootFinVal2.Varianta88e2f345dd95db904e154b25bc3a49bca960519a585ee6519ed3e012ee23e98.Fin.val2 : Fin n → Nat := Fin.val
abbrev _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootFinVal2.Varianta88e2f345dd95db904e154b25bc3a49bca960519a585ee6519ed3e012ee23e98.Fin.prop2 (x : Fin n) : (x : Nat) < n := x.isLt

example (n : Fin 5) : n = ⟨n.val2, n.prop2⟩ := by
  eta_struct
  guard_target =ₛ n = n
  rfl
```
