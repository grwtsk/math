# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PPBinder.Variant59c34796ff411cb200d8b2df4a6711704d2e2f5630eb13ab06023bdc8525436e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fa3cfdbe2223ab1509b94f938b4b327ac0787b04` · SHA-256 `4b4ac75e6fed2880c43d609bcbe329271b944e1c7edfdb1972993aa0f048ff83`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LocalDeclPpAsBinder.Variant124b79cfc3347c07958e478805a481d65341d1d595cf5fdd2ce2522583e443f6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"124b79cfc3347c07958e478805a481d65341d1d595cf5fdd2ce2522583e443f6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.LocalDeclPpAsBinder.Variant124b79cfc3347c07958e478805a481d65341d1d595cf5fdd2ce2522583e443f6","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"124b79cfc3347c07958e478805a481d65341d1d595cf5fdd2ce2522583e443f6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/PPBinder.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Moritz Roos. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Moritz Roos
-/
module

prelude
public import Lean.Meta.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LocalDeclPpAsBinder.Variant124b79cfc3347c07958e478805a481d65341d1d595cf5fdd2ce2522583e443f6

public section

namespace Lean

/--
Pretty-prints a local declaration and its type as a binder,
using the appropriate brackets given its `BinderInfo`. Example output: `{α : Type}`.

Returns `none` for let decls.
-/
protected def LocalDecl.ppAsBinder : LocalDecl → Option MessageData
  | .ldecl .. => none
  | .cdecl _ fvarId _ type binderInfo _ =>
    let (lBracket, rBracket) : String × String := match binderInfo with
      | .implicit       => ("{", "}")
      | .strictImplicit => ("⦃", "⦄")
      | .instImplicit   => ("[", "]")
      | .default        => ("(", ")")
    some <| .bracket lBracket m!"{mkFVar fvarId} : {type}" rBracket

/--
Pretty-prints a free variable and its type as a binder,
using the appropriate brackets given its `BinderInfo`. Example output: `{α : Type}`.

Returns `none` for let decls.
-/
@[inline]
protected def FVarId.ppAsBinder (fvarId : FVarId) : MetaM (Option MessageData) :=
  return (← fvarId.getDecl).ppAsBinder

end Lean
```
