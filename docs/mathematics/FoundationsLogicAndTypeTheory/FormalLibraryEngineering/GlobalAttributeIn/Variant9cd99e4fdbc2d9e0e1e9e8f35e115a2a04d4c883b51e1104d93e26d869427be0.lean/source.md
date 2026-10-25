# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GlobalAttributeIn.Variant9cd99e4fdbc2d9e0e1e9e8f35e115a2a04d4c883b51e1104d93e26d869427be0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a86d9b8500e8e540b14b99caa0658514b6c96d56` · SHA-256 `32752cf222bcb1090ce64036deb051f2b0b05fdd99b3a071768115d0e3f6681c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetLinterGlobalAttributeIn.Variant7f1595d0c798f5556192b6bda6f15d8da6183725958851c0d7db0ee6cc42521c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7f1595d0c798f5556192b6bda6f15d8da6183725958851c0d7db0ee6cc42521c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.GetLinterGlobalAttributeIn.Variant7f1595d0c798f5556192b6bda6f15d8da6183725958851c0d7db0ee6cc42521c","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"7f1595d0c798f5556192b6bda6f15d8da6183725958851c0d7db0ee6cc42521c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/Linter/GlobalAttributeIn.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Michael Rothgang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Michael Rothgang, Damiano Testa
-/

import Lean.Elab.Command
-- Import this linter explicitly to ensure that
-- this file has a valid copyright header and module docstring.
import Mathlib.Tactic.Linter.Header

/-!
# Linter for `attribute [...] in` declarations

Linter for global attributes created via `attribute [...] in` declarations.

The syntax `attribute [instance] instName in` can be used to accidentally create a global instance.
This is **not** obvious from reading the code, and in fact happened twice during the port,
hence, we lint against it.

*Example*: before this was discovered, `Mathlib/Topology/Category/TopCat/Basic.lean`
contained the following code:
```
attribute [instance] HasForget.instFunLike in
instance (X Y : TopCat.{u}) : CoeFun (X ⟶ Y) fun _ => X → Y where
  coe f := f
```
Despite the `in`, this makes `HasForget.instFunLike` a global instance.

This seems to apply to all attributes. For example:
```lean
theorem what : False := sorry

attribute [simp] what in
#guard true

-- the `simp` attribute persists
example : False := by simp  -- `simp` finds `what`

theorem who {x y : Nat} : x = y := sorry

attribute [ext] who in
#guard true

-- the `ext` attribute persists
example {x y : Nat} : x = y := by ext
```
Therefore, we lint against this pattern on all instances.

For *removing* attributes, the `in` works as expected.
```lean
/--
error: failed to synthesize
  Add Nat
-/
#guard_msgs in
attribute [-instance] instAddNat in
#synth Add Nat

-- the `instance` persists
/-- info: instAddNat -/
#guard_msgs in
#synth Add Nat

@[simp]
theorem what : False := sorry

/-- error: simp made no progress -/
#guard_msgs in
attribute [-simp] what in
example : False := by simp

-- the `simp` attribute persists
#guard_msgs in
example : False := by simp
```
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetLinterGlobalAttributeIn.Variant7f1595d0c798f5556192b6bda6f15d8da6183725958851c0d7db0ee6cc42521c

open Lean Elab Command

namespace Mathlib.Linter

/-- Lint on any occurrence of `attribute [...] name in` which is not `local` or `scoped`:
these are a footgun, as the attribute is applied *globally* (despite the `in`). -/
register_option linter.globalAttributeIn : Bool := {
  defValue := true
  descr := "enable the globalAttributeIn linter"
}

namespace globalAttributeInLinter

/-- Gets the value of the `linter.globalAttributeIn` option. -/
def getLinterGlobalAttributeIn (o : Options) : Bool :=
  Linter.getLinterValue linter.globalAttributeIn o

/--
`getGlobalAttributesIn? cmd` assumes that `cmd` represents a `attribute [...] id in ...` command.
If this is the case, then it returns `(id, #[non-local nor scoped attributes])`.
Otherwise, it returns `default`.
-/
def getGlobalAttributesIn? : Syntax → Option (Ident × Array (TSyntax `attr))
  | `(attribute [$x,*] $id in $_) =>
    let xs := x.getElems.filterMap fun a => match a.raw with
      | `(Parser.Command.eraseAttr| -$_) => none
      | `(Parser.Term.attrInstance| local $_attr:attr) => none
      | `(Parser.Term.attrInstance| scoped $_attr:attr) => none
      | `(attr| $a) => some a
    (id, xs)
  | _ => default

/-- The `globalAttributeInLinter` linter flags any global attributes generated by an
`attribute [...] in` declaration. (This includes the `instance`, `simp` and `ext` attributes.)

Despite the `in`, these define *global* instances, which can be rather misleading.
Instead, remove the `in` or mark them with `local`.
-/
def globalAttributeIn : Linter where run := withSetOptionIn fun stx => do
  unless getLinterGlobalAttributeIn (← getOptions) do
    return
  if (← MonadState.get).messages.hasErrors then
    return
  for s in stx.topDown do
    if let .some (id, nonScopedNorLocal) := getGlobalAttributesIn? s then
      for attr in nonScopedNorLocal do
        Linter.logLint linter.globalAttributeIn attr m!
          "Despite the `in`, the attribute '{attr}' is added globally to '{id}'\n\
          please remove the `in` or make this a `local {attr}`"

initialize addLinter globalAttributeIn

end globalAttributeInLinter

end Mathlib.Linter
````
