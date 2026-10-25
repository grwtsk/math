# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BasicAux.Variant0a0f34cd3d7e6108b22644af0ebd42a3add9c511a0b8d72808c10f36d8c1421e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0e4f17d8535e391961e9959fe1730439e3a1a002` · SHA-256 `8f08d8e69621c27f30e1a8102e73ae549f45f075ea06810fc997a03e1016b23f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Util.Variantfd7bfa5f3247c5a6ac558e6f00f21c8cb50704ad14099f914362b7edeb02f9cf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fd7bfa5f3247c5a6ac558e6f00f21c8cb50704ad14099f914362b7edeb02f9cf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Util.Variantfd7bfa5f3247c5a6ac558e6f00f21c8cb50704ad14099f914362b7edeb02f9cf","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"fd7bfa5f3247c5a6ac558e6f00f21c8cb50704ad14099f914362b7edeb02f9cf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Option/BasicAux.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Init.Util


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Util.Variantfd7bfa5f3247c5a6ac558e6f00f21c8cb50704ad14099f914362b7edeb02f9cf

public section

universe u

namespace Option

/--
Extracts the value from an `Option`, panicking on `none`.
-/
@[inline, expose] def get! {α : Type u} [Inhabited α] : Option α → α
  | some x => x
  | none   => panic! "value is none"

end Option
```
