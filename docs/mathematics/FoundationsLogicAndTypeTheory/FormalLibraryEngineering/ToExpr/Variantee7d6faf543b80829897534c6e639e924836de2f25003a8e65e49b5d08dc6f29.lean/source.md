# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToExpr.Variantee7d6faf543b80829897534c6e639e924836de2f25003a8e65e49b5d08dc6f29

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d0b8c540401b4c238ffaf33ad5f5734a3d4d3a54` · SHA-256 `30e007be9834d2c802df2691ea8112d72cadd05b76cadf9dd949847a5bac9c30`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OfSeq.Variant77ef4b4a5d4fc7761abf9b6a65bf0455991208c343c0da3175068e44172852ec","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"77ef4b4a5d4fc7761abf9b6a65bf0455991208c343c0da3175068e44172852ec","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.OfSeq.Variant77ef4b4a5d4fc7761abf9b6a65bf0455991208c343c0da3175068e44172852ec","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"77ef4b4a5d4fc7761abf9b6a65bf0455991208c343c0da3175068e44172852ec","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/AC/ToExpr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Init.Grind.AC
public import Lean.ToExpr

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OfSeq.Variant77ef4b4a5d4fc7761abf9b6a65bf0455991208c343c0da3175068e44172852ec

public section
namespace Lean.Meta.Grind.AC
open Lean.Grind
/-!
`ToExpr` instances for `AC` types.
-/
def ofSeq (m : AC.Seq) : Expr :=
  match m with
  | .var x => mkApp (mkConst ``AC.Seq.var) (toExpr x)
  | .cons x s => mkApp2 (mkConst ``AC.Seq.cons) (toExpr x) (ofSeq s)

instance : ToExpr AC.Seq where
  toExpr := ofSeq
  toTypeExpr := mkConst ``AC.Seq

def ofExpr (m : AC.Expr) : Expr :=
  match m with
  | .var x => mkApp (mkConst ``AC.Expr.var) (toExpr x)
  | .op lhs rhs => mkApp2 (mkConst ``AC.Expr.op) (ofExpr lhs) (ofExpr rhs)

instance : ToExpr AC.Expr where
  toExpr := ofExpr
  toTypeExpr := mkConst ``AC.Expr

end Lean.Meta.Grind.AC
```
