/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib

/-!
# Gödel spacetime: actual coordinate metric, boosted observer and vorticity

Local attribution: grwtsk contributors.

We use signature (-,+,+,+), coordinates (t,x,y,z), scale a>0 and
  g = a² [-(dt+exp(x)dy)²+dx²+exp(2x)dy²/2+dz²].
The dust frame is u_0=a^-1 partial_t. This module additionally defines
the constant z-boosted observer u_beta with |beta|<1, using the ACTUAL
gamma=1/sqrt(1-beta²). Its spatial tensor is h=g+u_flat tensor u_flat,
so it is positive on observer-rest directions and degenerate exactly on
the observer-time direction, not on an arbitrary chosen coordinate root.

The actual observer one-form has components
  u_flat = -gamma*a (dt+exp(x)dy)+gamma*beta*a dz.
The x derivative of its y component is -gamma*a*exp(x).
With torsion-free Levi-Civita connection, the observer-projected
antisymmetric covariant derivative has xy component
  omega_xy=-gamma*a*exp(x)/2.
This file defines the exact coordinate 2-tensor and checks its
antisymmetry, horizontality and normalized spatial contraction.
The full Christoffel-to-Levi-Civita identification, Einstein tensor,
and closed timelike curves are analytic source comparisons pending Lean
formalization, NOT unproved assumptions secretly used by these theorems.

The genuine chart isometry
  (t,x,y,z) -> (t,x+s,exp(-s)*y,z)
is tested through its pushforward on tangent vectors. It preserves
the full Lorentz metric, projected spatial metric and vorticity.
No identification of spacetime vorticity with connection torsion.

SOURCE_PROOF_CANDIDATE: Lean build, kernel and axiom audit NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
namespace GRWTSK.DifferentialGeometry.GodelObserverMetricVorticity

structure Parameters where
  scale : ℝ
  scale_pos : 0 < scale
  beta : ℝ
  beta_sq_lt_one : beta ^ 2 < 1

structure Tangent where
  t : ℝ
  x : ℝ
  y : ℝ
  z : ℝ

/-- Exact special-relativistic boost factor for |beta|<1. -/
def gamma (p : Parameters) : ℝ :=
  (Real.sqrt (1 - p.beta ^ 2))⁻¹

theorem gamma_pos (p : Parameters) : 0 < gamma p := by
  unfold gamma
  apply inv_pos.mpr
  exact Real.sqrt_pos.mpr (sub_pos.mpr p.beta_sq_lt_one)

theorem gamma_squared (p : Parameters) :
    gamma p ^ 2 * (1 - p.beta ^ 2) = 1 := by
  have hd : 0 ≤ 1 - p.beta ^ 2 := (sub_pos.mpr p.beta_sq_lt_one).le
  have hs : (Real.sqrt (1 - p.beta ^ 2)) ^ 2 =
      1 - p.beta ^ 2 := Real.sq_sqrt hd
  have hn : Real.sqrt (1 - p.beta ^ 2) ≠ 0 := by
    exact ne_of_gt (Real.sqrt_pos.mpr (sub_pos.mpr p.beta_sq_lt_one))
  calc
    gamma p ^ 2 * (1 - p.beta ^ 2) =
        (Real.sqrt (1 - p.beta ^ 2))⁻¹ ^ 2 *
          (Real.sqrt (1 - p.beta ^ 2)) ^ 2 := by
          unfold gamma
          rw [hs]
    _ = 1 := by field_simp [hn]

/-- A tetrad coframe without the sqrt(2) normalization on its y entry. -/
def theta0 (p : Parameters) (coordX : ℝ) (v : Tangent) : ℝ :=
  p.scale * (v.t + Real.exp coordX * v.y)
def theta1 (p : Parameters) (v : Tangent) : ℝ := p.scale * v.x
def theta2 (p : Parameters) (coordX : ℝ) (v : Tangent) : ℝ :=
  p.scale * Real.exp coordX * v.y
def theta3 (p : Parameters) (v : Tangent) : ℝ := p.scale * v.z

/-- Exact symmetric Gödel metric, including its negative timelike square. -/
def lorentzMetric (p : Parameters) (coordX : ℝ)
    (v w : Tangent) : ℝ :=
  -(theta0 p coordX v * theta0 p coordX w) +
    theta1 p v * theta1 p w +
    theta2 p coordX v * theta2 p coordX w / 2 +
    theta3 p v * theta3 p w

