# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.3cbade486923b845375c21f9426d70616e642f56317a5991faaeed735f10f229ReportReproducti.Variante7e23be97a4626996c72b85dd7ea1a3f49054326a3f19b0cfe9a6029beb790c5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `57a6df5456441b1df3bd34a06e0404619d13a114` · SHA-256 `5541e67360ae5325a7b57d3bb57d38c27c61ffd101f32bda78d6f859f9252c63`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.ExistsMaximizerOfFiniteValues.Variant3cbade486923b845375c21f9426d70616e642f56317a5991faaeed735f10f229","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3cbade486923b845375c21f9426d70616e642f56317a5991faaeed735f10f229","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.ExistsMaximizerOfFiniteValues.Variant3cbade486923b845375c21f9426d70616e642f56317a5991faaeed735f10f229","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"3cbade486923b845375c21f9426d70616e642f56317a5991faaeed735f10f229","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/3c/3cbade486923b845375c21f9426d70616e642f56317a5991faaeed735f10f229--ReportReproduction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.MaximalDefect
import Mathlib.Data.Nat.Find


namespace GRWTSK.FoundationsLogicAndTypeTheory.ExistsMaximizerOfFiniteValues.Variant3cbade486923b845375c21f9426d70616e642f56317a5991faaeed735f10f229

namespace FormalResearch.PositiveAtlas.MaximalDefect.FiniteHeight

universe u
variable {α : Type u}

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
```
