# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Passes.Variant026fa79f50ea17a725ced71794ba2fec3e4e60002180c77e8a15a066961b6d88

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `743cd1642b0ee5ac2a732c49756f1e9e5f212876` · SHA-256 `ae674ce1df69a762e10ea88d6e91e526a46330d2c535a646f0846c23d2807e7a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Init.Variant85b318f7c13779693766df463bc84a3b7ae937a34f95df4db02f5858152e47aa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"85b318f7c13779693766df463bc84a3b7ae937a34f95df4db02f5858152e47aa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Init.Variant85b318f7c13779693766df463bc84a3b7ae937a34f95df4db02f5858152e47aa","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"85b318f7c13779693766df463bc84a3b7ae937a34f95df4db02f5858152e47aa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Compiler/LCNF/Passes.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Henrik Böving. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Lean.Compiler.LCNF.PullLetDecls
public import Lean.Compiler.LCNF.CSE
public import Lean.Compiler.LCNF.JoinPoints
public import Lean.Compiler.LCNF.Specialize
public import Lean.Compiler.LCNF.ToMono
public import Lean.Compiler.LCNF.LambdaLifting
public import Lean.Compiler.LCNF.FloatLetIn
public import Lean.Compiler.LCNF.ReduceArity
public import Lean.Compiler.LCNF.ElimDeadBranches
public import Lean.Compiler.LCNF.StructProjCases
public import Lean.Compiler.LCNF.ExtractClosed
public import Lean.Compiler.LCNF.Visibility
public import Lean.Compiler.LCNF.Simp
public import Lean.Compiler.LCNF.ToImpure
public import Lean.Compiler.LCNF.PushProj
public import Lean.Compiler.LCNF.ResetReuse
public import Lean.Compiler.LCNF.SimpCase
public import Lean.Compiler.LCNF.InferBorrow
public import Lean.Compiler.LCNF.ExplicitBoxing
public import Lean.Compiler.LCNF.ExplicitRC
public import Lean.Compiler.LCNF.CoalesceRC
public import Lean.Compiler.LCNF.Toposort
public import Lean.Compiler.LCNF.ExpandResetReuse
public import Lean.Compiler.LCNF.SimpleGroundExpr


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Init.Variant85b318f7c13779693766df463bc84a3b7ae937a34f95df4db02f5858152e47aa

public section

namespace Lean.Compiler.LCNF

open PassInstaller

namespace Pass

def init : Pass where
  name  := `init
  run   := fun decls => do
    decls.forM (·.saveBase)
    return decls
  phase := .base
  shouldAlwaysRunCheck := true

-- Helper pass used for debugging purposes
def trace (phase := Phase.base) : Pass where
  name  := `trace
  run   := pure
  phase := phase

def saveBase : Pass where
  occurrence := 0
  phase := .base
  phaseOut := .base
  name := `saveBase
  run decls := decls.mapM fun decl => do
    (← normalizeFVarIds decl).saveBase
    return decl
  shouldAlwaysRunCheck := true

def saveMono : Pass where
  occurrence := 0
  phase := .mono
  phaseOut := .mono
  name := `saveMono
  run decls := decls.mapM fun decl => do
    (← normalizeFVarIds decl).saveMono
    return decl
  shouldAlwaysRunCheck := true

def saveImpure : Pass where
  occurrence := 0
  phase := .impure
  phaseOut := .impure
  name := `saveImpure
  run decls := decls.mapM fun decl => do
    let decl ← normalizeFVarIds decl
    decl.saveImpure
    modifyEnv fun env => recordFinalImpureDecl env decl.name
    return decl
  shouldAlwaysRunCheck := true

end Pass

open Pass

