-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Residual.Varianta82932a8c6578c2029c78c1c12907a2772d63985ae2ccf9d1e9b5780649fe115","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a82932a8c6578c2029c78c1c12907a2772d63985ae2ccf9d1e9b5780649fe115","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceOrganization.SourceCorpus.Residual.Varianta82932a8c6578c2029c78c1c12907a2772d63985ae2ccf9d1e9b5780649fe115","mathematical_subject":"MathematicalTooling.SourceOrganization","original_sha256":"a82932a8c6578c2029c78c1c12907a2772d63985ae2ccf9d1e9b5780649fe115","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/a82932a8c6578c2029c78c1c12907a2772d63985ae2ccf9d1e9b5780649fe115.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.MathematicalTooling.Semantics.Atlas.Closure
import Mathlib.Data.Finset.Max

/-!
# Finite residual structural burden

Residual targets are exact finite differences. Rank minimizes carrier cardinality
over subsets of an explicit finite candidate inventory. An unavailable completion
returns `none`; it is never silently supplied by assuming that the targets may be
added as new axioms. Admissibility of candidate facts is a separate proof obligation
for the interpretation of the rule system.

These quantities describe missing formal structure. They do not measure proof
search, elaboration, wall time, memory, or any other runtime resource.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Residual.Varianta82932a8c6578c2029c78c1c12907a2772d63985ae2ccf9d1e9b5780649fe115

namespace FormalResearch.MathematicalTooling.Semantics.Atlas

variable {α : Type*} [DecidableEq α]

/-- Required target identifiers still absent from the current exact closure. -/
def residual (cl : ClosureOperator (Finset α)) (atlas targets : Finset α) : Finset α :=
  targets \ cl atlas

/-- A larger atlas can only remove residual targets, for the same closure language. -/
theorem residual_antitone (cl : ClosureOperator (Finset α)) {atlas larger targets : Finset α}
    (hsub : atlas ⊆ larger) : residual cl larger targets ⊆ residual cl atlas targets := by
  intro x hx
  obtain ⟨hxt, hnot⟩ := Finset.mem_sdiff.mp hx
  exact Finset.mem_sdiff.mpr ⟨hxt, fun hx ↦ hnot (cl.monotone hsub hx)⟩

/-- A proposed residual inventory supplies every target after finite closure. -/
def Sufficient (cl : ClosureOperator (Finset α))
    (atlas targets carriers : Finset α) : Prop :=
  targets ⊆ cl (atlas ∪ carriers)

instance (cl : ClosureOperator (Finset α)) (atlas targets carriers : Finset α) :
    Decidable (Sufficient cl atlas targets carriers) :=
  inferInstanceAs (Decidable (targets ⊆ cl (atlas ∪ carriers)))

/-- The exact finite optimization domain: sufficient subsets of the declared candidate universe. -/
def feasibleCarriers (cl : ClosureOperator (Finset α))
    (candidates atlas targets : Finset α) : Finset (Finset α) :=
  candidates.powerset.filter (Sufficient cl atlas targets)

@[simp]
theorem mem_feasibleCarriers {cl : ClosureOperator (Finset α)}
    {candidates atlas targets carriers : Finset α} :
    carriers ∈ feasibleCarriers cl candidates atlas targets ↔
      carriers ⊆ candidates ∧ Sufficient cl atlas targets carriers := by
  simp [feasibleCarriers]

/-- Cardinality minimum over explicitly available finite carriers; `none` means unavailable.
The `WithTop` implementation of finite minimum has underlying type `Option ℕ`,
but the exposed result is an availability flag, not an assertion of infinite cost. -/
def rank (cl : ClosureOperator (Finset α))
    (candidates atlas targets : Finset α) : Option ℕ :=
  ((feasibleCarriers cl candidates atlas targets).image Finset.card).min

/-- A defined minimum has an actual sufficient carrier attaining that cardinality. -/
theorem rank_attained {cl : ClosureOperator (Finset α)}
    {candidates atlas targets : Finset α} {n : ℕ}
    (h : rank cl candidates atlas targets = some n) :
    ∃ carriers, carriers ⊆ candidates ∧ Sufficient cl atlas targets carriers ∧
      carriers.card = n := by
  obtain ⟨carriers, hmem, hcard⟩ := Finset.mem_image.mp (Finset.mem_of_min h)
  obtain ⟨hsub, hsuff⟩ := mem_feasibleCarriers.mp hmem
  exact ⟨carriers, hsub, hsuff, hcard⟩

/-- Every explicit sufficient candidate bounds the attained minimum from above. -/
theorem rank_le_card {cl : ClosureOperator (Finset α)}
    {candidates atlas targets carriers : Finset α} {n : ℕ}
    (h : rank cl candidates atlas targets = some n)
    (hsub : carriers ⊆ candidates) (hsuff : Sufficient cl atlas targets carriers) :
    n ≤ carriers.card :=
  Finset.min_le_of_eq (Finset.mem_image.mpr
    ⟨carriers, mem_feasibleCarriers.mpr ⟨hsub, hsuff⟩, rfl⟩) h

