/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported matrix, finite-type, periodic-lattice and gauge mathematics
retain their upstream attribution and licenses. -/
import GRWTSK.TopologicalGroupsLieGroups.CompactGroups.SU2DiagonalTrace
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSliceInvariantContinuousDensity

/-!
# A literal spatial Wilson plaquette and its full trace interval

The base is0 and the spatial directions are0,1 (full four-torus directions1,2).
Its four positive link indices are proved distinct at L>=8. Vary ONLY the
first positive link, leaving every other link1; the actual oriented holonomy
is then exactly that SU2 value, including both inverse factors. The existing
trace/gauge/continuity suppliers construct actual continuous invariant powers.
This parameter family is not asserted Haar preserving and does not fix a gauge.
SOURCE_PROOF_CANDIDATE; compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.Geometry.GaugeTheory.WilsonSliceTracePlaquette

open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.SU2DiagonalTrace
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGeometry
open GRWTSK.Geometry.GaugeTheory.WilsonSliceAction
open GRWTSK.Geometry.GaugeTheory.WilsonSliceRegularity
open GRWTSK.Geometry.GaugeTheory.WilsonSliceInvariantContinuousDensity

variable (L : ℕ) [NeZero L]

def fixedPlaquette : SpatialPlaquette L := (0, ⟨(0, 1), by decide⟩)

/-- Each entry is a positive-link index; entries2,3 occur inverted in holonomy. -/
def plaquetteLinks : Fin 4 → SpatialLink L :=
  ![(0, 0), (spatialShift (0 : SpatialVertex L) 0, 1),
    (spatialShift (0 : SpatialVertex L) 1, 0), (0, 1)]

theorem one_ne_zero_zmod (hL : 8 ≤ L) : (1 : ZMod L) ≠ 0 := by
  letI : Fact (1 < L) := ⟨by omega⟩
  intro hz
  have hv : (1 : ℕ) = 0 := by
    simpa only [ZMod.val_one, ZMod.val_zero] using congrArg ZMod.val hz
  exact Nat.one_ne_zero hv

theorem shift_zero_ne_zero (hL : 8 ≤ L) (i : Fin 3) :
    spatialShift (0 : SpatialVertex L) i ≠ 0 := by
  intro hz
  have hi : (1 : ZMod L) = 0 := by
    simpa only [spatialShift, Pi.zero_apply, if_pos rfl, zero_add] using congrFun hz i
  exact one_ne_zero_zmod L hL hi

theorem plaquetteLinks_injective (hL : 8 ≤ L) : Function.Injective (plaquetteLinks L) := by
  have h0 := shift_zero_ne_zero L hL (0 : Fin 3)
  have h1 := shift_zero_ne_zero L hL (1 : Fin 3)
  intro i j hij
  fin_cases i <;> fin_cases j <;>
    simp_all [plaquetteLinks, Ne.symm h0, Ne.symm h1]

def singleLinkSlice (u : SU2) : Slice L SU2 := by
  classical
  exact fun e => if e = plaquetteLinks L 0 then u else 1

theorem singleLinkSlice_holonomy (hL : 8 ≤ L) (u : SU2) :
    sliceHolonomy (singleLinkSlice L u) (fixedPlaquette L) = u := by
  have h1 : plaquetteLinks L 1 ≠ plaquetteLinks L 0 :=
    fun h => (by decide : (1 : Fin 4) ≠ 0) (plaquetteLinks_injective L hL h)
  have h2 : plaquetteLinks L 2 ≠ plaquetteLinks L 0 :=
    fun h => (by decide : (2 : Fin 4) ≠ 0) (plaquetteLinks_injective L hL h)
  have h3 : plaquetteLinks L 3 ≠ plaquetteLinks L 0 :=
    fun h => (by decide : (3 : Fin 4) ≠ 0) (plaquetteLinks_injective L hL h)
  change singleLinkSlice L u (plaquetteLinks L 0) *
    singleLinkSlice L u (plaquetteLinks L 1) *
      (singleLinkSlice L u (plaquetteLinks L 2))⁻¹ *
        (singleLinkSlice L u (plaquetteLinks L 3))⁻¹ = u
  simp only [singleLinkSlice, if_pos rfl, if_neg h1, if_neg h2, if_neg h3,
    inv_one, mul_one]

def traceObservable : C(Slice L SU2, ℝ) :=
  ⟨fun a => (Matrix.trace (matrix (sliceHolonomy a (fixedPlaquette L)))).re,
    Complex.continuous_re.comp
      (continuous_trace.comp (continuous_sliceHolonomy L (fixedPlaquette L)))⟩

theorem traceObservable_gauge (g : SliceGauge L SU2) (a : Slice L SU2) :
    traceObservable L (sliceGaugeAction g a) = traceObservable L a := by
  change (Matrix.trace (matrix (sliceHolonomy (sliceGaugeAction g a) (fixedPlaquette L)))).re = _
  rw [sliceHolonomy_gauge, trace_conjugation]

theorem traceObservable_bounds (a : Slice L SU2) :
    traceObservable L a ∈ Set.Icc (-2 : ℝ) 2 :=
  real_trace_bounds (sliceHolonomy a (fixedPlaquette L))

theorem traceObservable_singleLink (hL : 8 ≤ L) (u : SU2) :
    traceObservable L (singleLinkSlice L u) = (Matrix.trace (matrix u)).re := by
  change (Matrix.trace (matrix (sliceHolonomy (singleLinkSlice L u) (fixedPlaquette L)))).re = _
  rw [singleLinkSlice_holonomy L hL u]

theorem traceObservable_attains (hL : 8 ≤ L) (r : ℝ) (hr : r ∈ Set.Icc (-2 : ℝ) 2) :
    ∃ a : Slice L SU2, traceObservable L a = r := by
  refine ⟨singleLinkSlice L (intervalDiagonal r hr), ?_⟩
  rw [traceObservable_singleLink L hL, intervalDiagonal_trace]

theorem range_traceObservable (hL : 8 ≤ L) :
    Set.range (traceObservable L) = Set.Icc (-2 : ℝ) 2 := by
  ext r
  constructor
  · rintro ⟨a, rfl⟩
    exact traceObservable_bounds L a
  · exact traceObservable_attains L hL r

/-- Actual continuous real gauge-invariant observables, including f0=1. -/
def tracePower (n : ℕ) : invariantContinuousSpace L :=
  ⟨⟨fun a => (traceObservable L a) ^ n, (traceObservable L).continuous.pow n⟩,
    fun g a => by
      change (traceObservable L (sliceGaugeAction g a)) ^ n = _
      rw [traceObservable_gauge L g a]⟩

@[simp] theorem tracePower_apply (n : ℕ) (a : Slice L SU2) :
    (tracePower L n).val a = (traceObservable L a) ^ n := rfl

end GRWTSK.Geometry.GaugeTheory.WilsonSliceTracePlaquette
