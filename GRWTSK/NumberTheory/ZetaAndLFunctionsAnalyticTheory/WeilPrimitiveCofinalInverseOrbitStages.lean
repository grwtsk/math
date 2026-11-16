/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimitiveSparseStages
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimitiveInverseOrbitStages

/-!
# Cofinal certificates per inverse pair for the primitive Weil return

Choose a cofinal sequence for either member of a primitive nonprincipal
inverse pair. At its selected indices the original conductor frontier
determines which certificates are required. The sparse-stage return
extends those certificates to the full stage family for the chosen
character. The real-test inverse transport then supplies the other family.

The parents are `smallConductorStages_of_cofinal_indices` at
`0ae31ea65d2251195aab77ebf1e39ca4e5f68a81` and
`dirichletGRH_of_rh_rightStrip_and_inverse_orbit_stages` at
`119d1ecb36be32ba841a930e79ae7c7c51d70b18`. The first returns exactly
the stage-family input of the second, with unchanged arithmetic value,
real odd test class, window and conductor. A bounded list fails the
cofinality condition. Each selected sequence certifies a single chosen
member at its required indices. Conductor-one RH, the right-strip
negative witnesses and the orbit-level cofinal certificates are inputs.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

open GRWTSK.NumberTheory.Conditional

/-- One cofinal schedule for a representative of each inverse pair suffices. -/
theorem dirichletGRH_of_rh_rightStrip_and_cofinal_inverse_orbit_stages
    (hRH : _root_.RiemannHypothesis) (hwitness : PrimitiveRightStripNegativeWitness)
    (horbits : ∀ (q : ℕ) [NeZero q] (χ : DirichletCharacter ℂ q)
      (hp : χ.IsPrimitive) (hn : χ ≠ 1), ∃ index : ℕ → ℕ,
        (∀ j : ℕ, ∃ n : ℕ, j ≤ index n) ∧
        ((∀ n : ℕ, χ.conductor < conductorFrontier (index n + 1) →
            PrimitiveStageLower χ hp hn (index n)) ∨
         (∀ n : ℕ, (χ⁻¹).conductor < conductorFrontier (index n + 1) →
            PrimitiveStageLower χ⁻¹
              (by simpa only [DirichletCharacter.IsPrimitive, DirichletCharacter.conductor_inv]
                using hp)
              (by simpa only [ne_eq, inv_eq_one] using hn) (index n)))) :
    DirichletGRH := by
  apply dirichletGRH_of_rh_rightStrip_and_inverse_orbit_stages hRH hwitness
  intro q hq χ hp hn
  obtain ⟨index, hcover, hstage | hstage⟩ := horbits q χ hp hn
  · exact Or.inl (smallConductorStages_of_cofinal_indices χ hp hn index hcover hstage)
  · exact Or.inr (smallConductorStages_of_cofinal_indices χ⁻¹ _ _ index hcover hstage)

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