/-- Feasibility supplies a defined finite minimum. -/
theorem rank_defined_of_sufficient {cl : ClosureOperator (Finset α)}
    {candidates atlas targets carriers : Finset α}
    (hsub : carriers ⊆ candidates) (hsuff : Sufficient cl atlas targets carriers) :
    ∃ n, rank cl candidates atlas targets = some n :=
  Finset.min_of_mem (Finset.mem_image.mpr
    ⟨carriers, mem_feasibleCarriers.mpr ⟨hsub, hsuff⟩, rfl⟩)

/-- Unavailability is exact failure of all subsets in the declared finite carrier universe. -/
theorem rank_none_iff {cl : ClosureOperator (Finset α)}
    {candidates atlas targets : Finset α} :
    rank cl candidates atlas targets = none ↔
      ¬ ∃ carriers, carriers ⊆ candidates ∧ Sufficient cl atlas targets carriers := by
  constructor
  · intro hnone ⟨carriers, hsub, hsuff⟩
    obtain ⟨n, hn⟩ := rank_defined_of_sufficient hsub hsuff
    rw [hn] at hnone
    contradiction
  · intro hnone
    cases h : rank cl candidates atlas targets with
    | none => rfl
    | some n =>
      obtain ⟨carriers, hsub, hsuff, _⟩ := rank_attained h
      exact False.elim (hnone ⟨carriers, hsub, hsuff⟩)

/-- Feasible residual carriers remain feasible after adding atlas facts. -/
theorem sufficient_of_atlas_subset {cl : ClosureOperator (Finset α)}
    {atlas larger targets carriers : Finset α} (hsub : atlas ⊆ larger)
    (hsuff : Sufficient cl atlas targets carriers) :
    Sufficient cl larger targets carriers :=
  hsuff.trans (cl.monotone (Finset.union_subset_union_left hsub))

/-- Conservative atlas extension preserves availability and cannot increase its minimum rank. -/
theorem rank_extension_defined {cl : ClosureOperator (Finset α)}
    {candidates atlas larger targets : Finset α} {before : ℕ}
    (hsub : atlas ⊆ larger) (hbefore : rank cl candidates atlas targets = some before) :
    ∃ after, rank cl candidates larger targets = some after ∧ after ≤ before := by
  obtain ⟨carriers, hcarrier, hsuff, hcard⟩ := rank_attained hbefore
  have hsuff' := sufficient_of_atlas_subset hsub hsuff
  obtain ⟨after, hafter⟩ := rank_defined_of_sufficient hcarrier hsuff'
  refine ⟨after, hafter, ?_⟩
  simpa [hcard] using rank_le_card hafter hcarrier hsuff'

/-- Structural burden is antitone whenever both minima use the same finite carrier universe. -/
theorem attachment_burden_antitone {cl : ClosureOperator (Finset α)}
    {candidates atlas larger targets : Finset α} {before after : ℕ}
    (hsub : atlas ⊆ larger)
    (hbefore : rank cl candidates atlas targets = some before)
    (hafter : rank cl candidates larger targets = some after) : after ≤ before := by
  obtain ⟨carriers, hcarrier, hsuff, hcard⟩ := rank_attained hbefore
  simpa [hcard] using rank_le_card hafter hcarrier (sufficient_of_atlas_subset hsub hsuff)

/-- No new carrier is needed exactly when every target is already derivable. -/
theorem rank_eq_zero_iff {cl : ClosureOperator (Finset α)}
    {candidates atlas targets : Finset α} :
    rank cl candidates atlas targets = some 0 ↔ targets ⊆ cl atlas := by
  constructor
  · intro h
    obtain ⟨carriers, _, hsuff, hcard⟩ := rank_attained h
    have hempty := Finset.card_eq_zero.mp hcard
    simpa [Sufficient, hempty] using hsuff
  · intro h
    have hsuff : Sufficient cl atlas targets ∅ := by simpa [Sufficient] using h
    obtain ⟨n, hn⟩ := rank_defined_of_sufficient (Finset.empty_subset candidates) hsuff
    have hz : n = 0 := Nat.eq_zero_of_le_zero (by
      simpa using rank_le_card hn (Finset.empty_subset candidates) hsuff)
    simpa [hz] using hn

/-- Structural transfer gain is returned only for defined, correctly ordered finite ranks.
The order guard records the premise just proved by `attachment_burden_antitone`. -/
def transferGain (cl : ClosureOperator (Finset α))
    (candidates atlas chart targets : Finset α) : Option ℕ :=
  match rank cl candidates atlas targets, rank cl candidates (attach cl atlas chart) targets with
  | some before, some after => if after ≤ before then some (before - after) else none
  | _, _ => none

