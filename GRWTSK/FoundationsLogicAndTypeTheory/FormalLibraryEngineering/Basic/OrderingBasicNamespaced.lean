-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Compares.Variant756980fb80d6147f7a0586a5b073612ff16aa0bcc3f813bed8f52b679896108f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"756980fb80d6147f7a0586a5b073612ff16aa0bcc3f813bed8f52b679896108f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Compares.Variant756980fb80d6147f7a0586a5b073612ff16aa0bcc3f813bed8f52b679896108f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"756980fb80d6147f7a0586a5b073612ff16aa0bcc3f813bed8f52b679896108f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Ordering/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2016 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
import Batteries.Tactic.Alias
import Mathlib.Tactic.Lemma
import Mathlib.Tactic.TypeStar

/-!
# Helper definitions and instances for `Ordering`
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Compares.Variant756980fb80d6147f7a0586a5b073612ff16aa0bcc3f813bed8f52b679896108f

universe u

deriving instance Repr for Ordering

namespace Ordering

variable {α : Type*}

/-- `Compares o a b` means that `a` and `b` have the ordering relation `o` between them, assuming
that the relation `a < b` is defined. -/
def Compares [LT α] : Ordering → α → α → Prop
  | lt, a, b => a < b
  | eq, a, b => a = b
  | gt, a, b => a > b

@[simp] lemma compares_lt [LT α] (a b : α) : Compares lt a b = (a < b) := rfl

@[simp] lemma compares_eq [LT α] (a b : α) : Compares eq a b = (a = b) := rfl

@[simp] lemma compares_gt [LT α] (a b : α) : Compares gt a b = (a > b) := rfl

/-- `o₁.dthen fun h => o₂(h)` is like `o₁.then o₂` but `o₂` is allowed to depend on
`h : o₁ = .eq`. -/
@[macro_inline] def dthen :
    (o : Ordering) → (o = .eq → Ordering) → Ordering
  | .eq, f => f rfl
  | o, _ => o

end Ordering

/--
Lift a decidable relation to an `Ordering`,
assuming that incomparable terms are `Ordering.eq`.
-/
def cmpUsing {α : Type u} (lt : α → α → Prop) [DecidableRel lt] (a b : α) : Ordering :=
  if lt a b then Ordering.lt else if lt b a then Ordering.gt else Ordering.eq

/--
Construct an `Ordering` from a type with a decidable `LT` instance,
assuming that incomparable terms are `Ordering.eq`.
-/
def cmp {α : Type u} [LT α] [DecidableLT α] (a b : α) : Ordering :=
  cmpUsing (· < ·) a b
