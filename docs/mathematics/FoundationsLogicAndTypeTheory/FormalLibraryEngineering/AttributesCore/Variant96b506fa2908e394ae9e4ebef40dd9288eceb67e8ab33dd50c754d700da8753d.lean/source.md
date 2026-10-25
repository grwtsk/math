# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AttributesCore.Variant96b506fa2908e394ae9e4ebef40dd9288eceb67e8ab33dd50c754d700da8753d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `20417b8068a3e20439a0e94bf416ecfc5817efb8` · SHA-256 `e4d54cdc8583f949b69fd6211c4704cdd72bc10b91e1deb9a45fa6e1909a63b2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OrderedTagAttribute.Variant9ec25a9713dd0796498118d0daff4dd5dbc9d0eb3116e4bd1740e2ee8e9d749b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9ec25a9713dd0796498118d0daff4dd5dbc9d0eb3116e4bd1740e2ee8e9d749b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.OrderedTagAttribute.Variant9ec25a9713dd0796498118d0daff4dd5dbc9d0eb3116e4bd1740e2ee8e9d749b","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"9ec25a9713dd0796498118d0daff4dd5dbc9d0eb3116e4bd1740e2ee8e9d749b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/DSL/AttributesCore.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lake.Util.OrderedTagAttribute


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OrderedTagAttribute.Variant9ec25a9713dd0796498118d0daff4dd5dbc9d0eb3116e4bd1740e2ee8e9d749b

open Lean
namespace Lake

public builtin_initialize packageAttr : OrderedTagAttribute ←
  registerOrderedTagAttribute `package "mark a definition as a Lake package configuration"

public builtin_initialize packageDepAttr : OrderedTagAttribute ←
  registerOrderedTagAttribute `package_dep "mark a definition as a Lake package dependency"

public builtin_initialize postUpdateAttr : OrderedTagAttribute ←
  registerOrderedTagAttribute `post_update "mark a definition as a Lake package post-update hook"

public builtin_initialize scriptAttr : OrderedTagAttribute ←
  registerOrderedTagAttribute `script "mark a definition as a Lake script"

public builtin_initialize defaultScriptAttr : OrderedTagAttribute ←
  registerOrderedTagAttribute `default_script "mark a Lake script as the package's default"
    fun name => do
      unless (← getEnv <&> (scriptAttr.hasTag · name)) do
        throwError "attribute `default_script` can only be used on a `script`"

public builtin_initialize leanLibAttr : OrderedTagAttribute ←
  registerOrderedTagAttribute `lean_lib "mark a definition as a Lake Lean library target configuration"

public builtin_initialize leanExeAttr : OrderedTagAttribute ←
  registerOrderedTagAttribute `lean_exe "mark a definition as a Lake Lean executable target configuration"

public builtin_initialize externLibAttr : OrderedTagAttribute ←
  registerOrderedTagAttribute `extern_lib "mark a definition as a Lake external library target"

public builtin_initialize inputFileAttr : OrderedTagAttribute ←
  registerOrderedTagAttribute `input_file "mark a definition as a Lake input file target"

public builtin_initialize inputDirAttr : OrderedTagAttribute ←
  registerOrderedTagAttribute `input_dir "mark a definition as a Lake input directory target"

public builtin_initialize targetAttr : OrderedTagAttribute ←
  registerOrderedTagAttribute `target "mark a definition as a Lake target"

public builtin_initialize defaultTargetAttr : OrderedTagAttribute ←
  registerOrderedTagAttribute `default_target "mark a Lake target as the package's default"
    fun name => do
      let valid ← getEnv <&> fun env =>
        targetAttr.hasTag env name
      unless valid do
        throwError "attribute `default_target` can only be used on a target (e.g., `lean_lib`, `lean_exe`)"

public builtin_initialize testDriverAttr : OrderedTagAttribute ←
  registerOrderedTagAttribute `test_driver "mark a Lake script, executable, or library as package's test driver"
    fun name => do
      let valid ← getEnv <&> fun env =>
        scriptAttr.hasTag env name ||
        leanExeAttr.hasTag env name ||
        leanLibAttr.hasTag env name
      unless valid do
        throwError "attribute `test_driver` can only be used on a `script`, `lean_exe`, or `lean_lib`"

public builtin_initialize lintDriverAttr : OrderedTagAttribute ←
  registerOrderedTagAttribute `lint_driver "mark a Lake script or executable as package's linter"
    fun name => do
      let valid ← getEnv <&> fun env =>
        scriptAttr.hasTag env name ||
        leanExeAttr.hasTag env name
      unless valid do
        throwError "attribute `lint_driver` can only be used on a `script` or `lean_exe`"

public builtin_initialize moduleFacetAttr : OrderedTagAttribute ←
  registerOrderedTagAttribute `module_facet "mark a definition as a Lake module facet"

public builtin_initialize packageFacetAttr : OrderedTagAttribute ←
  registerOrderedTagAttribute `package_facet "mark a definition as a Lake package facet"

public builtin_initialize libraryFacetAttr : OrderedTagAttribute ←
  registerOrderedTagAttribute `library_facet "mark a definition as a Lake library facet"
```
