/-
Copyright (c) 2026 grwtsk contributors. Local port under Apache 2.0.
OpenAI retains upstream authorship and licensing.
Source: openai/math@7ef5c0cc5ca4b0e072b7a050fca09ab24bc6fa3a
lean/OAI/Combinatorics/ProgressionColoring/OuterChoiceDefinitions.lean (blob bfa54175b455262899e0aea5c18b4b31c2481d97).
Only module imports and the enclosing namespace are adapted.
-/
import GRWTSK.Combinatorics.ExtremalCombinatorics.RamseyTheory.ConstructionModel
import GRWTSK.Combinatorics.ExtremalCombinatorics.RamseyTheory.OuterBalanced

namespace GRWTSK.Combinatorics.ProgressionColoring

noncomputable section

namespace QuantitativeVanDerWaerden.ConstructionModel

open Parameters

/-- A concrete outer coloring, with its counted family of actual cyclic words.
The family is retained so that its membership proof can be used directly by the
subsequent progression dichotomy. -/
structure OuterChoice {k : ℕ} (s : Data k) (hk : 3 ≤ k) where
  words : Finset (Fin k → Label s hk)
  color : Label s hk → Bool
  word_mem : ∀ ad : Group s × Group s, fullLabelWord s hk ad ∈ words
  card_le : words.card ≤
    (16 * (3 * k ^ 2 *
      (uniformCount k + Fintype.card (mesh s hk).Label) + 1) ^ 6) ^
      (2 * dimension k)
  balanced : OuterBalanced (uniformCount k) (uniformCount_pos hk) (mesh s hk)
    (1 / (1000 * (dimension k : ℝ))) (lambda k) (cutoff k) words
    (Finset.Ioc (dimension k ^ 2) (2 * cutoff k)) color

end QuantitativeVanDerWaerden.ConstructionModel

end

end GRWTSK.Combinatorics.ProgressionColoring
