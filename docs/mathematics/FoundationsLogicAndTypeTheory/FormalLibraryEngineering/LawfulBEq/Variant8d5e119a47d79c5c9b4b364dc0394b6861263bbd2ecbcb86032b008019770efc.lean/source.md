# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LawfulBEq.Variant8d5e119a47d79c5c9b4b364dc0394b6861263bbd2ecbcb86032b008019770efc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bb437e5f57f3e4a31399783c145683c206dc9fe5` · SHA-256 `d5e41076eed63bd375275c8f8bfd28f88b9747afeca31ff86dff6a1e27eae5fd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkLawfulBEqInstanceCmds.Variantdcc2748d5e8e1e1e5b003fff707d2225cedf9e0c7a23868594ffccef0745f0d1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dcc2748d5e8e1e1e5b003fff707d2225cedf9e0c7a23868594ffccef0745f0d1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MkLawfulBEqInstanceCmds.Variantdcc2748d5e8e1e1e5b003fff707d2225cedf9e0c7a23868594ffccef0745f0d1","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"dcc2748d5e8e1e1e5b003fff707d2225cedf9e0c7a23868594ffccef0745f0d1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Deriving/LawfulBEq.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joachim Breitner
-/
module

prelude
import Lean.Elab.Deriving.Basic
import Lean.Elab.Deriving.Util
import Init.LawfulBEqTactics


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkLawfulBEqInstanceCmds.Variantdcc2748d5e8e1e1e5b003fff707d2225cedf9e0c7a23868594ffccef0745f0d1

namespace Lean.Elab.Deriving.LawfulBEq
open Lean.Parser.Term
open Meta

open TSyntax.Compat in
open Parser.Tactic in
def mkLawfulBEqInstanceCmds (declName : Name) : TermElabM (Array Syntax) := do
  let indVal ← getConstInfoInduct declName
  if indVal.all.length > 1 then
    throwError "Deriving `LawfulBEq` for mutual inductives is not supported"
  if indVal.isNested then
    throwError "Deriving `LawfulBEq` for nested inductives is not supported"

  let argNames     ← mkInductArgNames indVal
  let binders      ← mkImplicitBinders argNames
  let binders      := binders ++ (← mkInstImplicitBinders ``BEq indVal argNames)
  let binders      := binders ++ (← mkInstImplicitBinders ``LawfulBEq indVal argNames)
  let indType      ← mkInductiveApp indVal argNames
  let type         ← `($(mkCIdent ``LawfulBEq) $indType)
  let instCmd ← `(
    instance $binders:implicitBinder* : $type := LawfulBEq.mk (by deriving_LawfulEq_tactic)
  )
  let cmds := #[instCmd]
  trace[Elab.Deriving.lawfulBEq] "\n{cmds}"
  return cmds

open Command

def mkLawfulBEqInstance (declName : Name) : CommandElabM Unit := do
  withoutExposeFromCtors declName do
    let cmds ← liftTermElabM <| mkLawfulBEqInstanceCmds declName
    cmds.forM elabCommand

def mkLawfulBEqInstanceHandler (declNames : Array Name) : CommandElabM Bool := do
  if (← declNames.allM isInductive) then
    for declName in declNames do
      mkLawfulBEqInstance declName
    return true
  else
    return false

builtin_initialize
  registerDerivingHandler ``LawfulBEq mkLawfulBEqInstanceHandler
  registerTraceClass `Elab.Deriving.lawfulBEq

end Lean.Elab.Deriving.LawfulBEq
```
