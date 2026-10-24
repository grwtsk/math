# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Attach.Variant837658a701cdcf0e22163b4b522104b000cc8c6b806d28aa5240648ee05a18ca

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d183637ea807dccfdeabc6da18a6fcbd19a7a09d` · SHA-256 `cf3b670372e40208f0bff863a3bf6c0f0bdd87bfd5cab6936727c7e83bc1440f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.Attach.Variant7edf23324f690666c76251ef98c3a51fd47a5ada3cdb6750e819c16fe98cabbe","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7edf23324f690666c76251ef98c3a51fd47a5ada3cdb6750e819c16fe98cabbe","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.Attach.Variant7edf23324f690666c76251ef98c3a51fd47a5ada3cdb6750e819c16fe98cabbe","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"7edf23324f690666c76251ef98c3a51fd47a5ada3cdb6750e819c16fe98cabbe","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Finset/Attach.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2015 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura, Jeremy Avigad, Minchao Wu, Mario Carneiro
-/
import Mathlib.Data.Finset.Defs
import Mathlib.Data.Multiset.MapFold

/-!
# Attaching a proof of membership to a finite set

## Main declarations

* `Finset.attach`: Given `s : Finset α`, `attach s` forms a finset of elements of the subtype
  `{a // a ∈ s}`; in other words, it attaches elements to a proof of membership in the set.

## Tags

finite sets, finset

-/

-- Assert that we define `Finset` without the material on `List.sublists`.
-- Note that we cannot use `List.sublists` itself as that is defined very early.

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.Attach.Variant7edf23324f690666c76251ef98c3a51fd47a5ada3cdb6750e819c16fe98cabbe

assert_not_exists List.sublistsLen Multiset.powerset CompleteLattice OrderedCommMonoid

open Multiset Subtype Function

universe u

variable {α : Type*} {β : Type*} {γ : Type*}

namespace Finset

-- TODO: these should be global attributes, but this will require fixing other files
attribute [local trans] Subset.trans Superset.trans

/-! ### attach -/

/-- `attach s` takes the elements of `s` and forms a new set of elements of the subtype
`{x // x ∈ s}`. -/
def attach (s : Finset α) : Finset { x // x ∈ s } :=
  ⟨Multiset.attach s.1, nodup_attach.2 s.2⟩

@[simp]
theorem attach_val (s : Finset α) : s.attach.1 = s.1.attach :=
  rfl

@[simp]
theorem mem_attach (s : Finset α) : ∀ x, x ∈ s.attach :=
  Multiset.mem_attach _

@[simp, norm_cast]
theorem coe_attach (s : Finset α) : s.attach.toSet = Set.univ := by ext; simp

end Finset
```
