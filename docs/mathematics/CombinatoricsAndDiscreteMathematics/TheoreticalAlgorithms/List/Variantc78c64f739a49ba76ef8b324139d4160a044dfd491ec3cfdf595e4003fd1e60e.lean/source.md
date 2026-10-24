# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.List.Variantc78c64f739a49ba76ef8b324139d4160a044dfd491ec3cfdf595e4003fd1e60e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `13315ba906a339c820d72cc1b01fad62a0b1aa6e` · SHA-256 `b2da08be68b0157704d7f0e6b5920b95a8026cc35ac3502dec6e2050ab79fb0c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Nat.Variant715b6805a47990be9c0a48d8a18571973f25976742857bca02ba8a128ad20b0e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"715b6805a47990be9c0a48d8a18571973f25976742857bca02ba8a128ad20b0e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Nat.Variant715b6805a47990be9c0a48d8a18571973f25976742857bca02ba8a128ad20b0e","mathematical_subject":"Computation.DataStructures","original_sha256":"715b6805a47990be9c0a48d8a18571973f25976742857bca02ba8a128ad20b0e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Simp/BuiltinSimprocs/List.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

prelude
public import Lean.Meta.Tactic.Simp.BuiltinSimprocs.Nat


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Nat.Variant715b6805a47990be9c0a48d8a18571973f25976742857bca02ba8a128ad20b0e

public section

namespace List
open Lean Meta Simp

/-- Simplification procedure for `List.replicate` applied to a `Nat` literal. -/
-- We don't always want `List.replicate_succ` as a `simp` lemma,
-- so we use this `dsimproc` to unfold `List.replicate` applied to literals.
builtin_dsimproc [simp, seval] reduceReplicate (replicate _ _) := fun e => do
  let_expr replicate α n x ← e | return .continue
  let some n ← Nat.fromExpr? n | return .continue
  return .done <| (← mkListLit α (List.replicate n x))

end List
```
