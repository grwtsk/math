import GRWTSK.SpecialFunctions.ElementaryClassicalFunctions.ExponentialAndTrigonometricFunctions.EulerExponentialCylinder
import Mathlib.Analysis.SpecialFunctions.Complex.LogDeriv
import Mathlib.Topology.Constructions
import Mathlib.Topology.Homeomorph.Defs

/-!
# The actual exponential quotient is homeomorphic to the punctured plane

Local attribution: grwtsk contributors.
Source: Grant Sanderson, Euler's formula with introductory group theory (2017),
published text adaptation River Way.
https://www.3blue1brown.com/lessons/eulers-formula-via-group-theory/
All proof bodies/construction fields: NOT_RUN_USER_DEFERRED.

Cylinder carries the STANDARD quotient topology of the complex plane by the
proved exponential period relation. The target carries its standard subtype
topology. We prove continuity by quotient descent and openness by explicitly
identifying images of quotient sets with subtype preimages of exponential
images. No topology is transported from the desired answer. The prior actual
set equivalence therefore upgrades to a homeomorphism. This does not identify
an R x Circle model or prove an oriented winding theorem.
-/

namespace GRWTSK.SpecialFunctions.EulerExponentialCylinder

/-- Continuity descends from the actual exponential into its nonzero subtype. -/
theorem continuous_cylinderMap : Continuous cylinderMap := by
  exact (Complex.continuous_exp.subtype_mk (fun z => Complex.exp_ne_zero z)).quotient_lift
    (fun z w h => Subtype.ext h)

/-- The precise image comparison needed to descend openness through the quotient. -/
theorem cylinderMap_image (s : Set Cylinder) :
    cylinderMap '' s = Subtype.val ⁻¹'
      (Complex.exp '' ((Quotient.mk periodSetoid) ⁻¹' s)) := by
  ext z
  constructor
  · rintro ⟨q, hq, h⟩
    obtain ⟨w, rfl⟩ := Quotient.exists_rep q
    exact ⟨w, hq, congrArg Subtype.val h⟩
  · rintro ⟨w, hw, h⟩
    exact ⟨Quotient.mk periodSetoid w, hw, Subtype.ext h⟩

/-- Actual exponential openness is retained, rather than assumed on the quotient. -/
theorem isOpenMap_cylinderMap : IsOpenMap cylinderMap := by
  intro s hs
  rw [cylinderMap_image]
  have hpre : IsOpen ((Quotient.mk periodSetoid) ⁻¹' s) :=
    hs.preimage continuous_quotient_mk'
  exact (Complex.isOpenMap_exp _ hpre).preimage continuous_subtype_val

/-- Same underlying equivalence as the earlier set construction, now with standard topology. -/
noncomputable def cylinderHomeomorph : Cylinder ≃ₜ PuncturedPlane :=
  cylinderEquiv.toHomeomorphOfContinuousOpen continuous_cylinderMap isOpenMap_cylinderMap

theorem cylinderHomeomorph_mk (z : ℂ) :
    (cylinderHomeomorph (Quotient.mk periodSetoid z) : ℂ) = Complex.exp z := rfl

theorem continuous_cylinderHomeomorph_inverse :
    Continuous cylinderHomeomorph.symm := cylinderHomeomorph.symm.continuous

/-- The topological result retains the already-proved actual radial interpretation. -/
theorem cylinderHomeomorph_log_radius (q : Cylinder) :
    Real.log ‖(cylinderHomeomorph q : ℂ)‖ = axialCoordinate q :=
  cylinder_log_radius q

end GRWTSK.SpecialFunctions.EulerExponentialCylinder
