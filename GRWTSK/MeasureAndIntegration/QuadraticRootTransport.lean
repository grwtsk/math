import Mathlib

/-!
Square-root energy transport with mixed terms retained. Prepared under the
research direction of grwtsk contributors with ChatGPT assistance.
Kernel compilation is pending. This is a general integral inequality, not an
arithmetic estimate or a theorem about Gaussian/holomorphic heat equivalence.
-/
noncomputable section
namespace GRWTSK.Analysis.RealAnalysis.Integration.QuadraticRootTransport
open MeasureTheory

variable {X : Type*} [MeasurableSpace X] (μ : Measure X)

def energy (f : X → ℝ) : ℝ := ∫ x, (f x)^2 ∂μ

def cross (f g : X → ℝ) : ℝ := ∫ x, f x*g x ∂μ

lemma energy_nonnegative (f : X → ℝ) : 0 ≤ energy μ f :=
  integral_nonneg (fun _ => sq_nonneg _)

/-- The three square integrals already make the signed cross term integrable. -/
lemma cross_integrable {f g : X → ℝ}
    (hf : Integrable (fun x => (f x)^2) μ)
    (hg : Integrable (fun x => (g x)^2) μ)
    (hs : Integrable (fun x => (f x+g x)^2) μ) :
    Integrable (fun x => f x*g x) μ := by
  have h := ((hs.sub hf).sub hg).const_mul (1/2 : ℝ)
  apply h.congr
  exact Filter.Eventually.of_forall (fun x => by simp only [Pi.sub_apply]; ring)

lemma moment_identity {f g : X → ℝ}
    (hf : Integrable (fun x => (f x)^2) μ)
    (hg : Integrable (fun x => (g x)^2) μ)
    (hc : Integrable (fun x => f x*g x) μ) (t : ℝ) :
    energy μ (fun x => t*f x+g x) =
      t^2*energy μ f+2*t*cross μ f g+energy μ g := by
  unfold energy cross
  calc
    (∫ x, (t*f x+g x)^2 ∂μ) =
        ∫ x, (t^2*(f x)^2+(2*t)*(f x*g x))+(g x)^2 ∂μ := by
      apply integral_congr_ae
      exact Filter.Eventually.of_forall (fun _ => by ring)
    _ = (∫ x, t^2*(f x)^2+(2*t)*(f x*g x) ∂μ)+(∫ x, (g x)^2 ∂μ) :=
      integral_add ((hf.const_mul _).add (hc.const_mul _)) hg
    _ = _ := by
      rw [integral_add (hf.const_mul _) (hc.const_mul _),
        integral_const_mul, integral_const_mul]

lemma cross_square_bound {A B C : ℝ} (hA : 0 ≤ A)
    (h : ∀ t : ℝ, 0 ≤ A*t^2+2*C*t+B) : C^2 ≤ A*B := by
  by_cases hz : A = 0
  · subst A
    by_cases hc : C = 0
    · simp [hc]
    · have ht := h (-(B+1)/(2*C))
      have he : (0:ℝ)*(-(B+1)/(2*C))^2+2*C*(-(B+1)/(2*C))+B = -1 := by
        field_simp [hc]
        ring
      rw [he] at ht
      linarith
  · have hp : 0 < A := lt_of_le_of_ne hA (Ne.symm hz)
    have ht := h (-C/A)
    have he : A^2*(A*(-C/A)^2+2*C*(-C/A)+B) = A*(A*B-C^2) := by
      field_simp [hz]
      ring
    have hn := mul_nonneg (sq_nonneg A) ht
    rw [he] at hn
    have hd := nonneg_of_mul_nonneg_right hn hp
    linarith

/-- L2 triangle inequality derived from the full integral quadratic polynomial. -/
theorem sqrt_energy_add_le {f g : X → ℝ}
    (hf : Integrable (fun x => (f x)^2) μ)
    (hg : Integrable (fun x => (g x)^2) μ)
    (hs : Integrable (fun x => (f x+g x)^2) μ) :
    Real.sqrt (energy μ (fun x => f x+g x)) ≤
      Real.sqrt (energy μ f)+Real.sqrt (energy μ g) := by
  have hc := cross_integrable μ hf hg hs
  have hA := energy_nonnegative μ f
  have hB := energy_nonnegative μ g
  have hC : (cross μ f g)^2 ≤ energy μ f*energy μ g :=
    cross_square_bound hA (fun t => by
      have ht := energy_nonnegative μ (fun x => t*f x+g x)
      rw [moment_identity μ hf hg hc t] at ht
      nlinarith)
  have ha := Real.sq_sqrt hA
  have hb := Real.sq_sqrt hB
  have hp : (Real.sqrt (energy μ f)*Real.sqrt (energy μ g))^2 =
      energy μ f*energy μ g := by rw [mul_pow, ha, hb]
  have hp0 : 0 ≤ Real.sqrt (energy μ f)*Real.sqrt (energy μ g) := by positivity
  have hcross : cross μ f g ≤ Real.sqrt (energy μ f)*Real.sqrt (energy μ g) := by
    nlinarith
  have he := moment_identity μ hf hg hc (1:ℝ)
  simp only [one_mul, one_pow, mul_one] at he
  have he2 : energy μ (fun x => f x+g x) ≤
      (Real.sqrt (energy μ f)+Real.sqrt (energy μ g))^2 := by nlinarith
  have hsqrt := Real.sqrt_le_sqrt he2
  simpa only [Real.sqrt_sq (show 0 ≤ Real.sqrt (energy μ f)+Real.sqrt (energy μ g)
    by positivity)] using hsqrt

end GRWTSK.Analysis.RealAnalysis.Integration.QuadraticRootTransport
#print axioms GRWTSK.Analysis.RealAnalysis.Integration.QuadraticRootTransport.sqrt_energy_add_le
