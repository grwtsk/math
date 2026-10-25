# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToIRType.Variant2457ae87c3358d39e4d7d167686d02470d6667d22571967da0e8df8cfcef99c2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eea9473e93fca0313928b54a862786069568c253` · SHA-256 `b49e94ca73cf424930352cf2990abbfd1415124623b0dac1f6a6aa52581365ba`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NameToIRType.Variantfcfea472011e8326a8438fe7afe7cf7f186890b12b2983a93218ec23a139f366","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fcfea472011e8326a8438fe7afe7cf7f186890b12b2983a93218ec23a139f366","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.NameToIRType.Variantfcfea472011e8326a8438fe7afe7cf7f186890b12b2983a93218ec23a139f366","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"fcfea472011e8326a8438fe7afe7cf7f186890b12b2983a93218ec23a139f366","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Compiler/IR/ToIRType.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Compiler.IR.Format
public import Lean.Compiler.LCNF.MonoTypes


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NameToIRType.Variantfcfea472011e8326a8438fe7afe7cf7f186890b12b2983a93218ec23a139f366

public section

namespace Lean
namespace IR

open Lean.Compiler

def nameToIRType (n : Name) : IRType :=
  match n with
  | ``Float => .float
  | ``Float32 => .float32
  | ``UInt8 => .uint8
  | ``UInt16 => .uint16
  | ``UInt32 => .uint32
  | ``UInt64 => .uint64
  | ``lcErased => .erased
  | `obj => .object
  | `tobj => .tobject
  | `tagged => .tagged
  | ``lcVoid => .void
  | _ => unreachable!


def toIRType (type : Lean.Expr) : IRType :=
  match type with
  | LCNF.ImpureType.float => .float
  | LCNF.ImpureType.float32 => .float32
  | LCNF.ImpureType.uint8 => .uint8
  | LCNF.ImpureType.uint16 => .uint16
  | LCNF.ImpureType.uint32 => .uint32
  | LCNF.ImpureType.uint64 => .uint64
  | LCNF.ImpureType.usize => .usize
  | LCNF.ImpureType.erased => .erased
  | LCNF.ImpureType.object => .object
  | LCNF.ImpureType.tobject => .tobject
  | LCNF.ImpureType.tagged => .tagged
  | LCNF.ImpureType.void => .void
  | _ => unreachable!

end IR
end Lean
```
