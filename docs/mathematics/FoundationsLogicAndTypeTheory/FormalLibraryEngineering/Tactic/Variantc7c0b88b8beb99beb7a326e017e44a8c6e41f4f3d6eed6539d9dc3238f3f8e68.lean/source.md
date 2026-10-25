# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variantc7c0b88b8beb99beb7a326e017e44a8c6e41f4f3d6eed6539d9dc3238f3f8e68

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `471abb8f9f2f250407c555df8fc486e2105c02b5` · SHA-256 `2a0b66cff3e0b175a187bc6b60c190c2afc9f3e4edf8a51a453a69187564088e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.STactic.Variant48c1dc81b64c4dabf93ab71c03d1501ac2eb5f44eb1f7ef879d04c306285b01e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"48c1dc81b64c4dabf93ab71c03d1501ac2eb5f44eb1f7ef879d04c306285b01e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.STactic.Variant48c1dc81b64c4dabf93ab71c03d1501ac2eb5f44eb1f7ef879d04c306285b01e","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"48c1dc81b64c4dabf93ab71c03d1501ac2eb5f44eb1f7ef879d04c306285b01e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/Script/Tactic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Lean.Meta.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.STactic.Variant48c1dc81b64c4dabf93ab71c03d1501ac2eb5f44eb1f7ef879d04c306285b01e

public section

open Lean

namespace Aesop.Script

abbrev UTactic := Syntax.Tactic

structure STactic where
  numSubgoals : Nat
  run : Array (Array Syntax.Tactic) → Syntax.Tactic

structure Tactic where
  uTactic : UTactic
  sTactic? : Option STactic

namespace Tactic

instance : ToMessageData Tactic where
  toMessageData t := toMessageData t.uTactic

def unstructured (uTactic : UTactic) : Tactic where
  uTactic := uTactic
  sTactic? := none

def structured (uTactic : UTactic) (sTactic : STactic) : Tactic where
  uTactic := uTactic
  sTactic? := some sTactic

end Tactic

abbrev TacticBuilder := MetaM Tactic

end Aesop.Script
```
