# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Debug.Variant53c2f936caa89723f2e618425681d0a3122265c4f18a363ca2a2bf8568c01a48

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9d7193234d704c24b3e428a0fb937feb0af0efe1` · SHA-256 `d5d6939143ff4420fbf486be0704b732f46230023d226195ad96a12032771179`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkSimprocFor.Variant8931b4c3dac0fc3a452d82063a9399eefe7e638c07e6132422ba2bb74d9b3f8f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8931b4c3dac0fc3a452d82063a9399eefe7e638c07e6132422ba2bb74d9b3f8f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MkSimprocFor.Variant8931b4c3dac0fc3a452d82063a9399eefe7e638c07e6132422ba2bb74d9b3f8f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"8931b4c3dac0fc3a452d82063a9399eefe7e638c07e6132422ba2bb74d9b3f8f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Sym/Simp/Debug.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Sym.Simp.Discharger
import Lean.Meta.Sym.Simp.Rewrite
import Lean.Meta.Sym.Simp.Goal
import Lean.Meta.Sym.Util

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkSimprocFor.Variant8931b4c3dac0fc3a452d82063a9399eefe7e638c07e6132422ba2bb74d9b3f8f

namespace Lean.Meta.Sym
open Lean.Meta.Sym.Simp
/-!
Helper functions for debugging purposes and creating tests.
-/

public def mkSimprocFor (declNames : Array Name) (d : Discharger := dischargeNone) : MetaM Simproc := do
  let mut thms : Theorems := {}
  for declName in declNames do
    thms := thms.insert (← mkTheoremFromDecl declName)
  return thms.rewrite d

public def mkMethods (declNames : Array Name) : MetaM Methods := do
  return { post := (← mkSimprocFor declNames) }

public def simpGoalUsing (declNames : Array Name) (mvarId : MVarId) : MetaM (Option MVarId) := SymM.run do
  let methods ← mkMethods declNames
  let mvarId ← preprocessMVar mvarId
  (← simpGoal mvarId methods).toOption

end Lean.Meta.Sym
```