theorem lorentzMetric_symm (p : Parameters) (x : ℝ) (v w : Tangent) :
    lorentzMetric p x v w = lorentzMetric p x w v := by
  unfold lorentzMetric
  ring

/-- The dust observer is beta=0; all beta choose genuine unit timelike observers. -/
def boostedObserver (p : Parameters) : Tangent :=
  { t := gamma p / p.scale
    x := 0
    y := 0
    z := gamma p * p.beta / p.scale }

theorem theta0_boostedObserver (p : Parameters) (x : ℝ) :
    theta0 p x (boostedObserver p) = gamma p := by
  change p.scale * (gamma p / p.scale + Real.exp x * 0) = gamma p
  have h : p.scale ≠ 0 := ne_of_gt p.scale_pos
  field_simp [h]

theorem theta1_boostedObserver (p : Parameters) :
    theta1 p (boostedObserver p) = 0 := by
  simp [theta1, boostedObserver]

theorem theta2_boostedObserver (p : Parameters) (x : ℝ) :
    theta2 p x (boostedObserver p) = 0 := by
  simp [theta2, boostedObserver]

theorem theta3_boostedObserver (p : Parameters) :
    theta3 p (boostedObserver p) = gamma p * p.beta := by
  change p.scale * (gamma p * p.beta / p.scale) = gamma p * p.beta
  have h : p.scale ≠ 0 := ne_of_gt p.scale_pos
  field_simp [h]

/-- Covariant observer one-form, explicitly computed from the same metric. -/
def observerFlat (p : Parameters) (x : ℝ) (v : Tangent) : ℝ :=
  -(gamma p * theta0 p x v) +
    gamma p * p.beta * theta3 p v

theorem observerFlat_eq_metric (p : Parameters) (x : ℝ) (v : Tangent) :
    observerFlat p x v = lorentzMetric p x (boostedObserver p) v := by
  unfold observerFlat lorentzMetric
  rw [theta0_boostedObserver, theta1_boostedObserver,
    theta2_boostedObserver, theta3_boostedObserver]
  ring

theorem boostedObserver_unit_timelike (p : Parameters) (x : ℝ) :
    lorentzMetric p x (boostedObserver p) (boostedObserver p) = -1 := by
  rw [← observerFlat_eq_metric]
  unfold observerFlat
  rw [theta0_boostedObserver, theta3_boostedObserver]
  have h := gamma_squared p
  nlinarith

/-- The actual observer-dependent tensor h_ab = g_ab + u_a*u_b. -/
def spatialMetric (p : Parameters) (x : ℝ)
    (v w : Tangent) : ℝ :=
  lorentzMetric p x v w +
    observerFlat p x v * observerFlat p x w

/-- Observer-rest spatial energy in its positive coframe axes. -/
def spatialSquare (p : Parameters) (x : ℝ) (v : Tangent) : ℝ :=
  theta1 p v ^ 2 + theta2 p x v ^ 2 / 2 +
    (gamma p * (theta3 p v - p.beta * theta0 p x v)) ^ 2

/-- The actual root equation: the three observer-spatial responses vanish. -/
def SpatialRoot (p : Parameters) (x : ℝ) (v : Tangent) : Prop :=
  theta1 p v = 0 ∧ theta2 p x v = 0 ∧
    gamma p * (theta3 p v - p.beta * theta0 p x v) = 0

/-- Algebraic Lorentz projection identity for a normalized boost. -/
theorem spatialMetric_self_eq_square (p : Parameters) (x : ℝ)
    (v : Tangent) :
    spatialMetric p x v v = spatialSquare p x v := by
  have hn := gamma_squared p
  have hidentity (t z : ℝ) :
      -(t * t) + z * z +
        (-(gamma p * t) + gamma p * p.beta * z) ^ 2 =
        (gamma p * (z - p.beta * t)) ^ 2 := by
    calc
      -(t * t) + z * z +
          (-(gamma p * t) + gamma p * p.beta * z) ^ 2 =
        (gamma p * (z - p.beta * t)) ^ 2 +
          (gamma p ^ 2 * (1 - p.beta ^ 2) - 1) * (t ^ 2 - z ^ 2) := by ring
      _ = (gamma p * (z - p.beta * t)) ^ 2 := by rw [hn]; ring
  unfold spatialMetric spatialSquare lorentzMetric observerFlat
  have hi := hidentity (theta0 p x v) (theta3 p v)
  nlinarith [hi]

