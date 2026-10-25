# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Eqns.Variant0eb215e3cd20ca4ee7abe0fa1d48cf6542a64fc434ba03e00f463176991aa8be

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cb6c1e79401508973fca2c19118586162ae366c2` · SHA-256 `8f2c9eda6bc385987f64da1a998f01e0e36dce9fe9d59d18d82e133209d1c917`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EqnInfo.Variant99d3f26b55a0b719ad31a8e49629159a3b3b24cbf59eb7e9a637b00c20ec66e5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"99d3f26b55a0b719ad31a8e49629159a3b3b24cbf59eb7e9a637b00c20ec66e5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.EqnInfo.Variant99d3f26b55a0b719ad31a8e49629159a3b3b24cbf59eb7e9a637b00c20ec66e5","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"99d3f26b55a0b719ad31a8e49629159a3b3b24cbf59eb7e9a637b00c20ec66e5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/PreDefinition/WF/Eqns.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Elab.PreDefinition.FixedParams
public import Lean.Meta.ArgsPacker.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EqnInfo.Variant99d3f26b55a0b719ad31a8e49629159a3b3b24cbf59eb7e9a637b00c20ec66e5

namespace Lean.Elab.WF
open Meta

public structure EqnInfo where
  declName    : Name
  levelParams : List Name
  type        : Expr
  value       : Expr
  declNames       : Array Name
  declNameNonRec  : Name
  argsPacker      : ArgsPacker
  fixedParamPerms : FixedParamPerms
  deriving Inhabited

public builtin_initialize eqnInfoExt : MapDeclarationExtension EqnInfo ←
  mkMapDeclarationExtension (exportEntriesFn := fun env s =>
    let all := s.toArray
    -- Do not export for non-exposed defs at exported/server levels
    let exported := s.filter (fun n _ => env.hasExposedBody n) |>.toArray
    { exported, server := exported, «private» := all })

public def registerEqnsInfo (preDefs : Array PreDefinition) (declNameNonRec : Name) (fixedParamPerms : FixedParamPerms)
    (argsPacker : ArgsPacker) : MetaM Unit := do
  preDefs.forM fun preDef => ensureEqnReservedNamesAvailable preDef.declName
  /-
  See issue #2327.
  Remark: we could do better for mutual declarations that mix theorems and definitions. However, this is a rare
  combination, and we would have add support for it in the equation generator. I did not check which assumptions are made there.
  -/
  unless preDefs.all fun p => p.kind.isTheorem do
    unless (← preDefs.allM fun p => isProp p.type) do
      let declNames := preDefs.map (·.declName)
      modifyEnv fun env =>
        preDefs.foldl (init := env) fun env preDef =>
          eqnInfoExt.insert env preDef.declName { preDef with
            declNames, declNameNonRec, argsPacker, fixedParamPerms }

/--
This is a hack to fix fallout from #8519, where a non-exposed wfrec definition `foo`
in a module would cause `foo.eq_def` to be defined eagerly and privately,
but it should still be visible from non-module files.

So we create a unfold equation generator that aliases an existing private `eq_def` to
wherever the current module expects it.
-/
def copyPrivateUnfoldTheorem : GetUnfoldEqnFn := fun declName => do
  withTraceNode `ReservedNameAction (fun _ => pure m!"copyPrivateUnfoldTheorem running for {declName}") do
  let name := mkEqLikeNameFor (← getEnv) declName unfoldThmSuffix
  if let some mod ← findModuleOf? declName then
    let unfoldName' := mkPrivateNameCore mod (.str (privateToUserName declName) unfoldThmSuffix)
    if let some (.thmInfo info) := (← getEnv).find? unfoldName' then
      realizeConst declName name do
        addDecl <| Declaration.thmDecl {
          name,
          type := info.type,
          value := .const unfoldName' (info.levelParams.map mkLevelParam),
          levelParams := info.levelParams
        }
      return name
  return none

builtin_initialize
  registerGetUnfoldEqnFn copyPrivateUnfoldTheorem

end Lean.Elab.WF
```
