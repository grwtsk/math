/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonBlockArithmeticCovariance

/-!
# Locality of the actual four-dimensional Wilson action

Changing links in A affects only plaquettes touching A. The exact difference
retains every affected plaquette, including periodic link coincidences. This is
a precursor to conditional density cancellation, not a conditional independence
or block contraction theorem. SOURCE_PROOF_CANDIDATE; all qualification NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.Geometry.GaugeTheory.WilsonLocalAction
open GRWTSK.Geometry.GaugeTheory.FinitePeriodicLattice
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.SU2Topology
open GRWTSK.Geometry.GaugeTheory.FiniteSU2Wilson
open GRWTSK.Geometry.GaugeTheory.WilsonBlockArithmeticCovariance
variable (L : ℕ) [NeZero L]

/-- No incidence count or nondegenerate-period assumption is imposed. -/
def affected (A : Finset (Link L)) : Finset (Plaquette L) :=
  Finset.univ.filter (fun p => ∃ l ∈ plaquetteLinks L p, l ∈ A)

theorem holonomy_congr_on (U V : Configuration L SU2) (p : Plaquette L)
    (h : ∀ l ∈ plaquetteLinks L p, U l = V l) :
    holonomy U p = holonomy V p := by
  have h₁ := h (p.1,p.2.1.1) (by simp [plaquetteLinks])
  have h₂ := h (shift p.1 p.2.1.1,p.2.1.2) (by simp [plaquetteLinks])
  have h₃ := h (shift p.1 p.2.1.2,p.2.1.1) (by simp [plaquetteLinks])
  have h₄ := h (p.1,p.2.1.2) (by simp [plaquetteLinks])
  simp only [holonomy, plaquetteHolonomy, h₁, h₂, h₃, h₄]

theorem energy_eq_of_not_affected (A : Finset (Link L))
    (U V : Configuration L SU2) (hUV : ∀ l, l ∉ A → U l = V l)
    (p : Plaquette L) (hp : p ∉ affected L A) :
    plaquetteEnergy L p U = plaquetteEnergy L p V := by
  unfold plaquetteEnergy
  congr 1
  apply holonomy_congr_on L U V p
  intro l hl
  apply hUV l
  intro hA
  apply hp
  simp only [affected, Finset.mem_filter, Finset.mem_univ, true_and]
  exact ⟨l,hl,hA⟩

/-- The exterior action cancels exactly before any bound or normalization. -/
theorem action_difference (A : Finset (Link L)) (U V : Configuration L SU2)
    (hUV : ∀ l, l ∉ A → U l = V l) :
    wilsonAction L U - wilsonAction L V =
      ∑ p ∈ affected L A, (plaquetteEnergy L p U-plaquetteEnergy L p V) := by
  change (∑ p : Plaquette L, plaquetteEnergy L p U) -
    (∑ p : Plaquette L, plaquetteEnergy L p V) = _
  rw [← Finset.sum_sub_distrib]
  symm
  apply Finset.sum_subset (Finset.subset_univ _)
  intro p _ hp
  exact sub_eq_zero.mpr (energy_eq_of_not_affected L A U V hUV p hp)

/-- A local affected action with the same literal energies as the full action. -/
def localAction (A : Finset (Link L)) (U : Configuration L SU2) : ℝ :=
  ∑ p ∈ affected L A, plaquetteEnergy L p U

theorem action_difference_eq_local (A : Finset (Link L))
    (U V : Configuration L SU2) (hUV : ∀ l, l ∉ A → U l = V l) :
    wilsonAction L U-wilsonAction L V = localAction L A U-localAction L A V := by
  rw [action_difference L A U V hUV]
  exact Finset.sum_sub_distrib

end GRWTSK.Geometry.GaugeTheory.WilsonLocalAction
