# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Dynlib.Variantd90e34cbf16cc3ca4aa38572476f3c3a58d705efc0cbe1451af73689cecb536a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a8a8967a433e4939abc2634a3633385cff9cb061` · SHA-256 `8510d7992adbf7a479c2276cad5e16ea6bf0d506dbd31b623cd97bc46aa9f454`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Dynlib.Variant513eee708700cf537f7ca8d35987ef1c165b74163036132721221c546f5b2293","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"513eee708700cf537f7ca8d35987ef1c165b74163036132721221c546f5b2293","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.Dynlib.Variant513eee708700cf537f7ca8d35987ef1c165b74163036132721221c546f5b2293","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"513eee708700cf537f7ca8d35987ef1c165b74163036132721221c546f5b2293","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/Config/Dynlib.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lake.Config.OutFormat


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Dynlib.Variant513eee708700cf537f7ca8d35987ef1c165b74163036132721221c546f5b2293

open System Lean

namespace Lake

/-- A dynamic/shared library artifact for linking. -/
public structure Dynlib where
  /-- Library file path. -/
  path : FilePath
  /-- Library name without any platform-specific prefix/suffix (for `-l`). -/
  name : String
  /-- Whether this library can be loaded as a plugin. -/
  plugin := false
  /--
  Transitive dependencies of this library for situations that need them
  (e.g., linking on Windows, loading via `lean`).
  -/
  deps : Array Dynlib := #[]
  /--
  Non-link transitive dependencies of this library that are only required
  at runtime (e.g., libraries loaded dynamically via `dlopen`). Used by Lake
  to preload such dependencies for `lean` elaboration when precompiling.
  -/
  runtimeOnlyDeps : Array Dynlib := #[]
  deriving Inhabited, Repr

namespace Dynlib

/-- Optional library directory (for `-L`). -/
public def dir? (self : Dynlib) : Option FilePath :=
  self.path.parent

public instance : ToJson Dynlib := ⟨(·.path.toString)⟩
public instance : ToString Dynlib := ⟨(·.path.toString)⟩
public instance : Coe Dynlib FilePath := ⟨(·.path)⟩
```
