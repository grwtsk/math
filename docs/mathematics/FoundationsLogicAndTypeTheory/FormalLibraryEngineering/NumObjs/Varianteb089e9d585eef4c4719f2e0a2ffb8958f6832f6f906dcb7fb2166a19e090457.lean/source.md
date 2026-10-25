# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NumObjs.Varianteb089e9d585eef4c4719f2e0a2ffb8958f6832f6f906dcb7fb2166a19e090457

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d3893285b1f878086a008122df905b2fc62f53e3` · SHA-256 `61b30fa5963e5bc346e6d15df90548150d3925efe29e71e92c637680eb95c0f0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.State.Variant0598b9af9c1b187754522d93914cce08b1e4bea40ae6401cdcc07c05a033d695","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0598b9af9c1b187754522d93914cce08b1e4bea40ae6401cdcc07c05a033d695","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.State.Variant0598b9af9c1b187754522d93914cce08b1e4bea40ae6401cdcc07c05a033d695","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"0598b9af9c1b187754522d93914cce08b1e4bea40ae6401cdcc07c05a033d695","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Util/NumObjs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Expr
public import Lean.Util.PtrSet


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.State.Variant0598b9af9c1b187754522d93914cce08b1e4bea40ae6401cdcc07c05a033d695

public section

namespace Lean.Expr
namespace NumObjs

unsafe structure State where
 visited : PtrSet Expr := mkPtrSet
 counter : Nat := 0

unsafe abbrev M := StateM State

unsafe def visit (e : Expr) : M Unit :=
  unless (← get).visited.contains e do
    modify fun { visited, counter } => { visited := visited.insert e, counter := counter + 1 }
    match e with
      | .forallE _ d b _ => visit d; visit b
      | .lam _ d b _     => visit d; visit b
      | .mdata _ b       => visit b
      | .letE _ t v b _  => visit t; visit v; visit b
      | .app f a         => visit f; visit a
      | .proj _ _ b      => visit b
      | _                => return ()

unsafe def main (e : Expr) : Nat :=
  let (_, s) := NumObjs.visit e |>.run {}
  s.counter

end NumObjs

/--
Returns the number of allocated `Expr` objects in the given expression `e`.

This operation is performed in `IO` because the result depends on the memory representation of the object.

Note: Use this function primarily for diagnosing performance issues.
-/
def numObjs (e : Expr) : IO Nat :=
  return unsafe NumObjs.main e

end Lean.Expr
```
