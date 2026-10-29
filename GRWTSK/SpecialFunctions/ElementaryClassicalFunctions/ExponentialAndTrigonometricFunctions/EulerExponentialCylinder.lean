import Mathlib.Analysis.SpecialFunctions.Complex.Log
import Mathlib.Data.Setoid.Basic

/-!
# Exponentiating vertical lines and the set-theoretic cylinder

Local attribution: grwtsk contributors.
Grant Sanderson, Euler's formula with introductory group theory (2017-03-03),
published text adaptation River Way.
https://www.3blue1brown.com/lessons/eulers-formula-via-group-theory/
All proof bodies and construction fields: NOT_RUN_USER_DEFERRED.

The image of the entire vertical line Re(z)=a is exactly the circle of radius
exp(a). The exponential's fibers are precisely integer shifts by 2*pi*I.
We construct the quotient map and an actual bijection with the punctured plane,
retaining the real coordinate as the logarithm of the output radius. This is a
SET equivalence, not a topological cylinder homeomorphism or winding theorem.
-/

namespace GRWTSK.SpecialFunctions.EulerExponentialCylinder

/-- The equality relation of the actual exponential; its period description is proved below. -/
def periodSetoid : Setoid ℂ := Setoid.ker Complex.exp

abbrev Cylinder := Quotient periodSetoid
abbrev PuncturedPlane := {z : ℂ // z ≠ 0}

theorem period_relation_iff (z w : ℂ) :
    periodSetoid.r z w ↔ ∃ n : ℤ, z = w + n * (2 * Real.pi * Complex.I) :=
  Complex.exp_eq_exp_iff_exists_int

theorem exponential_same_real {z w : ℂ} (h : Complex.exp z = Complex.exp w) :
    z.re = w.re := by
  have hn := congrArg norm h
  rw [Complex.norm_exp, Complex.norm_exp] at hn
  exact Real.exp_injective hn

/-- Exact full image, including surjectivity onto every point of the circle. -/
theorem vertical_line_image (a : ℝ) :
    Complex.exp '' {w : ℂ | w.re = a} = {z : ℂ | ‖z‖ = Real.exp a} := by
  ext z
  constructor
  · rintro ⟨w, hw, rfl⟩
    change ‖Complex.exp w‖ = Real.exp a
    rw [Complex.norm_exp, hw]
  · intro hz
    have hp : 0 < ‖z‖ := by rw [hz]; exact Real.exp_pos a
    have hn : z ≠ 0 := norm_pos_iff.mp hp
    refine ⟨Complex.log z, ?_, Complex.exp_log hn⟩
    change (Complex.log z).re = a
    rw [Complex.log_re, hz, Real.log_exp]

theorem vertical_lines_distinguished {a b : ℝ}
    (h : Complex.exp '' {w : ℂ | w.re = a} =
      Complex.exp '' {w : ℂ | w.re = b}) : a = b := by
  have hm : Complex.exp (a : ℂ) ∈ Complex.exp '' {w : ℂ | w.re = a} :=
    ⟨(a : ℂ), by simp, rfl⟩
  rw [h, vertical_line_image] at hm
  change ‖Complex.exp (a : ℂ)‖ = Real.exp b at hm
  rw [Complex.norm_exp, Complex.ofReal_re] at hm
  exact Real.exp_injective hm

/-- The actual exponential descends to nonzero values on the quotient. -/
noncomputable def cylinderMap : Cylinder → PuncturedPlane :=
  Quotient.lift (fun z => ⟨Complex.exp z, Complex.exp_ne_zero z⟩)
    (by intro z w h; exact Subtype.ext h)

theorem cylinderMap_mk (z : ℂ) :
    (cylinderMap (Quotient.mk periodSetoid z) : ℂ) = Complex.exp z := rfl

theorem cylinderMap_injective : Function.Injective cylinderMap := by
  intro q r
  refine Quotient.inductionOn₂ q r ?_
  intro z w h
  apply Quotient.sound
  exact congrArg Subtype.val h

theorem cylinderMap_surjective : Function.Surjective cylinderMap := by
  intro z
  refine ⟨Quotient.mk periodSetoid (Complex.log z.val), ?_⟩
  apply Subtype.ext
  exact Complex.exp_log z.property

/-- Explicit quotient-to-punctured-plane bijection, with its actual map fixed. -/
noncomputable def cylinderEquiv : Cylinder ≃ PuncturedPlane :=
  Equiv.ofBijective cylinderMap ⟨cylinderMap_injective, cylinderMap_surjective⟩

theorem cylinderEquiv_mk (z : ℂ) :
    (cylinderEquiv (Quotient.mk periodSetoid z) : ℂ) = Complex.exp z := rfl

/-- Horizontal position survives quotienting, since periods are purely imaginary. -/
def axialCoordinate : Cylinder → ℝ :=
  Quotient.lift (fun z => z.re)
    (by intro z w h; exact exponential_same_real h)

theorem axialCoordinate_mk (z : ℂ) :
    axialCoordinate (Quotient.mk periodSetoid z) = z.re := rfl

/-- The retained cylinder coordinate is converted into an actual output radius. -/
theorem cylinder_radius (q : Cylinder) :
    ‖(cylinderMap q : ℂ)‖ = Real.exp (axialCoordinate q) := by
  refine Quotient.inductionOn q ?_
  intro z
  exact Complex.norm_exp z

theorem cylinder_log_radius (q : Cylinder) :
    Real.log ‖(cylinderMap q : ℂ)‖ = axialCoordinate q := by
  rw [cylinder_radius, Real.log_exp]

/-- Distinct quotient points, rather than representative choices, label outputs. -/
theorem representatives_equal_iff (z w : ℂ) :
    Quotient.mk periodSetoid z = Quotient.mk periodSetoid w ↔
      ∃ n : ℤ, z = w + n * (2 * Real.pi * Complex.I) := by
  exact Quotient.eq.trans (period_relation_iff z w)

end GRWTSK.SpecialFunctions.EulerExponentialCylinder
