# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Util.Variantd822d14d3a3b461be3b90f50bf1978fcdf5ab5af120acd64209b202c0ba15bfc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eb601a729e86e547d6848406b26192a9d0013df7` · SHA-256 `e4d13b3aeddb648089ad4d3cda302cde41707d89f59272f2e519e8b79dc41986`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsCompilerRelevantMData.Variantc8cec955c847a067a1a051d887e3a8d502136d66dbd218759326f7359ab26ecb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c8cec955c847a067a1a051d887e3a8d502136d66dbd218759326f7359ab26ecb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.IsCompilerRelevantMData.Variantc8cec955c847a067a1a051d887e3a8d502136d66dbd218759326f7359ab26ecb","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"c8cec955c847a067a1a051d887e3a8d502136d66dbd218759326f7359ab26ecb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Compiler/LCNF/Util.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Init.Data.FloatArray.Basic
public import Lean.CoreM
public import Lean.Util.Recognizers


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsCompilerRelevantMData.Variantc8cec955c847a067a1a051d887e3a8d502136d66dbd218759326f7359ab26ecb

public section

namespace Lean.Compiler.LCNF
/--
Return `true` if `mdata` should be preserved.
Right now, we don't preserve any `MData`, but this may
change in the future when we add support for debugging information
-/
def isCompilerRelevantMData (_mdata : MData) : Bool :=
  false

/--
Return `true` if `e` is a `lcCast` application.
-/
def isLcCast? (e : Expr) : Option Expr :=
  if e.isAppOfArity ``lcCast 3 then
    some e.appArg!
  else
    none

def getCtorArity? (declName : Name) : CoreM (Option Nat) := do
  let .ctorInfo val ← getConstInfo declName | return none
  return val.numParams + val.numFields

/--
List of types that have builtin runtime support
-/
def builtinRuntimeTypes : Array Name := #[
  ``String,
  ``UInt8, ``UInt16, ``UInt32, ``UInt64, ``USize,
  ``Float, ``Float32,
  ``Thunk, ``Task,
  ``Array, ``ByteArray, ``FloatArray,
  ``Nat, ``Int
]

/--
Return `true` iff `declName` is the name of a type with builtin support in the runtime.
-/
def isRuntimeBuiltinType (declName : Name) : Bool :=
  builtinRuntimeTypes.contains declName

end Lean.Compiler.LCNF
```
