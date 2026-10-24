# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Instances.Variant8a932958f331aa5741ce967bff63580046c71532db3dae99ecf1d053c35d0c57

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dab58f417df577b57d4cb5441e0bbaeeb6010e4b` · SHA-256 `ea04a4d178e9b19ba8e70781ff98e393153f95ff6f42854c1b97bd3f88eae78b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DListListEquivDList.Variant1e19427b9ea8001d35d8761a212add0f2eb081e83b2b6e07e439377e8e72bad0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1e19427b9ea8001d35d8761a212add0f2eb081e83b2b6e07e439377e8e72bad0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.DListListEquivDList.Variant1e19427b9ea8001d35d8761a212add0f2eb081e83b2b6e07e439377e8e72bad0","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"1e19427b9ea8001d35d8761a212add0f2eb081e83b2b6e07e439377e8e72bad0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/DList/Instances.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Simon Hudon. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Simon Hudon
-/
module

public import Batteries.Data.DList.Lemmas
public import Mathlib.Control.Traversable.Equiv
public import Mathlib.Control.Traversable.Instances

/-!
# Traversable instance for DLists

This file provides the equivalence between `List α` and `DList α` and the traversable instance
for `DList`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DListListEquivDList.Variant1e19427b9ea8001d35d8761a212add0f2eb081e83b2b6e07e439377e8e72bad0

@[expose] public section


open Equiv

namespace Batteries

variable (α : Type*)

/-- The natural equivalence between lists and difference lists, using
`DList.ofList` and `DList.toList`. -/
def DList.listEquivDList : List α ≃ DList α where
  toFun := DList.ofList
  invFun := DList.toList
  left_inv _ := DList.toList_ofList _
  right_inv _ := DList.ofList_toList _

instance : Traversable DList :=
  Equiv.traversable DList.listEquivDList

instance : LawfulTraversable DList :=
  Equiv.isLawfulTraversable DList.listEquivDList

end Batteries
```
