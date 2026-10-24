-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Multiset.Variant21c2193d6013bb02cfaed393bde4729670a452dc7294655972e8471d8a51700a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"21c2193d6013bb02cfaed393bde4729670a452dc7294655972e8471d8a51700a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.Multiset.Variant21c2193d6013bb02cfaed393bde4729670a452dc7294655972e8471d8a51700a","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"21c2193d6013bb02cfaed393bde4729670a452dc7294655972e8471d8a51700a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/Multiset/OrderedMonoid.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2015 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
module

public import Mathlib.Algebra.Order.Group.Multiset
public import Mathlib.Algebra.Order.Monoid.Canonical.Defs

/-!
# Multisets as ordered monoids

The `IsOrderedCancelAddMonoid` and `CanonicallyOrderedAdd` instances on `Multiset α`

-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Multiset.Variant21c2193d6013bb02cfaed393bde4729670a452dc7294655972e8471d8a51700a

public section

variable {α : Type*}

namespace Multiset

instance : IsOrderedCancelAddMonoid (Multiset α) where
  add_le_add_left := fun _ _ => add_le_add_left
  le_of_add_le_add_left := fun _ _ _ => le_of_add_le_add_left

instance : CanonicallyOrderedAdd (Multiset α) where
  le_add_self := le_add_left
  le_self_add := le_add_right
  exists_add_of_le h := exists_add_of_le h

end Multiset
