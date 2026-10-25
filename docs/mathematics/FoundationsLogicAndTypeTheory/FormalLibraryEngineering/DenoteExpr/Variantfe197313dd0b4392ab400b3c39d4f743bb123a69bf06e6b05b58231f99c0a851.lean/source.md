# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DenoteExpr.Variantfe197313dd0b4392ab400b3c39d4f743bb123a69bf06e6b05b58231f99c0a851

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3f8453d6869965a2fde50ce43867b6c37d6a0c07` · SHA-256 `1f462cc33dbb14aa7bd221ef1b3a5222e6f3878dd4d0675ab7cfca08d9eb4ea9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanGrindACSeqDenoteExpr.Variant7d6a9e79637c4d0c17afa1e6113fd1a28e27c4aa57d5a16e1309900b29cbbf46","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7d6a9e79637c4d0c17afa1e6113fd1a28e27c4aa57d5a16e1309900b29cbbf46","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.RootLeanGrindACSeqDenoteExpr.Variant7d6a9e79637c4d0c17afa1e6113fd1a28e27c4aa57d5a16e1309900b29cbbf46","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"7d6a9e79637c4d0c17afa1e6113fd1a28e27c4aa57d5a16e1309900b29cbbf46","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/AC/DenoteExpr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.AC.Util

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanGrindACSeqDenoteExpr.Variant7d6a9e79637c4d0c17afa1e6113fd1a28e27c4aa57d5a16e1309900b29cbbf46

public section
namespace Lean.Meta.Grind.AC
open Lean.Grind
variable [Monad M] [MonadGetStruct M] [MonadError M]

def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanGrindACSeqDenoteExpr.Variant7d6a9e79637c4d0c17afa1e6113fd1a28e27c4aa57d5a16e1309900b29cbbf46.Lean.Grind.AC.Seq.denoteExpr (s : AC.Seq) : M Expr := do
  match s with
  | .var x => return (← getStruct).vars[x]!
  | .cons x s => return mkApp2 (← getStruct).op (← getStruct).vars[x]! (← denoteExpr s)

def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanGrindACSeqDenoteExpr.Variant7d6a9e79637c4d0c17afa1e6113fd1a28e27c4aa57d5a16e1309900b29cbbf46.Lean.Grind.AC.Expr.denoteExpr (e : AC.Expr) : M Expr := do
  match e with
  | .var x => return (← getStruct).vars[x]!
  | .op lhs rhs => return mkApp2 (← getStruct).op (← denoteExpr lhs) (← denoteExpr rhs)

def EqCnstr.denoteExpr (c : EqCnstr) : M Expr := do
  let s ← getStruct
  return mkApp3 (mkConst ``Eq [s.u]) s.type (← c.lhs.denoteExpr) (← c.rhs.denoteExpr)

def DiseqCnstr.denoteExpr (c : DiseqCnstr) : M Expr := do
  let s ← getStruct
  return mkApp3 (mkConst ``Ne [s.u]) s.type (← c.lhs.denoteExpr) (← c.rhs.denoteExpr)

end Lean.Meta.Grind.AC
```
