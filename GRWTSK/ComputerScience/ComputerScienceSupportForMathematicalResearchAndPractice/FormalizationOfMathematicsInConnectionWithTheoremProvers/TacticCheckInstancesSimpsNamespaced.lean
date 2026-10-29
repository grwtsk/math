-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Wrap.Variantabca5bbcea91527c7ca040aeeef70e57742ab87d7fb77cc5ec3a0e4a5da4ce8f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"abca5bbcea91527c7ca040aeeef70e57742ab87d7fb77cc5ec3a0e4a5da4ce8f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Wrap.Variantabca5bbcea91527c7ca040aeeef70e57742ab87d7fb77cc5ec3a0e4a5da4ce8f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"abca5bbcea91527c7ca040aeeef70e57742ab87d7fb77cc5ec3a0e4a5da4ce8f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/MathlibTest/TacticCheckInstancesSimps.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.Simps


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Wrap.Variantabca5bbcea91527c7ca040aeeef70e57742ab87d7fb77cc5ec3a0e4a5da4ce8f

set_option linter.tacticCheckInstances true

/-!
# Tests for the `tacticCheckInstances` linter on `@[simps]` projections
-/

/-! ## clean projection, no warning expected -/

structure Wrap (α : Type) where
  carrier : List α

#guard_msgs in
@[simps]
def mkWrap (s : List Nat) : Wrap Nat := { carrier := s }

/-! a semireducible alias `.implicit`-ill-typed equation. -/

structure Fn where
  toFun : Nat → Nat

def MyFn : Type := Fn

/--
warning: generated lemma idFn_toFun is not type-correct at `.implicit` transparency; consider marking some of the following as `@[implicit_reducible]`:
  MyFn

Note: This linter can be disabled with `set_option linter.tacticCheckInstances false`
-/
#guard_msgs in
@[simps]
def idFn : MyFn := ({ toFun := id } : Fn)

/-! marking the offender `@[implicit_reducible]` silences the warning -/

set_option allowUnsafeReducibility true
attribute [implicit_reducible] MyFn

#guard_msgs in
@[simps]
def idFn2 : MyFn := ({ toFun := id } : Fn)
