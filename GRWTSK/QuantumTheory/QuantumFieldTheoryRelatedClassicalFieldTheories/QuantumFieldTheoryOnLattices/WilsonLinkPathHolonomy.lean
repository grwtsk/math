/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.TopologicalGroupsLieGroups.CompactGroups.SU2TrigonometricPath
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.FinitePeriodicLattice

/-!
# Exact four-slot Wilson holonomy after an actual SU2 link perturbation

All link-equality tests remain visible. Repeated positive/inverse occurrences
at degenerate periods are not discarded. The inverse order is H^-1*D(-t),
not D(-t)*H^-1. No derivative or uniform contraction is asserted here.
SOURCE_PROOF_CANDIDATE; all four qualification facets NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Geometry.GaugeTheory.WilsonLinkPathHolonomy
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.SU2DiagonalTrace
open GRWTSK.Geometry.GaugeTheory.SU2TrigonometricPath
open GRWTSK.Geometry.GaugeTheory.FinitePeriodicLattice

theorem path_inv (t : ℝ) : (path t)⁻¹ = path (-t) := by
  apply Subtype.ext
  change star (matrix (path t)) = matrix (path (-t))
  ext i j
  fin_cases i <;> fin_cases j <;>
    apply Complex.ext <;>
    simp [path, diagonalSU2, diagonalMatrix, entry, matrix, Matrix.star_apply]

variable (L : ℕ) [NeZero L]

def replaceLink (U : Configuration L SU2) (e : Link L) (t : ℝ) : Configuration L SU2 :=
  fun l => if l = e then path t*U e else U l

def positiveSlot (U : Configuration L SU2) (e : Link L) (t : ℝ) (l : Link L) : SU2 :=
  if l = e then path t*U e else U l

def negativeSlot (U : Configuration L SU2) (e : Link L) (t : ℝ) (l : Link L) : SU2 :=
  if l = e then (U e)⁻¹*path (-t) else (U l)⁻¹

theorem replace_apply (U : Configuration L SU2) (e l : Link L) (t : ℝ) :
    replaceLink L U e t l = positiveSlot L U e t l := rfl

theorem replace_inverse_apply (U : Configuration L SU2) (e l : Link L) (t : ℝ) :
    (replaceLink L U e t l)⁻¹ = negativeSlot L U e t l := by
  by_cases h : l = e
  · simp [replaceLink, negativeSlot, h, mul_inv_rev, path_inv]
  · simp [replaceLink, negativeSlot, h]

/-- The literal plaquette keeps all four occurrence tests in their original order. -/
theorem holonomy_replace (U : Configuration L SU2) (e : Link L) (t : ℝ)
    (p : Plaquette L) :
    holonomy (replaceLink L U e t) p =
      positiveSlot L U e t (p.1,p.2.1.1)*
      positiveSlot L U e t (shift p.1 p.2.1.1,p.2.1.2)*
      negativeSlot L U e t (shift p.1 p.2.1.2,p.2.1.1)*
      negativeSlot L U e t (p.1,p.2.1.2) := by
  unfold holonomy plaquetteHolonomy
  rw [replace_inverse_apply, replace_inverse_apply]
  rfl

end GRWTSK.Geometry.GaugeTheory.WilsonLinkPathHolonomy
