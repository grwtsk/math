# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Kinds.Variant9c0d896e61021c61284cd926767e17dff209894618c78bc75c0873703d946577

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `27d9f1bdb464e6a96959fcf3d8906a8a711b958c` · SHA-256 `f5a0997f13f93ed4535b38570d0b9f7f540ca4606d5b3e7e1221225e08a5730e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FacetKindForNamespace.Variant179121b1fe18244cd4ef0f3c15aa05afc3c20b4eccb5248419c2fe89fa643bf3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"179121b1fe18244cd4ef0f3c15aa05afc3c20b4eccb5248419c2fe89fa643bf3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.FacetKindForNamespace.Variant179121b1fe18244cd4ef0f3c15aa05afc3c20b4eccb5248419c2fe89fa643bf3","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"179121b1fe18244cd4ef0f3c15aa05afc3c20b4eccb5248419c2fe89fa643bf3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/Config/Kinds.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Init.Prelude


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FacetKindForNamespace.Variant179121b1fe18244cd4ef0f3c15aa05afc3c20b4eccb5248419c2fe89fa643bf3

open Lean (Name)

namespace Lake

/-- The keyword for package declarations. -/
@[reducible, expose] public def Package.keyword : Name := `package

/-- The kind identifier for facets of a package. -/
@[match_pattern] public abbrev Package.facetKind : Name := keyword

/--
The would-be keyword for module declarations.

Such declarations do not currently exist, but this is used
as the facet kind for modules.
-/
@[reducible, expose] public def Module.keyword : Name := `module

/-- The kind identifier for facets of a (Lean) module. -/
@[match_pattern] public abbrev Module.facetKind : Name := keyword

/-- The keyword for Lean library declarations. -/
@[reducible, expose] public def LeanLib.keyword : Name := `lean_lib

/-- The kind identifier for facets of a Lean library. -/
@[match_pattern] public abbrev LeanLib.facetKind : Name := `lean_lib

/-- The type kind for Lean library configurations. -/
@[match_pattern] public abbrev LeanLib.configKind := facetKind

/-- The keyword for Lean executable declarations. -/
@[reducible, expose] public def LeanExe.keyword : Name := `lean_exe

/-- The kind identifier for facets of a Lean executable. -/
@[match_pattern] public abbrev LeanExe.facetKind : Name := keyword

/-- The type kind for Lean executable configurations. -/
@[match_pattern] public abbrev LeanExe.configKind := facetKind

/-- The keyword for external library declarations. -/
@[reducible, expose] public def ExternLib.keyword : Name := `extern_lib

/-- The kind identifier for facets of an external library. -/
@[match_pattern] public abbrev ExternLib.facetKind : Name := keyword

/-- The type kind for external library configurations. -/
@[match_pattern] public abbrev ExternLib.configKind := facetKind

/-- The keyword for input file declarations. -/
@[reducible, expose] public def InputFile.keyword : Name := `input_file

/-- The kind identifier for facets of an input file. -/
@[match_pattern] public abbrev InputFile.facetKind := keyword

/-- The type kind for input file configurations. -/
@[match_pattern] public abbrev InputFile.configKind := facetKind

/-- The keyword for input directory declarations. -/
@[reducible, expose] public def InputDir.keyword : Name := `input_dir

/-- The kind identifier for facets of an input directory. -/
@[match_pattern] public abbrev InputDir.facetKind := keyword

/-- The type kind for input directory configurations. -/
@[match_pattern] public abbrev InputDir.configKind := facetKind

/--
Returns the facet kind for an Lake target namespace.
Used by the `builtin_facet` macro.
-/
def facetKindForNamespace (ns : Name) : Name :=
  match ns with
  | `Lake.Package => Package.facetKind
  | `Lake.Module => Module.facetKind
  | `Lake.LeanLib => LeanLib.facetKind
  | `Lake.LeanExe => LeanExe.facetKind
  | `Lake.ExternLib => ExternLib.facetKind
  | `Lake.InputFile => InputFile.facetKind
  | `Lake.InputDir => InputDir.facetKind
  | _ => Name.anonymous
```
