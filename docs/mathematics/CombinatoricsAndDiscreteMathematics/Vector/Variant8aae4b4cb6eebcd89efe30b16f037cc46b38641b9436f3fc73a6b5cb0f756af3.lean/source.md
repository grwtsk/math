# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Vector.Variant8aae4b4cb6eebcd89efe30b16f037cc46b38641b9436f3fc73a6b5cb0f756af3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0605b7aa1ab46cd8dc4e8b6dbb5426258b13cb7c` · SHA-256 `b88d9f77d751693e594344a1c8bbeef29c4cc586f601bebd6157d86f443bbb02`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.Pi.Variant06c265de53ff390f5f6c61405db4daf8f5c936c2bdc78b6bf0c57ae4049931b6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"06c265de53ff390f5f6c61405db4daf8f5c936c2bdc78b6bf0c57ae4049931b6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.Pi.Variant06c265de53ff390f5f6c61405db4daf8f5c936c2bdc78b6bf0c57ae4049931b6","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"06c265de53ff390f5f6c61405db4daf8f5c936c2bdc78b6bf0c57ae4049931b6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Fintype/Vector.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Sym.Basic

/-!
# `Vector α n` and `Sym α n` are fintypes when `α` is.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.Pi.Variant06c265de53ff390f5f6c61405db4daf8f5c936c2bdc78b6bf0c57ae4049931b6

open List (Vector)

variable {α : Type*}

instance Vector.fintype [Fintype α] {n : ℕ} : Fintype (List.Vector α n) :=
  Fintype.ofEquiv _ (Equiv.vectorEquivFin _ _).symm

instance [DecidableEq α] [Fintype α] {n : ℕ} : Fintype (Sym.Sym' α n) :=
  Quotient.fintype _

instance [DecidableEq α] [Fintype α] {n : ℕ} : Fintype (Sym α n) :=
  Fintype.ofEquiv _ Sym.symEquivSym'.symm
```
