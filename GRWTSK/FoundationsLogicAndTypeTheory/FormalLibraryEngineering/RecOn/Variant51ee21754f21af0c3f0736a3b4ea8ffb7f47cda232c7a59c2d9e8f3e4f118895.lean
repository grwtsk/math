-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkRecOn.Variant05ab14bfcbcd6d66f208d3ef0afe0c341b20abd2cfe747fcad7d0c8c2285db22","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"05ab14bfcbcd6d66f208d3ef0afe0c341b20abd2cfe747fcad7d0c8c2285db22","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MkRecOn.Variant05ab14bfcbcd6d66f208d3ef0afe0c341b20abd2cfe747fcad7d0c8c2285db22","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"05ab14bfcbcd6d66f208d3ef0afe0c341b20abd2cfe747fcad7d0c8c2285db22","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Constructions/RecOn.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura, Joachim Breitner
-/
module

prelude
public import Lean.AddDecl
public import Lean.Meta.CompletionName


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkRecOn.Variant05ab14bfcbcd6d66f208d3ef0afe0c341b20abd2cfe747fcad7d0c8c2285db22

public section

open Lean Meta

namespace Lean

def mkRecOn (n : Name) : MetaM Unit := do
  let .recInfo recInfo ← getConstInfo (mkRecName n)
    | throwError "{mkRecName n} not a recinfo"
  let decl ← forallTelescope recInfo.type fun xs t => do
    let e := .const recInfo.name (recInfo.levelParams.map (.param ·))
    let e := mkAppN e xs
    -- We reorder the parameters
    -- before: As Cs minor_premises indices major-premise
    -- fow:    As Cs indices major-premise minor-premises
    let AC_size := xs.size - recInfo.numMinors - recInfo.numIndices - 1
    let vs :=
      xs[*...AC_size] ++
      xs[(AC_size + recInfo.numMinors)...(AC_size + recInfo.numMinors + 1 + recInfo.numIndices)] ++
      xs[(AC_size)...(AC_size + recInfo.numMinors)]
    let type ← mkForallFVars vs t
    let value ← mkLambdaFVars vs e
    mkDefinitionValInferringUnsafe (mkRecOnName n) recInfo.levelParams type value .abbrev

  addDecl (.defnDecl decl)
  setReducibleAttribute decl.name
  modifyEnv fun env => markAuxRecursor env decl.name
  modifyEnv fun env => addProtected env decl.name

end Lean
