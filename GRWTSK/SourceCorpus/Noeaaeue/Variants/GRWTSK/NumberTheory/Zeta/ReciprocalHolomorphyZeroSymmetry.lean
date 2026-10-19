import Mathlib.NumberTheory.LSeries.Nonvanishing
import GRWTSK.Analysis.ComplexAnalysis.PositiveHalfPlane
import GRWTSK.NumberTheory.Moebius.MoebiusEulerProduct
import GRWTSK.NumberTheory.Moebius.DiagonalEnergyBound

noncomputable section
open Complex Filter
open scoped Topology
namespace EulerP04RH.RHTerminal


/-- Entire numerator, using only the completed zeta continuation and reciprocal Gamma. -/
def entireZetaNumerator (s : ℂ) : ℂ :=
  (s * (s - 1) * completedRiemannZeta₀ s + 1) * (Gammaℝ s)⁻¹

/-- Pole-removed zeta on the positive half-plane; its value at one is one. -/
def regularizedZeta (s : ℂ) : ℂ := entireZetaNumerator s / s

theorem entireZetaNumerator_differentiable : Differentiable ℂ entireZetaNumerator := by
  unfold entireZetaNumerator
  exact ((differentiable_id.mul (differentiable_id.sub_const 1)).mul
    differentiable_completedZeta₀ |>.add_const 1).mul differentiable_Gammaℝ_inv

theorem regularizedZeta_eq {s : ℂ} (hs0 : s ≠ 0) (hs1 : s ≠ 1) :
    regularizedZeta s = (s - 1) * riemannZeta s := by
  rw [riemannZeta_def_of_ne_zero hs0, completedRiemannZeta_eq]
  unfold regularizedZeta entireZetaNumerator
  have h1 : 1 - s ≠ 0 := sub_ne_zero.mpr hs1.symm
  field_simp [hs0, h1]
  ring

theorem regularizedZeta_one : regularizedZeta 1 = 1 := by
  simp [regularizedZeta, entireZetaNumerator, Gammaℝ_one]

theorem regularizedZeta_analytic {s : ℂ} (hs : s ≠ 0) :
    AnalyticAt ℂ regularizedZeta s :=
  (DifferentiableOn.analyticOnNhd
    (show DifferentiableOn ℂ regularizedZeta {0}ᶜ from fun w hw =>
      ((entireZetaNumerator_differentiable w).div differentiableAt_id hw).differentiableWithinAt)
    isOpen_compl_singleton) s hs

def InitialReciprocalIdentity (L : ℂ → ℂ) : Prop :=
  ∀ z : ℂ, 1 / 2 < z.re → L z =
    1 / (z * (z + 1 / 2) * riemannZeta (z + 1 / 2))

def RegularizedIdentity (L : ℂ → ℂ) : Prop :=
  ∀ z : ℂ, 0 < z.re →
    z * (z + 1 / 2) * regularizedZeta (z + 1 / 2) * L z = z - 1 / 2

theorem regularized_identity_initial {L : ℂ → ℂ}
    (hinit : InitialReciprocalIdentity L) {z : ℂ} (hz : 1 / 2 < z.re) :
    z * (z + 1 / 2) * regularizedZeta (z + 1 / 2) * L z = z - 1 / 2 := by
  have hs : 1 < (z + 1 / 2).re := by norm_num; linarith
  have hsz := ne_zero_of_one_lt_re hs
  have hs1 : z + 1 / 2 ≠ 1 := by
    intro h
    have := congrArg Complex.re h
    norm_num at this
    linarith
  have hz0 : z ≠ 0 := ne_zero_of_re_pos (by linarith)
  have hζ := riemannZeta_ne_zero_of_one_lt_re hs
  rw [hinit z hz, regularizedZeta_eq hsz hs1]
  have harith : z + 1 / 2 - 1 = z - 1 / 2 := by ring
  rw [harith]
  have hd : z * (z + 1 / 2) * riemannZeta (z + 1 / 2) ≠ 0 :=
    mul_ne_zero (mul_ne_zero hz0 hsz) hζ
  calc
    _ = (z - 1 / 2) * (z * (z + 1 / 2) * riemannZeta (z + 1 / 2)) /
        (z * (z + 1 / 2) * riemannZeta (z + 1 / 2)) := by ring
    _ = _ := mul_div_cancel_right₀ _ hd

