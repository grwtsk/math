# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Finite.Variant86d7d9b52ca97f13f74b1659328ea80b40d5ac30fe1beb776bd704f21dd843a0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `db6534378070470d73e1d84e113659225eed6e55` · SHA-256 `86d7d9b52ca97f13f74b1659328ea80b40d5ac30fe1beb776bd704f21dd843a0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
