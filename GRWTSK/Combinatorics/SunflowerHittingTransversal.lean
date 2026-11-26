/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
SPDX-License-Identifier: MIT
-/
import GRWTSK.CategoryTheoryHomologicalAlgebra.GeneralTheoryOfCategoriesAndFunctors.CertifiedTransversal
import GRWTSK.Combinatorics.SunflowerHittingSet

namespace GRWTSK.Combinatorics.SunflowerHittingSet

open GRWTSK.CategoryTheoryHomologicalAlgebra.GeneralTheoryOfCategoriesAndFunctors.CertifiedTransversal

/-- The same hitting set supplies the bridge witness. Reversing the predicate
equivalence gives the reverse span, also preserving the chosen vertices. -/
def transversal_of_hittingEquivalent {α : Type*} [DecidableEq α]
    (F F' : Finset (Finset α)) (b : ℕ)
    (hEquivalent : ∀ H : Finset α, H.card ≤ b → (HitsEvery H F' ↔ HitsEvery H F)) :
    Transversal (Finset α) (Finset α)
      (fun H => H.card ≤ b ∧ HitsEvery H F)
      (fun H => H.card ≤ b ∧ HitsEvery H F')
      (fun H H' => H = H') :=
  Transversal.ofFunction (fun H => H)
    (fun H hH => ⟨hH.1, (hEquivalent H hH.1).mpr hH.2⟩)
    (fun _ _ => rfl)

end GRWTSK.Combinatorics.SunflowerHittingSet
