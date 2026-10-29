-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.JointReadout.Varianta4c24a651051d5ffc7917e71b901fe75353a3f81b8106bea91740ed053eb7107","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a4c24a651051d5ffc7917e71b901fe75353a3f81b8106bea91740ed053eb7107","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.JointReadout.Varianta4c24a651051d5ffc7917e71b901fe75353a3f81b8106bea91740ed053eb7107","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"a4c24a651051d5ffc7917e71b901fe75353a3f81b8106bea91740ed053eb7107","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/FormalResearch/RiemannHypothesis/SourceSchedulingReconstruction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Algebra.Order.BigOperators.Group.List
import Mathlib.Algebra.Order.Group.Abs
import Mathlib.Data.List.Nodup
import Mathlib.Tactic.NormNum

/-!
# Complete nested-list reconstruction and joint cancellation budgets

CSE-RH16-20261007, finite adapter for issue #331.
Research direction: grwtsk contributors. Finite proof adapters: OpenAI Codex.
The input permutation witnesses exact coverage with multiplicities. Sum and
fold identities do not assume `Nodup`; when the source inventory is duplicate
free, the same witness proves duplicate-free blocks and pairwise disjointness.
Cancellation is evaluated within each complete block before absolute values.
This adapter alone supplies no arithmetic uniform estimate or RH proof.
-/


namespace GRWTSK.Algebra.JointReadout.Varianta4c24a651051d5ffc7917e71b901fe75353a3f81b8106bea91740ed053eb7107

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceSchedulingReconstruction

variable {α β : Type*}

/-- A block retains the signed contribution of every atom in its input list. -/
def jointReadout [AddCommMonoid β] (work : α → β) (block : List α) : β :=
  (block.map work).sum

/-- Exact coverage preserves the multiplicity of each source atom. -/
theorem coverage_count_eq [DecidableEq α] (source : List α) (blocks : List (List α))
    (hcover : blocks.flatten.Perm source) (atom : α) :
    blocks.flatten.count atom = source.count atom :=
  hcover.count_eq atom

/-- A duplicate-free source makes each block duplicate free and the blocks disjoint. -/
theorem covered_blocks_nodup_disjoint (source : List α) (blocks : List (List α))
    (hcover : blocks.flatten.Perm source) (hsource : source.Nodup) :
    (∀ block ∈ blocks, block.Nodup) ∧ blocks.Pairwise List.Disjoint :=
  List.nodup_flatten.mp (hcover.symm.nodup hsource)

/-- Flattening and summing equals summing complete block readouts, including empty blocks. -/
theorem flatten_work_sum [AddCommMonoid β] (work : α → β) (blocks : List (List α)) :
    (blocks.flatten.map work).sum = (blocks.map (jointReadout work)).sum := by
  rw [List.map_flatten, List.sum_flatten]
  simp only [List.map_map, Function.comp_def]
  rfl

/-- Exact nested-list coverage reconstructs the source sum without a uniqueness hypothesis. -/
theorem source_eq_block_sum [AddCommMonoid β] (work : α → β)
    (source : List α) (blocks : List (List α)) (hcover : blocks.flatten.Perm source) :
    (source.map work).sum = (blocks.map (jointReadout work)).sum := by
  rw [← flatten_work_sum work blocks]
  exact (hcover.map work).sum_eq.symm

/-- The native source fold agrees with the fold of complete block readouts. -/
theorem source_fold_eq_block_fold [AddCommMonoid β] (work : α → β)
    (source : List α) (blocks : List (List α)) (hcover : blocks.flatten.Perm source) :
    (source.map work).foldl (· + ·) 0 =
      (blocks.map (jointReadout work)).foldl (· + ·) 0 := by
  simpa only [List.sum_eq_foldl] using source_eq_block_sum work source blocks hcover

section Ordered

variable [AddCommGroup β] [LinearOrder β] [IsOrderedAddMonoid β]

/-- The list triangle bound is applied to signed joint readouts. -/
theorem abs_list_sum_le (values : List β) :
    |values.sum| ≤ (values.map abs).sum := by
  induction values with
  | nil => simp
  | cons value values ih =>
      simp only [List.sum_cons, List.map_cons]
      exact (abs_add_le value values.sum).trans (add_le_add_right ih |value|)

/-- Absolute values are taken after each block's internal cancellation. -/
theorem abs_source_le_joint_blocks (work : α → β)
    (source : List α) (blocks : List (List α)) (hcover : blocks.flatten.Perm source) :
    |(source.map work).sum| ≤ (blocks.map (fun block => |jointReadout work block|)).sum := by
  rw [source_eq_block_sum work source blocks hcover]
  simpa only [List.map_map, Function.comp_def] using
    abs_list_sum_le (blocks.map (jointReadout work))

/-- All block budgets are charged once to a complete source reconstruction. -/
theorem joint_cancellation_budget (work : α → β) (budget : List α → β)
    (source : List α) (blocks : List (List α)) (B : β)
    (hcover : blocks.flatten.Perm source)
    (hblock : ∀ block ∈ blocks, |jointReadout work block| ≤ budget block)
    (hbudget : (blocks.map budget).sum ≤ B) :
    |(source.map work).sum| ≤ B :=
  (abs_source_le_joint_blocks work source blocks hcover).trans
    ((List.sum_le_sum hblock).trans hbudget)

end Ordered

/-- A fixed signed pair with exact cancellation inside one complete block. -/
def cancelPairWork (atom : Bool) : ℤ := if atom then 7 else -7

theorem cancel_pair_coverage : ([[false, true]] : List (List Bool)).flatten.Perm [true, false] := by
  exact List.Perm.swap true false []

theorem cancel_pair_joint_budget :
    |([true, false].map cancelPairWork).sum| ≤ (0 : ℤ) := by
  apply joint_cancellation_budget cancelPairWork (fun _ => 0)
    [true, false] [[false, true]] 0 cancel_pair_coverage
  · intro block hblock
    simp only [List.mem_singleton] at hblock
    subst block
    norm_num [jointReadout, cancelPairWork]
  · simp

/-- Splitting the same signed pair into atomwise absolute budgets costs fourteen. -/
theorem cancel_pair_atomwise_budget :
    ([true, false].map (fun atom => |cancelPairWork atom|)).sum = (14 : ℤ) := by
  norm_num [cancelPairWork]

end FormalResearch.RiemannHypothesis.SourceSchedulingReconstruction
