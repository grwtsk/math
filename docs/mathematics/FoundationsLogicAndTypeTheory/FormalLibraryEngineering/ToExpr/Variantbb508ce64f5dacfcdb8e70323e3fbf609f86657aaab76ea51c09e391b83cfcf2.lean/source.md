# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToExpr.Variantbb508ce64f5dacfcdb8e70323e3fbf609f86657aaab76ea51c09e391b83cfcf2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ab96e4b52b55036affae83a9c372b8b703597ab4` · SHA-256 `e5490ab353b33a28a82a418eb4c819eb2c0f3bd441398912e05c53b6dee60f89`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToExprMData.Variante091f17421abc670eb5d20c76bc3d02097599893b975ca19b7c1212354ce48a2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e091f17421abc670eb5d20c76bc3d02097599893b975ca19b7c1212354ce48a2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ToExprMData.Variante091f17421abc670eb5d20c76bc3d02097599893b975ca19b7c1212354ce48a2","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"e091f17421abc670eb5d20c76bc3d02097599893b975ca19b7c1212354ce48a2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/ToExpr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Kyle Miller. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kyle Miller
-/
import Mathlib.Util.WhatsNew

/-!
# `ToExpr` instances for Mathlib
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToExprMData.Variante091f17421abc670eb5d20c76bc3d02097599893b975ca19b7c1212354ce48a2

namespace Mathlib
open Lean

set_option autoImplicit true in
deriving instance ToExpr for ULift

universe u in
/-- Hand-written instance since `PUnit` is a `Sort` rather than a `Type`. -/
instance [ToLevel.{u}] : ToExpr PUnit.{u+1} where
  toExpr _ := mkConst ``PUnit.unit [toLevel.{u+1}]
  toTypeExpr := mkConst ``PUnit [toLevel.{u+1}]

deriving instance ToExpr for String.Pos
deriving instance ToExpr for Substring
deriving instance ToExpr for SourceInfo
deriving instance ToExpr for Syntax

open DataValue in
/-- Core of a hand-written `ToExpr` handler for `MData`.
Uses the `KVMap.set*` functions rather than going into the internals
of the `KVMap` data structure. -/
private def toExprMData (md : MData) : Expr := Id.run do
  let mut e := mkConst ``MData.empty
  for (k, v) in md do
    let k := toExpr k
    e := match v with
          | ofString v => mkApp3 (mkConst ``KVMap.setString) e k (mkStrLit v)
          | ofBool v   => mkApp3 (mkConst ``KVMap.setBool) e k (toExpr v)
          | ofName v   => mkApp3 (mkConst ``KVMap.setName) e k (toExpr v)
          | ofNat v    => mkApp3 (mkConst ``KVMap.setNat) e k (mkNatLit v)
          | ofInt v    => mkApp3 (mkConst ``KVMap.setInt) e k (toExpr v)
          | ofSyntax v => mkApp3 (mkConst ``KVMap.setSyntax) e k (toExpr v)
  return e

instance : ToExpr MData where
  toExpr := toExprMData
  toTypeExpr := mkConst ``MData

deriving instance ToExpr for MVarId
deriving instance ToExpr for LevelMVarId
deriving instance ToExpr for Level
deriving instance ToExpr for BinderInfo
deriving instance ToExpr for Expr

end Mathlib
```
