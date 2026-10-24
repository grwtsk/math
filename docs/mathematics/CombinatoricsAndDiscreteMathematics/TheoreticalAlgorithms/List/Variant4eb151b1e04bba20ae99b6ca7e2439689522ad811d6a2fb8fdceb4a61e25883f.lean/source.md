# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.List.Variant4eb151b1e04bba20ae99b6ca7e2439689522ad811d6a2fb8fdceb4a61e25883f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a7c5cc031473856f3675a3647fc3de2c29a5926b` · SHA-256 `5fbb73c02b09990f0ca9dd72fd18fa6fe1eac034bed00d8494d08d011a1b8d11`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Attach.Variant9d4127179da53d3b7fa59204024db7cd5db60e12c24d7be9fb274befca80ce71","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9d4127179da53d3b7fa59204024db7cd5db60e12c24d7be9fb274befca80ce71","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Attach.Variant9d4127179da53d3b7fa59204024db7cd5db60e12c24d7be9fb274befca80ce71","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"9d4127179da53d3b7fa59204024db7cd5db60e12c24d7be9fb274befca80ce71","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/List.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2016 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Init.Data.List.Attach
public import Init.Data.List.Basic
public import Init.Data.List.BasicAux
public import Init.Data.List.Control
public import Init.Data.List.Count
public import Init.Data.List.Erase
public import Init.Data.List.Find
public import Init.Data.List.Impl
public import Init.Data.List.Lemmas
public import Init.Data.List.MinMax
public import Init.Data.List.MinMaxIdx
public import Init.Data.List.MinMaxOn
public import Init.Data.List.Monadic
public import Init.Data.List.Nat
public import Init.Data.List.Int
public import Init.Data.List.Notation
public import Init.Data.List.Pairwise
public import Init.Data.List.Sublist
public import Init.Data.List.TakeDrop
public import Init.Data.List.Zip
public import Init.Data.List.Perm
public import Init.Data.List.Sort
public import Init.Data.List.ToArray
public import Init.Data.List.ToArrayImpl
public import Init.Data.List.MapIdx
public import Init.Data.List.OfFn
public import Init.Data.List.FinRange
public import Init.Data.List.Lex
public import Init.Data.List.Range
public import Init.Data.List.Scan
public import Init.Data.List.ControlImpl
public import Init.Data.List.SplitOn

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Attach.Variant9d4127179da53d3b7fa59204024db7cd5db60e12c24d7be9fb274befca80ce71

```
