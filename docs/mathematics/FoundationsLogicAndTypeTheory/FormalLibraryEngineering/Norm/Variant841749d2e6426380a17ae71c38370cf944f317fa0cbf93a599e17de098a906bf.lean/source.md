# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Norm.Variant841749d2e6426380a17ae71c38370cf944f317fa0cbf93a599e17de098a906bf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `94566f178b55e8a0c0d09835b91ca9f7f52779ec` · SHA-256 `03cdfc5f6c624ff6d6223db70c9ccdb535123e9f83e16d7270941030d689027b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToLinearExpr.Variant1ce3c2ef22abc922f035e8d6924fa83c890c43da995f981b4a2c7464266dfdc9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1ce3c2ef22abc922f035e8d6924fa83c890c43da995f981b4a2c7464266dfdc9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ToLinearExpr.Variant1ce3c2ef22abc922f035e8d6924fa83c890c43da995f981b4a2c7464266dfdc9","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"1ce3c2ef22abc922f035e8d6924fa83c890c43da995f981b4a2c7464266dfdc9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/Arith/Cutsat/Norm.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Arith.Cutsat.Util
import Lean.Meta.IntInstTesters

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToLinearExpr.Variant1ce3c2ef22abc922f035e8d6924fa83c890c43da995f981b4a2c7464266dfdc9

public section
namespace Lean.Meta.Grind.Arith.Cutsat
/-!
`Int` expressions are normalized by the `grind` preprocessor, but we
dynamically convert expressions from other types into `Int` expressions
and these expressions must be normalized inside of the cutsat module.
-/

/-
**Note**: It is safe to use (the more efficient) structural instances tests here because `grind` uses the canonicalizer.
-/
open Structural in
/-- Converts the given integer expression into `Int.Internal.Linear.Expr` -/
partial def toLinearExpr (e : Expr) (generation : Nat := 0) : GoalM Int.Internal.Linear.Expr := do
  let toVar (e : Expr) := do
    let e ← shareCommon e
    if (← alreadyInternalized e) then
      return .var (← mkVar e)
    else
      internalize e generation
      return .var (← mkVar e)
  let mul (a b : Expr) := do
    match (← getIntValue? a) with
    | some k => return .mulL k (← toLinearExpr b)
    | none => match (← getIntValue? b) with
      | some k => return .mulR (← toLinearExpr a) k
      | none => toVar e
  match_expr e with
  | OfNat.ofNat _ _ _ =>
    if let some n ← getIntValue? e then return .num n
    else toVar e
  | Neg.neg _ i a =>
    if (← isInstNegInt i) then return .neg (← toLinearExpr a)
    else toVar e
  | HAdd.hAdd _ _ _ i a b =>
    if (← isInstHAddInt i) then return .add (← toLinearExpr a) (← toLinearExpr b)
    else toVar e
  | HSub.hSub _ _ _ i a b =>
    if (← isInstHSubInt i) then return .sub (← toLinearExpr a) (← toLinearExpr b)
    else toVar e
  | HMul.hMul _ _ _ i a b =>
    if (← isInstHMulInt i) then mul a b
    else toVar e
  | _ => toVar e

end Lean.Meta.Grind.Arith.Cutsat
```
