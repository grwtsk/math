/- Copyright (c) 2026 grwtsk contributors. MIT.

Continuous circle-action source candidates on the complex three-phase residual
plane. The existing three-phase coefficient heat is transported unchanged.
All four positive Weil observations are retained before polarization.

Source candidate only: compilation, kernel checking, transitive axiom audit
and downstream Navier--Stokes operator comparison are NOT_RUN.
The action constructed here is a U(1) subgroup on the residual plane, not
a proof that the full transport group is U(2), SU(3), or QCD color.
-/
import GRWTSK.GeneralTopology.ThreePhaseCoherentResidual
import GRWTSK.FunctionalAnalysis.InnerProductSpacesAndTheirGeneralizationsHilbertSpaces.WeilPolarization
import Mathlib.Analysis.Complex.Trigonometric
import Mathlib.Tactic

set_option autoImplicit false

noncomputable section

namespace GRWTSK.Algebra.LinearAlgebra.ThreePhaseResidualCircleAction

open GRWTSK.Algebra.LinearAlgebra.ThreePhaseCoherentResidual

/-- The residual directions of the three-coordinate fiber rotate by the
same complex phase, while the coherent component is fixed. -/
def twist (a : ℂ) (z : Phase3) : Phase3 :=
  fun j => mean z + a * residual z j

theorem mean_twist (a : ℂ) (z : Phase3) :
    mean (twist a z) = mean z := by
  simp only [mean, twist, residual]
  ring

theorem residual_twist (a : ℂ) (z : Phase3) (j : Fin 3) :
    residual (twist a z) j = a * residual z j := by
  simp only [residual, twist, mean_twist]
  ring

/-- Identity phase reconstructs the complete original source. -/
theorem twist_one (z : Phase3) : twist 1 z = z := by
  funext j
  simp [twist, residual]

/-- A complete composition law on the complex residual fiber. -/
theorem twist_comp (a b : ℂ) (z : Phase3) :
    twist a (twist b z) = twist (a * b) z := by
  funext j
  simp only [twist, mean_twist, residual_twist]
  ring

theorem mean_smul (c : ℂ) (z : Phase3) :
    mean (c • z) = c * mean z := by
  simp only [mean, Pi.smul_apply, smul_eq_mul]
  ring

theorem residual_add (z w : Phase3) :
    residual (z + w) = residual z + residual w := by
  funext j
  simp only [residual, Pi.add_apply, mean_add]
  ring

theorem residual_smul (c : ℂ) (z : Phase3) :
    residual (c • z) = c • residual z := by
  funext j
  simp only [residual, Pi.smul_apply, smul_eq_mul, mean_smul]
  ring

theorem twist_add (a : ℂ) (z w : Phase3) :
    twist a (z + w) = twist a z + twist a w := by
  funext j
  simp only [twist, Pi.add_apply, mean_add, residual_add]
  ring

theorem twist_smul (a c : ℂ) (z : Phase3) :
    twist a (c • z) = c • twist a z := by
  funext j
  simp only [twist, Pi.smul_apply, smul_eq_mul, mean_smul, residual_smul]
  ring

theorem twist_sub (a : ℂ) (z w : Phase3) :
    twist a (z - w) = twist a z - twist a w := by
  calc
    twist a (z - w) = twist a (z + (-1 : ℂ) • w) := by simp
    _ = twist a z + (-1 : ℂ) • twist a w := by
      rw [twist_add, twist_smul]
    _ = twist a z - twist a w := by simp

/-- The residual transport is genuinely complex-linear on the original
three-coordinate vector space, rather than only an action on four probes. -/
def twistLinear (a : ℂ) : Phase3 →ₗ[ℂ] Phase3 where
  toFun := twist a
  map_add' := twist_add a
  map_smul' := twist_smul a

/-- A concrete continuous angle parameterization of the residual circle. -/
def anglePhase (θ : ℝ) : ℂ :=
  Complex.exp ((θ : ℂ) * Complex.I)