/-- For conservative attachment the order guard succeeds, so gain is the exact rank difference. -/
theorem transfer_gain_eq {cl : ClosureOperator (Finset α)}
    {candidates atlas chart targets : Finset α} {before after : ℕ}
    (hbefore : rank cl candidates atlas targets = some before)
    (hafter : rank cl candidates (attach cl atlas chart) targets = some after) :
    transferGain cl candidates atlas chart targets = some (before - after) := by
  have hle := attachment_burden_antitone (attach_extends_atlas cl atlas chart) hbefore hafter
  simp [transferGain, hbefore, hafter, hle]

/-- Structural transfer gain is nonnegative, and subtraction loses no information:
the gain plus the remaining rank equals the original rank. -/
theorem transfer_gain_nonnegative {cl : ClosureOperator (Finset α)}
    {candidates atlas chart targets : Finset α} {before after : ℕ}
    (hbefore : rank cl candidates atlas targets = some before)
    (hafter : rank cl candidates (attach cl atlas chart) targets = some after) :
    0 ≤ before - after ∧ (before - after) + after = before := by
  exact ⟨Nat.zero_le _, Nat.sub_add_cancel
    (attachment_burden_antitone (attach_extends_atlas cl atlas chart) hbefore hafter)⟩

/-- The union of two sufficient inventories supplies the union of their target sets. -/
theorem sufficient_union {cl : ClosureOperator (Finset α)}
    {atlas first second leftCarriers rightCarriers : Finset α}
    (hleft : Sufficient cl atlas first leftCarriers)
    (hright : Sufficient cl atlas second rightCarriers) :
    Sufficient cl atlas (first ∪ second) (leftCarriers ∪ rightCarriers) :=
  Finset.union_subset
    (hleft.trans (cl.monotone (Finset.union_subset_union_right Finset.subset_union_left)))
    (hright.trans (cl.monotone (Finset.union_subset_union_right Finset.subset_union_right)))

/-- Separate feasible tasks have a feasible joint completion whose rank is subadditive. -/
theorem rank_union_subadditive {cl : ClosureOperator (Finset α)}
    {candidates atlas first second : Finset α} {leftRank rightRank : ℕ}
    (hleft : rank cl candidates atlas first = some leftRank)
    (hright : rank cl candidates atlas second = some rightRank) :
    ∃ jointRank, rank cl candidates atlas (first ∪ second) = some jointRank ∧
      jointRank ≤ leftRank + rightRank := by
  obtain ⟨leftCarriers, hleftSub, hleftSuff, hleftCard⟩ := rank_attained hleft
  obtain ⟨rightCarriers, hrightSub, hrightSuff, hrightCard⟩ := rank_attained hright
  have hsub := Finset.union_subset hleftSub hrightSub
  have hsuff := sufficient_union hleftSuff hrightSuff
  obtain ⟨jointRank, hjoint⟩ := rank_defined_of_sufficient hsub hsuff
  refine ⟨jointRank, hjoint, ?_⟩
  calc
    jointRank ≤ (leftCarriers ∪ rightCarriers).card := rank_le_card hjoint hsub hsuff
    _ ≤ leftCarriers.card + rightCarriers.card := Finset.card_union_le _ _
    _ = leftRank + rightRank := by rw [hleftCard, hrightCard]

/-- Savings from shared finite carriers, guarded by the proved subadditivity inequality. -/
def jointCarrierSavings (cl : ClosureOperator (Finset α))
    (candidates atlas first second : Finset α) : Option ℕ :=
  match rank cl candidates atlas first, rank cl candidates atlas second,
      rank cl candidates atlas (first ∪ second) with
  | some leftRank, some rightRank, some jointRank =>
    if jointRank ≤ leftRank + rightRank then some (leftRank + rightRank - jointRank) else none
  | _, _, _ => none

/-- Joint carrier savings are an exact nonnegative reduction, conditional on defined ranks. -/
theorem joint_carrier_savings_exact {cl : ClosureOperator (Finset α)}
    {candidates atlas first second : Finset α} {leftRank rightRank jointRank : ℕ}
    (hleft : rank cl candidates atlas first = some leftRank)
    (hright : rank cl candidates atlas second = some rightRank)
    (hjoint : rank cl candidates atlas (first ∪ second) = some jointRank) :
    jointCarrierSavings cl candidates atlas first second =
      some (leftRank + rightRank - jointRank) ∧
    (leftRank + rightRank - jointRank) + jointRank = leftRank + rightRank := by
  obtain ⟨bound, hbound, hle⟩ := rank_union_subadditive hleft hright
  have heq : bound = jointRank := Option.some.inj (hbound.symm.trans hjoint)
  subst bound
  exact ⟨by simp [jointCarrierSavings, hleft, hright, hjoint, hle], Nat.sub_add_cancel hle⟩

end FormalResearch.MathematicalTooling.Semantics.Atlas
