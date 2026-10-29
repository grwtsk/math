module

public meta import Surface.Core.Classification
public import Surface.Core.DirichletGRH.Character

/-!
# The primitive Dirichlet-character family

`DirichletGRH` quantifies over every positive modulus and every primitive
complex Dirichlet character at that modulus.  Positivity supplies the
`NeZero q` instance required by mathlib's analytic `LFunction`.

This is a proposition only.  No global or local GRH proof is asserted.
-/

public section

namespace Surface.Core.DirichletGRH

noncomputable section

set_option linter.dupNamespace false in
/-- Pointwise Dirichlet GRH over all primitive characters of positive
modulus.  Constants or estimates are not bundled into this predicate. -/
@[expose]
def DirichletGRH : Prop :=
  ∀ (q : ℕ) (hq : 0 < q),
    letI : NeZero q := ⟨Nat.ne_of_gt hq⟩
    ∀ chi : DirichletCharacter ℂ q,
      DirichletCharacter.IsPrimitive chi →
        GRHForPrimitiveCharacter chi

/-- The same global family indexed by the bundled positive primitive
character data. -/
@[expose]
def PrimitiveCharacterDataFamilyGRH : Prop :=
  ∀ data : PrimitiveCharacterData, data.GRH

/-- Eliminate the global family predicate at one positive modulus. -/
@[surface_novel, surface_published]
theorem dirichletGRH_forCharacter
    (hGRH : DirichletGRH) {q : ℕ} (hq : 0 < q)
    (chi : DirichletCharacter ℂ q)
    (hPrimitive : DirichletCharacter.IsPrimitive chi) :
    letI : NeZero q := ⟨Nat.ne_of_gt hq⟩
    GRHForPrimitiveCharacter chi := by
  exact hGRH q hq chi hPrimitive

/-- The explicit positive-modulus family is definitionally the global
Dirichlet-GRH proposition.  This small theorem is useful at adapter
boundaries without introducing a second notion of global GRH. -/
@[surface_novel, surface_published]
theorem dirichletGRH_iff_primitiveFamily :
    DirichletGRH ↔
      ∀ (q : ℕ) (hq : 0 < q),
        letI : NeZero q := ⟨Nat.ne_of_gt hq⟩
        ∀ chi : DirichletCharacter ℂ q,
          DirichletCharacter.IsPrimitive chi →
            GRHForPrimitiveCharacter chi :=
  Iff.rfl

/-- Bundling the positive modulus and primitivity proof does not change the
global Dirichlet-GRH proposition. -/
@[surface_adapter]
theorem dirichletGRH_iff_dataFamily :
    DirichletGRH ↔ PrimitiveCharacterDataFamilyGRH := by
  constructor
  · intro hGRH data
    exact hGRH data.modulus data.modulus_pos
      data.character data.primitive
  · intro hData q hq
    letI : NeZero q := ⟨Nat.ne_of_gt hq⟩
    intro chi hPrimitive
    let data : PrimitiveCharacterData :=
      { modulus := q
        modulus_pos := hq
        character := chi
        primitive := hPrimitive }
    exact hData data

end

end Surface.Core.DirichletGRH
