/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripTenHeightSeed

set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Checks.SexticBernsteinMassTenHeight
open Complex Set MeasureTheory
open GRWTSK.RiemannHypothesis.CriticalStripHeightDescent
open CenteredMellin.SexticPrimitive
noncomputable section

example (j : Fin 7) (m : ℕ) :
    (∫ v : ℝ in (0 : ℝ)..1, KernelDefect.basis j v * v ^ m) = BernsteinMass.moment j m :=
  BernsteinMass.moment_integral j m
example (i : Fin 16) (j : Fin 7) : 0 ≤ BernsteinMass.deficitCoefficient i j :=
  BernsteinMass.deficitCoefficient_nonneg i j
example (i : Fin 16) {v : ℝ} (hv : 0 ≤ v) (hv1 : v ≤ 1) :
    BernsteinMass.density i v ≤ 1 - |KernelDefect.normalized (((i.val : ℝ)+v)/16)| :=
  BernsteinMass.density_le_deficit i hv hv1
example (i : Fin 16) :
    (∫ t : ℝ in KernelDefect.node i.val..KernelDefect.node (i.val+1), BernsteinMass.lower0 i t) =
      BernsteinMass.mass0 i := BernsteinMass.lower0_integral i
example : (23/480 : ℝ) ≤ ∑ i : Fin 16, BernsteinMass.mass0 i := BernsteinMass.total_mass0
example : (9/1000 : ℝ) ≤ ∑ i : Fin 16, BernsteinMass.mass1 i := BernsteinMass.total_mass1
example {c t : ℝ} (hc : 0 < c) (ht : 0 < t) :
    BernsteinMass.tangent7 c t ≤ t ^ (-(7 : ℝ)) := BernsteinMass.tangent7_le hc ht
example {x t : ℝ} (hx : x ≤ 1) (ht : 0 < t) :
    t ^ (-(7 : ℝ)) + (1-x)*(t-1)*t ^ (-(8 : ℝ)) ≤ t ^ (-(x+6)) :=
  BernsteinMass.variable_weight_lower hx ht
-- The positive integration-variable premise cannot be removed at t=0.
example : (0 : ℝ) ^ (-(7 : ℝ)) < BernsteinMass.tangent7 1 0 := by
  norm_num [BernsteinMass.tangent7]
example {s : ℂ} (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) :
    ‖tail 1 s‖ ≤ (5/7 : ℝ)/(30240*(s.re+5)) := BernsteinMass.first_tail_improved hx hx1

example (u v : ℝ) :
    CenteredMellin.QuarticPrimitive.SevenHeightCertificate.tensorValue
      TenHeightCertificate.coefficients u v =
        1024*TenHeightCertificate.gap ((1+u)/2) (100*v) := TenHeightCertificate.tensor_identity u v
example : (139/100 : ℝ)*(5/7)=139/140 := by norm_num
example : (1-(139/140 : ℝ))*(65/112)=13/3136 := by norm_num
-- Geometry alone is not a strict analytic margin.
example : (1 : ℝ) < 139/100 := by norm_num
example : (1 : ℝ) < (139/100)*(33/40) := by norm_num
example {s : ℂ} (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (10 : ℝ)) :
    (13/3136 : ℝ) ≤ ‖poleNormalizedZeta s‖ := poleNormalized_norm_lower_tenHeight hx hx1 hy
example {z : ℂ} (hz : NontrivialZetaZero z) :
    (10 : ℝ) < |ZetaCommutatorRoot.root.heightAt z| := nontrivialZetaZero_height_gt_ten hz
example : WindowRH 10 := windowRH_ten
example : ShellRH 9 := shellRH_nine
-- Supply the PREVIOUS named next-shell port, without changing its statement.
example : WindowRH 10 := window_ten_of_shell shellRH_nine
example : NineHeightCertificate.gap (1/2) 100 < 0 := NineHeightCertificate.height_ten_gap_negative
example : TenHeightCertificate.gap (1/2) 121 < 0 := TenHeightCertificate.height_eleven_gap_negative

example {N : ℕ} {s : ℂ} (hN : 1 ≤ N) (hx : (1/2 : ℝ) ≤ s.re)
    (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (10 : ℝ)) :
    ‖poleNormalizedZeta s-finiteModel N s‖ ≤
      (139/100 : ℝ)*‖reference s‖*(N : ℝ)^(-(s.re+5)) :=
  finiteModel_relative_error_tenHeight hN hx hx1 hy
example {s : ℂ} {t : ℝ} (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (10 : ℝ))
    (ht : 0 ≤ t) (ht1 : t ≤ 1) : (13/3136 : ℝ) ≤ ‖deformation t s‖ :=
  deformation_norm_lower_tenHeight hx hx1 hy ht ht1
example (h : ShellRH 10) : WindowRH 11 := window_eleven_of_shell h
example (h : ∀ N : ℕ, 10 ≤ N → WindowRH N → ShellRH N) : _root_.RiemannHypothesis :=
  rh_of_above_ten h

end
end GRWTSK.RiemannHypothesis.Checks.SexticBernsteinMassTenHeight
