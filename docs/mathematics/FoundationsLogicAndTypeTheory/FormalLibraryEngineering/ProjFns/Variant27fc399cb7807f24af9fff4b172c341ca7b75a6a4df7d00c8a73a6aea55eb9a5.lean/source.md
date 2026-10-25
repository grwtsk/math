# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProjFns.Variant27fc399cb7807f24af9fff4b172c341ca7b75a6a4df7d00c8a73a6aea55eb9a5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `feb43453f630c0ac9d45ae44563977d5820e0df3` · SHA-256 `4a408fb1028e22998fa8f6d0f0f1a2ef64d1c93b526f68eab154491201759118`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProjectionFunctionInfo.Variantbf5e2e5ddb1ea80aba4de59a95fb78dc7680a7cbabd0d37a4c188200c86ca036","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bf5e2e5ddb1ea80aba4de59a95fb78dc7680a7cbabd0d37a4c188200c86ca036","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ProjectionFunctionInfo.Variantbf5e2e5ddb1ea80aba4de59a95fb78dc7680a7cbabd0d37a4c188200c86ca036","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"bf5e2e5ddb1ea80aba4de59a95fb78dc7680a7cbabd0d37a4c188200c86ca036","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/ProjFns.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.EnvExtension


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProjectionFunctionInfo.Variantbf5e2e5ddb1ea80aba4de59a95fb78dc7680a7cbabd0d37a4c188200c86ca036

public section

namespace Lean

/--
Given a structure `S`, Lean automatically creates an auxiliary definition (projection function)
for each field. This structure caches information about these auxiliary definitions.
-/
structure ProjectionFunctionInfo where
  /-- Constructor associated with the auxiliary projection function. -/
  ctorName : Name
  /-- Number of parameters in the structure -/
  numParams : Nat
  /-- The field index associated with the auxiliary projection function. -/
  i : Nat
  /-- `true` if the structure is a class. -/
  fromClass : Bool
  deriving Inhabited, Repr

builtin_initialize projectionFnInfoExt : MapDeclarationExtension ProjectionFunctionInfo ← mkMapDeclarationExtension

def addProjectionFnInfo (env : Environment) (projName : Name) (ctorName : Name) (numParams : Nat) (i : Nat) (fromClass : Bool) : Environment :=
  projectionFnInfoExt.insert env projName { ctorName, numParams, i, fromClass }

namespace Environment

def getProjectionFnInfo? (env : Environment) (projName : Name) : Option ProjectionFunctionInfo :=
  projectionFnInfoExt.find? env projName

def isProjectionFn (env : Environment) (declName : Name) : Bool :=
  projectionFnInfoExt.contains env declName

/-- If `projName` is the name of a projection function, return the associated structure name -/
def getProjectionStructureName? (env : Environment) (projName : Name) : Option Name :=
  match env.getProjectionFnInfo? projName with
  | none          => none
  | some projInfo =>
    match env.find? projInfo.ctorName with
    | some (ConstantInfo.ctorInfo val) => some val.induct
    | _ => none

end Environment

def isProjectionFn [MonadEnv m] [Monad m] (declName : Name) : m Bool :=
  return (← getEnv).isProjectionFn declName

def getProjectionFnInfo? [MonadEnv m] [Monad m] (declName : Name) : m (Option ProjectionFunctionInfo) :=
  return (← getEnv).getProjectionFnInfo? declName

/--
Auxiliary parent projection created when a parent structure cannot be represented as a subobject
(e.g., due to diamond inheritance). Unlike regular projections, these construct the parent value
from individual fields rather than extracting a single field.
Example: `AddMonoid'.toAddZero'` when `AddZero'` cannot be a subobject of `AddMonoid'`.
-/
structure AuxParentProjectionInfo where
  /-- Number of parameters in the child structure. -/
  numParams : Nat
  /-- `true` if the child structure is a class. -/
  fromClass : Bool
  deriving Inhabited, Repr

builtin_initialize auxParentProjInfoExt : MapDeclarationExtension AuxParentProjectionInfo ← mkMapDeclarationExtension

def addAuxParentProjectionInfo (env : Environment) (projName : Name) (numParams : Nat) (fromClass : Bool) : Environment :=
  auxParentProjInfoExt.insert env projName { numParams, fromClass }

namespace Environment

def getAuxParentProjectionInfo? (env : Environment) (projName : Name) : Option AuxParentProjectionInfo :=
  auxParentProjInfoExt.find? env projName

end Environment

def getAuxParentProjectionInfo? [MonadEnv m] [Monad m] (declName : Name) : m (Option AuxParentProjectionInfo) :=
  return (← getEnv).getAuxParentProjectionInfo? declName

end Lean
```
