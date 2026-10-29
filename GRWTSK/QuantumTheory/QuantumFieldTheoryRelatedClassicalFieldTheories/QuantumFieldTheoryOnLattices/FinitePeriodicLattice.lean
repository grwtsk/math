/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib's ZMod, group and topology results retain their upstream authorship
and Apache-2.0 license. -/
import Mathlib.Data.ZMod.Basic
import Mathlib.Tactic.Group
import Mathlib.Topology.Algebra.Group.Basic
import Mathlib.Topology.Constructions

/-!
# Positive links and oriented plaquettes of a periodic four-dimensional lattice

The carrier is the literal periodic lattice `(Z/LZ)^4`. Positive links and
the six ordered direction pairs `mu<nu` index the finite Wilson regulator.
No negative link variable is introduced: the last two sides of an oriented
plaquette are inverses of the corresponding positive link variables.

Gauge covariance is proved in a group and is consumed with the actual SU(2)
matrix group by the Wilson action. The algebra itself needs no lower bound
on L. The finite regulator consumer uses L>=3, in particular a positive L.
This source constructs no continuum field, quantum Hilbert space or mass gap.

SOURCE_PROOF_CANDIDATE / compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false

namespace GRWTSK.Geometry.GaugeTheory.FinitePeriodicLattice

abbrev Vertex (L : ℕ) := Fin 4 → ZMod L
abbrev Link (L : ℕ) := Vertex L × Fin 4
abbrev DirectionPair := {p : Fin 4 × Fin 4 // p.1 < p.2}
abbrev Plaquette (L : ℕ) := Vertex L × DirectionPair
abbrev Configuration (L : ℕ) (G : Type*) := Link L → G
abbrev Gauge (L : ℕ) (G : Type*) := Vertex L → G

/-- Translation by one in the specified periodic coordinate. -/
def shift {L : ℕ} (x : Vertex L) (μ : Fin 4) : Vertex L :=
  fun ν => x ν + if ν = μ then 1 else 0

/-- The two paths to the far plaquette vertex agree on the actual torus. -/
theorem shift_comm {L : ℕ} (x : Vertex L) (μ ν : Fin 4) :
    shift (shift x μ) ν = shift (shift x ν) μ := by
  funext ρ
  simp only [shift]
  ac_rfl

section Group

variable {L : ℕ} {G : Type*} [Group G]

/-- The endpoint gauge factors act on the actual positive link variable. -/
def gaugeTransform (h : Gauge L G) (U : Configuration L G) : Configuration L G :=
  fun e => h e.1 * U e * (h (shift e.1 e.2))⁻¹

theorem gauge_one (U : Configuration L G) : gaugeTransform 1 U = U := by
  funext e
  simp [gaugeTransform]

/-- Vertex multiplication gives the genuine gauge action law. -/
theorem gauge_mul (h k : Gauge L G) (U : Configuration L G) :
    gaugeTransform (h * k) U = gaugeTransform h (gaugeTransform k U) := by
  funext e
  simp only [gaugeTransform, Pi.mul_apply, mul_inv_rev]
  group

/-- A fixed gauge transformation is a bijection, with the inverse vertex
gauge. No probability invariance is assumed by this algebraic construction. -/
def gaugeEquiv (h : Gauge L G) : Configuration L G ≃ Configuration L G where
  toFun := gaugeTransform h
  invFun := gaugeTransform h⁻¹
  left_inv U := by rw [← gauge_mul, inv_mul_cancel, gauge_one]
  right_inv U := by rw [← gauge_mul, mul_inv_cancel, gauge_one]

@[simp] theorem gaugeEquiv_apply (h : Gauge L G) (U : Configuration L G) :
    gaugeEquiv h U = gaugeTransform h U := rfl

/-- The closed oriented square based at x, using both inverse links. -/
def plaquetteHolonomy (U : Configuration L G) (x : Vertex L) (μ ν : Fin 4) : G :=
  U (x, μ) * U (shift x μ, ν) * (U (shift x ν, μ))⁻¹ * (U (x, ν))⁻¹

/-- The holonomy at the actual finite plaquette index, whose directions obey
mu<nu. The algebraic formula also makes sense for any two directions. -/
def holonomy (U : Configuration L G) (p : Plaquette L) : G :=
  plaquetteHolonomy U p.1 p.2.1.1 p.2.1.2

/-- All intermediate gauge factors cancel. The surviving conjugation is at
the initial vertex; neither inverse link nor far-corner identification is lost. -/
theorem plaquetteHolonomy_gauge (h : Gauge L G) (U : Configuration L G)
    (x : Vertex L) (μ ν : Fin 4) :
    plaquetteHolonomy (gaugeTransform h U) x μ ν =
      h x * plaquetteHolonomy U x μ ν * (h x)⁻¹ := by
  unfold plaquetteHolonomy gaugeTransform
  rw [shift_comm x ν μ]
  group

/-- Gauge covariance on precisely the plaquette inventory used by the action. -/
theorem holonomy_gauge (h : Gauge L G) (U : Configuration L G) (p : Plaquette L) :
    holonomy (gaugeTransform h U) p = h p.1 * holonomy U p * (h p.1)⁻¹ :=
  plaquetteHolonomy_gauge h U p.1 p.2.1.1 p.2.1.2

section Topology

variable [TopologicalSpace G] [IsTopologicalGroup G]

/-- The fixed gauge map is continuous in the literal product topology. -/
theorem continuous_gaugeTransform (h : Gauge L G) :
    Continuous (gaugeTransform h : Configuration L G → Configuration L G) := by
  apply continuous_pi
  intro e
  change Continuous (fun U : Configuration L G =>
    h e.1 * U e * (h (shift e.1 e.2))⁻¹)
  exact (continuous_const.mul (continuous_apply e)).mul continuous_const

/-- Gauge transformation as an actual homeomorphism of configuration space. -/
def gaugeHomeomorph (h : Gauge L G) : Configuration L G ≃ₜ Configuration L G where
  toEquiv := gaugeEquiv h
  continuous_toFun := continuous_gaugeTransform h
  continuous_invFun := continuous_gaugeTransform h⁻¹

/-- Every finite plaquette holonomy is continuous. -/
theorem continuous_holonomy (p : Plaquette L) :
    Continuous (fun U : Configuration L G => holonomy U p) := by
  unfold holonomy plaquetteHolonomy
  exact (((continuous_apply (p.1, p.2.1.1)).mul
    (continuous_apply (shift p.1 p.2.1.1, p.2.1.2))).mul
      (continuous_apply (shift p.1 p.2.1.2, p.2.1.1)).inv).mul
        (continuous_apply (p.1, p.2.1.2)).inv

end Topology
end Group

end GRWTSK.Geometry.GaugeTheory.FinitePeriodicLattice
