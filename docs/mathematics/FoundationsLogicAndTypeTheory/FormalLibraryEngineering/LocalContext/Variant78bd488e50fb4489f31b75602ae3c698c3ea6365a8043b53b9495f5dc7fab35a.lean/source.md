# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LocalContext.Variant78bd488e50fb4489f31b75602ae3c698c3ea6365a8043b53b9495f5dc7fab35a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ead5fc3eff8d13097d3d2854d6c5f2a59ab07b71` · SHA-256 `2b57b9f67d1512c53d645c27bab422496fce1e8bf4290d2b8df92d3388145cca`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LocalDeclSetKind.Variantfa3d5e279944cd54c39626d9f8ed29f38ca9d11d0db8f76781ecd1bd55d4e732","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fa3d5e279944cd54c39626d9f8ed29f38ca9d11d0db8f76781ecd1bd55d4e732","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.LocalDeclSetKind.Variantfa3d5e279944cd54c39626d9f8ed29f38ca9d11d0db8f76781ecd1bd55d4e732","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"fa3d5e279944cd54c39626d9f8ed29f38ca9d11d0db8f76781ecd1bd55d4e732","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Lean/LocalContext.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Jannis Limperg
-/
import Lean.LocalContext


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LocalDeclSetKind.Variantfa3d5e279944cd54c39626d9f8ed29f38ca9d11d0db8f76781ecd1bd55d4e732

namespace Lean

/--
Set the kind of a `LocalDecl`.
-/
def LocalDecl.setKind : LocalDecl → LocalDeclKind → LocalDecl
  | cdecl index fvarId userName type bi _, kind =>
      cdecl index fvarId userName type bi kind
  | ldecl index fvarId userName type value nonDep _, kind =>
      ldecl index fvarId userName type value nonDep kind

namespace LocalContext

/--
Given an `FVarId`, this function returns the corresponding user name,
but only if the name can be used to recover the original FVarId.
-/
def getRoundtrippingUserName? (lctx : LocalContext) (fvarId : FVarId) : Option Name := do
  let ldecl₁ ← lctx.find? fvarId
  let ldecl₂ ← lctx.findFromUserName? ldecl₁.userName
  guard <| ldecl₁.fvarId == ldecl₂.fvarId
  some ldecl₁.userName

/--
Set the kind of the given fvar.
-/
def setKind (lctx : LocalContext) (fvarId : FVarId)
    (kind : LocalDeclKind) : LocalContext :=
  lctx.modifyLocalDecl fvarId (·.setKind kind)

/--
Sort the given `FVarId`s by the order in which they appear in `lctx`. If any of
the `FVarId`s do not appear in `lctx`, the result is unspecified.
-/
def sortFVarsByContextOrder (lctx : LocalContext) (hyps : Array FVarId) : Array FVarId :=
  let hyps := hyps.map λ fvarId =>
    match lctx.fvarIdToDecl.find? fvarId with
    | none => (0, fvarId)
    | some ldecl => (ldecl.index, fvarId)
  hyps.qsort (λ h i => h.fst < i.fst) |>.map (·.snd)

end LocalContext
```
