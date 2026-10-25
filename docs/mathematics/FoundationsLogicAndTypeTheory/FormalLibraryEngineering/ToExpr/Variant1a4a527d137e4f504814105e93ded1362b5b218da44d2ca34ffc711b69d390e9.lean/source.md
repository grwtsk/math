# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToExpr.Variant1a4a527d137e4f504814105e93ded1362b5b218da44d2ca34ffc711b69d390e9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `be1686a55127b48bf5d65bf15b3aad0a95036fa9` · SHA-256 `659b04883273c821ca9ac967463c401a7549cd43ec02dbe15623873285bb1969`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OfPoly.Variant4d4308a3ba55855d85cf26b31096d28ef38b4fbd2f02c1e1c1696659cfe61cf5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4d4308a3ba55855d85cf26b31096d28ef38b4fbd2f02c1e1c1696659cfe61cf5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.OfPoly.Variant4d4308a3ba55855d85cf26b31096d28ef38b4fbd2f02c1e1c1696659cfe61cf5","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"4d4308a3ba55855d85cf26b31096d28ef38b4fbd2f02c1e1c1696659cfe61cf5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/Arith/Linear/ToExpr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Init.Grind.Ordered.Linarith
public import Lean.ToExpr

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OfPoly.Variant4d4308a3ba55855d85cf26b31096d28ef38b4fbd2f02c1e1c1696659cfe61cf5

public section
namespace Lean.Meta.Grind.Arith.Linear
open Grind.Linarith
/-!
`ToExpr` instances for `Linarith.Poly` types.
-/

def ofPoly (p : Poly) : Expr :=
  match p with
  | .nil => mkConst ``Poly.nil
  | .add k x p => mkApp3 (mkConst ``Poly.add) (toExpr k) (toExpr x) (ofPoly p)

instance : ToExpr Poly where
  toExpr := ofPoly
  toTypeExpr := mkConst ``Poly

open Lean.Grind

def ofLinExpr (e : Linarith.Expr) : Expr :=
  match e with
  | .zero => mkConst ``Linarith.Expr.zero
  | .var x => mkApp (mkConst ``Linarith.Expr.var) (toExpr x)
  | .add a b => mkApp2 (mkConst ``Linarith.Expr.add) (ofLinExpr a) (ofLinExpr b)
  | .sub a b => mkApp2 (mkConst ``Linarith.Expr.sub) (ofLinExpr a) (ofLinExpr b)
  | .neg a => mkApp (mkConst ``Linarith.Expr.neg) (ofLinExpr a)
  | .natMul k a => mkApp2 (mkConst ``Linarith.Expr.natMul) (toExpr k) (ofLinExpr a)
  | .intMul k a => mkApp2 (mkConst ``Linarith.Expr.intMul) (toExpr k) (ofLinExpr a)

instance : ToExpr Linarith.Expr where
  toExpr := ofLinExpr
  toTypeExpr := mkConst ``Linarith.Expr

end Lean.Meta.Grind.Arith.Linear
```