theorem anglePhase_norm (θ : ℝ) : ‖anglePhase θ‖ = 1 := by
  exact Complex.norm_exp_ofReal_mul_I θ

theorem anglePhase_zero : anglePhase 0 = 1 := by
  simp [anglePhase]

theorem anglePhase_add (θ φ : ℝ) :
    anglePhase (θ + φ) = anglePhase θ * anglePhase φ := by
  unfold anglePhase
  have h :
      (((θ + φ : ℝ) : ℂ) * Complex.I) =
        (θ : ℂ) * Complex.I + (φ : ℂ) * Complex.I := by
    push_cast
    ring
  rw [h, Complex.exp_add]

/-- This is a continuous family in the ordinary coefficient topology. -/
theorem continuous_angle_twist (z : Phase3) :
    Continuous (fun θ : ℝ => twist (anglePhase θ) z) := by
  apply continuous_pi
  intro j
  unfold twist anglePhase
  fun_prop


/-- Additive angle composition is exact rather than approximate interpolation. -/
theorem angle_twist_add (θ φ : ℝ) (z : Phase3) :
    twist (anglePhase θ) (twist (anglePhase φ) z) =
      twist (anglePhase (θ + φ)) z := by
  rw [twist_comp, anglePhase_add]

theorem angle_twist_zero (z : Phase3) :
    twist (anglePhase 0) z = z := by
  rw [anglePhase_zero, twist_one]

/-- Negative angle reverses the full residual-circle transport exactly. -/
theorem angle_twist_inverse (θ : ℝ) (z : Phase3) :
    twist (anglePhase (-θ)) (twist (anglePhase θ) z) = z := by
  rw [angle_twist_add, neg_add_cancel, angle_twist_zero]

/-- The continuous scalar torsion and the earlier order-three cyclic
permutation commute, so neither action is silently treated as heat. -/
theorem twist_cyclic (a : ℂ) (z : Phase3) :
    twist a (cyclic z) = cyclic (twist a z) := by
  funext j
  simp only [twist, cyclic, mean_cyclic, residual_cyclic]

/-- Two complex coordinates give an exact algebraic presentation of the
zero-mean residual plane, but not an orthonormal coordinate basis. -/
def residualFromTwo (a b : ℂ) : Phase3 := ![a, b, -(a + b)]

theorem mean_residualFromTwo (a b : ℂ) :
    mean (residualFromTwo a b) = 0 := by
  simp [mean, residualFromTwo]
  ring

theorem residualFromTwo_unique
    (z : Phase3) (hz : mean z = 0) :
    residualFromTwo (z 0) (z 1) = z := by
  have hsum : z 0 + z 1 + z 2 = 0 := by
    calc
      z 0 + z 1 + z 2 =
          3 * ((z 0 + z 1 + z 2) / 3) := by ring
      _ = 0 := by rw [← show mean z = (z 0 + z 1 + z 2) / 3 from rfl, hz]; ring
  have hlast : -(z 0 + z 1) = z 2 := by
    calc
      -(z 0 + z 1) = z 2 - (z 0 + z 1 + z 2) := by ring
      _ = z 2 := by rw [hsum]; ring
  funext j
  fin_cases j <;> simp [residualFromTwo, hlast]

/-- The actual positive metric in the naive two-coordinate chart is not the
unweighted Euclidean two-coordinate metric: it has a third coupled term. -/
theorem residualEnergy_fromTwo (a b : ℂ) :
    residualEnergy (residualFromTwo a b) =
      ‖a‖ ^ 2 + ‖b‖ ^ 2 + ‖a + b‖ ^ 2 := by
  simp [residualEnergy, Fin.sum_univ_three, residual,
    mean_residualFromTwo, residualFromTwo, norm_neg]

/-- The phase action is independent of the dissipative heat flow. -/
theorem heat_twist (a : ℂ) (t : ℝ) (z : Phase3) :
    heat t (twist a z) = twist a (heat t z) := by
  funext j
  simp only [heat, twist, mean_twist, mean_heat, residual_heat]
  ring

