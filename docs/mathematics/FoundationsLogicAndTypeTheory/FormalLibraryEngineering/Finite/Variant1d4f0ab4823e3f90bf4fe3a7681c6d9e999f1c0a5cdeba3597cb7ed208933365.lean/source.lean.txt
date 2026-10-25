-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ForallOnOfFiniteCover.Variant4a9b1bc3fb724e8f6a25ba09ecf805230419d866b8b269b9acaa1f32666b5472","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4a9b1bc3fb724e8f6a25ba09ecf805230419d866b8b269b9acaa1f32666b5472","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceOrganization.SourceCorpus.ForallOnOfFiniteCover.Variant4a9b1bc3fb724e8f6a25ba09ecf805230419d866b8b269b9acaa1f32666b5472","mathematical_subject":"MathematicalTooling.SourceOrganization","original_sha256":"4a9b1bc3fb724e8f6a25ba09ecf805230419d866b8b269b9acaa1f32666b5472","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/pr151-repair-20260921T175258Z/candidate-snapshots/c2165bf58cfe7079ba78bd7f98623fb758d0d84525c0918f1eba27105e3dba85/FormalResearch/MathematicalTooling/Coverage/Finite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Real.Basic
import Mathlib.Data.Finset.Basic
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum

/-!
# Finite certificate coverage

Local propositions assemble only over an explicitly covered domain. Neither a
finite range nor a finite sample implies an all-scale statement; the final two
lemmas give exact counterexamples to those scope promotions.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ForallOnOfFiniteCover.Variant4a9b1bc3fb724e8f6a25ba09ecf805230419d866b8b269b9acaa1f32666b5472

namespace FormalResearch.MathematicalTooling.Coverage

variable {α ι : Type*}

/-- Local proofs and explicit finite coverage assemble a theorem on `domain`. -/
theorem forall_on_of_finite_cover (domain : Set α) (cells : ι → Set α)
    (indices : Finset ι) (P : α → Prop)
    (hcover : ∀ x ∈ domain, ∃ i ∈ indices, x ∈ cells i)
    (hlocal : ∀ i ∈ indices, ∀ x ∈ cells i, P x) :
    ∀ x ∈ domain, P x := by
  intro x hx
  obtain ⟨i, hi, hxi⟩ := hcover x hx
  exact hlocal i hi x hxi

/-- Adding an explicitly proved tail gives a theorem over the entire declared
domain. The tail obligation is a premise, never inferred from finite coverage. -/
theorem forall_on_of_finite_cover_and_tail (domain tail : Set α)
    (cells : ι → Set α) (indices : Finset ι) (P : α → Prop)
    (hcover : ∀ x ∈ domain, (∃ i ∈ indices, x ∈ cells i) ∨ x ∈ tail)
    (hlocal : ∀ i ∈ indices, ∀ x ∈ cells i, P x)
    (htail : ∀ x ∈ tail, P x) :
    ∀ x ∈ domain, P x := by
  intro x hx
  rcases hcover x hx with ⟨i, hi, hxi⟩ | hxtail
  · exact hlocal i hi x hxi
  · exact htail x hxtail

/-- Every finite tested real range admits a property that holds throughout it
and fails later on the same ray. -/
theorem finite_range_does_not_imply_ray (a b : ℝ) (hab : a ≤ b) :
    ∃ P : ℝ → Prop, (∀ x ∈ Set.Icc a b, P x) ∧
      ¬ (∀ x ∈ Set.Ici a, P x) := by
  refine ⟨fun x ↦ x ≤ b, ?_, ?_⟩
  · intro x hx
    exact hx.2
  · intro h
    have hbad := h (b + 1) (by simp only [Set.mem_Ici]; linarith)
    linarith

/-- The finite-grid scope error already occurs with an exact two-endpoint
sample: both sampled endpoints satisfy the property while the midpoint fails. -/
theorem endpoints_do_not_cover_interval :
    ∃ P : ℝ → Prop, P 0 ∧ P 1 ∧ ¬ (∀ x ∈ Set.Icc (0 : ℝ) 1, P x) := by
  refine ⟨fun x ↦ x = 0 ∨ x = 1, Or.inl rfl, Or.inr rfl, ?_⟩
  intro h
  have hbad := h (1 / 2) (by constructor <;> norm_num)
  norm_num at hbad

end FormalResearch.MathematicalTooling.Coverage
