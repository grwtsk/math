-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.BorelSpace.Variantfe706d632d0c4f9f1049a5a6911578cda62e59f32a5006bfbe569a5c01a6574f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fe706d632d0c4f9f1049a5a6911578cda62e59f32a5006bfbe569a5c01a6574f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.BorelSpace.Variantfe706d632d0c4f9f1049a5a6911578cda62e59f32a5006bfbe569a5c01a6574f","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"fe706d632d0c4f9f1049a5a6911578cda62e59f32a5006bfbe569a5c01a6574f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/borelize.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.MeasureTheory.Constructions.BorelSpace.Basic


namespace GRWTSK.Analysis.MeasureTheory.BorelSpace.Variantfe706d632d0c4f9f1049a5a6911578cda62e59f32a5006bfbe569a5c01a6574f

set_option autoImplicit true

example [TopologicalSpace α] [inst : MeasurableSpace α] [BorelSpace α] :
    MeasurableSet (∅ : Set α) := by
  guard_target = @MeasurableSet α inst ∅
  borelize α
  guard_target = @MeasurableSet α (borel α) ∅
  apply MeasurableSet.empty

example [TopologicalSpace α] : True := by
  borelize α
  have h : MeasurableSet (∅ : Set α) := MeasurableSet.empty
  guard_hyp h : @MeasurableSet α (borel α) ∅
  trivial

example : True := by
  obtain ⟨α, ⟨hα⟩⟩ : ∃ α : Type, Nonempty (TopologicalSpace α) := ⟨ℕ, ⟨inferInstance⟩⟩
  borelize α
  have h : MeasurableSet (∅ : Set α) := MeasurableSet.empty
  guard_hyp h : @MeasurableSet α (borel α) ∅
  trivial

example : True := by
  set α := ℕ
  borelize α
  have h : MeasurableSet (∅ : Set α) := MeasurableSet.empty
  guard_hyp h : @MeasurableSet α (borel α) ∅
  trivial

example : True := by
  have h1 : MeasurableSet (∅ : Set ℕ) := MeasurableSet.empty
  guard_hyp h1 : @MeasurableSet ℕ Nat.instMeasurableSpace ∅
  borelize ℕ
  have h2 : MeasurableSet (∅ : Set ℕ) := MeasurableSet.empty
  guard_hyp h2 : @MeasurableSet ℕ (borel ℕ) ∅
  trivial
