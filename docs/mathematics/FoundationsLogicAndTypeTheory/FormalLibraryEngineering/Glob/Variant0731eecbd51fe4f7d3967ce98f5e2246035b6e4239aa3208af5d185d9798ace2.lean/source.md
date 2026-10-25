# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Glob.Variant0731eecbd51fe4f7d3967ce98f5e2246035b6e4239aa3208af5d185d9798ace2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6d1dcbb8b184ebd408dfb07da67c41bf9bf8fc1d` · SHA-256 `9ea80659e334e0d8afe9890b736f5225f8a2e1b9272a72ca85ceb95b5c60b221`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Glob.Variant2b6e32b01a286c7be5763e0a76bd026b955f8b2f78405b0650479a1a41bc6e7d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2b6e32b01a286c7be5763e0a76bd026b955f8b2f78405b0650479a1a41bc6e7d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.Glob.Variant2b6e32b01a286c7be5763e0a76bd026b955f8b2f78405b0650479a1a41bc6e7d","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"2b6e32b01a286c7be5763e0a76bd026b955f8b2f78405b0650479a1a41bc6e7d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/Config/Glob.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Mac Malone
-/
module

prelude
public import Lean.Util.Path
import Init.Data.ToString.Name
import Lean.Data.Name


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Glob.Variant2b6e32b01a286c7be5763e0a76bd026b955f8b2f78405b0650479a1a41bc6e7d

open Lean (Name)
open System (FilePath)

namespace Lake

/-- A specification of a set of module names. -/
public inductive Glob
  /-- Selects just the specified module name. -/
  | one : Name → Glob
  /-- Selects all submodules of the specified module, but not the module itself. -/
  | submodules : Name → Glob
  /-- Selects the specified module and all submodules. -/
  | andSubmodules : Name → Glob
deriving Inhabited, Repr, DecidableEq

public instance : Coe Name Glob := ⟨Glob.one⟩
public instance : Coe Glob (Array Glob) := ⟨Array.singleton⟩

/-- A name glob which matches all names with the prefix, including itself. -/
scoped macro:max n:name noWs ".*" : term =>
  ``(Glob.andSubmodules $(⟨Lean.mkNode `Lean.Parser.Term.quotedName #[n]⟩))

/-- A name glob which matches all names with the prefix, but not the prefix itself. -/
scoped macro:max n:name noWs ".+" : term =>
  ``(Glob.submodules $(⟨Lean.mkNode `Lean.Parser.Term.quotedName #[n]⟩))

namespace Glob

public protected def toString : Glob → String
| .one n => n.toString
| .submodules n => n.toString ++ ".+"
| .andSubmodules n => n.toString ++ ".*"

public instance : ToString Glob := ⟨Glob.toString⟩

public def «matches» (m : Name) : (self : Glob) → Bool
| one n => n == m
| submodules n => n.isPrefixOf m && n != m
| andSubmodules n => n.isPrefixOf m

@[inline] public nonrec def forEachModuleIn [Monad m] [MonadLiftT IO m]
(dir : FilePath) (f : Name → m PUnit) : (self : Glob) → m PUnit
| one n => f n
| submodules n =>
  Lean.forEachModuleInDir (Lean.modToFilePath dir n "") (f <| n ++ ·)
| andSubmodules n =>
  f n *> Lean.forEachModuleInDir (Lean.modToFilePath dir n "") (f <| n ++ ·)
```
