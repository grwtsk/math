import Mathlib
import GRWTSK.Combinatorics.GraphTheory.SearchSoficLanguage

/-!
# Prime-addressed spherical rim: finite conditional obstruction

Copyright (c) 2026 grwtsk contributors. MIT.

Prime coordinates and rim incidence are source data, not a proof of a
zeta-zero correspondence. A downstream path obstruction is conditional on
rim preservation of certified transitions.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeSphericalRimObstruction

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SearchSoficLanguage

/-- Prime-indexed cell, coordinate, sphere constraint and rim metadata. -/
structure PrimeRimAddress (dimension : ℕ) where
  prime : ℕ
  isPrime : Nat.Prime prime
  cell : List Bool
  coordinate : Fin dimension → ℝ
  onSphere : (∑ i, coordinate i ^ 2) = 1
  onRim : Prop

/-- A separate, testable hypothesis on certified edges. -/
def RimPreserving {V L : Type*}
    (edge : LabeledEdgeRelation V L) (rim : V → Prop) : Prop :=
  ∀ ⦃source target : V⦄ ⦃label : L⦄,
    edge source label target → rim source → rim target

theorem path_remains_on_rim
    {V L : Type*} {edge : LabeledEdgeRelation V L}
    {rim : V → Prop} (preserves : RimPreserving edge rim)
    {source target : V} {word : List L}
    (path : WordPath edge source word target)
    (initial : rim source) : rim target := by
  induction path with
  | nil vertex => exact initial
  | cons edge tail ih => exact ih (preserves edge initial)

theorem off_rim_obstructed
    {V L : Type*} {edge : LabeledEdgeRelation V L}
    {rim : V → Prop} (preserves : RimPreserving edge rim)
    {source target : V} {word : List L}
    (initial : rim source) (offRim : ¬ rim target) :
    ¬ WordPath edge source word target := by
  intro path
  exact offRim (path_remains_on_rim preserves path initial)

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeSphericalRimObstruction
