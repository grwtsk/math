# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lang.Variant472a645e741c3fb81d255358be7ed5c0a70657470dbadac83febe4d520dd11cd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cf593c0e38328b6f669fd13133635e674f0a3984` · SHA-256 `4a7fe95e4bd9f0c9a83c3653be8ca3dcf3408b360a9b7650f8cc7774119fcc08`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ConfigLang.Variante6ef4fbd7e71a3e3f61138ab0ac75a088236c2025f283284dbf7e8f5dfa306be","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e6ef4fbd7e71a3e3f61138ab0ac75a088236c2025f283284dbf7e8f5dfa306be","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.ConfigLang.Variante6ef4fbd7e71a3e3f61138ab0ac75a088236c2025f283284dbf7e8f5dfa306be","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"e6ef4fbd7e71a3e3f61138ab0ac75a088236c2025f283284dbf7e8f5dfa306be","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/Config/Lang.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Init.Data.ToString.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ConfigLang.Variante6ef4fbd7e71a3e3f61138ab0ac75a088236c2025f283284dbf7e8f5dfa306be

namespace Lake

/-- Lake configuration language identifier. -/
public inductive ConfigLang
| lean | toml
deriving Repr, DecidableEq

/-- Lake's default configuration language. -/
public abbrev ConfigLang.default : ConfigLang := .toml

public instance : Inhabited ConfigLang := ⟨.default⟩

public def ConfigLang.ofString? : String → Option ConfigLang
| "lean" => some .lean
| "toml" => some .toml
| _ => none

public def ConfigLang.fileExtension : ConfigLang → String
| .lean => "lean"
| .toml => "toml"

public instance : ToString ConfigLang := ⟨ConfigLang.fileExtension⟩
```