/-- Identity continuation needs only holomorphy of L and the unconditional right-line formula. -/
theorem regularized_identity_of_initial_and_holomorphic {L : ℂ → ℂ}
    (hhol : AnalyticOnNhd ℂ L PositiveHalfPlane)
    (hinit : InitialReciprocalIdentity L) : RegularizedIdentity L := by
  have hleft : AnalyticOnNhd ℂ
      (fun z => z * (z + 1 / 2) * regularizedZeta (z + 1 / 2) * L z)
      PositiveHalfPlane := by
    intro z hz
    have hs0 : z + 1 / 2 ≠ 0 := ne_zero_of_re_pos (by
      change 0 < z.re at hz
      norm_num
      linarith)
    have hid : AnalyticAt ℂ (fun w : ℂ => w) z := analyticAt_id
    have hadd : AnalyticAt ℂ (fun w : ℂ => w + (1 / 2 : ℂ)) z :=
      hid.add (analyticAt_const (v := (1 / 2 : ℂ)))
    have hreg : AnalyticAt ℂ (fun w : ℂ => regularizedZeta (w + (1 / 2 : ℂ))) z := by
      simpa only [Function.comp_def] using (regularizedZeta_analytic hs0).comp (f := fun w : ℂ => w + (1 / 2 : ℂ)) (x := z) hadd
    exact ((hid.mul hadd).mul hreg).mul (hhol z hz)
  have hright : AnalyticOnNhd ℂ (fun z : ℂ => z - 1 / 2) PositiveHalfPlane :=
    fun z _ => (analyticAt_id (z := z)).sub (analyticAt_const (v := (1 / 2 : ℂ)))
  apply hleft.eqOn_of_preconnected_of_eventuallyEq hright
    (convex_halfSpace_re_gt 0).isPreconnected
    (show (1 : ℂ) ∈ PositiveHalfPlane by norm_num [PositiveHalfPlane])
  have hV : {z : ℂ | 1 / 2 < z.re} ∈ 𝓝 (1 : ℂ) :=
    (isOpen_lt continuous_const continuous_re).mem_nhds (by norm_num)
  filter_upwards [hV] with z hz
  exact regularized_identity_initial hinit hz

/-- Exact domain exclusions from the literal Mathlib RH target. -/
def NontrivialZero (s : ℂ) : Prop :=
  riemannZeta s = 0 ∧ (¬ ∃ n : ℕ, s = -2 * (n + 1)) ∧ s ≠ 1

theorem NontrivialZero.ne_zero {s : ℂ} (hs : NontrivialZero s) : s ≠ 0 := by
  intro h
  have hz := hs.1
  rw [h, riemannZeta_zero] at hz
  norm_num at hz

theorem NontrivialZero.gamma_real_ne_zero {s : ℂ} (hs : NontrivialZero s) :
    Gammaℝ s ≠ 0 := by
  intro h
  obtain ⟨n, hn⟩ := Gammaℝ_eq_zero_iff.mp h
  cases n with
  | zero => exact hs.ne_zero (by simpa using hn)
  | succ n =>
    apply hs.2.1
    refine ⟨n, ?_⟩
    push_cast at hn
    linear_combination hn

/-- Full functional-equation transport, without an assumed critical-strip restriction. -/
theorem NontrivialZero.reflect {s : ℂ} (hs : NontrivialZero s) :
    NontrivialZero (1 - s) := by
  have hcompleted : completedRiemannZeta s = 0 := by
    have h := hs.1
    rw [riemannZeta_def_of_ne_zero hs.ne_zero] at h
    exact (div_eq_zero_iff.mp h).resolve_right hs.gamma_real_ne_zero
  have hreflect : 1 - s ≠ 0 := sub_ne_zero.mpr (Ne.symm hs.2.2)
  refine ⟨?_, ?_, ?_⟩
  · rw [riemannZeta_def_of_ne_zero hreflect, completedRiemannZeta_one_sub,
      hcompleted, zero_div]
  · rintro ⟨n, hn⟩
    have hlarge : 1 ≤ s.re := by
      have hreal := congrArg Complex.re hn
      simp at hreal
      have hn_nonneg : (0 : ℝ) ≤ n := Nat.cast_nonneg n
      linarith
    exact riemannZeta_ne_zero_of_one_le_re hlarge hs.1
  · intro h
    apply hs.ne_zero
    linear_combination -h

