# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Toposort.Variantb9809a4b80057a3ca407014e7a25b9fc924e71ec8168ae6038f163043884ee80

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c55dd00bd68d9647b9c50a756fac0fbffb2c5613` · SHA-256 `f7ab58da7df338944b1c55e7b789f14daf1949e113c7f0b58650bf331e768c89`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TopoCtx.Variantca119c38ca7ce14497b534ef514e5ce131468e0ec414daf9af05e33170ceac31","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ca119c38ca7ce14497b534ef514e5ce131468e0ec414daf9af05e33170ceac31","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.TopoCtx.Variantca119c38ca7ce14497b534ef514e5ce131468e0ec414daf9af05e33170ceac31","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"ca119c38ca7ce14497b534ef514e5ce131468e0ec414daf9af05e33170ceac31","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Compiler/LCNF/Toposort.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Lean.Compiler.LCNF.CompilerM
public import Lean.Compiler.LCNF.PassManager
import Lean.Compiler.InitAttr

/-!
This module "topologically sorts" an SCC of decls (an SCC of decls in the pipeline may in fact
contain more than one SCC at the moment). This is relevant because EmitC relies on the invariant
that the constants (and in particular also the closed terms) occur in a reverse topologically sorted
order for emitting them.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TopoCtx.Variantca119c38ca7ce14497b534ef514e5ce131468e0ec414daf9af05e33170ceac31

namespace Lean.Compiler.LCNF

structure TopoCtx (pu : Purity) where
  declsMap : Std.HashMap Name (Decl pu)

structure TopoState (pu : Purity) where
  seen : Std.HashSet Name
  order : Array (Decl pu)

abbrev ToposortM pu := ReaderT (TopoCtx pu) StateRefT (TopoState pu) CompilerM

partial def toposort (decls : Array (Decl pu)) : CompilerM (Array (Decl pu)) := do
  let declsMap := .ofArray <| decls.map fun d => (d.name, d)
  let (_, s) ← go decls |>.run { declsMap } |>.run {
    seen := .emptyWithCapacity decls.size,
    order := .emptyWithCapacity decls.size
  }
  return s.order
where
  go (decls : Array (Decl pu)) : ToposortM pu Unit := do
    decls.forM process

  process (decl : Decl pu) : ToposortM pu Unit := do
    if (← get).seen.contains decl.name then
      return ()

    let env ← getEnv
    modify fun s => { s with seen := s.seen.insert decl.name }
    decl.value.forCodeM (·.forM visitConsts)
    if let some initializer := getBuiltinInitFnNameFor? env decl.name <|> getInitFnNameFor? env decl.name then
      visitConst initializer
    modify fun s => { s with order := s.order.push decl }

  visitConsts (code : Code pu) : ToposortM pu Unit := do
    match code with
    | .let decl _ =>
      match decl.value with
      | .const declName .. | .fap declName .. | .pap declName .. =>
        visitConst declName
      | _ => return ()
    | _ => return ()

  visitConst (declName : Name) : ToposortM pu Unit := do
    if let some d := (← read).declsMap[declName]? then
      process d

public def toposortDecls (decls : Array (Decl pu)) : CompilerM (Array (Decl pu)) := do
  toposort decls

public def toposortPass : Pass where
  phase := .impure
  name := `toposort
  run := toposortDecls

end Lean.Compiler.LCNF
```
