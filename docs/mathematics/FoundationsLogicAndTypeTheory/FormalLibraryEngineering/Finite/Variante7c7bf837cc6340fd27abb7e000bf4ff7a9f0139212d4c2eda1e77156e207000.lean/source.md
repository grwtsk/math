# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Finite.Variante7c7bf837cc6340fd27abb7e000bf4ff7a9f0139212d4c2eda1e77156e207000

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bf5d28f1d90ba367c744f36eba4d7873e9c36127` · SHA-256 `3b3e485b6b2fdb24fa9b0ecb8127feedd3ff8358b91a012b51da971dc2fe4ea9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ForallOnOfFiniteCover.Variant86d7d9b52ca97f13f74b1659328ea80b40d5ac30fe1beb776bd704f21dd843a0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"86d7d9b52ca97f13f74b1659328ea80b40d5ac30fe1beb776bd704f21dd843a0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceOrganization.SourceCorpus.ForallOnOfFiniteCover.Variant86d7d9b52ca97f13f74b1659328ea80b40d5ac30fe1beb776bd704f21dd843a0","mathematical_subject":"MathematicalTooling.SourceOrganization","original_sha256":"86d7d9b52ca97f13f74b1659328ea80b40d5ac30fe1beb776bd704f21dd843a0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/type-theory-reconstruction/FormalResearch/MathematicalTooling/Coverage/Finite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.MathematicalTooling.Coverage.Ownership
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


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ForallOnOfFiniteCover.Variant86d7d9b52ca97f13f74b1659328ea80b40d5ac30fe1beb776bd704f21dd843a0

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
```
