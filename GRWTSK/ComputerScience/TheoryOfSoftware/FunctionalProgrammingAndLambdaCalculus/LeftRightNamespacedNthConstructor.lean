-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NthConstructor.Variant3e5d5df2ba1c1d8628a135919ca29f0827e2e5b823283d3dd2b51a3e037ac0f9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3e5d5df2ba1c1d8628a135919ca29f0827e2e5b823283d3dd2b51a3e037ac0f9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.NthConstructor.Variant3e5d5df2ba1c1d8628a135919ca29f0827e2e5b823283d3dd2b51a3e037ac0f9","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"3e5d5df2ba1c1d8628a135919ca29f0827e2e5b823283d3dd2b51a3e037ac0f9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Tactic/LeftRight.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Siddhartha Gadgil. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Siddhartha Gadgil
-/
import Lean.Elab.Tactic.Basic
import Lean.Meta.Tactic.Apply


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NthConstructor.Variant3e5d5df2ba1c1d8628a135919ca29f0827e2e5b823283d3dd2b51a3e037ac0f9

open Lean Meta Elab Tactic

namespace Std.Tactic.NthConstructor

/--
Apply the `n`-th constructor of the target type,
checking that it is an inductive type,
and that there are the expected number of constructors.
-/
def nthConstructor (name : Name) (idx : Nat) (max : Option Nat) (goal : MVarId) :
    MetaM (List MVarId) := do
  goal.withContext do
    goal.checkNotAssigned name
    matchConstInduct (← goal.getType').getAppFn
      (fun _ => throwTacticEx `constructor goal "target is not an inductive datatype")
      fun ival us => do
        if let some max := max then unless ival.ctors.length == max do
          throwTacticEx `constructor goal
            s!"{name} tactic works for inductive types with exactly {max} constructors"
        goal.apply <| mkConst ival.ctors[idx]! us

end NthConstructor

open NthConstructor

/--
Apply the first constructor,
in the case that the goal is an inductive type with exactly two constructors.
```
example : True ∨ False := by
  left
  trivial
```
-/
elab "left" : tactic => liftMetaTactic (nthConstructor `left 0 (some 2))

/--
Apply the second constructor,
in the case that the goal is an inductive type with exactly two constructors.
```
example {p q : Prop} (h : q) : p ∨ q := by
  right
  exact h
```
-/
elab "right" : tactic => liftMetaTactic (nthConstructor `right 1 (some 2))
