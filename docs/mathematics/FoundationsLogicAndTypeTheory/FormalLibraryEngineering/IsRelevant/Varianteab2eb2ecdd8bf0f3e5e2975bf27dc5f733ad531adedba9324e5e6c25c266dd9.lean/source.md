# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsRelevant.Varianteab2eb2ecdd8bf0f3e5e2975bf27dc5f733ad531adedba9324e5e6c25c266dd9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4678f50734529aaf83269f95205e86c1210a6808` · SHA-256 `0dbb390795eafaf4d78cda8a0cb06794cd373d5c41cca1615d0b5161701f95b6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsSupportedType.Variant85fd0ce64664c3f77f7cc3e3e7434831fc78ea7782e788a1e8eb344e515e58f8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"85fd0ce64664c3f77f7cc3e3e7434831fc78ea7782e788a1e8eb344e515e58f8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.IsSupportedType.Variant85fd0ce64664c3f77f7cc3e3e7434831fc78ea7782e788a1e8eb344e515e58f8","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"85fd0ce64664c3f77f7cc3e3e7434831fc78ea7782e788a1e8eb344e515e58f8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/Arith/IsRelevant.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Types
import Lean.Meta.Tactic.Grind.Arith.Cutsat.ToInt
import Lean.Meta.Tactic.Grind.Arith.Linear.StructId

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsSupportedType.Variant85fd0ce64664c3f77f7cc3e3e7434831fc78ea7782e788a1e8eb344e515e58f8

public section
namespace Lean.Meta.Grind.Arith

def isSupportedType (α  : Expr) : GoalM Bool := do
  if isNatType α || isIntType α then
    return true
  else if (← Cutsat.getToIntId? α).isSome then
    return true
  else if (← Linear.getStructId? α).isSome then
    return true
  else
    return false

partial def isRelevantPred (e : Expr) : GoalM Bool :=
  match_expr e with
  | Not p => isRelevantPred p
  | And p q => isRelevantPred p <||> isRelevantPred q
  | Or p q => isRelevantPred p <||> isRelevantPred q
  | LE.le α _ _ _ => isSupportedType α
  | LT.lt α _ _ _ => isSupportedType α
  | Eq α _ _ => isSupportedType α
  | Dvd.dvd α _ _ _ => isSupportedType α
  | _ => return false

end Lean.Meta.Grind.Arith
```
