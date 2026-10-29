/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib retain their upstream attribution and licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonBoundaryGaugeIntegration

/-!
# Restriction of the actual observable to one half

The observable is obtained by filling the other half and the crossings by
one. Its value on a glued configuration follows from the existing exact
positive-link dependence. Reflection at unit crossings exchanges the two
half fields by a proved full-field equality. No factorization field for the
observable is assumed.
SOURCE_PROOF_CANDIDATE / compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
attribute [local instance] Classical.propDecidable
open scoped ComplexConjugate

namespace GRWTSK.Geometry.GaugeTheory.WilsonHalfObservables

open GRWTSK.Geometry.GaugeTheory.FinitePeriodicLattice
open GRWTSK.Geometry.GaugeTheory.PositiveTimeObservables
open GRWTSK.Geometry.GaugeTheory.BondTimeReflection
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.WilsonTimeSplit
open GRWTSK.Geometry.GaugeTheory.WilsonHaarCoordinates
open GRWTSK.Geometry.GaugeTheory.WilsonReflectedGauge

variable (T : ℕ) [NeZero (2 * T)]

theorem reflection_glue_unit (hT : 2 ≤ T) (u v : HalfConfig T) :
    reflection (glue T hT u v 1) = glue T hT v u 1 := by
  apply config_ext T hT
  · intro e
    rw [reflection_glue_plus, glue_plus]
  · intro e
    rw [reflection_involutive, glue_plus, reflection_glue_plus]
  · intro e
    have hr : crossingLink T (reflectLink e.val) :=
      (crossing_reflect_iff hT e.val).mpr e.prop
    have hv : glue T hT u v 1 (reflectLink e.val) = 1 :=
      glue_cross T hT u v 1 ⟨reflectLink e.val, hr⟩
    change (if e.val.2 = 0 then
      (glue T hT u v 1 (reflectLink e.val))⁻¹
      else glue T hT u v 1 (reflectLink e.val)) = glue T hT v u 1 e.val
    rw [if_pos e.prop.1, hv, inv_one, glue_cross]
    rfl

def halfObservable (hT : 2 ≤ T) (F : positiveTimeAlgebra T) (u : HalfConfig T) : ℂ :=
  F.val (glue T hT u 1 1)

/-- Exact factorization supplied by positive-link dependence, not assumed. -/
theorem observable_glue (hT : 2 ≤ T) (F : positiveTimeAlgebra T)
    (u v : HalfConfig T) (t : CrossConfig T) :
    F.val (glue T hT u v t) = halfObservable T hT F u := by
  apply dependsOnPositiveLinks_of_mem T F
  intro e he
  exact (glue_plus T hT u v t ⟨e, he⟩).trans
    (glue_plus T hT u 1 1 ⟨e, he⟩).symm

theorem reflected_observable_glue_unit (hT : 2 ≤ T) (F : positiveTimeAlgebra T)
    (u v : HalfConfig T) :
    F.val (reflection (glue T hT u v 1)) = halfObservable T hT F v := by
  rw [reflection_glue_unit, observable_glue]

theorem reflectionProduct_glue_unit (hT : 2 ≤ T) (F : positiveTimeAlgebra T)
    (u v : HalfConfig T) :
    conj (F.val (reflection (glue T hT u v 1))) * F.val (glue T hT u v 1) =
      conj (halfObservable T hT F v) * halfObservable T hT F u := by
  rw [reflected_observable_glue_unit, observable_glue]

end GRWTSK.Geometry.GaugeTheory.WilsonHalfObservables
