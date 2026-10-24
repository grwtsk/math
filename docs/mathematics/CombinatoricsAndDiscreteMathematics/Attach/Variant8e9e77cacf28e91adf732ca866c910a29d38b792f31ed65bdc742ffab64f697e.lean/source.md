# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Attach.Variant8e9e77cacf28e91adf732ca866c910a29d38b792f31ed65bdc742ffab64f697e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `380af2631b5bd1103a713f30b795ffe0813bc1aa` · SHA-256 `999b513685d62dc444b23d5bc921a0354239845de1b84dfc6467003bfde76a7a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.Attach.Variant4fdb01a7ff510914f4940e38fda5281f89b3fc59802d033bf833edef571f3de6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4fdb01a7ff510914f4940e38fda5281f89b3fc59802d033bf833edef571f3de6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.Attach.Variant4fdb01a7ff510914f4940e38fda5281f89b3fc59802d033bf833edef571f3de6","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"4fdb01a7ff510914f4940e38fda5281f89b3fc59802d033bf833edef571f3de6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/Finset/Attach.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2015 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura, Jeremy Avigad, Minchao Wu, Mario Carneiro
-/
module

public import Mathlib.Data.Finset.Defs
public import Mathlib.Data.Multiset.MapFold

/-!
# Attaching a proof of membership to a finite set

## Main declarations

* `Finset.attach`: Given `s : Finset α`, `attach s` forms a finset of elements of the subtype
  `{a // a ∈ s}`; in other words, it attaches elements to a proof of membership in the set.

## Tags

finite sets, finset

-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.Attach.Variant4fdb01a7ff510914f4940e38fda5281f89b3fc59802d033bf833edef571f3de6

@[expose] public section

-- Assert that we define `Finset` without the material on `List.sublists`.
-- Note that we cannot use `List.sublists` itself as that is defined very early.
assert_not_exists List.sublistsLen Multiset.powerset CompleteLattice IsOrderedMonoid

open Multiset Subtype

universe u

variable {α : Type*}

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

@[simp, grind ←]
theorem mem_attach (s : Finset α) : ∀ x, x ∈ s.attach :=
  Multiset.mem_attach _

@[simp, norm_cast]
theorem coe_attach (s : Finset α) : (s.attach : Set s) = Set.univ := by ext; simp

end Finset
```
