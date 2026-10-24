import Mathlib

/-!
Research direction: grwtsk contributors. Formalization assistance: ChatGPT.
This is authored Lean proof source; kernel replay with the pinned environment is required.
Inherited mathematics retains its attribution. No unproved arithmetic bound is asserted.
-/

noncomputable section
open MeasureTheory
namespace GRWTSK.Analysis.RealAnalysis.Integration.AffineWeightedTransport

structure AffineChart where
  slope : ℝ
  offset : ℝ
  slope_ne_zero : slope ≠ 0

def AffineChart.apply (p : AffineChart) (x : ℝ) : ℝ := p.slope*x+p.offset
def AffineChart.inv (p : AffineChart) (y : ℝ) : ℝ := (y-p.offset)/p.slope

@[simp] theorem AffineChart.inv_apply (p : AffineChart) (x : ℝ) : p.inv (p.apply x)=x := by
  dsimp [AffineChart.inv, AffineChart.apply]
  field_simp [p.slope_ne_zero]
  ring

@[simp] theorem AffineChart.apply_inv (p : AffineChart) (y : ℝ) : p.apply (p.inv y)=y := by
  dsimp [AffineChart.inv, AffineChart.apply]
  field_simp [p.slope_ne_zero]
  ring

/-- `then p q` means first p, then q. -/
def AffineChart.then (p q : AffineChart) : AffineChart where
  slope := q.slope*p.slope
  offset := q.slope*p.offset+q.offset
  slope_ne_zero := mul_ne_zero q.slope_ne_zero p.slope_ne_zero

@[simp] theorem AffineChart.then_apply (p q : AffineChart) (x : ℝ) :
    (p.then q).apply x=q.apply (p.apply x) := by
  dsimp [AffineChart.then, AffineChart.apply]
  ring

@[simp] theorem AffineChart.then_inv (p q : AffineChart) (y : ℝ) :
    (p.then q).inv y=p.inv (q.inv y) := by
  dsimp [AffineChart.then, AffineChart.inv]
  field_simp [p.slope_ne_zero, q.slope_ne_zero]
  ring

def transportWeight (p : AffineChart) (w : ℝ → ℝ) : ℝ → ℝ := fun y => w (p.inv y)
def pull (p : AffineChart) (f : ℝ → ℂ) : ℝ → ℂ :=
  fun x => (Real.sqrt |p.slope| : ℂ)*f (p.apply x)

theorem weight_composition (p q : AffineChart) (w : ℝ → ℝ) :
    transportWeight q (transportWeight p w)=transportWeight (p.then q) w := by
  funext y
  simp [transportWeight]

theorem pull_composition (p q : AffineChart) (f : ℝ → ℂ) :
    pull p (pull q f)=pull (p.then q) f := by
  funext x
  have hs : Real.sqrt |q.slope*p.slope| =
      Real.sqrt |p.slope|*Real.sqrt |q.slope| := by
    rw [abs_mul, Real.sqrt_mul (abs_nonneg q.slope)]
    ring
  simp only [pull, AffineChart.then_apply, AffineChart.then, hs, Complex.ofReal_mul]
  ring

/-- Lebesgue density formula for the full weighted squared norm.
For an L2 interpretation the caller also retains positivity, measurability and finiteness. -/
def energy (w : ℝ → ℝ) (f : ℝ → ℂ) : ℝ := ∫ x : ℝ, ‖f x‖^2*w x

/-- Exact scalar affine substitution, using Mathlib's Haar integral theorem. -/
theorem affine_integral (p : AffineChart) (F : ℝ → ℝ) :
    (∫ x : ℝ, F (p.apply x))=|p.slope|⁻¹*(∫ y : ℝ, F y) := by
  change (∫ x : ℝ, (fun y => F (y+p.offset)) (p.slope*x)) = _
  rw [Measure.integral_comp_mul_left, integral_add_right_eq_self]
  simp only [smul_eq_mul, abs_inv]

