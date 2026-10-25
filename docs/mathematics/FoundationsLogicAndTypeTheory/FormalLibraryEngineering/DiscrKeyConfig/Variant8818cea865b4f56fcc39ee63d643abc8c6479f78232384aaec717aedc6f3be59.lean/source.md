# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DiscrKeyConfig.Variant8818cea865b4f56fcc39ee63d643abc8c6479f78232384aaec717aedc6f3be59

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a026f2d1062e0b235e5ec6f4a3e16bccf67dbcc6` · SHA-256 `2373b127ebd8a1db02b449c993c1d84cba9e4bfe6c0ad6af6be2ae23c71405c9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IndexConfig.Variantef5f590ee1ce5dcc77a3719719b91ef587655bd21e2076b2526c9509d620bbdb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ef5f590ee1ce5dcc77a3719719b91ef587655bd21e2076b2526c9509d620bbdb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.IndexConfig.Variantef5f590ee1ce5dcc77a3719719b91ef587655bd21e2076b2526c9509d620bbdb","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"ef5f590ee1ce5dcc77a3719719b91ef587655bd21e2076b2526c9509d620bbdb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/Index/DiscrKeyConfig.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Lean


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IndexConfig.Variantef5f590ee1ce5dcc77a3719719b91ef587655bd21e2076b2526c9509d620bbdb

open Lean Lean.Meta

namespace Aesop

/-- The configuration used by all Aesop indices. -/
-- I don't really know what I'm doing here. I'm just copying the config used
-- by `simp`; see `Meta/Simp/Types.lean:mkIndexConfig`.
def indexConfig : ConfigWithKey :=
  ({ proj := .no, transparency := .reducible : Config }).toConfigWithKey

def mkDiscrTreePath (e : Expr) : MetaM (Array DiscrTree.Key) :=
  withConfigWithKey indexConfig $ DiscrTree.mkPath e

def getUnify (t : DiscrTree α) (e : Expr) : MetaM (Array α) :=
  withConfigWithKey indexConfig $ t.getUnify e

def getMatch (t : DiscrTree α) (e : Expr) : MetaM (Array α) :=
  withConfigWithKey indexConfig $ t.getMatch e

end Aesop
```
