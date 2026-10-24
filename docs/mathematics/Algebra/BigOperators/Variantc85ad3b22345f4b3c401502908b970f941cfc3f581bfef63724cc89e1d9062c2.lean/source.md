# Complete source: GRWTSK.Algebra.BigOperators.Variantc85ad3b22345f4b3c401502908b970f941cfc3f581bfef63724cc89e1d9062c2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `37e5e3195afe58317566c1c52576278bbf8f88f2` · SHA-256 `e9ac8edcbe6a4166250ab06697b2ce660a99e87b177568dded9ec04ab9b7ab50`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.SumMem.Variantfe66fe7023aaa39a72c15b22009a939db62057e724bff842f8bcba85503410d2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fe66fe7023aaa39a72c15b22009a939db62057e724bff842f8bcba85503410d2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.SumMem.Variantfe66fe7023aaa39a72c15b22009a939db62057e724bff842f8bcba85503410d2","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"fe66fe7023aaa39a72c15b22009a939db62057e724bff842f8bcba85503410d2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/Ideal/BigOperators.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kenny Lau, Chris Hughes, Mario Carneiro
-/
import Mathlib.Algebra.Module.Submodule.Basic
import Mathlib.RingTheory.Ideal.Defs

/-!

# Big operators for ideals

This contains some results on the big operators `∑` and `∏` interacting with the `Ideal` type.
-/



namespace GRWTSK.Algebra.SumMem.Variantfe66fe7023aaa39a72c15b22009a939db62057e724bff842f8bcba85503410d2

universe u v w

variable {α : Type u} {β : Type v} {F : Type w}

namespace Ideal

variable [Semiring α] (I : Ideal α) {a b : α}

theorem sum_mem (I : Ideal α) {ι : Type*} {t : Finset ι} {f : ι → α} :
    (∀ c ∈ t, f c ∈ I) → (∑ i ∈ t, f i) ∈ I :=
  Submodule.sum_mem I

end Ideal

```
