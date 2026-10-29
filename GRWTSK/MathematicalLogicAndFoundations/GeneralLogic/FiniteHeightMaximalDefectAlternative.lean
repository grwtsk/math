-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.ExistsMaximizerOfFiniteValues.Variantb9bf959214a8a8a04a8508c73536598623092f0e38c9343e7c0a040f8e9a56e5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b9bf959214a8a8a04a8508c73536598623092f0e38c9343e7c0a040f8e9a56e5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.ExistsMaximizerOfFiniteValues.Variantb9bf959214a8a8a04a8508c73536598623092f0e38c9343e7c0a040f8e9a56e5","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"b9bf959214a8a8a04a8508c73536598623092f0e38c9343e7c0a040f8e9a56e5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/b9/b9bf959214a8a8a04a8508c73536598623092f0e38c9343e7c0a040f8e9a56e5--FiniteHeightMaximalDefect.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.MaximalDefect
import Mathlib.Data.Nat.Find

/-!
# Greatest defect maximizer from a bounded strict rank

Experimental finite-height supplement to the maintained maximal-defect module.
The carrier may be infinite. An attained maximum and a natural-number rank that
strictly increases on strict comparisons and is bounded on maximizers suffice.
Finite defect range and a nonempty carrier separately supply attainment.

Source motivation: OpenAI/math at adc7f1241b42e322a6451854ab7e4b4c146bf78a,
preprints/Milnes-rationality-conjecture-for-abelian-varieties-September-23-2026/
build/sections/03_filtration.tex. This abstracts the finite-dimensional selection
step, without constructing an isocrystal adapter or a numerical defect cap.

Research direction and evaluation: grwtsk contributors.
Formal extraction and Lean implementation: OpenAI Codex / ChatGPT.
Scratch only; independent acceptance remains pending.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.ExistsMaximizerOfFiniteValues.Variantb9bf959214a8a8a04a8508c73536598623092f0e38c9343e7c0a040f8e9a56e5

namespace FormalResearch.PositiveAtlas.MaximalDefect.FiniteHeight

universe u

variable {α : Type u}

/-- A finite range on a nonempty carrier supplies an attained maximum. -/
theorem exists_maximizer_of_finite_values [Nonempty α] {f : α → ℝ}
    (hfinite : (Set.range f).Finite) : ∃ x, IsMaximizer f x := by
  classical
  obtain ⟨x₀⟩ := ‹Nonempty α›
  let s := hfinite.toFinset
  have hs : s.Nonempty := ⟨f x₀, hfinite.mem_toFinset.mpr ⟨x₀, rfl⟩⟩
  obtain ⟨v, hv, hmax⟩ := Finset.exists_max_image s id hs
  obtain ⟨x, rfl⟩ := hfinite.mem_toFinset.mp hv
  exact ⟨x, fun y => hmax (f y) (hfinite.mem_toFinset.mpr ⟨y, rfl⟩)⟩

variable [Lattice α]

/-- Bounded rank on maximizers replaces finiteness of the maximizer set.
Strict rank growth rules out a proper join above a maximizer of maximal rank. -/
theorem exists_unique_greatest_maximizer_of_bounded_rank {f : α → ℝ}
    (hf : Supermodular f) (hattained : ∃ x, IsMaximizer f x)
    (rank : α → ℕ) (D : ℕ)
    (hbounded : ∀ x, IsMaximizer f x → rank x ≤ D)
    (hstrict : ∀ {x y : α}, x < y → rank x < rank y) :
    ∃! g, IsGreatest {x | IsMaximizer f x} g := by
  classical
  let P : ℕ → Prop := fun n => ∃ x, IsMaximizer f x ∧ rank x = n
  obtain ⟨x₀, hx₀⟩ := hattained
  have hP : P (rank x₀) := ⟨x₀, hx₀, rfl⟩
  obtain ⟨g, hg, hgrank⟩ := Nat.findGreatest_spec (hbounded x₀ hx₀) hP
  have hmaxrank : ∀ x, IsMaximizer f x → rank x ≤ rank g := by
    intro x hx
    rw [hgrank]
    exact Nat.le_findGreatest (hbounded x hx) ⟨x, hx, rfl⟩
  have hgreatest : IsGreatest {x | IsMaximizer f x} g := by
    refine ⟨hg, ?_⟩
    intro x hx
    have hjoin := (maximizers_inf_sup hf hg hx).2
    have hjoinrank := hmaxrank (g ⊔ x) hjoin
    by_contra hxg
    have hne : g ≠ g ⊔ x := by
      intro heq
      apply hxg
      calc
        x ≤ g ⊔ x := le_sup_right
        _ = g := heq.symm
    exact (Nat.not_lt_of_ge hjoinrank) (hstrict (lt_of_le_of_ne le_sup_left hne))
  exact ⟨g, hgreatest, fun y hy => hy.unique hgreatest⟩

/-- The selected greatest maximizer is fixed by every defect-preserving
order automorphism. The rank itself need not be preserved by the symmetry. -/
theorem exists_greatest_maximizer_fixed_of_bounded_rank {f : α → ℝ}
    (hf : Supermodular f) (hattained : ∃ x, IsMaximizer f x)
    (rank : α → ℕ) (D : ℕ)
    (hbounded : ∀ x, IsMaximizer f x → rank x ≤ D)
    (hstrict : ∀ {x y : α}, x < y → rank x < rank y) :
    ∃ g, IsGreatest {x | IsMaximizer f x} g ∧
      ∀ (e : α ≃o α), (∀ x, f (e x) = f x) → e g = g := by
  obtain ⟨g, hg, _⟩ :=
    exists_unique_greatest_maximizer_of_bounded_rank hf hattained rank D hbounded hstrict
  exact ⟨g, hg, fun e he => greatest_maximizer_fixed hg e he⟩

/-- Finite defect range and bounded strict rank suffice on an infinite carrier.
No bound on the numerical defect values is asserted. -/
theorem exists_greatest_maximizer_fixed_of_finite_values_bounded_rank [Nonempty α]
    {f : α → ℝ} (hf : Supermodular f) (hfinite : (Set.range f).Finite)
    (rank : α → ℕ) (D : ℕ)
    (hbounded : ∀ x, IsMaximizer f x → rank x ≤ D)
    (hstrict : ∀ {x y : α}, x < y → rank x < rank y) :
    ∃ g, IsGreatest {x | IsMaximizer f x} g ∧
      ∀ (e : α ≃o α), (∀ x, f (e x) = f x) → e g = g := by
  exact exists_greatest_maximizer_fixed_of_bounded_rank hf
    (exists_maximizer_of_finite_values hfinite) rank D hbounded hstrict

end FormalResearch.PositiveAtlas.MaximalDefect.FiniteHeight
