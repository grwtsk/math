# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SplitSCC.Variante326c47d8f05ffa07ab8fc2dcde483c90b597f5c64d3a4bc7e3a4398dac2c9d6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d3e56068130205ce16b863a9cd255bb15e1df68e` · SHA-256 `b54c865211c87f50c8a5ad9ed0e0a0a13d7480150832136ba6bcf6c87d7ba540`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FindSccCalls.Variantd507d87d6c336e1092b44a623b795ac2295d92f29a620b089b5d0bca789b4fc6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d507d87d6c336e1092b44a623b795ac2295d92f29a620b089b5d0bca789b4fc6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.FindSccCalls.Variantd507d87d6c336e1092b44a623b795ac2295d92f29a620b089b5d0bca789b4fc6","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"d507d87d6c336e1092b44a623b795ac2295d92f29a620b089b5d0bca789b4fc6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Compiler/LCNF/SplitSCC.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Lean.Compiler.LCNF.CompilerM
import Lean.Util.SCC


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FindSccCalls.Variantd507d87d6c336e1092b44a623b795ac2295d92f29a620b089b5d0bca789b4fc6

namespace Lean.Compiler.LCNF

namespace SplitScc

partial def findSccCalls (scc : Std.HashMap Name (Decl pu)) (decl : Decl pu) : BaseIO (Std.HashSet Name) := do
  match decl.value with
  | .code code =>
    let (_, calls) ← goCode code |>.run {}
    return calls
  | .extern .. => return {}
where
  goCode (c : Code pu) : StateRefT (Std.HashSet Name) BaseIO Unit := do
    c.forM fun c => do
      if let .let decl _ := c then
        match decl.value with
        | .const name .. | .fap name .. | .pap name .. =>
          if scc.contains name then
            modify fun s => s.insert name
        | _ => return

end SplitScc

public def splitScc (scc : Array (Decl pu)) : CompilerM (Array (Array (Decl pu))) := do
  if scc.size == 1 then
    return #[scc]
  let declMap := Std.HashMap.ofArray <| scc.map fun decl => (decl.name, decl)
  let callers := Std.HashMap.ofArray <| ← scc.mapM fun decl => do
    let calls ← SplitScc.findSccCalls declMap decl
    return (decl.name, calls.toList)
  let newSccs := Lean.SCC.scc (scc.toList.map (·.name)) (callers.getD · [])
  trace[Compiler.splitSCC] m!"Split SCC into {newSccs}"
  return newSccs.toArray.map (fun scc => scc.toArray.map declMap.get!)

builtin_initialize
  registerTraceClass `Compiler.splitSCC (inherited := true)

end Lean.Compiler.LCNF
```
