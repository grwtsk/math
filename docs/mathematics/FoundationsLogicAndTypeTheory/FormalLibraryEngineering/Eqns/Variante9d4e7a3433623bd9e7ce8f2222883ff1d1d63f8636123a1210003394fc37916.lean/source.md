# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Eqns.Variante9d4e7a3433623bd9e7ce8f2222883ff1d1d63f8636123a1210003394fc37916

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e410fda21333834e3beefb6e27150838c6563888` · SHA-256 `031bcc2f93a4d359de5b7319b305506ee738fd107bab7baacc69c2e785e916a4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Eqns.Variantf83b02db0f08ddb9451ed94b8fab1cb86c7fc92fc7d3272b6e4dc1f37d2d1dbe","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f83b02db0f08ddb9451ed94b8fab1cb86c7fc92fc7d3272b6e4dc1f37d2d1dbe","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Eqns.Variantf83b02db0f08ddb9451ed94b8fab1cb86c7fc92fc7d3272b6e4dc1f37d2d1dbe","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"f83b02db0f08ddb9451ed94b8fab1cb86c7fc92fc7d3272b6e4dc1f37d2d1dbe","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Tactic/Eqns.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Lean.Meta.Eqns
import Mathlib.Lean.Expr
import Std.Lean.NameMapAttribute

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

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Eqns.Variantf83b02db0f08ddb9451ed94b8fab1cb86c7fc92fc7d3272b6e4dc1f37d2d1dbe

open Lean Elab

syntax (name := eqns) "eqns" (ppSpace ident)* : attr

initialize eqnsAttribute : NameMapExtension (Array Name) ←
  registerNameMapAttribute {
    name  := `eqns
    descr := "Overrides the equation lemmas for a declaration to the provided list"
    add   := fun
    | _, `(attr| eqns $[$names]*) =>
      names.mapM resolveGlobalConstNoOverloadWithInfo
    | _, _ => Lean.Elab.throwUnsupportedSyntax }

initialize Lean.Meta.registerGetEqnsFn (fun name => do
  pure (eqnsAttribute.find? (← getEnv) name))
````
