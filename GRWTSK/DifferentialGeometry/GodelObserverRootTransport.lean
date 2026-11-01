/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.FunctionalAnalysis.ExactRootAndTransportContract
import GRWTSK.DifferentialGeometry.GodelObserverMetricVorticity

/-!
# Gödel observer-root energy and exact chart-isometry transport

Local attribution: grwtsk contributors.

The observer family index is the actual Gödel chart x coordinate, at fixed
scale a and boosted observer beta. Its state is a full four-tangent vector,
its root is the observer-spatial zero locus, and its energy is h_u(v,v).
The root and exact transport law are supplied by the physical coordinate
metric, not generated from a newly stipulated root or an arbitrary defect.

The simultaneous x translation and y rescaling is a genuine isometry.
It preserves the chosen observer, the full Lorentz metric, the positive
spatial tensor and the exact antisymmetric vorticity two-tensor.

This does not establish source Lorentzian curvature/Einstein equations
in Lean, or the existence of closed timelike curves.

SOURCE_PROOF_CANDIDATE / BUILD_NOT_RUN / KERNEL_NOT_RUN / AXIOMS_NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
namespace GRWTSK.DifferentialGeometry.GodelObserverRootTransport

open GRWTSK.FunctionalAnalysis.ExactRootAndTransportContract
open GRWTSK.DifferentialGeometry.GodelObserverMetricVorticity

/-- Each chart position has the actual observer-rest tangent measurement. -/
def observerFamily (p : Parameters) : RootFamily ℝ where
  Carrier := fun _ => Tangent
  Root := fun x v => SpatialRoot p x v
  energy := fun x v => spatialMetric p x v v
  energy_nonneg := by
    intro x v
    exact spatialMetric_self_nonneg p x v
  energy_eq_zero_iff_root := by
    intro x v
    exact spatialMetric_self_zero_iff_root p x v

/-- The metric-derived isometry is a concrete signed-zero transport. -/
def observerShift (p : Parameters) (x s : ℝ) :
    (observerFamily p).ExactTransport x (x + s) :=
  RootFamily.ExactTransport.of_energy_preserving
    (observerFamily p) (shiftTangent s) (by
      intro v
      exact spatialMetric_shift p x s v v)

/-- Root correspondence is proved for the original spatial observer root. -/
theorem observerShift_root (p : Parameters) (x s : ℝ)
    (v : Tangent) :
    (observerFamily p).Root (x+s) ((observerShift p x s).toFun v) ↔
      (observerFamily p).Root x v := by
  change SpatialRoot p (x+s) (shiftTangent s v) ↔ SpatialRoot p x v
  exact spatialRoot_shift p x s v

/-- The full metric isometry is independent evidence for the energy law. -/
theorem observerShift_lorentz (p : Parameters) (x s : ℝ)
    (v w : Tangent) :
    lorentzMetric p (x+s) ((observerShift p x s).toFun v)
      ((observerShift p x s).toFun w) = lorentzMetric p x v w :=
  lorentzMetric_shift p x s v w

/-- Exact vorticity transport uses the same physical coordinate change. -/
theorem observerShift_vorticity (p : Parameters) (x s : ℝ)
    (v w : Tangent) :
    vorticity p (x+s) ((observerShift p x s).toFun v)
      ((observerShift p x s).toFun w) = vorticity p x v w :=
  vorticity_shift p x s v w

end GRWTSK.DifferentialGeometry.GodelObserverRootTransport
end
