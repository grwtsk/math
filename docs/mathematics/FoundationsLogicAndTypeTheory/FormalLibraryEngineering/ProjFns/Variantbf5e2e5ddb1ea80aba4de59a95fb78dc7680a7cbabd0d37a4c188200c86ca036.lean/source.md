# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProjFns.Variantbf5e2e5ddb1ea80aba4de59a95fb78dc7680a7cbabd0d37a4c188200c86ca036

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f58c99d0dec003c412b33c2b507b2727c42237dc` · SHA-256 `bf5e2e5ddb1ea80aba4de59a95fb78dc7680a7cbabd0d37a4c188200c86ca036`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2019 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.EnvExtension

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
