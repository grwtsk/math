# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.VarRename.Variant2c5d1a9ec901fac208f572112a37a0d19b6114f1efd184986b8f444094d44c80

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `03c32f7cc858f6ea002a2b74c3ca6162627f2731` · SHA-256 `aa610ef473faaea64c2ee26913e65c901a12a7446602accbe4299127d4cd70b3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PolyRenameVars.Variant53e0637126766ac09bf863debc6c6e42585ea886b7314c269b8ed98cb6113e1b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"53e0637126766ac09bf863debc6c6e42585ea886b7314c269b8ed98cb6113e1b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.PolyRenameVars.Variant53e0637126766ac09bf863debc6c6e42585ea886b7314c269b8ed98cb6113e1b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"53e0637126766ac09bf863debc6c6e42585ea886b7314c269b8ed98cb6113e1b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/Arith/Cutsat/VarRename.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Init.Data.Int.Linear
public import Lean.Meta.Tactic.Grind.VarRename

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PolyRenameVars.Variant53e0637126766ac09bf863debc6c6e42585ea886b7314c269b8ed98cb6113e1b

namespace Int.Internal.Linear
open Lean.Meta.Grind

public def Poly.renameVars (p : Poly) (f : VarRename) : Poly :=
  match p with
  | .num .. => p
  | .add k x p => .add k (f x) (renameVars p f)

public def Expr.renameVars (e : Expr) (f : VarRename) : Expr :=
  match e with
  | .num .. => e
  | .var x => .var (f x)
  | .neg a => .neg (renameVars a f)
  | .add a b => .add (renameVars a f) (renameVars b f)
  | .sub a b => .sub (renameVars a f) (renameVars b f)
  | .mulL k a => .mulL k (renameVars a f)
  | .mulR a k => .mulR (renameVars a f) k

public def Poly.collectVars (p : Poly) : VarCollector :=
  match p with
  | .num .. => id
  | .add _ x p => collectVar x >> p.collectVars

public def Expr.collectVars (e : Expr) : VarCollector :=
  match e with
  | .num .. => id
  | .var x => collectVar x
  | .neg a | .mulL _ a | .mulR a _ => a.collectVars
  | .add a b | .sub a b => a.collectVars >> b.collectVars

end Int.Internal.Linear
```
