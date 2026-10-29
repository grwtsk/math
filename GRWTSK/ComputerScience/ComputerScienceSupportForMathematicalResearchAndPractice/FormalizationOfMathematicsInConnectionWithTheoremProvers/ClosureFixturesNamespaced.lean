-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rules.Variantd8a3e4febfd0d3ddd153691367b1adab7f5b521d37f97be848eca44f6bc952f0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d8a3e4febfd0d3ddd153691367b1adab7f5b521d37f97be848eca44f6bc952f0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceOrganization.SourceCorpus.Rules.Variantd8a3e4febfd0d3ddd153691367b1adab7f5b521d37f97be848eca44f6bc952f0","mathematical_subject":"MathematicalTooling.SourceOrganization","original_sha256":"d8a3e4febfd0d3ddd153691367b1adab7f5b521d37f97be848eca44f6bc952f0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/d8a3e4febfd0d3ddd153691367b1adab7f5b521d37f97be848eca44f6bc952f0.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.MathematicalTooling.Semantics.Atlas.Burden

/-!
# Executable finite closure and burden fixtures

The four fact identifiers mean, respectively, a shared carrier, its first
consequence, its second consequence, and an unrelated carrier. All inventory,
rank, residual, and gain assertions below execute the exhaustive reference
algorithm in the Lean kernel. The parametric interpretation supplies genuine
logical soundness for the two ground rules.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rules.Variantd8a3e4febfd0d3ddd153691367b1adab7f5b521d37f97be848eca44f6bc952f0

namespace FormalResearch.MathematicalTooling.Semantics.Atlas.ClosureFixtures

/-- A two-stage dependency: the shared carrier proves one target, which proves another. -/
def rules : Finset (Rule (Fin 4)) :=
  {⟨{0}, 1⟩, ⟨{1}, 2⟩}

/-- A proof-bearing interpretation independent of any source or publication identity. -/
def meaning (P Q : Prop) (fact : Fin 4) : Prop :=
  if fact = 0 then P ∧ Q else if fact = 1 then P else if fact = 2 then P ∨ Q else Q

/-- The fixture rules implement conjunction elimination followed by disjunction introduction. -/
theorem rules_sound (P Q : Prop) :
    ∀ rule ∈ rules, (∀ x ∈ rule.premises, meaning P Q x) → meaning P Q rule.conclusion := by
  intro rule hrule hpremises
  simp only [rules, Finset.mem_insert, Finset.mem_singleton] at hrule
  rcases hrule with rfl | rfl
  · have h := hpremises 0 (by simp)
    simpa [meaning] using (show P ∧ Q from by simpa [meaning] using h).1
  · have h := hpremises 1 (by simp)
    have hp : P := by simpa [meaning] using h
    simpa [meaning] using (Or.inl hp : P ∨ Q)

/-- Starting from a proof of the shared carrier, every computed consequence is true. -/
theorem shared_closure_sound (P Q : Prop) (h : P ∧ Q) :
    ∀ fact ∈ saturate rules {0}, meaning P Q fact := by
  apply saturation_sound rules {0} (meaning P Q) _ (rules_sound P Q)
  intro fact hfact
  have heq : fact = 0 := Finset.mem_singleton.mp hfact
  simpa [heq, meaning] using h

/-- Saturation reaches the second consequence through the intermediate fact. -/
theorem shared_saturates : saturate rules {0} = {0, 1, 2} := by decide

/-- An unrelated inventory proves neither target. -/
theorem unrelated_saturates : saturate rules {3} = {3} := by decide

/-- Two sequential attachment orders compute exactly the same final four-fact inventory. -/
theorem computed_attachment_order :
    attach (saturation rules) (attach (saturation rules) ∅ {0}) {3} = {0, 1, 2, 3} ∧
    attach (saturation rules) (attach (saturation rules) ∅ {3}) {0} = {0, 1, 2, 3} := by
  decide

/-- The two targets initially require one available shared carrier. -/
theorem shared_rank_before : rank (saturation rules) {0} ∅ {1, 2} = some 1 := by decide

/-- Attaching the shared carrier leaves no residual target. -/
theorem shared_residual_reduction :
    residual (saturation rules) ∅ {1, 2} = {1, 2} ∧
    residual (saturation rules) (attach (saturation rules) ∅ {0}) {1, 2} = ∅ := by
  decide

/-- After attachment no new carrier is needed, so the computed finite rank drops to zero. -/
theorem shared_rank_after :
    rank (saturation rules) {0} (attach (saturation rules) ∅ {0}) {1, 2} = some 0 := by
  decide

/-- The deliberately shared carrier gives a positive structural transfer gain. -/
theorem positive_transfer_gain : transferGain (saturation rules) {0} ∅ {0} {1, 2} = some 1 := by
  decide

/-- A chart supplying only the unrelated fact leaves the structural rank unchanged. -/
theorem unrelated_rank_after :
    rank (saturation rules) {0} (attach (saturation rules) ∅ {3}) {1, 2} = some 1 := by
  decide

/-- An unrelated chart has exactly zero structural transfer gain. -/
theorem zero_transfer_gain : transferGain (saturation rules) {0} ∅ {3} {1, 2} = some 0 := by
  decide

/-- If only the unrelated carrier is admissible, no candidate completion proves the targets. -/
theorem unavailable_rank : rank (saturation rules) {3} ∅ {1, 2} = none := by decide

/-- Unavailable initial burden yields unavailable gain, rather than a fabricated number. -/
theorem unavailable_gain : transferGain (saturation rules) {3} ∅ {0} {1, 2} = none := by decide

/-- One shared carrier proves both tasks, saving one carrier against their separate minima. -/
theorem shared_joint_savings :
    rank (saturation rules) {0} ∅ {1} = some 1 ∧
    rank (saturation rules) {0} ∅ {2} = some 1 ∧
    jointCarrierSavings (saturation rules) {0} ∅ {1} {2} = some 1 := by
  decide

end FormalResearch.MathematicalTooling.Semantics.Atlas.ClosureFixtures