/-- Positive residual-shell energy is preserved by any unit-modulus phase. -/
theorem residualEnergy_twist (a : ℂ) (ha : ‖a‖ = 1) (z : Phase3) :
    residualEnergy (twist a z) = residualEnergy z := by
  simp only [residualEnergy, Fin.sum_univ_three,
    residual_twist, norm_mul, ha, one_mul]

theorem residualEnergy_angle_twist (θ : ℝ) (z : Phase3) :
    residualEnergy (twist (anglePhase θ) z) = residualEnergy z :=
  residualEnergy_twist _ (anglePhase_norm θ) z

/-- A positive quadratic observation that retains both the coherent line and
the residual plane. It is derived from the actual source decomposition. -/
def positiveGram (z : Phase3) : ℝ :=
  3 * ‖mean z‖ ^ 2 + residualEnergy z

theorem positiveGram_nonnegative (z : Phase3) :
    0 ≤ positiveGram z :=
  add_nonneg (mul_nonneg (by norm_num) (sq_nonneg _))
    (residualEnergy_nonnegative z)

/-- Circle torsion preserves the complete positive quadratic observation. -/
theorem positiveGram_twist (a : ℂ) (ha : ‖a‖ = 1) (z : Phase3) :
    positiveGram (twist a z) = positiveGram z := by
  simp only [positiveGram, mean_twist, residualEnergy_twist a ha]

/-- The four real positive observations are retained as independent named
channels before the signed complex Weil reconstruction is performed. -/
structure FourProbes where
  plus : ℝ
  minus : ℝ
  plusI : ℝ
  minusI : ℝ

def probes (z w : Phase3) : FourProbes where
  plus := positiveGram (z + w)
  minus := positiveGram (z - w)
  plusI := positiveGram (z + Complex.I • w)
  minusI := positiveGram (z - Complex.I • w)

def polarizedObservation (z w : Phase3) : ℂ :=
  let p := probes z w
  GRWTSK.RiemannHypothesis.WeilPolarization.combine
    p.plus p.minus p.plusI p.minusI

/-- Each positive diagonal probe, not just their polarized combination, is
invariant under the complex-linear residual circle transport. -/
theorem probes_twist (a : ℂ) (ha : ‖a‖ = 1)
    (z w : Phase3) :
    probes (twist a z) (twist a w) = probes z w := by
  apply FourProbes.ext
  · change positiveGram (twist a z + twist a w) = positiveGram (z + w)
    rw [← twist_add, positiveGram_twist a ha]
  · change positiveGram (twist a z - twist a w) = positiveGram (z - w)
    rw [← twist_sub, positiveGram_twist a ha]
  · change positiveGram (twist a z + Complex.I • twist a w) =
      positiveGram (z + Complex.I • w)
    rw [← twist_smul, ← twist_add, positiveGram_twist a ha]
  · change positiveGram (twist a z - Complex.I • twist a w) =
      positiveGram (z - Complex.I • w)
    rw [← twist_smul, ← twist_sub, positiveGram_twist a ha]

theorem polarizedObservation_twist (a : ℂ) (ha : ‖a‖ = 1)
    (z w : Phase3) :
    polarizedObservation (twist a z) (twist a w) =
      polarizedObservation z w := by
  simp only [polarizedObservation, probes_twist a ha z w]

/-- Continuous angular torsion, exact heat transport and Weil polarization
are compatible on this finite source. This gives no new PDE estimate. -/
theorem polarizedObservation_angle_twist (θ : ℝ)
    (z w : Phase3) :
    polarizedObservation (twist (anglePhase θ) z)
        (twist (anglePhase θ) w) = polarizedObservation z w :=
  polarizedObservation_twist _ (anglePhase_norm θ) z w

end GRWTSK.Algebra.LinearAlgebra.ThreePhaseResidualCircleAction