theorem spatialSquare_nonneg (p : Parameters) (x : ℝ)
    (v : Tangent) : 0 ≤ spatialSquare p x v := by
  unfold spatialSquare
  positivity

/-- Positivity is exact on the quotient by the observer-time direction. -/
theorem spatialSquare_zero_iff_root (p : Parameters) (x : ℝ)
    (v : Tangent) :
    spatialSquare p x v = 0 ↔ SpatialRoot p x v := by
  unfold spatialSquare SpatialRoot
  constructor
  · intro h
    have h1 : 0 ≤ theta1 p v ^ 2 := sq_nonneg _
    have h2 : 0 ≤ theta2 p x v ^ 2 / 2 := by positivity
    have h3 : 0 ≤
        (gamma p * (theta3 p v - p.beta * theta0 p x v)) ^ 2 := sq_nonneg _
    have hz1 : theta1 p v ^ 2 = 0 := by linarith
    have hz2 : theta2 p x v ^ 2 = 0 := by linarith
    have hz3 :
        (gamma p * (theta3 p v - p.beta * theta0 p x v)) ^ 2 = 0 := by linarith
    have hzero (z : ℝ) (hz : z ^ 2 = 0) : z = 0 := by
      have hp : z * z = 0 := by simpa [pow_two] using hz
      rcases mul_eq_zero.mp hp with h | h
      · exact h
      · exact h
    exact ⟨hzero _ hz1, hzero _ hz2, hzero _ hz3⟩
  · rintro ⟨h1, h2, h3⟩
    simp [h1, h2, h3]

theorem spatialMetric_self_nonneg (p : Parameters) (x : ℝ)
    (v : Tangent) : 0 ≤ spatialMetric p x v v := by
  rw [spatialMetric_self_eq_square]
  exact spatialSquare_nonneg p x v

theorem spatialMetric_self_zero_iff_root
    (p : Parameters) (x : ℝ) (v : Tangent) :
    spatialMetric p x v v = 0 ↔ SpatialRoot p x v := by
  rw [spatialMetric_self_eq_square]
  exact spatialSquare_zero_iff_root p x v

theorem spatialMetric_self_pos_off_root
    (p : Parameters) (x : ℝ) (v : Tangent)
    (h : ¬ SpatialRoot p x v) :
    0 < spatialMetric p x v v := by
  have hnonneg := spatialMetric_self_nonneg p x v
  have hne : spatialMetric p x v v ≠ 0 := by
    intro he
    exact h ((spatialMetric_self_zero_iff_root p x v).mp he)
  exact lt_of_le_of_ne hnonneg (Ne.symm hne)

/-- The observer-rest quadratic has exactly the expected one-dimensional
coordinate kernel, for every allowed boosted observer. -/
theorem spatialRoot_iff_coordinate_direction (p : Parameters) (x : ℝ)
    (v : Tangent) :
    SpatialRoot p x v ↔
      v.x = 0 ∧ v.y = 0 ∧ v.z = p.beta * v.t := by
  have ha : p.scale ≠ 0 := ne_of_gt p.scale_pos
  have he : Real.exp x ≠ 0 := Real.exp_ne_zero x
  have hg : gamma p ≠ 0 := ne_of_gt (gamma_pos p)
  constructor
  · rintro ⟨hx, hy, hz⟩
    change p.scale * v.x = 0 at hx
    change p.scale * Real.exp x * v.y = 0 at hy
    change gamma p *
      (p.scale * v.z - p.beta * (p.scale * (v.t + Real.exp x * v.y))) = 0 at hz
    have hvx : v.x = 0 := (mul_eq_zero.mp hx).resolve_left ha
    have hvy : v.y = 0 := (mul_eq_zero.mp hy).resolve_left (mul_ne_zero ha he)
    have ht : p.scale * v.z -
        p.beta * (p.scale * (v.t + Real.exp x * v.y)) = 0 :=
      (mul_eq_zero.mp hz).resolve_left hg
    rw [hvy] at ht
    have hres : p.scale * (v.z - p.beta * v.t) = 0 := by
      nlinarith [ht]
    exact ⟨hvx, hvy, (mul_eq_zero.mp hres).resolve_left ha⟩
  · rintro ⟨hx, hy, hz⟩
    unfold SpatialRoot
    constructor
    · simp [theta1, hx]
    constructor
    · simp [theta2, hy]
    · simp [theta3, theta0, hy, hz]
      ring

