# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PPContext.Variant96471665c375dd83fa3898e282c30593aaf274adcfe385f0f9c4f836bded83b2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b7826b0e2764a28dc154973c437be824b491980c` · SHA-256 `c6f50cc39eb3d80138a89995c1734dd0a161796e41ffcbcdb23ce30061de8635`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PPContext.Variantdf234f43283109cfc9519850534ebd9e7bcfcf0947073a0751b07caca1096566","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"df234f43283109cfc9519850534ebd9e7bcfcf0947073a0751b07caca1096566","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.PPContext.Variantdf234f43283109cfc9519850534ebd9e7bcfcf0947073a0751b07caca1096566","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"df234f43283109cfc9519850534ebd9e7bcfcf0947073a0751b07caca1096566","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Data/PPContext.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Author: Leonardo de Moura
-/
module

prelude
public import Lean.Data.OpenDecl
public import Lean.Environment
public import Lean.MetavarContext


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PPContext.Variantdf234f43283109cfc9519850534ebd9e7bcfcf0947073a0751b07caca1096566

public section

namespace Lean

/-- Saved context for pretty printing. See `Lean.ppExt`. -/
structure PPContext where
  env           : Environment
  mctx          : MetavarContext := {}
  lctx          : LocalContext := {}
  opts          : Options := {}
  currNamespace : Name := Name.anonymous
  openDecls     : List OpenDecl := []

end Lean
```
