# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Array.Variant028d6178d1c18b5a729355b7eb1cf93816eedfe0477e84ef9efc8e59802ece93

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a4c41d2238e36eff57009eefd7e79e13c952b00f` · SHA-256 `d5a3a7df0b6f6979fc407bb566b0a98e085322517b538e99c163ba26b613cea2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Nat.Variantb42d761cb373c82488cb91b8aa63d0e0018659ff187f1b260d58a42ca5df5f99","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b42d761cb373c82488cb91b8aa63d0e0018659ff187f1b260d58a42ca5df5f99","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Nat.Variantb42d761cb373c82488cb91b8aa63d0e0018659ff187f1b260d58a42ca5df5f99","mathematical_subject":"Computation.DataStructures","original_sha256":"b42d761cb373c82488cb91b8aa63d0e0018659ff187f1b260d58a42ca5df5f99","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Simp/BuiltinSimprocs/Array.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

prelude
public import Lean.Meta.Tactic.Simp.BuiltinSimprocs.Nat


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Nat.Variantb42d761cb373c82488cb91b8aa63d0e0018659ff187f1b260d58a42ca5df5f99

public section

namespace Array
open Lean Meta Simp

/-- Simplification procedure for `#[...][n]` for `n` a `Nat` literal. -/
builtin_dsimproc [simp, seval] reduceGetElem (@GetElem.getElem (Array _) Nat _ _ _ _ _ _) := fun e => do
  let_expr GetElem.getElem _ _ _ _ _ xs n _ ← e | return .continue
  let some n ← Nat.fromExpr? n | return .continue
  let some xs ← getArrayLit? xs | return .continue
  return .done <| xs[n]!

/-- Simplification procedure for `#[...][n]?` for `n` a `Nat` literal. -/
builtin_dsimproc [simp, seval] reduceGetElem? (@GetElem?.getElem? (Array _) Nat _ _ _ _ _) := fun e => do
  let_expr GetElem?.getElem? _ _ α _ _ xs n ← e | return .continue
  let some n ← Nat.fromExpr? n | return .continue
  let some xs ← getArrayLit? xs | return .continue
  let r ← if h : n < xs.size then mkSome α xs[n] else mkNone α
  return .done r

/-- Simplification procedure for `#[...][n]!` for `n` a `Nat` literal. -/
builtin_dsimproc [simp, seval] reduceGetElem! (@GetElem?.getElem! (Array _) Nat _ _ _ _ _ _) := fun e => do
  let_expr GetElem?.getElem! _ _ α _ _ _ xs n ← e | return .continue
  let some n ← Nat.fromExpr? n | return .continue
  let some xs ← getArrayLit? xs | return .continue
  let r ← if h : n < xs.size then pure xs[n] else mkDefault α
  return .done r

end Array
```
