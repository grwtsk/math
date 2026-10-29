/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib retain their upstream attribution and licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.FinitePeriodicLattice
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.YangMillsAndOtherGaugeTheoriesInQuantumFieldTheory.SU2WilsonPositiveType

/-!
# The local positive-type kernel at the actual temporal crossing plaquettes

The transported upper spatial link retains both temporal boundary links.
Its product with the inverse lower spatial link is literally the maintained
plaquette holonomy. The exact Wilson factor is therefore the local positive-
type kernel at these two arguments. Both paths have the same gauge endpoints.

At period 2*T the boundary bases include both time representatives 0 and T.
No boundary link is set to one or removed from a Haar integration. This local
identity is not a gauge-fixing integration identity or a global positivity
proof; independent left/right transports of just one kernel argument cannot
be discarded by the positive-type theorem.
SOURCE_PROOF_CANDIDATE / compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.Geometry.GaugeTheory.WilsonCrossPlaquetteKernel

open GRWTSK.Geometry.GaugeTheory.FinitePeriodicLattice
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.SU2WilsonPositiveType

variable {L : ℕ}

/-- The full three-link upper path, with both boundary temporal transports. -/
def transportedUpper (U : Configuration L SU2) (x : Vertex L) (ν : Fin 4) : SU2 :=
  U (x, 0) * U (shift x 0, ν) * (U (shift x ν, 0))⁻¹

def lowerSpatial (U : Configuration L SU2) (x : Vertex L) (ν : Fin 4) : SU2 :=
  U (x, ν)

theorem plaquetteHolonomy_eq_path_pair (U : Configuration L SU2)
    (x : Vertex L) (ν : Fin 4) :
    plaquetteHolonomy U x 0 ν = transportedUpper U x ν * (lowerSpatial U x ν)⁻¹ := rfl

/-- The actual upper and lower paths have identical source/target gauge factors. -/
theorem transportedUpper_gauge (h : Gauge L SU2) (U : Configuration L SU2)
    (x : Vertex L) (ν : Fin 4) :
    transportedUpper (gaugeTransform h U) x ν =
      h x * transportedUpper U x ν * (h (shift x ν))⁻¹ := by
  unfold transportedUpper gaugeTransform
  rw [shift_comm x ν 0]
  group

theorem lowerSpatial_gauge (h : Gauge L SU2) (U : Configuration L SU2)
    (x : Vertex L) (ν : Fin 4) :
    lowerSpatial (gaugeTransform h U) x ν =
      h x * lowerSpatial U x ν * (h (shift x ν))⁻¹ := rfl

/-- Exact source map at every temporal plaquette; no gauge fixing is used. -/
theorem temporalBoltzmann_eq_wilsonKernel (β : ℝ) (U : Configuration L SU2)
    (x : Vertex L) (ν : Fin 4) :
    Real.exp (-β * penalty (plaquetteHolonomy U x 0 ν)) =
      wilsonKernel β (transportedUpper U x ν) (lowerSpatial U x ν) := rfl

/-- Both temporal crossing layers on the periodic time circle are retained. -/
def BoundaryVertex (T : ℕ) :=
  {x : Vertex (2 * T) // (x 0).val = 0 ∨ (x 0).val = T}

/-- A genuine member of the maintained mu<nu plaquette inventory. -/
def boundaryPlaquette {T : ℕ} (x : BoundaryVertex T) (ν : Fin 4) (hν : 0 < ν) :
    Plaquette (2 * T) := (x.val, ⟨(0, ν), hν⟩)

/-- Concrete cross-plaquette consumer of the kernel map at either boundary. -/
theorem boundaryBoltzmann_eq_wilsonKernel {T : ℕ} (β : ℝ)
    (U : Configuration (2 * T) SU2) (x : BoundaryVertex T)
    (ν : Fin 4) (hν : 0 < ν) :
    Real.exp (-β * penalty (holonomy U (boundaryPlaquette x ν hν))) =
      wilsonKernel β (transportedUpper U x.val ν) (lowerSpatial U x.val ν) :=
  temporalBoltzmann_eq_wilsonKernel β U x.val ν

/-- Either boundary orientation can be used without deleting its transports.
This exact exchange is needed when the time-T crossing faces the other way. -/
theorem boundaryBoltzmann_eq_reverse {T : ℕ} (β : ℝ)
    (U : Configuration (2 * T) SU2) (x : BoundaryVertex T)
    (ν : Fin 4) (hν : 0 < ν) :
    Real.exp (-β * penalty (holonomy U (boundaryPlaquette x ν hν))) =
      wilsonKernel β (lowerSpatial U x.val ν) (transportedUpper U x.val ν) := by
  rw [boundaryBoltzmann_eq_wilsonKernel, wilsonKernel_symm]

/-- Gauge compatibility of the same two actual boundary paths. This does not
assert preservation of Haar by a map that collapses temporal links to one. -/
theorem boundaryKernel_gauge {T : ℕ} (β : ℝ) (h : Gauge (2 * T) SU2)
    (U : Configuration (2 * T) SU2) (x : BoundaryVertex T) (ν : Fin 4) :
    wilsonKernel β (transportedUpper (gaugeTransform h U) x.val ν)
      (lowerSpatial (gaugeTransform h U) x.val ν) =
      wilsonKernel β (transportedUpper U x.val ν) (lowerSpatial U x.val ν) := by
  rw [transportedUpper_gauge, lowerSpatial_gauge]
  exact wilsonKernel_bitransport β (h x.val) (h (shift x.val ν)) _ _

end GRWTSK.Geometry.GaugeTheory.WilsonCrossPlaquetteKernel
