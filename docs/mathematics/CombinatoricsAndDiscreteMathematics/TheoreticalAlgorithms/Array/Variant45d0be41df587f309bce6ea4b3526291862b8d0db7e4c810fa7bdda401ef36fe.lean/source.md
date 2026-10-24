# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Array.Variant45d0be41df587f309bce6ea4b3526291862b8d0db7e4c810fa7bdda401ef36fe

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9e1f1c40e7a0b3d440457fd424bb65867d1a639c` · SHA-256 `4ee7ba0c8e4c76078f9b208ab9aa698ea3ad62910f385d70362cf988929bb2a0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Array.Varianted52b7179b4acdb25b1e6cce1445ade9afedf1fb8c109a5fad7442c2b7c740a5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ed52b7179b4acdb25b1e6cce1445ade9afedf1fb8c109a5fad7442c2b7c740a5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Array.Varianted52b7179b4acdb25b1e6cce1445ade9afedf1fb8c109a5fad7442c2b7c740a5","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"ed52b7179b4acdb25b1e6cce1445ade9afedf1fb8c109a5fad7442c2b7c740a5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Array.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gabriel Ebner
-/
module

prelude
public import Init.Data.Array.Basic
public import Init.Data.Array.QSort
public import Init.Data.Array.BinSearch
public import Init.Data.Array.InsertionSort
public import Init.Data.Array.DecidableEq
public import Init.Data.Array.Mem
public import Init.Data.Array.Attach
public import Init.Data.Array.BasicAux
public import Init.Data.Array.Lemmas
public import Init.Data.Array.TakeDrop
public import Init.Data.Array.Bootstrap
public import Init.Data.Array.GetLit
public import Init.Data.Array.MapIdx
public import Init.Data.Array.Set
public import Init.Data.Array.Monadic
public import Init.Data.Array.FinRange
public import Init.Data.Array.Perm
public import Init.Data.Array.Find
public import Init.Data.Array.Lex
public import Init.Data.Array.Range
public import Init.Data.Array.Erase
public import Init.Data.Array.Zip
public import Init.Data.Array.InsertIdx
public import Init.Data.Array.Extract
public import Init.Data.Array.MinMax
public import Init.Data.Array.Nat
public import Init.Data.Array.Int
public import Init.Data.Array.Count
public import Init.Data.Array.Sort

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Array.Varianted52b7179b4acdb25b1e6cce1445ade9afedf1fb8c109a5fad7442c2b7c740a5

```