theorem energy_transport (p : AffineChart) (w : ℝ → ℝ) (f : ℝ → ℂ) :
    energy w (pull p f)=energy (transportWeight p w) f := by
  let F : ℝ → ℝ := fun y => ‖f y‖^2*w (p.inv y)
  have he : (fun x : ℝ => ‖pull p f x‖^2*w x) =
      (fun x => |p.slope|*F (p.apply x)) := by
    funext x
    simp only [pull, norm_mul, Complex.norm_real, Real.norm_eq_abs,
      abs_of_nonneg (Real.sqrt_nonneg _), mul_pow,
      Real.sq_sqrt (abs_nonneg p.slope)]
    simp only [F, AffineChart.inv_apply]
    ring
  unfold energy
  rw [he, integral_const_mul, affine_integral]
  have ha : |p.slope| ≠ 0 := abs_ne_zero.mpr p.slope_ne_zero
  rw [← mul_assoc, mul_inv_cancel₀ ha, one_mul]
  rfl

/-- Intervals are parametrized with normalized Lebesgue measure on (0,1).
Allowing negative lengths includes orientation reversal without changing averages. -/
def intervalMean (w : ℝ → ℝ) (b h : ℝ) : ℝ :=
  ∫ t in Set.Ioo (0 : ℝ) 1, w (b+h*t)

/-- Every interval, not a selected mesh. Positivity/local integrability of the
weight remain explicit when interpreting this as a Muckenhoupt weight. -/
def A2Bound (w : ℝ → ℝ) (C : ℝ) : Prop :=
  ∀ b h : ℝ, h ≠ 0 → intervalMean w b h * intervalMean (fun x => (w x)⁻¹) b h ≤ C

theorem intervalMean_transport (p : AffineChart) (w : ℝ → ℝ) (b h : ℝ) :
    intervalMean (transportWeight p w) (p.apply b) (p.slope*h)=intervalMean w b h := by
  apply integral_congr_ae
  filter_upwards [] with t
  congr 1
  dsimp [transportWeight, AffineChart.inv, AffineChart.apply]
  field_simp [p.slope_ne_zero]
  ring

theorem a2Bound_transport_iff (p : AffineChart) (w : ℝ → ℝ) (C : ℝ) :
    A2Bound (transportWeight p w) C ↔ A2Bound w C := by
  have hinv : (fun x => (transportWeight p w x)⁻¹) =
      transportWeight p (fun x => (w x)⁻¹) := rfl
  constructor
  · intro ht b h hh
    have hs := ht (p.apply b) (p.slope*h) (mul_ne_zero p.slope_ne_zero hh)
    rw [hinv, intervalMean_transport, intervalMean_transport] at hs
    exact hs
  · intro ht b h hh
    have hs := ht (p.inv b) (h/p.slope) (div_ne_zero hh p.slope_ne_zero)
    have h1 := intervalMean_transport p w (p.inv b) (h/p.slope)
    have h2 := intervalMean_transport p (fun x => (w x)⁻¹) (p.inv b) (h/p.slope)
    have hh' : p.slope*(h/p.slope)=h := by field_simp [p.slope_ne_zero]
    rw [AffineChart.apply_inv, hh'] at h1 h2
    rw [hinv, h1, h2]
    exact hs

/-- No implication about affine sums or the original arithmetic magnitude is asserted. -/
theorem endpoint_energy (w₀ w₁ : ℝ → ℝ) (f : ℝ → ℂ) (c : ℝ)
    (h₀ : Integrable (fun x => ‖f x‖^2*w₀ x))
    (h₁ : Integrable (fun x => ‖f x‖^2*w₁ x))
    (hpoint : ∀ x, w₁ x ≤ c*w₀ x) : energy w₁ f ≤ c*energy w₀ f := by
  unfold energy
  rw [← integral_const_mul]
  apply integral_mono h₁ (h₀.const_mul c)
  intro x
  have hm := mul_le_mul_of_nonneg_left (hpoint x) (sq_nonneg ‖f x‖)
  nlinarith

end GRWTSK.Analysis.RealAnalysis.Integration.AffineWeightedTransport
