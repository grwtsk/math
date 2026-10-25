# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TypeClass.Variant84dc734333e94afa31fd39040a067ca227fe6af693cd0c3d9e9703a12cf4175c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `99b8f4f132db84a4e3f4f3c720a416475c476270` · SHA-256 `743f5d0581e646ee08338ec6fdf3eaf6a961ba8a30f76dc613aed92bc3029669`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Instances.Variant005e92fb6fd3a7677a52afe29e9b445851bde976e3beaecab6884faf80b0fabf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"005e92fb6fd3a7677a52afe29e9b445851bde976e3beaecab6884faf80b0fabf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Instances.Variant005e92fb6fd3a7677a52afe29e9b445851bde976e3beaecab6884faf80b0fabf","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"005e92fb6fd3a7677a52afe29e9b445851bde976e3beaecab6884faf80b0fabf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/Batteries/Tactic/Lint/TypeClass.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gabriel Ebner
-/
module

public meta import Lean.Meta.Instances
public meta import Batteries.Tactic.Lint.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Instances.Variant005e92fb6fd3a7677a52afe29e9b445851bde976e3beaecab6884faf80b0fabf

public meta section

namespace Batteries.Tactic.Lint
open Lean Meta

/--
Lints for instances with arguments that cannot be filled in, like
```
instance {α β : Type} [Group α] : Mul α where ...
```
-/
@[env_linter] def impossibleInstance : Linter where
  noErrorsFound := "No instance has arguments that are impossible to infer"
  errorsFound := "SOME INSTANCES HAVE ARGUMENTS THAT ARE IMPOSSIBLE TO INFER
These are arguments that are not instance-implicit and do not appear in
another instance-implicit argument or the return type."
  test declName := do
    unless ← isInstance declName do return none
    forallTelescopeReducing (← inferType (← mkConstWithLevelParams declName)) fun args ty => do
    let argTys ← args.mapM inferType
    let impossibleArgs ← args.zipIdx.filterMapM fun (arg, i) => do
      let fv := arg.fvarId!
      if (← fv.getDecl).binderInfo.isInstImplicit then return none
      if ty.containsFVar fv then return none
      if argTys[i+1:].any (·.containsFVar fv) then return none
      return some m!"argument {i+1} {arg} : {← inferType arg}"
    if impossibleArgs.isEmpty then return none
    addMessageContextFull <| .joinSep impossibleArgs.toList ", "

/--
A linter for checking if any declaration whose type is not a class is marked as an instance.
-/
@[env_linter] def nonClassInstance : Linter where
  noErrorsFound := "No instances of non-classes"
  errorsFound := "INSTANCES OF NON-CLASSES"
  test declName := do
    if !(← isInstance declName) then return none
    let info ← getConstInfo declName
    if !(← isClass? info.type).isSome then return "should not be an instance"
    return none
````
