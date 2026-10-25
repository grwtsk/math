# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofUtil.Variant893255ee4dea466ac9d7a6e5a814631ade928d15531964c7d1c2dd60e46149c1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `de37e05077f9954250ecef0882945d6db85ae275` · SHA-256 `fbd60e52de42e0c0448cb47752c2ef010c0a939e63146192bc4ad49019a057f1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkLetOfMap.Variant0f284f5edfbf1581310aa08b5d128b77377345790873e9b98b567d46e76b1c9b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0f284f5edfbf1581310aa08b5d128b77377345790873e9b98b567d46e76b1c9b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MkLetOfMap.Variant0f284f5edfbf1581310aa08b5d128b77377345790873e9b98b567d46e76b1c9b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"0f284f5edfbf1581310aa08b5d128b77377345790873e9b98b567d46e76b1c9b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/ProofUtil.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Types

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkLetOfMap.Variant0f284f5edfbf1581310aa08b5d128b77377345790873e9b98b567d46e76b1c9b

public section
namespace Lean.Meta.Grind

def mkLetOfMap {_ : Hashable α} {_ : BEq α} (m : Std.HashMap α Expr) (e : Expr)
    (varPrefix : Name) (varType : Expr) (toExpr : α → Expr) : Expr := Id.run do
  if m.isEmpty then
    return e
  else
    let as := m.toArray
    let mut e := e.abstract <| as.map (·.2)
    let mut i := as.size
    for (p, _) in as.reverse do
      e := mkLet (varPrefix.appendIndexAfter i) varType (toExpr p) e
      i := i - 1
    return e

end Lean.Meta.Grind
```
