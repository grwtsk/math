# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FFI.Variant15578728991cb644a76497195217e29982f9d130c0450d8198351343f65d1fe7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `90b7d3d78d51eb0376ea23211205a3ae940a42fe` · SHA-256 `0abc23bae2d78a8022bb47ef7a4feee4649483b14614c0ce6d8f3770a39f3cc7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetLeancExtraFlags.Variant8165b04c65176559e7850063c75ef02dbe86b3e2b28f2b73096d6ee3debd6e8b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8165b04c65176559e7850063c75ef02dbe86b3e2b28f2b73096d6ee3debd6e8b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.GetLeancExtraFlags.Variant8165b04c65176559e7850063c75ef02dbe86b3e2b28f2b73096d6ee3debd6e8b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"8165b04c65176559e7850063c75ef02dbe86b3e2b28f2b73096d6ee3debd6e8b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Compiler/FFI.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Sebastian Ullrich. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Ullrich
-/
module

prelude
public import Init.System.FilePath
import Init.Data.String.Search


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetLeancExtraFlags.Variant8165b04c65176559e7850063c75ef02dbe86b3e2b28f2b73096d6ee3debd6e8b

public section

open System

namespace Lean.Compiler.FFI

@[extern "lean_get_leanc_extra_flags"]
private opaque getLeancExtraFlags : Unit → String

private def flagsStringToArray (s : String) : Array String :=
  s.split ' ' |>.filter (!·.isEmpty) |>.toStringArray

/--
Return C compiler flags for including Lean's headers.
Unlike `getCFlags`, this does not contain the Lean include directory.
-/
def getCFlags' : Array String :=
  flagsStringToArray (getLeancExtraFlags ())

/-- Return C compiler flags for including Lean's headers. -/
def getCFlags (leanSysroot : FilePath) : Array String :=
  #["-I", (leanSysroot / "include").toString] ++ getCFlags'

@[extern "lean_get_leanc_internal_flags"]
private opaque getLeancInternalFlags : Unit → String

/-- Return C compiler flags needed to use the C compiler bundled with the Lean toolchain. -/
def getInternalCFlags (leanSysroot : FilePath) : Array String :=
  flagsStringToArray (getLeancInternalFlags ()) |>.map (·.replace "ROOT" leanSysroot.toString)

@[extern "lean_get_linker_flags"]
private opaque getBuiltinLinkerFlags (linkStatic : Bool) : String

/--
Return linker flags for linking against Lean's libraries.
Unlike `getLinkerFlags`, this does not contain the Lean library directory.
-/
def getLinkerFlags' (linkStatic := true) : Array String :=
  flagsStringToArray (getBuiltinLinkerFlags linkStatic)

/-- Return linker flags for linking against Lean's libraries. -/
def getLinkerFlags (leanSysroot : FilePath) (linkStatic := true) : Array String :=
  #["-L", (leanSysroot / "lib" / "lean").toString] ++ getLinkerFlags' linkStatic

@[extern "lean_get_internal_linker_flags"]
private opaque getBuiltinInternalLinkerFlags : Unit → String

/-- Return linker flags needed to use the linker bundled with the Lean toolchain. -/
def getInternalLinkerFlags (leanSysroot : FilePath) : Array String :=
  flagsStringToArray (getBuiltinInternalLinkerFlags ()) |>.map (·.replace "ROOT" leanSysroot.toString)

end Lean.Compiler.FFI
```