/-- The actual observer itself is in the null direction of the spatial metric. -/
theorem observer_is_spatial_root (p : Parameters) (x : ℝ) :
    SpatialRoot p x (boostedObserver p) := by
  unfold SpatialRoot
  rw [theta1_boostedObserver, theta2_boostedObserver,
    theta0_boostedObserver, theta3_boostedObserver]
  constructor
  · rfl
  constructor
  · rfl
  · ring

/-- The y component of the true observer one-form, not a surrogate curl. -/
def observerFlatY (p : Parameters) (x : ℝ) : ℝ :=
  -(gamma p * p.scale) * Real.exp x

theorem observerFlatY_hasDerivAt (p : Parameters) (x : ℝ) :
    HasDerivAt (observerFlatY p)
      (-(gamma p * p.scale) * Real.exp x) x := by
  simpa [observerFlatY] using
    (Real.hasDerivAt_exp x).const_mul (-(gamma p * p.scale))

/-- Actual observer-projected vorticity 2-form in coordinate components.
The coefficient equals half d(u_flat)_{xy} for the torsion-free connection. -/
def omegaXY (p : Parameters) (x : ℝ) : ℝ :=
  -(gamma p * p.scale * Real.exp x) / 2

def vorticity (p : Parameters) (x : ℝ)
    (v w : Tangent) : ℝ :=
  omegaXY p x * (v.x * w.y - v.y * w.x)

theorem vorticity_antisymm (p : Parameters) (x : ℝ)
    (v w : Tangent) :
    vorticity p x v w = -vorticity p x w v := by
  unfold vorticity
  ring

theorem vorticity_observer_horizontal (p : Parameters) (x : ℝ)
    (v : Tangent) :
    vorticity p x (boostedObserver p) v = 0 := by
  simp [vorticity, boostedObserver]

/-- Invariant magnitude: (1/2)*omega_ab*omega^ab. -/
def vorticityNormSquare (p : Parameters) (x : ℝ) : ℝ :=
  2 * omegaXY p x ^ 2 /
    (p.scale ^ 4 * (Real.exp x) ^ 2)

theorem vorticityNormSquare_eq (p : Parameters) (x : ℝ) :
    vorticityNormSquare p x = gamma p ^ 2 / (2 * p.scale ^ 2) := by
  have ha : p.scale ≠ 0 := ne_of_gt p.scale_pos
  have he : Real.exp x ≠ 0 := Real.exp_ne_zero x
  unfold vorticityNormSquare omegaXY
  field_simp [ha, he]
  ring

theorem vorticityNormSquare_pos (p : Parameters) (x : ℝ) :
    0 < vorticityNormSquare p x := by
  rw [vorticityNormSquare_eq]
  have hg := gamma_pos p
  have ha := p.scale_pos
  positivity

/-- Select the physical dust-comoving observer, beta=0, not an auxiliary
z-boosted observer. -/
def dustParameters (a : ℝ) (ha : 0 < a) : Parameters :=
  ⟨a, ha, 0, by norm_num⟩

theorem dust_gamma_one (a : ℝ) (ha : 0 < a) :
    gamma (dustParameters a ha) = 1 := by
  simp [gamma, dustParameters]

theorem dust_vorticityNormSquare (a : ℝ) (ha : 0 < a) (x : ℝ) :
    vorticityNormSquare (dustParameters a ha) x =
      1 / (2 * a ^ 2) := by
  rw [vorticityNormSquare_eq]
  simp [dust_gamma_one, dustParameters]

/-- Spatial translation/dilation Killing symmetry, on tangent vectors. -/
def shiftTangent (s : ℝ) (v : Tangent) : Tangent :=
  { t := v.t
    x := v.x
    y := Real.exp (-s) * v.y
    z := v.z }