def builtinPassManager : PassManager := {
  basePasses := #[
    init,
    pullInstances,
    cse (shouldElimFunDecls := false),
    simp,
    floatLetIn,
    findJoinPoints,
    pullFunDecls,
    reduceJpArity,
    /-
    We apply `implementedBy` replacements before `specialize` to ensure we specialize the replacement.
    One possible improvement is to perform only the replacements if the target declaration is a specialization target,
    and on phase 2 (aka mono) perform the remaining replacements.
    -/
    simp { etaPoly := true, inlinePartial := true, implementedBy := true } (occurrence := 1),
    eagerLambdaLifting,
    -- Should be as early as possible but after `eagerLambdaLifting` to make sure instances are
    -- checked without nested functions whose bodies specialization does not require access to.
    checkTemplateVisibility,
    specialize,
    findJoinPoints (occurrence := 1),
    simp (occurrence := 2),
    cse (shouldElimFunDecls := false) (occurrence := 1),
    saveBase, -- End of base phase
    -- should come last so it can see all created decls
    -- pass must be run for each phase; see `base/monoTransparentDeclsExt`
    inferVisibility (phase := .base),
    toMono,
  ]
  monoPasses := #[
    simp (occurrence := 3) (phase := .mono),
    reduceJpArity (phase := .mono),
    structProjCases,
    extendJoinPointContext (phase := .mono) (occurrence := 0),
    floatLetIn (phase := .mono) (occurrence := 1),
    reduceArity,
    commonJoinPointArgs,
    simp (occurrence := 4) (phase := .mono),
    floatLetIn (phase := .mono) (occurrence := 2),
    lambdaLifting,
  ]
  monoPassesNoLambda := #[
    extendJoinPointContext (phase := .mono) (occurrence := 1),
    simp (occurrence := 5) (phase := .mono),
    elimDeadBranches,
    cse (occurrence := 2) (phase := .mono),
    saveMono,  -- End of mono phase
    inferVisibility (phase := .mono),
    extractClosed,
    toImpure,
  ]
  impurePasses := #[
    pushProj (occurrence := 0),
    insertResetReuse,
    elimDeadVars (phase := .impure) (occurrence := 0),
    simpCase,
    inferBorrow,
    explicitBoxing,
    explicitRc,
    expandResetReuse,
    coalesceRC,
    pushProj (occurrence := 1),
    detectSimpleGround,
    inferVisibility (phase := .impure),
    toposortPass,
    saveImpure, -- End of impure phase
  ]
}

def runImportedDecls (importedDeclNames : Array (Array Name)) : CoreM PassManager := do
  let mut m := builtinPassManager
  for declNames in importedDeclNames do
    for declName in declNames do
      m ← runFromDecl m declName
  return m

builtin_initialize passManagerExt : PersistentEnvExtension Name (Name × PassManager) (List Name × PassManager) ←
  registerPersistentEnvExtension {
    mkInitial := return ([], builtinPassManager)
    addImportedFn := fun ns => return ([], ← ImportM.runCoreM <| runImportedDecls ns)
    addEntryFn := fun (installerDeclNames, _) (installerDeclName, managerNew) => (installerDeclName :: installerDeclNames, managerNew)
    exportEntriesFn := fun s => s.1.reverse.toArray
  }

def getPassManager : CoreM PassManager :=
  return passManagerExt.getState (← getEnv) |>.2

def addPass (declName : Name) : CoreM Unit := do
  let info ← getConstInfo declName
  match info.type with
  | .const `Lean.Compiler.LCNF.PassInstaller .. =>
    let managerNew ← runFromDecl (← getPassManager) declName
    modifyEnv fun env => passManagerExt.addEntry env (declName, managerNew)
  | _ =>
    throwAttrDeclNotOfExpectedType `cpass declName info.type (mkConst ``PassInstaller)

builtin_initialize
  registerBuiltinAttribute {
    name  := `cpass
    descr := "compiler passes for the code generator"
    add   := fun declName stx kind => do
      Attribute.Builtin.ensureNoArgs stx
      unless kind == AttributeKind.global do throwAttrMustBeGlobal `cpass kind
      ensureAttrDeclIsMeta `cpass declName kind
      discard <| addPass declName
    applicationTime := .afterCompilation
  }

builtin_initialize
  registerTraceClass `Compiler.saveBase (inherited := true)
  registerTraceClass `Compiler.saveMono (inherited := true)
  registerTraceClass `Compiler.saveImpure (inherited := true)
  registerTraceClass `Compiler.trace (inherited := true)

end Lean.Compiler.LCNF
```
