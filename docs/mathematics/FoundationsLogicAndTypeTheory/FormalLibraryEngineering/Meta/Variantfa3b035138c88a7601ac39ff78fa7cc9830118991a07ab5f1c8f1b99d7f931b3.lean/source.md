# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Meta.Variantfa3b035138c88a7601ac39ff78fa7cc9830118991a07ab5f1c8f1b99d7f931b3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4eabad88f2e87837cc72654323320bf9bc3e1081` · SHA-256 `240965066495a3be148152ceed673c434e7d12ee34ff2cba5b7952a2cf011b90`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestSorry.Variant3b9e6d5d9ae6ba00c91178bc3d60064a3d1ff3d0ee0aa7a2409c04b93788c388","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3b9e6d5d9ae6ba00c91178bc3d60064a3d1ff3d0ee0aa7a2409c04b93788c388","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.TestSorry.Variant3b9e6d5d9ae6ba00c91178bc3d60064a3d1ff3d0ee0aa7a2409c04b93788c388","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"3b9e6d5d9ae6ba00c91178bc3d60064a3d1ff3d0ee0aa7a2409c04b93788c388","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/meta.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Tactic.ElabTerm
import Lean.Elab.Tactic.Rfl
import Mathlib.Lean.Expr.Basic
import Mathlib.Lean.Meta.Basic
import Mathlib.Tactic.Relation.Rfl

/-! # Tests for mathlib extensions to `Lean.Expr` and `Lean.Meta` -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestSorry.Variant3b9e6d5d9ae6ba00c91178bc3d60064a3d1ff3d0ee0aa7a2409c04b93788c388

namespace Tests

open Lean Meta

private axiom test_sorry : ∀ {α}, α
set_option linter.style.setOption false in
set_option pp.unicode.fun true

def eTrue := Expr.const ``True []
def eFalse := Expr.const ``False []
def eNat := Expr.const ``Nat []
def eNatZero := Expr.const ``Nat.zero []
def eNatOne := mkApp (Expr.const ``Nat.succ []) eNatZero

/-! ### `Lean.Expr.getAppApps` -/

#guard Expr.getAppApps (.const `f []) == #[]
#guard Expr.getAppApps (mkAppN (.const `f []) #[eTrue]) == #[.app (.const `f []) eTrue]
#guard Expr.getAppApps (mkAppN (.const `f []) #[eTrue, eFalse]) ==
        #[.app (.const `f []) eTrue, .app (.app (.const `f []) eTrue) eFalse]

/-! ### `Lean.Expr.reduceProjStruct?` -/

/-- info: none -/
#guard_msgs in #eval Expr.reduceProjStruct? eTrue
/-- info: none -/
#guard_msgs in #eval Expr.reduceProjStruct? (.const ``Prod.fst [levelOne, levelOne])
/-- info: some (Lean.Expr.app (Lean.Expr.const `Nat.succ []) (Lean.Expr.const `Nat.zero [])) -/
#guard_msgs in #eval Expr.reduceProjStruct? <|
  mkAppN (.const ``Prod.fst [levelOne, levelOne])
    #[eNat, eNat, mkAppN (.const ``Prod.mk [levelOne, levelOne]) #[eNat, eNat, eNatOne, eNatZero]]
/-- info: some (Lean.Expr.const `Nat.zero []) -/
#guard_msgs in #eval Expr.reduceProjStruct? <|
  mkAppN (.const ``Prod.snd [levelOne, levelOne])
    #[eNat, eNat, mkAppN (.const ``Prod.mk [levelOne, levelOne]) #[eNat, eNat, eNatOne, eNatZero]]
/--
error: ill-formed expression, Prod.fst is the 1-th projection function
but Prod.mk does not have enough arguments
-/
#guard_msgs (error, drop info) in #eval Expr.reduceProjStruct? <|
  mkAppN (.const ``Prod.fst [levelOne, levelOne])
    #[eNat, eNat, mkAppN (.const ``Prod.mk [levelOne, levelOne]) #[eNat, eNat]]

/-! ### `Lean.Expr.forallNot_of_notExists` -/

open Elab Tactic in
elab "test_forallNot_of_notExists" t:term : tactic => do
  let e ← elabTerm t none
  let ety ← instantiateMVars (← inferType e)
  let .app (.const ``Not []) ety' := ety | throwError "Type of expression must be not"
  let (ety', e') ← Expr.forallNot_of_notExists ety' e
  unless ← isDefEq ety' (← inferType e') do throwError "bad proof"
  logInfo m!"{ety'}"

set_option linter.unusedTactic false
set_option linter.unusedVariables false

/-- info: ∀ (x : Nat), ¬0 < x -/
#guard_msgs in
example (h : ¬ ∃ x, 0 < x) : False := by
  test_forallNot_of_notExists h
  exact test_sorry

/-- info: ∀ (x x_1 : Nat), ¬x_1 < x -/
#guard_msgs in
example (h : ¬ ∃ x y : Nat, y < x) : False := by
  test_forallNot_of_notExists h
  exact test_sorry

/-- error: failed -/
#guard_msgs in
example (h : ¬ 0 < 1) : False := by
  test_forallNot_of_notExists h

/-! ### `Lean.Meta.mkRel` -/

/-- info: true -/
#guard_msgs in
#eval do return (← mkRel ``Eq eNatZero eNatOne) == (← mkAppM ``Eq #[eNatZero, eNatOne])

/-- info: true -/
#guard_msgs in
#eval do return (← mkRel ``Iff eTrue eFalse) == (← mkAppM ``Iff #[eTrue, eFalse])

/-- info: true -/
#guard_msgs in
#eval do return (← mkRel ``HEq eTrue eFalse) == (← mkAppM ``HEq #[eTrue, eFalse])

/-- info: true -/
#guard_msgs in
#eval do return (← mkRel ``LT.lt eNatZero eNatOne) == (← mkAppM ``LT.lt #[eNatZero, eNatOne])

/-! ### `Lean.Expr.relSidesIfRefl?` -/

/--
info: some (`Eq, Lean.Expr.const `Nat.zero [],
Lean.Expr.app (Lean.Expr.const `Nat.succ []) (Lean.Expr.const `Nat.zero []))
-/
#guard_msgs in #eval do Expr.relSidesIfRefl? (← mkRel ``Eq eNatZero eNatOne)

/-- info: some (`Iff, Lean.Expr.const `True [], Lean.Expr.const `False []) -/
#guard_msgs in #eval do Expr.relSidesIfRefl? (← mkRel ``Iff eTrue eFalse)

/-- info: some (`HEq, Lean.Expr.const `True [], Lean.Expr.const `False []) -/
#guard_msgs in #eval do Expr.relSidesIfRefl? (← mkRel ``HEq eTrue eFalse)

/-- info: none -/
#guard_msgs in #eval do Expr.relSidesIfRefl? (← mkRel ``LT.lt eNatZero eNatOne)

attribute [refl] Nat.le_refl

/--
info: some (`LE.le, Lean.Expr.const `Nat.zero [],
Lean.Expr.app (Lean.Expr.const `Nat.succ []) (Lean.Expr.const `Nat.zero []))
-/
#guard_msgs in #eval do Expr.relSidesIfRefl? (← mkRel ``LE.le eNatZero eNatOne)

end Tests
```
