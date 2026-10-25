# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InputFile.Variantdf3124bb23bf759bc63d7f98d86baef78165e0c8e709f37328d02095692e2046

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a9c772f6c78a67388d9d8a2ff855ab99e93ee18c` · SHA-256 `a79fe5e915a50086dcd71ee7d82a3ff6f8c2ef892ecc9ead67602c4dcf6dbcff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InputFile.Variant66723f09d2cf656fa85aea5ea52cc293bdb1cee828e6c81384c5f4762e5d26bc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"66723f09d2cf656fa85aea5ea52cc293bdb1cee828e6c81384c5f4762e5d26bc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.InputFile.Variant66723f09d2cf656fa85aea5ea52cc293bdb1cee828e6c81384c5f4762e5d26bc","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"66723f09d2cf656fa85aea5ea52cc293bdb1cee828e6c81384c5f4762e5d26bc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/Config/InputFile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lake.Config.ConfigTarget


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InputFile.Variant66723f09d2cf656fa85aea5ea52cc293bdb1cee828e6c81384c5f4762e5d26bc

namespace Lake
open Lean System

/-- An input file -- its package plus its configuration. -/
public abbrev InputFile := ConfigTarget InputFile.configKind

/--
The full path to the input file.
That is, the package's `dir` joined with the file's `path`.
-/
@[inline] public def InputFile.path (self : InputFile) : FilePath :=
  self.pkg.dir / self.config.path

/-- Whether this is a text file. -/
@[inline] public def InputFile.text (self : InputFile) : Bool :=
  self.config.text

/-- An input directory -- its package plus its configuration. -/
public abbrev InputDir := ConfigTarget InputDir.configKind

/--
The full path to the input file.
That is, the package's `dir` joined with the file's `path`.
-/
@[inline] public def InputDir.path (self : InputDir) : FilePath :=
  self.pkg.dir / self.config.path

/-- Whether this directory contains text files. -/
@[inline] public def InputDir.text (self : InputDir) : Bool :=
  self.config.text

/-- The file inclusion filter function for the input directory. -/
@[inline] public def InputDir.filter (self : InputDir) : FilePath → Bool :=
  self.config.filter.matches
```
