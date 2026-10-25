# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lemmas.Variantb93cd74c3e63a604a25db5a3d720b35200f7cdae6c86a655d341e1d51537afc6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4025d5cc3ee63e589be723913e0e7939f374e073` · SHA-256 `41e581c6d7e37fc3b53a765ca926f2f79634c68b3a6e6d40b58074cf62a763b0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceUnit.Varianta26e98663dbc0a4e2b2eca0e868275a7536f1bbb1a0d0948f3c0802ff758fbc5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a26e98663dbc0a4e2b2eca0e868275a7536f1bbb1a0d0948f3c0802ff758fbc5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SourceUnit.Varianta26e98663dbc0a4e2b2eca0e868275a7536f1bbb1a0d0948f3c0802ff758fbc5","mathematical_subject":"Foundations.Unclassified","original_sha256":"a26e98663dbc0a4e2b2eca0e868275a7536f1bbb1a0d0948f3c0802ff758fbc5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Data/Option/Init/Lemmas.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceUnit.Varianta26e98663dbc0a4e2b2eca0e868275a7536f1bbb1a0d0948f3c0802ff758fbc5

namespace Option

/-!
# Bootstrapping theorems for Option

These are theorems used in the definitions of `Std.Data.List.Basic`.
New theorems should be added to `Std.Data.Option.Lemmas` if they are not needed by the bootstrap.
-/

@[simp] theorem getD_none : getD none a = a := rfl
@[simp] theorem getD_some : getD (some a) b = a := rfl

@[simp] theorem map_none' (f : α → β) : none.map f = none := rfl
@[simp] theorem map_some' (a) (f : α → β) : (some a).map f = some (f a) := rfl

@[simp] theorem none_bind (f : α → Option β) : none.bind f = none := rfl
@[simp] theorem some_bind (a) (f : α → Option β) : (some a).bind f = f a := rfl
```
