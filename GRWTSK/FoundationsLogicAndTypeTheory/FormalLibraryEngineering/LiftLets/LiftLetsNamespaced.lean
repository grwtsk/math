-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LiftLets.Varianta0359720fa29a454bcf30b12459523aee9a141a98b7785ea9af09d91a2e6ff1b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a0359720fa29a454bcf30b12459523aee9a141a98b7785ea9af09d91a2e6ff1b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.LiftLets.Varianta0359720fa29a454bcf30b12459523aee9a141a98b7785ea9af09d91a2e6ff1b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a0359720fa29a454bcf30b12459523aee9a141a98b7785ea9af09d91a2e6ff1b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/test/LiftLets.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.LiftLets
import Std.Tactic.GuardExpr


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LiftLets.Varianta0359720fa29a454bcf30b12459523aee9a141a98b7785ea9af09d91a2e6ff1b

set_option autoImplicit true

example : (let x := 1; x) = 1 := by
  lift_lets
  guard_target =ₛ let x := 1; x = 1
  intro _x
  rfl

example : (let x := 1; x) = (let y := 1; y) := by
  lift_lets
  guard_target =ₛ let x := 1; x = x
  intro _x
  rfl

example : (let x := 1; x) = (let y := 1; y) := by
  lift_lets (config := {merge := false})
  guard_target =ₛ let x := 1; let y := 1; x = y
  intros _x _y
  rfl

example : (let x := (let y := 1; y + 1); x + 1) = 3 := by
  lift_lets
  guard_target =ₛ let y := 1; let x := y + 1; x + 1 = 3
  intros _y _x
  rfl

example : (fun x => let a := x; let y := 1; a + y) 2 = 2 + 1 := by
  lift_lets
  guard_target =ₛ let y := 1; (fun x ↦ let a := x; a + y) 2 = 2 + 1
  intro _y
  rfl

example : (fun (_ : let ty := Nat; ty) => Nat) (2 : Nat) := by
  lift_lets
  guard_target =ₛ let ty := Nat; (fun (_ : ty) ↦ Nat) (2 : Nat)
  exact 0

example : (fun (x : let ty := Nat; ty) => Fin x) (2 : Nat) := by
  lift_lets
  guard_target =ₛ let ty := Nat; (fun (x : ty) ↦ Fin x) (2 : Nat)
  exact 0


example : (id : Nat → Nat) = (fun (x : let ty := Nat; ty) => x) := by
  lift_lets
  guard_target =ₛ let ty := Nat; (id: Nat → Nat) = fun (x : ty) ↦ x
  rfl

example : (x : let ty := Nat; ty) → let y := (1 : Nat); Fin (y + Nat.succ x) := by
  lift_lets
  guard_target =ₛ let ty := Nat; let y := 1; (x : ty) → Fin (y + Nat.succ x)
  intro ty y x
  rw [Nat.add_succ, Nat.succ_eq_add_one]
  exact 0

example : (x : Nat) → (y : Nat) → let z := x + 1; let w := 3; Fin (z + w) := by
  lift_lets
  guard_target =ₛ let w := 3; (x : Nat) → let z := x + 1; Nat → Fin (z + w)
  intro w x z _y
  simp
  exact 0

example : (x : Nat) → let z := x + 1; (y : Nat) → let w := 3; Fin (z + w) := by
  lift_lets
  guard_target =ₛ let w := 3; (x : Nat) → let z := x + 1; Nat → Fin (z + w)
  intro w x z _y
  simp
  exact 0

example : (let x := 1; x) = (let x := 1; x) := by
  lift_lets
  guard_target =ₛ let x := 1; x = x
  rfl

example : (let x := 2; x) = (let y := 1; y + 1) := by
  lift_lets
  guard_target =ₛ let x := 2; let y := 1; x = y + 1
  rfl

example (h : (let x := 1; x) = y) : True := by
  lift_lets at h
  guard_hyp h :ₛ let x := 1; x = y
  trivial

example (h : (let x := 1; x) = y) : True := by
  revert h
  lift_lets
  intro x h
  guard_hyp x : Nat := 1
  guard_hyp h :ₛ x = y
  trivial

example : let x := 1; ∀ n, let y := 1; x + n = y + n := by
  lift_lets
  guard_target =ₛ let x := 1; ∀ n, x + n = x + n
  intros x n
  rfl

example (m : Nat) (h : ∃ n, n + 1 = m) (x : Fin m) (y : Fin _) :
    cast (let h' := h.choose_spec.symm; congrArg Fin h') x = y := by
  lift_lets (config := {proofs := true})
  intro h'
  clear_value h'
  guard_hyp h' : m = Exists.choose h + 1
  sorry
