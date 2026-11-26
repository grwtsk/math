import OAI.Combinatorics.Sunflower.FixedBase
import GRWTSK.Combinatorics.SunflowerHittingSet

/-!
# Fixed Petal Sunflowers

Local attribution: grwtsk contributors.
Exact upstream interfaces for the isolated family 379 environment.
-/

namespace GRWTSK.Combinatorics.ExtremalCombinatorics.FixedPetalSunflowers

export OAI.Combinatorics.Sunflower (fixedBase_words)
export OAI.Combinatorics.Sunflower (erdosRadoSunflower)

open GRWTSK.Combinatorics.SunflowerHittingSet

universe u

/-- A single upstream base for each petal count gives a width-dependent cap
on an equivalent bounded hitting-set instance. The same feasible hit sets
and their pointwise objectives are preserved. -/
theorem bounded_hitting_set_compression (r : ℕ) (hr : 3 ≤ r) :
    ∃ C : ℕ, 1 ≤ C ∧ ∀ (b k : ℕ) (α : Type u) [DecidableEq α], b < r →
      ∀ (F : Finset (Finset α)), (∀ A ∈ F, A.card ≤ k) →
      ∃ F' : Finset (Finset α), F'.card ≤ C ^ k ∧
        (∀ A ∈ F', ∃ B ∈ F, A ⊆ B) ∧
        (∀ H : Finset α, H.card ≤ b → (HitsEvery H F' ↔ HitsEvery H F)) := by
  obtain ⟨C, hC, findUniform⟩ := OAI.Combinatorics.Sunflower.erdosRadoSunflower.{u} r hr
  refine ⟨C, hC, ?_⟩
  intro b k α _ hBudget F hWidth
  exact exists_bounded_hittingEquivalent r b C k (by omega) hBudget findUniform F hWidth

end GRWTSK.Combinatorics.ExtremalCombinatorics.FixedPetalSunflowers
