# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExprPtr.Variantd4b801e512e6fbd1a8af8acd05410ecfe0adda93a4665828023e8bdd6f78b2ff

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d612d2ab59ea64784c310932d3d8dd0c8417a0a3` · SHA-256 `424e8ba63855b3487d307ef4f2bf4aeb50812b7f4b6d773eadbd3f1c68e8c090`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExprPtr.Variantcfd1c9e310b006b0832885eb2ffb20dd00cb8465213b928a7edb62f61451f9ed","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cfd1c9e310b006b0832885eb2ffb20dd00cb8465213b928a7edb62f61451f9ed","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ExprPtr.Variantcfd1c9e310b006b0832885eb2ffb20dd00cb8465213b928a7edb62f61451f9ed","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"cfd1c9e310b006b0832885eb2ffb20dd00cb8465213b928a7edb62f61451f9ed","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Sym/ExprPtr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Expr

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExprPtr.Variantcfd1c9e310b006b0832885eb2ffb20dd00cb8465213b928a7edb62f61451f9ed

public section
namespace Lean.Meta.Sym

@[inline] def isSameExpr (a b : Expr) : Bool :=
  -- It is safe to use pointer equality because we hashcons all expressions
  -- inserted into the E-graph
  unsafe ptrEq a b

/--
Key for the `ENodeMap`, `ParentMap`, and other maps and sets.
We use pointer addresses and rely on the fact all internalized expressions
have been hash-consed, i.e., we have applied `shareCommon`.
-/
structure ExprPtr where
  expr : Expr

abbrev hashPtrExpr (e : Expr) : UInt64 :=
  unsafe (ptrAddrUnsafe e >>> 3).toUInt64

instance : Hashable ExprPtr where
  hash k := hashPtrExpr k.expr

instance : BEq ExprPtr where
  beq k₁ k₂ := isSameExpr k₁.expr k₂.expr

end Lean.Meta.Sym
```
