# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripFifteenDerivativeWitness

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e55acee66012f2b39be7c88cbebdf6a34bc3bfd9` · SHA-256 `2eb5ad5a6828f22733c9f98b1f159710dc953cebef8c09bbd0966c54ef57f4c4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripFifteenDerivativeBernstein
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripFifteenIsolationPort

set_option autoImplicit false

/-!
# A concrete zero-permitting derivative witness through height fifteen

The SAME arithmetic source has first derivative in the radius12 disk about1+13i
on 0<Re(s)<=1,14<=Im(s)<=15. Tail, finite evaluation and polynomial errors are
separate. This yields injectivity, not nonvanishing of H. Actual target zeros in
the maintained closed fifteenBox lie inside this convex source domain by the
proved strict critical-strip theorem. Its mirror capacity therefore feeds the
existing successor port. No zero existence, count, or all-height RH is claimed.
SOURCE SCRIPTS / NOT_ELABORATED / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.ZeroIsolation.FifteenWitness
open Complex Set
open CenteredMellin.SexticPrimitive.DerivativeSixteen
noncomputable section

def domain : Set ℂ := {s | Region s}
def linearPart : ℂ := 1+13*I

lemma domain_convex : Convex ℝ domain := by
  change Convex ℝ ({s : ℂ | 0 < s.re} ∩ ({s : ℂ | s.re ≤ 1} ∩
    ({s : ℂ | (14 : ℝ) ≤ s.im} ∩ {s : ℂ | s.im ≤ 15})))
  exact (convex_halfSpace_re_gt _).inter ((convex_halfSpace_re_le _).inter
    ((convex_halfSpace_im_ge _).inter (convex_halfSpace_im_le _)))

lemma linearPart_norm_lower : (13 : ℝ) ≤ ‖linearPart‖ := by
  have h := Complex.abs_im_le_norm linearPart
  norm_num [linearPart] at h
  exact h

/-- Constructed from the actual finite derivative and independently differentiated tail. -/
theorem source_derivative_disk {s : ℂ} (hs : s ∈ domain) :
    ‖deriv poleNormalizedZeta s-linearPart‖ ≤ (12 : ℝ) := by
  have ht := derivative_source_error hs
  have hf := Jet.finite_derivative_enclosure hs
  have hm := Certificate.model_disk hs
  have h1 : ‖deriv poleNormalizedZeta s-linearPart‖ ≤
      ‖deriv poleNormalizedZeta s-exactDerivative s‖+‖exactDerivative s-linearPart‖ := by
    convert norm_add_le (deriv poleNormalizedZeta s-exactDerivative s)
      (exactDerivative s-linearPart) using 1 <;> ring
  have h2 : ‖exactDerivative s-linearPart‖ ≤
      ‖exactDerivative s-Jet.model s‖+‖Jet.model s-linearPart‖ := by
    convert norm_add_le (exactDerivative s-Jet.model s) (Jet.model s-linearPart) using 1 <;> ring
  change ‖Jet.model s-linearPart‖ ≤ (23/2 : ℝ) at hm
  linarith

/-- No analytic estimate is an unfilled record field in this concrete witness. -/
def certificate : DerivativeDisk poleNormalizedZeta domain where
  linearPart := linearPart
  radius := 12
  radius_nonneg := by norm_num
  convex := domain_convex
  differentiable := fun s _ => differentiable_poleNormalizedZeta s
  encloses := fun s hs => source_derivative_disk hs
  strict_margin := (by norm_num : (12 : ℝ) < 13).trans_le linearPart_norm_lower

/-- A permitted zero may occur; two different zeros cannot. -/
theorem source_separation {z w : ℂ} (hz : z ∈ domain) (hw : w ∈ domain) :
    ‖z-w‖ ≤ ‖poleNormalizedZeta z-poleNormalizedZeta w‖ := by
  have h := certificate.lower_lipschitz hz hw
  have ha := linearPart_norm_lower
  change (‖linearPart‖-12)*‖z-w‖ ≤ _ at h
  have hp : 0 ≤ ‖z-w‖ := norm_nonneg _
  nlinarith

theorem derivative_nonzero {z : ℂ} (hz : z ∈ domain) : deriv poleNormalizedZeta z ≠ 0 :=
  certificate.deriv_ne_zero hz

lemma target_in_domain {z : ℂ} (hz : z ∈ fifteenBox) (hzero : NontrivialZetaZero z) :
    z ∈ domain := by
  have hb := mem_fifteenBox.mp hz
  exact ⟨hzero.mem_critical_strip.1, hzero.mem_critical_strip.2.le, hb.2.2.1, hb.2.2.2⟩

/-- Boundary zero exclusion is sourced from the strict critical strip, not assumed. -/
theorem fifteen_target_capacity : AtMostOneTarget fifteenBox := by
  intro z hz w hw hz0 hw0
  exact certificate.atMostOneZero z (target_in_domain hz hz0) w (target_in_domain hw hw0)
    (poleNormalizedZeta_zero_of_target hz0) (poleNormalizedZeta_zero_of_target hw0)

/-- A source zero is reflected, then uniqueness forces the mirror fixed point. -/
theorem target_on_line {z : ℂ} (hz : z ∈ fifteenBox) (hzero : NontrivialZetaZero z) :
    z.re = 1/2 :=
  rhOn_of_mirror_capacity (mirrorBox_stable 14 15 (1/2)) fifteen_target_capacity z hz hzero

/-- Consume the PREVIOUS capacity-based port, not a no-zero replacement. -/
theorem shellRH_fourteen : ShellRH 14 := shell_fourteen_of_capacity fifteen_target_capacity

theorem windowRH_fifteen : WindowRH 15 := window_fifteen_of_capacity fifteen_target_capacity

/-- Location conditioning requires a KNOWN source zero and an actual source-value bound. -/
theorem distance_to_known_zero {z w : ℂ} {e : ℝ} (hz : z ∈ domain) (hw : w ∈ domain)
    (hw0 : poleNormalizedZeta w=0) (he : ‖poleNormalizedZeta z‖ ≤ e) : ‖z-w‖ ≤ e := by
  have h := source_separation hz hw
  rw [hw0, sub_zero] at h
  exact h.trans he

/-- Higher windows retain off-critical-line classification; no absence of all zeros. -/
theorem window_sixteen_of_shell (h : ShellRH 15) : WindowRH 16 :=
  (window_succ_iff 15).mpr ⟨windowRH_fifteen,h⟩

theorem all_windows_of_above_fifteen
    (hstep : ∀ N : ℕ, 15 ≤ N → WindowRH N → ShellRH N) : ∀ N : ℕ, WindowRH N := by
  intro N
  induction N with
  | zero => exact windowRH_mono windowRH_fifteen (by decide)
  | succ N ih =>
    by_cases hsmall : N+1 ≤ 15
    · exact windowRH_mono windowRH_fifteen hsmall
    · exact (window_succ_iff N).mpr ⟨ih,hstep N (by omega) ih⟩

theorem rh_of_above_fifteen
    (hstep : ∀ N : ℕ, 15 ≤ N → WindowRH N → ShellRH N) : _root_.RiemannHypothesis :=
  all_windowRH_iff_rh.mp (all_windows_of_above_fifteen hstep)

end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.ZeroIsolation.FifteenWitness
```
