# Complete source: GRWTSK.Geometry.Hodge.MoserRationalCellularComparison

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dd09627ce38d24a11fe6d0b766a93da76ef0bef5` · SHA-256 `f6f6c04a9445dfbd107f5ccce058665d6dba537901411ac4384f28d8bd6e6a0b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Geometry.Hodge.RationalCycleCellular
import GRWTSK.Geometry.Hodge.MoserMatrixHodge

namespace GRWTSK.Geometry.Hodge.MoserRationalCellularComparison

open GRWTSK.Geometry.Hodge.FiniteGraphCellular
open GRWTSK.Geometry.Hodge.FiniteMatrixHodge
open GRWTSK.Geometry.Hodge.MoserMatrixHodge

/-- Rational cellular cocycles on the exact source-oriented Moser incidence object. -/
abbrev RationalCellClass := Moser.incidence.hZero ℚ

/-- Finite fixture in which rational cycle witnesses are actual rational cellular cocycles. -/
def rationalHodgeData :
    RationalHodgeData RationalCellClass RationalCellClass where
  cycleClass := LinearMap.id

/-- The finite fixture cycle-class map is surjective. -/
theorem rationalHodgeData_surjective : rationalHodgeData.IsSurjective := by
  intro h
  exact ⟨h, rfl⟩

/-- Source-bound local theorem for the finite fixture, not for a CM abelian variety. -/
def sourceTheorem : SourceBoundRationalHodgeTheorem rationalHodgeData where
  source :=
    { repository := "grwtsk/math"
      revision := "branch-head-at-replay"
      path := "GRWTSK/Geometry/Hodge/MoserRationalCellularComparison.lean"
      declaration := "rationalHodgeData_surjective" }
  variety := "finite Moser incidence fixture; not an algebraic variety"
  codimension := 0
  realization := "identity on rational cellular cocycles"
  surjective := rationalHodgeData_surjective

/-- Identity comparison into the exact finite cellular cohomology class space. -/
def comparison :
    CycleCellularComparison rationalHodgeData RationalCellClass where
  hodgeToCell := LinearMap.id
  cycleToCell := LinearMap.id
  commute := rfl

/-- Extend one rational cellular cocycle to a real zero-cochain. -/
def toRealCochain (z : RationalCellClass) : Fin 7 → ℝ :=
  OrientedIncidence.castCochain z.1

/-- Rational cocycles become harmonic real cochains for the positive incidence Laplacian. -/
theorem toRealCochain_harmonic (z : RationalCellClass) :
    MoserMatrixHodge.hodgeData.IsHarmonic0 (toRealCochain z) := by
  apply FiniteMatrixHodge.harmonic_of_coboundary_zero
  have hz := Moser.cast_rational_cocycle z.2
  change Moser.incidence.coboundary ℝ (toRealCochain z) = 0
  exact hz

/-- Complete finite cycle-to-cellular-to-positive-Hodge realization theorem. -/
theorem exists_cycle_and_real_harmonic (h : RationalCellClass) :
    ∃ z : RationalCellClass,
      rationalHodgeData.cycleClass z = h ∧
      comparison.cycleToCell z = comparison.hodgeToCell h ∧
      MoserMatrixHodge.hodgeData.IsHarmonic0 (toRealCochain z) := by
  refine ⟨h, rfl, rfl, toRealCochain_harmonic h⟩

/-- The finite comparison retains the exact constant harmonic kernel of the Moser model. -/
theorem real_harmonic_iff_constant (x : Fin 7 → ℝ) :
    MoserMatrixHodge.hodgeData.IsHarmonic0 x ↔
      ∃ c : ℝ, x = fun _ => c :=
  MoserMatrixHodge.harmonic_iff_constant x

end GRWTSK.Geometry.Hodge.MoserRationalCellularComparison
```
