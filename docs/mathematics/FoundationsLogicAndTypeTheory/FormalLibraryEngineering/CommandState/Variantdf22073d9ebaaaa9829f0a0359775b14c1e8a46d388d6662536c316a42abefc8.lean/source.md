# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CommandState.Variantdf22073d9ebaaaa9829f0a0359775b14c1e8a46d388d6662536c316a42abefc8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bce4c8aeffb43c21a0f8cbd6f2bb1eb10fe3a704` · SHA-256 `df22073d9ebaaaa9829f0a0359775b14c1e8a46d388d6662536c316a42abefc8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import Lean
import all Lean

public section

/-! # Raw Lean command-state snapshots -/

open Lean

namespace MathDiscoveryLeanSource

structure RawContext where
  scopeHeaders : Array String
  currentNamespace : String
  openDeclarations : Array String
  options : Array String
  universeNames : Array String
  variableBinders : Array String
  includedVariables : Array String
  omittedVariables : Array String
  attributes : Array String
  isNoncomputable : Bool
  autoImplicit : Bool
  deriving ToJson

private def sorted (values : Array String) : Array String :=
  values.qsort (· < ·)

private def optionRecords (options : Options) : Array String := Id.run do
  let mut records := #[]
  for (name, value) in options do
    records := records.push s!"{name}={value}"
  return sorted records

def contextOf (state : Elab.Command.State) : RawContext :=
  let scope := state.scopes.head!
  {
    scopeHeaders := state.scopes.reverse.toArray.map (·.header)
    currentNamespace := scope.currNamespace.toString
    openDeclarations := sorted (scope.openDecls.toArray.map toString)
    options := optionRecords scope.opts
    universeNames := scope.levelNames.toArray.map Name.toString
    variableBinders := scope.varDecls.map fun binder => binder.raw.reprint.getD ""
    includedVariables := scope.includedVars.toArray.map Name.toString
    omittedVariables := scope.omittedVars.toArray.map Name.toString
    attributes := scope.attrs.toArray.map fun attr => attr.raw.reprint.getD ""
    isNoncomputable := scope.isNoncomputable
    autoImplicit := scope.opts.get `autoImplicit true
  }

structure RawRange where
  start : Nat
  stop : Nat
  deriving ToJson

structure RawPosition where
  line : Nat
  column : Nat
  deriving ToJson

structure RawCommand where
  ordinal : Nat
  byteRange : RawRange
  syntaxRange : RawRange
  trailingRange : RawRange
  startPosition : RawPosition
  stopPosition : RawPosition
  syntaxKind : String
  canonicalSyntax : String
  exactSource : String
  contextBefore : RawContext
  contextAfter : RawContext
  declarationsAdded : Array String
  localConstantCountBefore : Nat
  localConstantCountAfter : Nat
  providerKinds : Array String
  diagnosticCountBefore : Nat
  diagnosticCountAfter : Nat
  deriving ToJson

structure RawDeclarationRange where
  declaration : String
  range : RawRange
  selectionRange : RawRange
  deriving ToJson

structure RawFileTrace where
  moduleName : String
  file : String
  headerRange : RawRange
  imports : Array String
  commands : Array RawCommand
  declarationRanges : Array RawDeclarationRange
  diagnostics : Array String
  authority : String := "lean-v4.32.0-frontend"
  deriving ToJson

structure RawTrace where
  schemaVersion : Nat := 1
  tracerVersion : String := "math-discovery-lean-source-trace/1"
  leanVersion : String
  files : Array RawFileTrace
  deriving ToJson

end MathDiscoveryLeanSource
```
