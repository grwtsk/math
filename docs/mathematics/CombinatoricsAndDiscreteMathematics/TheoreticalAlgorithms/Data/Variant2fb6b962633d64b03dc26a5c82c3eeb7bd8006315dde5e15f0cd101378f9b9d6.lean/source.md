# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Data.Variant2fb6b962633d64b03dc26a5c82c3eeb7bd8006315dde5e15f0cd101378f9b9d6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e5d2dbaaefcfee984d22c3b446f63e83e596e55c` · SHA-256 `5aae023c9d4c055f6ebddb41dd13191ed272c7a13fe114d2554ba2e165439468`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Nat.Variant311534fd0817a5ac11b40c8acd2192431295909336b040653dc761a88b32cd64","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"311534fd0817a5ac11b40c8acd2192431295909336b040653dc761a88b32cd64","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Nat.Variant311534fd0817a5ac11b40c8acd2192431295909336b040653dc761a88b32cd64","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"311534fd0817a5ac11b40c8acd2192431295909336b040653dc761a88b32cd64","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2016 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Init.Data.Nat
public import Init.Data.Bool
public import Init.Data.BitVec
public import Init.Data.Cast
public import Init.Data.Char
public import Init.Data.String
public import Init.Data.List
public import Init.Data.Int
public import Init.Data.Array
public import Init.Data.Array.Subarray.Split
public import Init.Data.ByteArray
public import Init.Data.FloatArray
public import Init.Data.Fin
public import Init.Data.UInt
public import Init.Data.SInt
public import Init.Data.Float
public import Init.Data.Option
public import Init.Data.Ord
public import Init.Data.Random
public import Init.Data.ToString
public import Init.Data.Range
public import Init.Data.Hashable
public import Init.Data.LawfulHashable
public import Init.Data.OfScientific
public import Init.Data.Format
public import Init.Data.Stream
public import Init.Data.Prod
public import Init.Data.AC
public import Init.Data.Queue
public import Init.Data.Sum
public import Init.Data.BEq
public import Init.Data.Subtype
public import Init.Data.ULift
public import Init.Data.PLift
public import Init.Data.Zero
public import Init.Data.NeZero
public import Init.Data.Function
public import Init.Data.RArray
public import Init.Data.Vector
public import Init.Data.Iterators
public import Init.Data.Range.Polymorphic
public import Init.Data.Slice
public import Init.Data.Order
public import Init.Data.Rat
public import Init.Data.Dyadic

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Nat.Variant311534fd0817a5ac11b40c8acd2192431295909336b040653dc761a88b32cd64

```
