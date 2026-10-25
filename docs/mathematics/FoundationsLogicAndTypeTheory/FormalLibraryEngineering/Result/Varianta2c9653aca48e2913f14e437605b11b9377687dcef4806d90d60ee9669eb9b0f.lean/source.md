# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Result.Varianta2c9653aca48e2913f14e437605b11b9377687dcef4806d90d60ee9669eb9b0f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9e66dc762838db17cfceaffa286b71f15981dd00` · SHA-256 `6b2b33ed6bc205baa7b1a0d681e6831d743133333f4759e4aa97ba380b825a23`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ResultIsRfl.Variantfa731858bd2ba082f0351fd7a68bae6ef511d7d13d9f342e58fedc7cef872ea5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fa731858bd2ba082f0351fd7a68bae6ef511d7d13d9f342e58fedc7cef872ea5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ResultIsRfl.Variantfa731858bd2ba082f0351fd7a68bae6ef511d7d13d9f342e58fedc7cef872ea5","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"fa731858bd2ba082f0351fd7a68bae6ef511d7d13d9f342e58fedc7cef872ea5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Sym/Simp/Result.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Sym.Simp.SimpM
public import Lean.Meta.Sym.InferType

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ResultIsRfl.Variantfa731858bd2ba082f0351fd7a68bae6ef511d7d13d9f342e58fedc7cef872ea5

namespace Lean.Meta.Sym.Simp

public abbrev Result.isRfl : Result → Bool
  | .rfl false _ => true
  | _ => false

public def mkEqTrans (e₁ : Expr) (e₂ : Expr) (h₁ : Expr) (e₃ : Expr) (h₂ : Expr) : SymM Expr := do
  let α ← Sym.inferType e₁
  let u ← Sym.getLevel α
  return mkApp6 (mkConst ``Eq.trans [u]) α e₁ e₂ e₃ h₁ h₂

/-- Chains two simplification steps via `Eq.trans`.
`cd₁` is the `contextDependent` flag from the first step (whose proof is `h₁`).
The output is context-dependent if either step was: in another local context,
either step might produce a different result, changing the whole chain. -/
public abbrev mkEqTransResult (e₁ : Expr) (e₂ : Expr) (h₁ : Expr) (r₂ : Result)
    (cd₁ : Bool := false) : SymM Result :=
  match r₂ with
  | .rfl done cd₂ => return .step e₂ h₁ done (cd₁ || cd₂)
  | .step e₃ h₂ done cd₂ => return .step e₃ (← mkEqTrans e₁ e₂ h₁ e₃ h₂) done (cd₁ || cd₂)

public def Result.markAsDone : Result → Result
  | .rfl _ cd => .rfl true cd
  | .step e h _ cd => .step e h true cd

public def Result.getResultExpr : Expr → Result → Expr
  | e, .rfl _ _ => e
  | _, .step e _ _ _ => e

end Lean.Meta.Sym.Simp
```
