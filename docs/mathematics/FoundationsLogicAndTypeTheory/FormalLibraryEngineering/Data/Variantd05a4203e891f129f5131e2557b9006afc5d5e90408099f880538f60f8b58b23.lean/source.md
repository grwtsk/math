# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Data.Variantd05a4203e891f129f5131e2557b9006afc5d5e90408099f880538f60f8b58b23

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `47266ed32507357e7a3a4aca2e9a78969b86f1c4` · SHA-256 `a706eb74eced90e681cfa37e40cdab62d1a6c60152b6f8ab9b0d9db7914df851`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AssocList.Variantafcc8aa2184d0f738e9ff38c955a6bc20a1b506ee54505191111889461bdf9ae","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"afcc8aa2184d0f738e9ff38c955a6bc20a1b506ee54505191111889461bdf9ae","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.AssocList.Variantafcc8aa2184d0f738e9ff38c955a6bc20a1b506ee54505191111889461bdf9ae","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"afcc8aa2184d0f738e9ff38c955a6bc20a1b506ee54505191111889461bdf9ae","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Data.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Sebastian Ullrich. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Ullrich
-/
module

prelude
public import Lean.Data.AssocList
public import Lean.Data.Format
public import Lean.Data.Json
public import Lean.Data.JsonRpc
public import Lean.Data.KVMap
public import Lean.Data.LBool
public import Lean.Data.LOption
public import Lean.Data.Lsp
public import Lean.Data.Name
public import Lean.Data.NameMap
public import Lean.Data.OpenDecl
public import Lean.Data.Options
public import Lean.Data.PersistentArray
public import Lean.Data.PersistentHashMap
public import Lean.Data.PersistentHashSet
public import Lean.Data.Position
public import Lean.Data.PrefixTree
public import Lean.Data.SMap
public import Lean.Data.Trie
public import Lean.Data.NameTrie
public import Lean.Data.RBTree -- deprecated_module: ignore
public import Lean.Data.RBMap -- deprecated_module: ignore
public import Lean.Data.RArray
public import Lean.Data.Iterators

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AssocList.Variantafcc8aa2184d0f738e9ff38c955a6bc20a1b506ee54505191111889461bdf9ae

```
