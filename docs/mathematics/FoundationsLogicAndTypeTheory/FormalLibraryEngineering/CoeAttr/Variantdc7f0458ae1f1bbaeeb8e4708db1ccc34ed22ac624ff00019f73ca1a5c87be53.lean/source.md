# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CoeAttr.Variantdc7f0458ae1f1bbaeeb8e4708db1ccc34ed22ac624ff00019f73ca1a5c87be53

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e10da57c502cdca869e328edeb83a3678f3bc311` · SHA-256 `d20f60bcf891a461dcfb5c96a4388ae0a1240217a9166dfd8835b274c1dafd36`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CoeFnType.Variantb71fe94a3fe4dc0430dda77c5f77c97a5b8fde6f7a9fef5fafaca0b5aaedd0b9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b71fe94a3fe4dc0430dda77c5f77c97a5b8fde6f7a9fef5fafaca0b5aaedd0b9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.CoeFnType.Variantb71fe94a3fe4dc0430dda77c5f77c97a5b8fde6f7a9fef5fafaca0b5aaedd0b9","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"b71fe94a3fe4dc0430dda77c5f77c97a5b8fde6f7a9fef5fafaca0b5aaedd0b9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/CoeAttr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Gabriel Ebner. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gabriel Ebner, Mario Carneiro, Leonardo de Moura
-/
module

prelude
public import Lean.Meta.FunInfo


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CoeFnType.Variantb71fe94a3fe4dc0430dda77c5f77c97a5b8fde6f7a9fef5fafaca0b5aaedd0b9

public section

/-!
# The `@[coe]` attribute, used to delaborate coercion functions as `↑`

When writing a coercion, if the pattern
```
@[coe]
def A.toB (a : A) : B := sorry

instance : Coe A B where coe := A.toB
```
is used, then `A.toB a` will be pretty-printed as `↑a`.
-/

namespace Lean.Meta

/-- The different types of coercions that are supported by the `coe` attribute. -/
inductive CoeFnType
  /-- The basic coercion `↑x`, see `CoeT.coe` -/
  | coe
  /-- The coercion to a function type, see `CoeFun.coe` -/
  | coeFun
  /-- The coercion to a type, see `CoeSort.coe` -/
  | coeSort
  deriving Inhabited, Repr, DecidableEq

instance : ToExpr CoeFnType where
  toTypeExpr := mkConst ``CoeFnType
  toExpr := open CoeFnType in fun
    | coe => mkConst ``coe
    | coeFun => mkConst ``coeFun
    | coeSort => mkConst ``coeSort

/-- Information associated to a coercion function to enable sensible delaboration. -/
structure CoeFnInfo where
  /-- The number of arguments to the coercion function -/
  numArgs : Nat
  /-- The argument index that represents the value being coerced -/
  coercee : Nat
  /-- The type of coercion -/
  type : CoeFnType
  deriving Inhabited, Repr

instance : ToExpr CoeFnInfo where
  toTypeExpr := mkConst ``CoeFnInfo
  toExpr | ⟨a, b, c⟩ => mkApp3 (mkConst ``CoeFnInfo.mk) (toExpr a) (toExpr b) (toExpr c)

/-- The environment extension for tracking coercion functions for delaboration -/
-- TODO: does it need to be a scoped extension
initialize coeExt : SimpleScopedEnvExtension (Name × CoeFnInfo) (NameMap CoeFnInfo) ←
  registerSimpleScopedEnvExtension {
    addEntry := fun st (n, i) => st.insert n i
    initial := {}
  }

/-- Lookup the coercion information for a given function -/
def getCoeFnInfo? (fn : Name) : CoreM (Option CoeFnInfo) :=
  return (coeExt.getState (← getEnv)).find? fn

/-- Add `name` to the coercion extension and add a coercion delaborator for the function. -/
def registerCoercion (name : Name) (info : Option CoeFnInfo := none) : MetaM Unit := do
  let info ← match info with | some info => pure info | none => do
    let fnInfo ← getFunInfo (← mkConstWithLevelParams name)
    let some coercee := fnInfo.paramInfo.findIdx? (·.binderInfo.isExplicit)
      | throwError "{name} has no explicit arguments"
    pure { numArgs := coercee + 1, coercee, type := .coe }
  modifyEnv fun env => coeExt.addEntry env (name, info)

builtin_initialize registerBuiltinAttribute {
  name := `coe
  descr := "Adds a definition as a coercion"
  add := fun decl _stx kind => MetaM.run' do
    unless kind == .global do
      throwAttrMustBeGlobal `coe kind
    registerCoercion decl
}

end Lean.Meta
````
