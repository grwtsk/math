# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RecArgInfo.Variant5564e7940716a44a9e5d8f64187ebd99004be868cfefd4a11dc27b8088001418

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e184bc05f92a65e632dd5f27bf623e26fdc41c3b` · SHA-256 `5564e7940716a44a9e5d8f64187ebd99004be868cfefd4a11dc27b8088001418`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura, Joachim Breitner
-/
module

prelude
public import Lean.Elab.PreDefinition.FixedParams
public import Lean.Elab.PreDefinition.Structural.IndGroupInfo

public section

namespace Lean.Elab.Structural


/--
Information about the argument of interest of a structurally recursive function.

The `Expr`s in this data structure expect the fixed parameters to be in scope, but not the other
parameters of the function. This ensures that this data structure makes sense in the other functions
of a mutually recursive group.
-/
structure RecArgInfo where
  /-- the name of the recursive function -/
  fnName       : Name
  /-- Information which arguments are fixed -/
  fixedParamPerm : FixedParamPerm
  /-- position of the argument we are recursing on, among all parameters -/
  recArgPos    : Nat
  /-- position of the indices of the inductive datatype we are recursing on, among all parameters -/
  indicesPos   : Array Nat
  /-- The inductive group (with parameters) of the argument's type -/
  indGroupInst : IndGroupInst
  /--
  index of the inductive datatype of the argument we are recursing on.
  If `< indAll.all`, a normal data type, else an auxiliary data type due to nested recursion
  -/
  indIdx       : Nat
deriving Inhabited, Repr

  /-- position of the argument and its indices we are recursing on, among all parameters -/
def RecArgInfo.indicesAndRecArgPos (info : RecArgInfo) : Array Nat :=
  info.indicesPos.push info.recArgPos

/--
If `xs` are the varying parameters of the functions, partitions them into indices and major
arguments, and other parameters.
-/
def RecArgInfo.pickIndicesMajor (info : RecArgInfo) (xs : Array Expr) : (Array Expr × Array Expr) := Id.run do
  -- To simplify the index calculation, pad xs with dummy values where fixed parameters are
  let xs := info.fixedParamPerm.buildArgs (.replicate info.fixedParamPerm.numFixed (mkSort 0)) xs
  -- First indices and major arg, using the order they appear in `info.indicesPos`
  let mut indexMajorArgs := #[]
  let indexMajorPos := info.indicesPos.push info.recArgPos
  for j in indexMajorPos do
    indexMajorArgs := indexMajorArgs.push xs[j]!
  -- Then the other arguments, in the order they appear in `xs`
  let mut otherVaryingArgs := #[]
  for h : i in *...xs.size do
    unless indexMajorPos.contains i do
      unless info.fixedParamPerm.isFixed i do
        otherVaryingArgs := otherVaryingArgs.push xs[i]
  return (indexMajorArgs, otherVaryingArgs)

/--
Name of the recursive data type. Assumes that it is not one of the auxiliary ones.
-/
def RecArgInfo.indName! (info : RecArgInfo) : Name :=
  info.indGroupInst.all[info.indIdx]!

end Lean.Elab.Structural
```
