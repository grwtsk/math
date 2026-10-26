/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib and existing GRWTSK sources retain their original licenses. -/
import GRWTSK.Analysis.Geometry.FiniteStraightTubeCladding
import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells

set_option autoImplicit false
noncomputable section

/-!
# Indexed straight-tube geometry with a separately varying cladding

The source-fixed indexed cylinder/shading family is not modified by a
medium: each source index keeps the SAME straight tube, direction,
radius, shading, weight, and geometric cell incidence. A coating only
selects a nonnegative strength for the exterior potential.

For a finite collection of independently sampled four-site Hodge
states, total weighted energy bounds total weighted exterior squared
mass by B/λ₀ when every coating strength is at least λ₀>0.

The result is a mathematically genuine finite waveguide confinement
bound. It neither bends the original Kakeya unit-line witnesses
nor produces a nontrivial ambient tube overlap/volume estimate.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells

open GRWTSK.Analysis.Geometry.FiniteStraightTubeFamily
open GRWTSK.Analysis.Geometry.FiniteFourArcContact
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteIndexedShadingVolume

universe u v
variable {d : ℕ} {Index : Type u} {Cell : Type v}
variable [Fintype Index] [Fintype Cell]

namespace Family

/-- Medium data are a separate source-indexed field. In particular,
a coating cannot rewrite the original straight tube axes or any
marked shading cell. -/
structure Coating (S : Family d Index) where
  strength : Index → ℝ
  strength_nonneg : ∀ i, 0 ≤ strength i

namespace Coating

variable {S : Family d Index}

/-- Immutable original geometric shading union, recorded even when
different coatings assign different potential strengths. -/
def shadingUnion (C : Coating S) : Set (Space d) :=
  S.shadingUnion

/-- The exact same source-derived weighted cell-incidence family. -/
def indexedCells (C : Coating S)
    (cells : Cell → Set (Space d)) :
    FiniteIndexedShadingVolume.Family Index Cell :=
  S.asIndexedCounting cells

theorem same_geometry_shadingUnion (C D : Coating S) :
    C.shadingUnion = D.shadingUnion := rfl

theorem same_geometry_lebesgue_volume (C D : Coating S) :
    MeasureTheory.volume C.shadingUnion =
      MeasureTheory.volume D.shadingUnion := rfl

theorem same_geometry_indexed_cells
    (C D : Coating S) (cells : Cell → Set (Space d)) :
    C.indexedCells cells = D.indexedCells cells := rfl

/-- Each indexed geometric straight tube has four explicitly supplied
finite Hodge sample locations and corresponding real state values. -/
def totalEnergy (C : Coating S)
    (sites : Index → Fin 4 → Space d)
    (state : Index → FourCochain) : ℝ :=
  ∑ i : Index,
    S.weight i *
      (S.tube i).sampledExteriorEnergy
        (sites i) (C.strength i) (state i)

/-- Total weighted leakage on the *actual geometrically exterior*
sampled sites. It is independent of coating strength for a fixed
state and source geometry; only energy depends on that strength. -/
def totalExteriorMass (C : Coating S)
    (sites : Index → Fin 4 → Space d)
    (state : Index → FourCochain) : ℝ :=
  ∑ i : Index,
    S.weight i *
      claddingMass ((S.tube i).outsideMask (sites i)) (state i)

theorem totalEnergy_nonneg (C : Coating S)
    (sites : Index → Fin 4 → Space d)
    (state : Index → FourCochain) :
    0 ≤ C.totalEnergy sites state := by
  unfold totalEnergy
  apply Finset.sum_nonneg
  intro i _
  exact mul_nonneg (S.weight_nonneg i)
    (mediumEnergy_nonneg
      ((S.tube i).outsideMask (sites i))
      (C.strength_nonneg i) (state i))

theorem totalExteriorMass_nonneg (C : Coating S)
    (sites : Index → Fin 4 → Space d)
    (state : Index → FourCochain) :
    0 ≤ C.totalExteriorMass sites state := by
  unfold totalExteriorMass
  apply Finset.sum_nonneg
  intro i _
  exact mul_nonneg (S.weight_nonneg i)
    (claddingMass_nonneg
      ((S.tube i).outsideMask (sites i)) (state i))

/-- Source-faithful indexed confinement: a strictly positive
uniform barrier applied at each actual straight tube exterior
bounds the weighted total exterior square amplitude by B/λ₀.
No source direction or shading/volume input is changed. -/
theorem weighted_exterior_mass_le_of_energy_budget
    (C : Coating S)
    (sites : Index → Fin 4 → Space d)
    (state : Index → FourCochain)
    {λ₀ B : ℝ} (hλ₀ : 0 < λ₀)
    (hstrength : ∀ i, λ₀ ≤ C.strength i)
    (hB : C.totalEnergy sites state ≤ B) :
    C.totalExteriorMass sites state ≤ B / λ₀ := by
  have hsum :
      λ₀ * C.totalExteriorMass sites state ≤
        C.totalEnergy sites state := by
    calc
      λ₀ * C.totalExteriorMass sites state =
          ∑ i : Index,
            S.weight i *
              (λ₀ * claddingMass
                ((S.tube i).outsideMask (sites i)) (state i)) := by
        simp only [totalExteriorMass, Finset.mul_sum]
        apply Finset.sum_congr rfl
        intro i _
        ring
      _ ≤ C.totalEnergy sites state := by
        unfold totalEnergy
        apply Finset.sum_le_sum
        intro i _
        have hmass :
            0 ≤ claddingMass
              ((S.tube i).outsideMask (sites i)) (state i) :=
          claddingMass_nonneg _ _
        have hpotential :
            λ₀ * claddingMass
                ((S.tube i).outsideMask (sites i)) (state i) ≤
              (C.strength i) * claddingMass
                ((S.tube i).outsideMask (sites i)) (state i) :=
          mul_le_mul_of_nonneg_right (hstrength i) hmass
        have henergy :
            (C.strength i) * claddingMass
                ((S.tube i).outsideMask (sites i)) (state i) ≤
              (S.tube i).sampledExteriorEnergy
                (sites i) (C.strength i) (state i) :=
          barrier_mass_le_energy
            ((S.tube i).outsideMask (sites i))
            (C.strength i) (state i)
        exact mul_le_mul_of_nonneg_left
          (hpotential.trans henergy) (S.weight_nonneg i)
  apply (le_div_iff₀ hλ₀).2
  exact hsum.trans hB

end Coating

end Family

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells
