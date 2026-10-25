# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Eqns.Variante7c26c229d1f3aa1fe83d390145223c4f2344321fb5e5bc859707544edd5c3ab

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `795cf76f4e84b986f2bd9af58595d194a77197a4` · SHA-256 `3a29dc240a06c0ab6a6868cba79606542682295ad4cf4d3b453fbc41600fff98`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Eqns.Variant24c5e4c3bd84ef97855c8845e13c49cf404ca01d37002f54aa40848cbb995f56","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"24c5e4c3bd84ef97855c8845e13c49cf404ca01d37002f54aa40848cbb995f56","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Eqns.Variant24c5e4c3bd84ef97855c8845e13c49cf404ca01d37002f54aa40848cbb995f56","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"24c5e4c3bd84ef97855c8845e13c49cf404ca01d37002f54aa40848cbb995f56","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/Eqns.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Init
import Lean.Meta.Eqns
import Batteries.Lean.NameMapAttribute
import Lean.Elab.Exception
import Lean.Elab.InfoTree.Main

/-! # The `@[eqns]` attribute

This file provides the `eqns` attribute as a way of overriding the default equation lemmas. For
example

```lean4
def transpose {m n} (A : m → n → ℕ) : n → m → ℕ
  | i, j => A j i

theorem transpose_apply {m n} (A : m → n → ℕ) (i j) :
    transpose A i j = A j i := rfl

attribute [eqns transpose_apply] transpose

theorem transpose_const {m n} (c : ℕ) :
    transpose (fun (i : m) (j : n) => c) = fun j i => c := by
  funext i j -- the rw below does not work without this line
  rw [transpose]
```
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Eqns.Variant24c5e4c3bd84ef97855c8845e13c49cf404ca01d37002f54aa40848cbb995f56

open Lean Elab

syntax (name := eqns) "eqns" (ppSpace ident)* : attr

initialize eqnsAttribute : NameMapExtension (Array Name) ←
  registerNameMapAttribute {
    name  := `eqns
    descr := "Overrides the equation lemmas for a declaration to the provided list"
    add   := fun
    | declName, `(attr| eqns $[$names]*) => do
      if let some _ := Meta.eqnsExt.getState (← getEnv) |>.map.find? declName then
        throwError "There already exist stored eqns for '{declName}'; registering new equations \
          will not have the desired effect."
      names.mapM realizeGlobalConstNoOverloadWithInfo
    | _, _ => Lean.Elab.throwUnsupportedSyntax }

initialize Lean.Meta.registerGetEqnsFn (fun name => do
  pure (eqnsAttribute.find? (← getEnv) name))
````