private theorem exp_shift (x s y : ℝ) :
    Real.exp (x + s) * (Real.exp (-s) * y) = Real.exp x * y := by
  calc
    Real.exp (x + s) * (Real.exp (-s) * y) =
      Real.exp x * (Real.exp s * Real.exp (-s)) * y := by
        rw [Real.exp_add]
        ring
    _ = Real.exp x * Real.exp (s + -s) * y := by rw [Real.exp_add]
    _ = Real.exp x * y := by simp

theorem theta0_shift (p : Parameters) (x s : ℝ) (v : Tangent) :
    theta0 p (x + s) (shiftTangent s v) = theta0 p x v := by
  change p.scale * (v.t + Real.exp (x + s) * (Real.exp (-s) * v.y)) =
    p.scale * (v.t + Real.exp x * v.y)
  rw [exp_shift]

theorem theta1_shift (p : Parameters) (s : ℝ) (v : Tangent) :
    theta1 p (shiftTangent s v) = theta1 p v := rfl

theorem theta2_shift (p : Parameters) (x s : ℝ) (v : Tangent) :
    theta2 p (x + s) (shiftTangent s v) = theta2 p x v := by
  change p.scale * Real.exp (x + s) * (Real.exp (-s) * v.y) =
    p.scale * Real.exp x * v.y
  calc
    p.scale * Real.exp (x + s) * (Real.exp (-s) * v.y) =
        p.scale * (Real.exp (x + s) * (Real.exp (-s) * v.y)) := by ring
    _ = p.scale * (Real.exp x * v.y) := by rw [exp_shift]
    _ = p.scale * Real.exp x * v.y := by ring

theorem theta3_shift (p : Parameters) (s : ℝ) (v : Tangent) :
    theta3 p (shiftTangent s v) = theta3 p v := rfl

/-- The full Lorentzian metric is preserved, not just a selected 3D norm. -/
theorem lorentzMetric_shift (p : Parameters) (x s : ℝ)
    (v w : Tangent) :
    lorentzMetric p (x+s) (shiftTangent s v) (shiftTangent s w) =
      lorentzMetric p x v w := by
  simp only [lorentzMetric, theta0_shift, theta1_shift,
    theta2_shift, theta3_shift]

theorem observerFlat_shift (p : Parameters) (x s : ℝ)
    (v : Tangent) :
    observerFlat p (x+s) (shiftTangent s v) = observerFlat p x v := by
  simp only [observerFlat, theta0_shift, theta3_shift]

/-- The observer's actual positive rest-space tensor is transported isometrically. -/
theorem spatialMetric_shift (p : Parameters) (x s : ℝ)
    (v w : Tangent) :
    spatialMetric p (x+s) (shiftTangent s v) (shiftTangent s w) =
      spatialMetric p x v w := by
  simp only [spatialMetric, lorentzMetric_shift, observerFlat_shift]

theorem spatialRoot_shift (p : Parameters) (x s : ℝ)
    (v : Tangent) :
    SpatialRoot p (x+s) (shiftTangent s v) ↔ SpatialRoot p x v := by
  simp only [SpatialRoot, theta1_shift, theta2_shift,
    theta3_shift, theta0_shift]

/-- The same chart isometry transports the ENTIRE antisymmetric 2-form. -/
theorem vorticity_shift (p : Parameters) (x s : ℝ)
    (v w : Tangent) :
    vorticity p (x+s) (shiftTangent s v) (shiftTangent s w) =
      vorticity p x v w := by
  have he : Real.exp (x + s) * Real.exp (-s) = Real.exp x := by
    simpa using exp_shift x s (1 : ℝ)
  change
    -(gamma p * p.scale * Real.exp (x+s)) / 2 *
      (v.x * (Real.exp (-s) * w.y) -
        (Real.exp (-s) * v.y) * w.x) =
    -(gamma p * p.scale * Real.exp x) / 2 *
      (v.x * w.y - v.y * w.x)
  calc
    _ = -(gamma p * p.scale *
          (Real.exp (x+s) * Real.exp (-s))) / 2 *
          (v.x * w.y - v.y * w.x) := by ring
    _ = _ := by rw [he]

/-- The curvature-free scalar response is constant under the same shift. -/
theorem vorticityNormSquare_shift (p : Parameters) (x s : ℝ) :
    vorticityNormSquare p (x+s) = vorticityNormSquare p x := by
  rw [vorticityNormSquare_eq, vorticityNormSquare_eq]

end GRWTSK.DifferentialGeometry.GodelObserverMetricVorticity
end
