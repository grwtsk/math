-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestSorry.Variant2f15887cb61c226058b4857020d4cf3348c7838523174bb908d842dacf466a88","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2f15887cb61c226058b4857020d4cf3348c7838523174bb908d842dacf466a88","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.TestSorry.Variant2f15887cb61c226058b4857020d4cf3348c7838523174bb908d842dacf466a88","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"2f15887cb61c226058b4857020d4cf3348c7838523174bb908d842dacf466a88","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/DefEqTransformations.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.DefEqTransformations


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestSorry.Variant2f15887cb61c226058b4857020d4cf3348c7838523174bb908d842dacf466a88

set_option autoImplicit true

private axiom test_sorry : ∀ {α}, α
namespace Tests

set_option linter.unusedTactic false

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
  exact test_sorry

example : 1 + 2 * 3 = 7 := by
  reduce
  guard_target =ₛ nat_lit 7 = nat_lit 7
  rfl

set_option linter.unusedVariables false in
example : let x := 1; let y := 2 + x; 2 + 1 = 3 := by
  intro x y
  refold_let x
  guard_target =ₛ 2 + x = 3
  refold_let y
  guard_target =ₛ y = 3
  rfl

example : 5 = 5 := by
  let x := 5
  refold_let x
  guard_target =ₛ x = x
  rfl

example : 2 + 1 = 3 := by
  let a : Fin 1 := 0
  let x := 1
  let b : Fin 1 := 0
  refold_let x at *
  guard_hyp a :ₛ Fin 1 := 0
  guard_hyp b :ₛ Fin x := 0
  rfl

example : 1 + 2 = 2 + 1 := by
  unfold_projs
  guard_target =ₛ Nat.add (nat_lit 1) (nat_lit 2) = Nat.add (nat_lit 2) (nat_lit 1)
  rfl

example (m n : Nat) : (m == n) = true := by
  unfold_projs
  guard_target =ₛ decide (m = n) = true
  exact test_sorry

example {α : Type u} (f : α → α) (a : α) :
    (fun x => (fun x => f x) x) a = f a := by
  eta_reduce
  guard_target =ₛ f a = f a
  rfl

example (f : Nat → Nat) : (fun a => f a) = (fun a => f (f a)) := by
  eta_expand
  guard_target =ₛ (fun a => f a) = (fun a => f (f a))
  eta_reduce
  guard_target =ₛ f = fun a => f (f a)
  eta_expand
  guard_target =ₛ (fun a => f a) = (fun a => f (f a))
  exact test_sorry

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
  exact test_sorry

example : (fun (a : Nat) => 1 + a) 2 = (1 + ·) 2 := by
  eta_expand
  guard_target =ₛ 1 + 2 = 1 + 2
  rfl

example (p : Nat × Nat) : (p.1, p.2) = (p.2, p.1) := by
  eta_struct
  guard_target =ₛ p = (p.2, p.1)
  exact test_sorry

example (p : Nat × Nat) : ((p.1, p.2).1, (p.1, p.2).2) = ((p.1, p.2).2, (p.1, p.2).1) := by
  eta_struct
  guard_target =ₛ p = (p.2, p.1)
  exact test_sorry

example (n : Fin 5) : n = ⟨n.1, n.2⟩ := by
  eta_struct
  guard_target =ₛ n = n
  rfl

abbrev _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestSorry.Variant2f15887cb61c226058b4857020d4cf3348c7838523174bb908d842dacf466a88.Fin.val2 : Fin n → Nat := Fin.val
abbrev _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestSorry.Variant2f15887cb61c226058b4857020d4cf3348c7838523174bb908d842dacf466a88.Fin.prop2 (x : Fin n) : (x : Nat) < n := x.isLt

example (n : Fin 5) : n = ⟨n.val2, n.prop2⟩ := by
  eta_struct
  guard_target =ₛ n = n
  rfl

end Tests
