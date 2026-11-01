/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonBlockArithmeticCovariance
import GRWTSK.DifferentialGeometry.GodelObserverMetricVorticity

/-!
# Complete periodic Wilson residue fibers with an independent Gödel observer port

Local mathematical attribution: grwtsk contributors.

The genuine four-dimensional periodic SU(2) Wilson regulator has a plaquette
index (ZMod L)^4 times one of six oriented direction pairs. Reading the first
base-vertex coordinate is a genuine cyclic residue label ZMod L. Every residue
has a plaquette witness, including the periodic seam. The fibers partition
the ACTUAL signed-free Wilson plaquette penalties, and their complete sum is
the original gauge-invariant Wilson action, with no discarded plaquette.

Each fiber has a nonnegative gauge-invariant energy bounded by twice its
actual cardinality. Separately the Gödel observer's real spatial quadratic
and its antisymmetric vorticity are transported by the ACTUAL chart isometry.
The simultaneous product of these two source-specific symmetries preserves
each observation, without declaring their energies equal or deriving a
physical interaction between gravity and Yang--Mills.

For L=7 there are seven nonempty lattice classes. Their ZMod 7 labels are
not, without an additional source map, the seven Fin 7 frequency bins of
the spring visualizer. No continuum limit, uniform mass gap, spectral
clustering, Einstein--Yang--Mills dynamics or RH cancellation is claimed.

SOURCE_PROOF_CANDIDATE / LEAN_BUILD_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOMS_NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Geometry.GaugeTheory.WilsonGodelResidueCover

open GRWTSK.Geometry.GaugeTheory.FinitePeriodicLattice
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.FiniteSU2Wilson
open GRWTSK.Geometry.GaugeTheory.WilsonBlockArithmeticCovariance
open GRWTSK.DifferentialGeometry.GodelObserverMetricVorticity

variable (L : ℕ) [NeZero L]

/-- The actual first coordinate of the plaquette base point on the four-torus. -/
def latticeResidue (p : Plaquette L) : ZMod L := p.1 0

/-- Every cyclic class is represented by a real plaquette, not a dummy label. -/
theorem latticeResidue_surjective : Function.Surjective (latticeResidue L) := by
  intro r
  refine ⟨((fun i : Fin 4 => if i = 0 then r else 0),
      (⟨(0, 1), by decide⟩ : DirectionPair)), ?_⟩
  simp [latticeResidue]

/-- The complete physical inventory in one base-coordinate residue. -/
def residueFiber (r : ZMod L) : Finset (Plaquette L) :=
  Finset.univ.filter (fun p : Plaquette L => latticeResidue L p = r)

/-- No cyclic residue is missing from the actual periodic lattice. -/
theorem residueFiber_nonempty (r : ZMod L) : (residueFiber L r).Nonempty := by
  rcases latticeResidue_surjective L r with ⟨p, hp⟩
  exact ⟨p, by simp [residueFiber, hp]⟩

/-- Source-preserving class energy: sum the ACTUAL SU(2) Wilson penalties. -/
def residueEnergy (r : ZMod L) (U : Configuration L SU2) : ℝ :=
  blockEnergy L (residueFiber L r) U

theorem residueEnergy_nonneg (r : ZMod L) (U : Configuration L SU2) :
    0 ≤ residueEnergy L r U := by
  unfold residueEnergy blockEnergy
  exact Finset.sum_nonneg (fun p _ => (plaquetteEnergy_bounds L p U).1)

/-- No class can carry more than two units per actual plaquette. -/
theorem residueEnergy_le_two_card (r : ZMod L) (U : Configuration L SU2) :
    residueEnergy L r U ≤ 2 * ((residueFiber L r).card : ℝ) := by
  unfold residueEnergy blockEnergy
  calc
    (∑ p ∈ residueFiber L r, plaquetteEnergy L p U) ≤
        ∑ _p ∈ residueFiber L r, (2 : ℝ) := by
      apply Finset.sum_le_sum
      intro p _
      exact (plaquetteEnergy_bounds L p U).2
    _ = 2 * ((residueFiber L r).card : ℝ) := by
      simp [mul_comm]

/-- Each residue energy is gauge invariant by the actual holonomy law. -/
theorem residueEnergy_gauge (r : ZMod L) (h : Gauge L SU2)
    (U : Configuration L SU2) :
    residueEnergy L r (gaugeTransform h U) = residueEnergy L r U :=
  blockEnergy_gauge L (residueFiber L r) h U

/-- Complete cyclic covering: every Wilson plaquette is counted exactly once. -/
theorem residueEnergy_cover (U : Configuration L SU2) :
    (∑ r : ZMod L, residueEnergy L r U) = wilsonAction L U := by
  classical
  calc
    (∑ r : ZMod L, residueEnergy L r U) =
        ∑ r : ZMod L, ∑ p : Plaquette L,
          if latticeResidue L p = r then plaquetteEnergy L p U else 0 := by
      simp only [residueEnergy, blockEnergy, residueFiber, Finset.sum_filter]
    _ = ∑ p : Plaquette L, ∑ r : ZMod L,
          if latticeResidue L p = r then plaquetteEnergy L p U else 0 := by
      rw [Finset.sum_comm]
    _ = ∑ p : Plaquette L, plaquetteEnergy L p U := by
      apply Finset.sum_congr rfl
      intro p _
      simp
    _ = wilsonAction L U := rfl

/-- The full seven-color regulator instance is a theorem, not an assumed cover. -/
theorem seven_residue_cover (U : Configuration 7 SU2) :
    (∑ r : ZMod 7, residueEnergy 7 r U) = wilsonAction 7 U :=
  residueEnergy_cover 7 U

/-- The Gödel isometry and Wilson gauge action retain their two distinct
observations: spatial energy, nonzero vorticity, and EVERY cyclic class.
This is product transport, not an Einstein--Yang--Mills field equation. -/
theorem observer_gauge_residue_transport
    (p : Parameters) (x s : ℝ) (v w : Tangent)
    (h : Gauge L SU2) (U : Configuration L SU2) :
    spatialMetric p (x + s) (shiftTangent s v) (shiftTangent s v) =
        spatialMetric p x v v ∧
      vorticity p (x + s) (shiftTangent s v) (shiftTangent s w) =
        vorticity p x v w ∧
      (∀ r : ZMod L,
        residueEnergy L r (gaugeTransform h U) = residueEnergy L r U) := by
  exact ⟨spatialMetric_shift p x s v v,
    vorticity_shift p x s v w,
    fun r => residueEnergy_gauge L r h U⟩

/-- The complete finite budget, retaining physical and observer energies
as separate quantities with separate normalization. -/
theorem observer_and_all_residue_bounds
    (p : Parameters) (x : ℝ) (v : Tangent)
    (U : Configuration L SU2) :
    0 ≤ spatialMetric p x v v ∧
      (∀ r : ZMod L,
        0 ≤ residueEnergy L r U ∧
        residueEnergy L r U ≤ 2 * ((residueFiber L r).card : ℝ)) ∧
      (∑ r : ZMod L, residueEnergy L r U) = wilsonAction L U := by
  refine ⟨spatialMetric_self_nonneg p x v, ?_, residueEnergy_cover L U⟩
  intro r
  exact ⟨residueEnergy_nonneg L r U, residueEnergy_le_two_card L r U⟩

end GRWTSK.Geometry.GaugeTheory.WilsonGodelResidueCover