theorem NontrivialZero.mem_critical_strip {s : ℂ} (hs : NontrivialZero s) :
    0 < s.re ∧ s.re < 1 := by
  have hr : s.re < 1 := lt_of_not_ge fun h => riemannZeta_ne_zero_of_one_le_re h hs.1
  have hl : (1 - s).re < 1 := lt_of_not_ge fun h =>
    riemannZeta_ne_zero_of_one_le_re h hs.reflect.1
  simp only [sub_re, one_re] at hl
  exact ⟨by linarith, hr⟩

theorem no_right_zero_of_regularized_identity {L : ℂ → ℂ}
    (hidentity : RegularizedIdentity L) {s : ℂ}
    (hzero : riemannZeta s = 0) (hs1 : s ≠ 1) (hs : 1 / 2 < s.re) : False := by
  have hs0 := ne_zero_of_re_pos (show 0 < s.re by linarith)
  have hz : 0 < (s - 1 / 2).re := by norm_num; linarith
  have h := hidentity (s - 1 / 2) hz
  have harith : s - 1 / 2 + 1 / 2 = s := by ring
  rw [harith, regularizedZeta_eq hs0 hs1, hzero, mul_zero, mul_zero, zero_mul] at h
  apply hs1
  linear_combination -h

/-- The conclusion is Mathlib's literal RH proposition, retaining all exclusions. -/
theorem literal_RH_of_regularized_identity {L : ℂ → ℂ}
    (hidentity : RegularizedIdentity L) : _root_.RiemannHypothesis := by
  intro s hzero htrivial hs1
  have hnt : NontrivialZero s := ⟨hzero, htrivial, hs1⟩
  have hr : s.re ≤ 1 / 2 := le_of_not_gt fun h =>
    no_right_zero_of_regularized_identity hidentity hzero hs1 h
  have hl : (1 - s).re ≤ 1 / 2 := le_of_not_gt fun h =>
    no_right_zero_of_regularized_identity hidentity hnt.reflect.1 hnt.reflect.2.2 h
  simp only [sub_re, one_re] at hl
  linarith

theorem literal_RH_of_initial_and_holomorphic {L : ℂ → ℂ}
    (hhol : AnalyticOnNhd ℂ L PositiveHalfPlane)
    (hinit : InitialReciprocalIdentity L) : _root_.RiemannHypothesis :=
  literal_RH_of_regularized_identity (regularized_identity_of_initial_and_holomorphic hhol hinit)

/-- The FEMI transform is the actual completed pickup integral, not a freely chosen function. -/
def PickupInitialLaplaceObligation : Prop :=
  InitialReciprocalIdentity FEMI.pickupLaplace

/-- The half-plane extension still requires its polynomial-energy proof. -/
def PickupLaplaceHolomorphyObligation : Prop :=
  AnalyticOnNhd ℂ FEMI.pickupLaplace PositiveHalfPlane

/-- Named functional-analytic bridge; no witness is asserted here. -/
def PolynomialEnergyLaplaceReturnObligation : Prop :=
  PPNCP04.PolynomialBound PPNCP04.energy → PickupLaplaceHolomorphyObligation

/-- Conditional consumer of the two literal source-transform inputs. -/
theorem literal_RH_of_pickup_Laplace_inputs
    (hhol : PickupLaplaceHolomorphyObligation)
    (hinit : PickupInitialLaplaceObligation) : _root_.RiemannHypothesis :=
  literal_RH_of_initial_and_holomorphic hhol hinit

/-- P04 is not asserted to imply RH until both displayed analytic bridges are supplied. -/
theorem literal_RH_of_P04_and_explicit_analytic_inputs
    (hP04 : PPNCP04.P04) (hreturn : PolynomialEnergyLaplaceReturnObligation)
    (hinit : PickupInitialLaplaceObligation) : _root_.RiemannHypothesis :=
  literal_RH_of_pickup_Laplace_inputs
    (hreturn (PPNCP04.P04_iff_energy_polynomial.mp hP04)) hinit

end EulerP04RH.RHTerminal

#print axioms EulerP04RH.RHTerminal.regularized_identity_of_initial_and_holomorphic
#print axioms EulerP04RH.RHTerminal.literal_RH_of_regularized_identity

#print axioms EulerP04RH.RHTerminal.literal_RH_of_pickup_Laplace_inputs
#print axioms EulerP04RH.RHTerminal.literal_RH_of_P04_and_explicit_analytic_inputs
