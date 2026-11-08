/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoRankFourObservedHeadData
import RadiusTwoHeadPacketData
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoIntegerEntries
/-!
# Integer source identity for the radius-two retained head

The actual HeadPacket scalar arrays are decoded on the same 44-bit grid.
For every physical pair, `physicalInt_eq` clears the signed frequency
and prime divided-difference denominators while preserving both outward
rounding operations. The pole cases retain their actual signed entries;
the scalar corner remains one half. Taking the two-orientation hull
commutes with decoding by the positive grid denominator.

The source comparison concerns the same observations and formula, not an
independent analytic argument. The numerical groups establish the exact
remaining literal endpoint equalities. No raw or remote product, high
floor or whole-window sign follows from this core identity.
Independent analytical review and novelty assessment remain pending.
-/
namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoRankFourObservedHead
open RadiusTwoCandidateEntries RadiusTwoCandidateHead
open RadiusTwoIntegerEntries
open GRWTSK.Algebra.LinearAlgebra.RationalRealBounds
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

def scalarAt (a : Array (Array (Int × Int))) (n : Nat) : GRWTSK.NumberTheory.WeilQuadraticForm.UnitWindowIntegerEntries.Endpoints :=
  let i := n-1
  (a[i/8]!)[i%8]!
def scalars : Scalars :=
  ⟨scalarAt RadiusTwoHeadPacket.boundaryData, scalarAt RadiusTwoHeadPacket.gammaData,
    scalarAt RadiusTwoHeadPacket.poleData, scalarAt RadiusTwoHeadPacket.primeData,
    scalarAt RadiusTwoHeadPacket.primeDiagonalData⟩

private theorem boundary_decode (n : Nat) :
    GRWTSK.NumberTheory.WeilQuadraticForm.UnitWindowIntegerEntries.decode grid (scalars.boundary n) = RadiusTwoHeadPacket.boundaryStored n := by rfl
private theorem gamma_decode (n : Nat) :
    GRWTSK.NumberTheory.WeilQuadraticForm.UnitWindowIntegerEntries.decode grid (scalars.gamma n) = RadiusTwoHeadPacket.gammaStored n := by rfl
private theorem pole_decode (n : Nat) :
    GRWTSK.NumberTheory.WeilQuadraticForm.UnitWindowIntegerEntries.decode grid (scalars.pole n) = RadiusTwoHeadPacket.poleStored n := by rfl
private theorem prime_decode (n : Nat) :
    GRWTSK.NumberTheory.WeilQuadraticForm.UnitWindowIntegerEntries.decode grid (scalars.prime n) = RadiusTwoHeadPacket.primeStored n := by rfl
private theorem primeDiagonal_decode (n : Nat) :
    GRWTSK.NumberTheory.WeilQuadraticForm.UnitWindowIntegerEntries.decode grid (scalars.primeDiagonal n) = RadiusTwoHeadPacket.primeDiagonalStored n := by rfl

theorem physical_source (m n : Nat) (hm : 0 < m) (hm64 : m ≤ 64) (hn : 0 < n) (hn64 : n ≤ 64) :
    physicalBoundsFrom 44 scalars.tables m n =
      physicalBoundsFrom RadiusTwoHeadPacket.bits RadiusTwoHeadPacket.tables m n := by
  have hma : 0 < m ∧ m ≤ 64 := ⟨hm,hm64⟩
  have hna : 0 < n ∧ n ≤ 64 := ⟨hn,hn64⟩
  simp only [physicalBoundsFrom, Scalars.tables, RadiusTwoHeadPacket.tables,
    RadiusTwoHeadPacket.bits, RadiusTwoHeadPacket.terms]
  split_ifs with hmn
  · simp only [Function.comp_apply, RadiusTwoHeadPacket.select, hna, ite_true,
      gamma_decode, primeDiagonal_decode, and_self]
  · simp only [RadiusTwoGammaPoleObservations.archOffDiagonalBoundsFrom,
      RadiusTwoPrimeObservations.primeOffDiagonalBoundsFrom, Function.comp_apply,
      RadiusTwoHeadPacket.select, hma, hna, ite_true, boundary_decode, prime_decode, and_self]

def rawInt : Head → Head → GRWTSK.NumberTheory.WeilQuadraticForm.UnitWindowIntegerEntries.Endpoints
  | .inl i, .inl j => physicalInt scalars (i.val+1) (j.val+1)
  | .inl i, .inr _ => scalars.pole (i.val+1)
  | .inr _, .inl j => scalars.pole (j.val+1)
  | .inr _, .inr _ => (2^43,2^43)

theorem rawInt_source (i j : Head) : GRWTSK.NumberTheory.WeilQuadraticForm.UnitWindowIntegerEntries.decode grid (rawInt i j) =
    headBoundsFrom RadiusTwoHeadPacket.bits RadiusTwoHeadPacket.tables i j := by
  rcases i with i | ⟨⟩ <;> rcases j with j | ⟨⟩
  · simp only [rawInt, headBoundsFrom]
    rw [physicalInt_eq]
    exact physical_source _ _ (by omega) (by have := i.isLt; omega)
      (by omega) (by have := j.isLt; omega)
  · simp only [rawInt, headBoundsFrom, RadiusTwoHeadPacket.tables]
    rw [pole_decode]
    simp only [RadiusTwoHeadPacket.select, show 0 < i.val + 1 ∧ i.val + 1 ≤ 64 from by have := i.isLt; omega,
      ite_true, and_self]
  · simp only [rawInt, headBoundsFrom, RadiusTwoHeadPacket.tables]
    rw [pole_decode]
    simp only [RadiusTwoHeadPacket.select, show 0 < j.val + 1 ∧ j.val + 1 ≤ 64 from by have := j.isLt; omega,
      ite_true, and_self]
  · norm_num [rawInt, headBoundsFrom, GRWTSK.NumberTheory.WeilQuadraticForm.UnitWindowIntegerEntries.decode, grid, point]

def hullInt (i j : Head) : GRWTSK.NumberTheory.WeilQuadraticForm.UnitWindowIntegerEntries.Endpoints :=
  (min (rawInt i j).1 (rawInt j i).1, max (rawInt i j).2 (rawInt j i).2)

theorem hullInt_source (i j : Head) : GRWTSK.NumberTheory.WeilQuadraticForm.UnitWindowIntegerEntries.decode grid (hullInt i j) =
    headBoundsHull RadiusTwoHeadPacket.bits RadiusTwoHeadPacket.tables i j := by
  dsimp only [headBoundsHull]
  rw [← rawInt_source i j, ← rawInt_source j i]
  have hd : (0:ℚ) ≤ grid := by norm_num [grid]
  simp only [hullInt, GRWTSK.NumberTheory.WeilQuadraticForm.UnitWindowIntegerEntries.decode, Int.cast_min, Int.cast_max, min_div_div_right hd, max_div_div_right hd]

/-- Exact integer endpoints of the pinned head table. -/
def storedInt (i j : Head) : GRWTSK.NumberTheory.WeilQuadraticForm.UnitWindowIntegerEntries.Endpoints := (lower i j,upper i j)
abbrev Good (i : Head) : Prop := ∀ j : Head, hullInt i j = storedInt i j
end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoRankFourObservedHead
