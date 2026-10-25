# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WorkspaceConfig.Variante72a20d84df7d140b049c4c0cb95a4730095bcd00eb9981eee031735b5f2a776

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a0e4149be1614a1d96471c52c3cb583ea354c16b` · SHA-256 `cd8629be64ddc147b2f3cf1fe7bf59db8152faef5a5cc08e0787aac1c7664de0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Defaults.Variant08d25cf06eb950ecbe593b81ca1d6e467437e0fc7e415520c3bed16c3af410d7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"08d25cf06eb950ecbe593b81ca1d6e467437e0fc7e415520c3bed16c3af410d7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.Defaults.Variant08d25cf06eb950ecbe593b81ca1d6e467437e0fc7e415520c3bed16c3af410d7","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"08d25cf06eb950ecbe593b81ca1d6e467437e0fc7e415520c3bed16c3af410d7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/Config/WorkspaceConfig.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lake.Config.Defaults
public import Lake.Config.MetaClasses
meta import all Lake.Config.Meta
import Lake.Config.Meta


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Defaults.Variant08d25cf06eb950ecbe593b81ca1d6e467437e0fc7e415520c3bed16c3af410d7

open System
namespace Lake

/-- A `Workspace`'s declarative configuration. -/
public configuration WorkspaceConfig where
  /--
  The directory to which Lake should download remote dependencies.
  Defaults to `defaultPackagesDir` (i.e., `.lake/packages`).
  -/
  packagesDir : FilePath := defaultPackagesDir
  deriving Inhabited, Repr
```
