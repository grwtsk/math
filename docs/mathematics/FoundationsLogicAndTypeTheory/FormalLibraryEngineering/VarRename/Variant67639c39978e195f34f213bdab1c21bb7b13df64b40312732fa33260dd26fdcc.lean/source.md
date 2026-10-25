# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.VarRename.Variant67639c39978e195f34f213bdab1c21bb7b13df64b40312732fa33260dd26fdcc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f4e3bf463f107359a9492780d25730c8d30004d8` · SHA-256 `deda45eac4cfdddbbdd77bd37f11689a15df469a08dbce9d9abba39a9a98e649`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PolyRenameVars.Variant8587dd06d45d49a0f6e934745c8280d62179cbb08f018483d38e963b3487e948","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8587dd06d45d49a0f6e934745c8280d62179cbb08f018483d38e963b3487e948","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.PolyRenameVars.Variant8587dd06d45d49a0f6e934745c8280d62179cbb08f018483d38e963b3487e948","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"8587dd06d45d49a0f6e934745c8280d62179cbb08f018483d38e963b3487e948","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/Arith/Linear/VarRename.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Init.Grind.Ordered.Linarith
public import Lean.Meta.Tactic.Grind.VarRename

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PolyRenameVars.Variant8587dd06d45d49a0f6e934745c8280d62179cbb08f018483d38e963b3487e948

namespace Lean.Grind.Linarith
open Lean.Meta.Grind

public def Poly.renameVars (p : Poly) (f : VarRename) : Poly :=
  match p with
  | .nil => p
  | .add k x p => .add k (f x) (renameVars p f)

public def Expr.renameVars (e : Expr) (f : VarRename) : Expr :=
  match e with
  | .zero => e
  | .var x => .var (f x)
  | .neg a => .neg (renameVars a f)
  | .add a b => .add (renameVars a f) (renameVars b f)
  | .sub a b => .sub (renameVars a f) (renameVars b f)
  | .natMul k a => .natMul k (renameVars a f)
  | .intMul k a => .intMul k (renameVars a f)

public def Poly.collectVars (p : Poly) : VarCollector :=
  match p with
  | .nil => id
  | .add _ x p => collectVar x >> p.collectVars

public def Expr.collectVars (e : Expr) : VarCollector :=
  match e with
  | .zero => id
  | .var x => collectVar x
  | .neg a | .natMul _ a | .intMul _ a => a.collectVars
  | .add a b | .sub a b => a.collectVars >> b.collectVars

end Lean.Grind.Linarith
```
