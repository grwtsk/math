-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ArrayEquivList.Variant4c66b967f60a82eb422721a11414747a913c3d0afc48d0c7fbc4be37dadcdef4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4c66b967f60a82eb422721a11414747a913c3d0afc48d0c7fbc4be37dadcdef4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ArrayEquivList.Variant4c66b967f60a82eb422721a11414747a913c3d0afc48d0c7fbc4be37dadcdef4","mathematical_subject":"Computation.DataStructures","original_sha256":"4c66b967f60a82eb422721a11414747a913c3d0afc48d0c7fbc4be37dadcdef4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Logic/Equiv/Array.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Mathlib.Data.Vector.Basic
import Mathlib.Logic.Equiv.List

/-!
# Equivalences involving `Array`
-/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ArrayEquivList.Variant4c66b967f60a82eb422721a11414747a913c3d0afc48d0c7fbc4be37dadcdef4

namespace Equiv

/-- The natural equivalence between arrays and lists. -/
def arrayEquivList (α : Type*) : Array α ≃ List α :=
  ⟨Array.toList, Array.mk, fun _ => rfl, fun _ => rfl⟩

end Equiv

/- Porting note: removed instances for what would be ported as `Traversable (Array α)` and
`LawfulTraversable (Array α)`. These would

1. be implemented directly in terms of `Array` functionality for efficiency, rather than being the
traversal of some other type transported along an equivalence to `Array α` (as the traversable
instance for `array` was)

2. belong in `Mathlib/Control/Traversable/Instances.lean` instead of this file. -/

-- namespace Array'

-- open Function

-- variable {n : ℕ}

-- instance : Traversable (Array' n) :=
--   @Equiv.traversable (flip Vector n) _ (fun α => Equiv.vectorEquivArray α n) _

-- instance : LawfulTraversable (Array' n) :=
--   @Equiv.isLawfulTraversable (flip Vector n) _ (fun α => Equiv.vectorEquivArray α n) _ _

-- end Array'

/-- If `α` is encodable, then so is `Array α`. -/
instance Array.encodable {α} [Encodable α] : Encodable (Array α) :=
  Encodable.ofEquiv _ (Equiv.arrayEquivList _)

/-- If `α` is countable, then so is `Array α`. -/
instance Array.countable {α} [Countable α] : Countable (Array α) :=
  Countable.of_equiv _ (Equiv.arrayEquivList α).symm
