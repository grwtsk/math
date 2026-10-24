/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ErrorBounds.RationalLogEnclosure
import GRWTSK.Analysis.ErrorBounds.RationalExpTrace
import GRWTSK.Analysis.ComplexAnalysis.IntervalMellinRangeReduction

set_option autoImplicit false

/-!
# Rational checks for actual Mellin density samples

The external rational parameter z and exact rational node t determine the log
center, exponent, magnitude bound and logarithm-input charge. An exponential
trace is checked at that derived exponent, not at a label in its data. No input
logarithm or final radius is trusted. Only elementary density values are covered:
this is not a kernel quadrature checker, parser or complete divisor certificate.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.ComplexAnalysis.RationalMellinNode

open GRWTSK.Analysis.ErrorBounds.RationalComplexEnclosure
open GRWTSK.Analysis.ComplexAnalysis.IntervalMellinKernel
open GRWTSK.Analysis.ComplexAnalysis.IntervalMellinRangeReduction

open GRWTSK.Analysis.ErrorBounds

/-- Independent natural resolutions; a logarithm scale is not an exponential scale. -/
structure Resolution where
  logScale : ℕ
  logTwoCells : ℕ
  mantissaCells : ℕ
  expScale : ℕ
  terms : ℕ
  deriving DecidableEq

/-- L1 bound on the actual complex coefficient z-1, using rational components. -/
def magnitude (z : Coordinates) : ℚ := |z.1 - 1| + |z.2|

def logCenterQ (t : ℚ) (p : Resolution) : ℚ :=
  RationalLogEnclosure.center t p.logScale p.logTwoCells p.mantissaCells

def logRadiusQ (t : ℚ) (p : Resolution) : ℚ :=
  RationalLogEnclosure.radius t p.logScale p.logTwoCells p.mantissaCells

/-- The external node and parameter determine the exponent by exact arithmetic. -/
def exponent (z : Coordinates) (t : ℚ) (p : Resolution) : Coordinates :=
  mul (sub z one) (logCenterQ t p, 0)

def exponentBound (z : Coordinates) (t : ℚ) (p : Resolution) : ℚ :=
  magnitude z * |logCenterQ t p|

/-- Recomputed total allowance: log uncertainty plus the full exponential trace error. -/
def error (z : Coordinates) (t : ℚ) (p : Resolution) (tr : RationalExpTrace.Trace) : ℚ :=
  magnitude z * logRadiusQ t p + RationalExpTrace.outputRadius (exponentBound z t p)
    p.expScale p.terms tr

/-- Domain checks and the inherited complete finite trace checker. -/
def check (z : Coordinates) (t : ℚ) (p : Resolution) (tr : RationalExpTrace.Trace) : Bool :=
  RationalLogEnclosure.validScale t p.logScale p.logTwoCells p.mantissaCells &&
    (decide (z.1 ≤ 1) &&
      RationalExpTrace.check (exponent z t p) (exponentBound z t p) p.expScale p.terms tr)

/-- Useful total-node precision, not just exponential-stage precision. -/
def checkWithin (z : Coordinates) (t : ℚ) (p : Resolution) (tr : RationalExpTrace.Trace) (ε : ℚ) : Bool :=
  check z t p tr && decide (0 ≤ ε ∧ error z t p tr ≤ ε)

/-- The inherited constructor is reused at the derived, source-bound exponent. -/
def exactTrace (z : Coordinates) (t : ℚ) (p : Resolution) : RationalExpTrace.Trace :=
  RationalExpTrace.exactTrace (exponent z t p) p.expScale p.terms

@[simp] theorem cast_magnitude (z : Coordinates) :
    (magnitude z : ℝ) = ComplexTaylorEnclosure.componentBound (toComplex z - 1) := by
  simp [magnitude, ComplexTaylorEnclosure.componentBound, toComplex]

theorem magnitude_nonneg (z : Coordinates) : 0 ≤ magnitude z :=
  add_nonneg (abs_nonneg _) (abs_nonneg _)

@[simp] theorem toComplex_exponent (z : Coordinates) (t : ℚ) (p : Resolution) :
    toComplex (exponent z t p) = (toComplex z - 1) * (logCenterQ t p : ℂ) := by
  simp only [exponent, toComplex_mul, toComplex_sub, toComplex_one, toComplex_real]

theorem exponent_in_ball (z : Coordinates) (t : ℚ) (p : Resolution) :
    inBall (exponent z t p) (exponentBound z t p) = true := by
  apply (inBall_iff _ _).mpr
  have h := mul_le_mul_of_nonneg_right (ComplexTaylorEnclosure.norm_le_componentBound (toComplex z - 1))
    (abs_nonneg (logCenterQ t p : ℝ))
  simpa [toComplex_exponent, norm_mul, Real.norm_eq_abs, exponentBound] using h

/-- The logarithm center's sign is proved, so the exponential disk bound applies. -/
theorem exponent_re_nonpos {z : Coordinates} {t : ℚ} {p : Resolution}
    (hz : z.1 ≤ 1) (hl : RationalLogEnclosure.validScale t p.logScale p.logTwoCells p.mantissaCells = true) :
    (exponent z t p).1 ≤ 0 := by
  have hc : 0 ≤ logCenterQ t p := RationalLogEnclosure.center_nonneg hl
  simpa [exponent, mul, sub, one] using
    mul_nonpos_of_nonpos_of_nonneg (sub_nonpos.mpr hz) hc

theorem check_components {z : Coordinates} {t : ℚ} {p : Resolution} {tr : RationalExpTrace.Trace}
    (h : check z t p tr = true) :
    RationalLogEnclosure.validScale t p.logScale p.logTwoCells p.mantissaCells = true ∧ z.1 ≤ 1 ∧
      RationalExpTrace.check (exponent z t p) (exponentBound z t p) p.expScale p.terms tr = true := by
  simpa only [check, Bool.and_eq_true, decide_eq_true_eq] using h

/-- The original positive-axis Mellin density is the target, not its center exponential. -/
theorem logarithm_input_error {z : Coordinates} {t : ℚ} {p : Resolution}
    (hz : z.1 ≤ 1) (hl : RationalLogEnclosure.validScale t p.logScale p.logTwoCells p.mantissaCells = true) :
    ‖density (toComplex z) (t : ℝ) - Complex.exp (toComplex (exponent z t p))‖ ≤
      ((magnitude z * logRadiusQ t p : ℚ) : ℝ) := by
  have ht : (1 : ℝ) ≤ t := by
    exact_mod_cast ((RationalLogEnclosure.validScale_iff _ _ _ _).mp hl).1
  have hc : (0 : ℝ) ≤ (logCenterQ t p : ℝ) := by
    exact_mod_cast (RationalLogEnclosure.center_nonneg hl)
  have ha : (toComplex z - 1).re ≤ 0 := by
    have hz' : (z.1 : ℝ) ≤ 1 := by exact_mod_cast hz
    simpa [toComplex] using sub_nonpos.mpr hz'
  have hlog : |Real.log (t : ℝ) - (logCenterQ t p : ℝ)| ≤ (logRadiusQ t p : ℝ) :=
    RationalLogEnclosure.log_error hl
  have hin := (norm_exp_ray_sub_le ha (Real.log_nonneg ht) hc).trans
    (mul_le_mul (ComplexTaylorEnclosure.norm_le_componentBound (toComplex z - 1)) hlog
      (abs_nonneg _) (ComplexTaylorEnclosure.componentBound_nonneg _))
  simpa only [density, toComplex_exponent, Rat.cast_mul, cast_magnitude,
    Complex.ofReal_ratCast] using hin

/-- The complete rational check supplies both the logarithm and trace premises. -/
theorem check_sound {z : Coordinates} {t : ℚ} {p : Resolution} {tr : RationalExpTrace.Trace}
    (h : check z t p tr = true) :
    ‖density (toComplex z) (t : ℝ) - toComplex (RationalExpTrace.valueAt tr p.expScale)‖ ≤
      (error z t p tr : ℝ) := by
  obtain ⟨hl, hz, he⟩ := check_components h
  have hi := logarithm_input_error hz hl
  have hx := RationalExpTrace.check_sound he
  calc
    _ = ‖(density (toComplex z) (t : ℝ) - Complex.exp (toComplex (exponent z t p))) +
        (Complex.exp (toComplex (exponent z t p)) -
          toComplex (RationalExpTrace.valueAt tr p.expScale))‖ := by congr 1; abel
    _ ≤ ‖density (toComplex z) (t : ℝ) - Complex.exp (toComplex (exponent z t p))‖ +
        ‖Complex.exp (toComplex (exponent z t p)) -
          toComplex (RationalExpTrace.valueAt tr p.expScale)‖ := norm_add_le _ _
    _ ≤ (error z t p tr : ℝ) := by
      simpa only [error, Rat.cast_add] using add_le_add hi hx

theorem checkWithin_sound {z : Coordinates} {t ε : ℚ} {p : Resolution} {tr : RationalExpTrace.Trace}
    (h : checkWithin z t p tr ε = true) :
    ‖density (toComplex z) (t : ℝ) - toComplex (RationalExpTrace.valueAt tr p.expScale)‖ ≤ (ε : ℝ) := by
  have hp : check z t p tr = true ∧ (0 ≤ ε ∧ error z t p tr ≤ ε) := by
    simpa only [checkWithin, Bool.and_eq_true, decide_eq_true_eq] using h
  exact (check_sound hp.1).trans (by exact_mod_cast hp.2.2)

/-- Nonvacuity at every admissible resolution; no passing trace is assumed. -/
theorem exactTrace_checked {z : Coordinates} {t : ℚ} {p : Resolution}
    (hz : z.1 ≤ 1) (hl : RationalLogEnclosure.validScale t p.logScale p.logTwoCells p.mantissaCells = true)
    (hg : (exponentBound z t p / (2 ^ p.expScale : ℕ)) / (p.terms + 1 : ℕ) ≤ (1 / 2 : ℚ)) :
    check z t p (exactTrace z t p) = true := by
  have he := RationalExpTrace.exactTrace_checked (exponent_re_nonpos hz hl) (exponent_in_ball z t p)
    p.expScale p.terms hg
  simp only [check, Bool.and_eq_true, decide_eq_true_eq]
  exact ⟨hl, hz, he⟩

/-- A tolerance below the charged log uncertainty cannot pass via a perfect exp trace. -/
theorem checked_log_charge_le {z : Coordinates} {t ε : ℚ} {p : Resolution} {tr : RationalExpTrace.Trace}
    (h : checkWithin z t p tr ε = true) : magnitude z * logRadiusQ t p ≤ ε := by
  have hp : check z t p tr = true ∧ (0 ≤ ε ∧ error z t p tr ≤ ε) := by
    simpa only [checkWithin, Bool.and_eq_true, decide_eq_true_eq] using h
  have he := RationalExpTrace.checked_radius_nonneg (check_components hp.1).2.2
  have hb := hp.2.2
  unfold error at hb
  linarith

/-- This node checker inherits exact trace-length requirements, not defaulted evidence. -/
theorem checked_lengths {z : Coordinates} {t : ℚ} {p : Resolution} {tr : RationalExpTrace.Trace}
    (h : check z t p tr = true) :
    tr.values.length = p.expScale + 1 ∧ tr.squareRadii.length = p.expScale :=
  RationalExpTrace.checked_lengths (check_components h).2.2

/-- A nonconstant real density example: z=0, t=2, c=3/4 and eta=1/4. -/
def reciprocalResolution : Resolution := ⟨1, 1, 1, 1, 3⟩
def reciprocalTrace : RationalExpTrace.Trace := ⟨[(89 / 128, 0), (7921 / 16384, 0)], 0, [0]⟩

theorem reciprocal_node_checked :
    checkWithin (0, 0) 2 reciprocalResolution reciprocalTrace (3 / 10) = true := by decide +kernel

theorem reciprocal_node_enclosure :
    ‖density 0 2 - (7921 / 16384 : ℂ)‖ ≤ (3 / 10 : ℝ) := by
  have h := checkWithin_sound reciprocal_node_checked
  simpa [reciprocalResolution, reciprocalTrace, RationalExpTrace.valueAt] using h

/-- An accurate exponential at the center does not by itself certify the full node. -/
theorem exponential_only_is_insufficient :
    RationalExpTrace.checkWithin (-3 / 4, 0) (3 / 4) 1 3 reciprocalTrace (1 / 10) = true ∧
    checkWithin (0, 0) 2 reciprocalResolution reciprocalTrace (1 / 10) = false := by decide +kernel

/-- Same recorded trace but a different literal node: the exponent is recomputed. -/
theorem stale_node_rejected :
    check (0, 0) 4 ⟨2, 1, 1, 1, 3⟩ reciprocalTrace = false := by decide +kernel

theorem source_parameter_rejected :
    check (0, 1) 2 reciprocalResolution reciprocalTrace = false := by decide +kernel

/-- Constant density is allowed exact zero tolerance, but still needs the log guards. -/
theorem constant_density_control :
    checkWithin (1, 0) 2 ⟨1, 1, 1, 0, 1⟩ ⟨[(1, 0)], 0, []⟩ 0 = true ∧
    check (1, 0) 2 ⟨1, 0, 1, 0, 1⟩ ⟨[(1, 0)], 0, []⟩ = false := by decide +kernel

/-- Horizontal-domain, node-domain and external precision guards are not labels. -/
theorem domain_controls :
    check (2, 0) 1 ⟨0, 1, 1, 0, 1⟩ ⟨[(1, 0)], 0, []⟩ = false ∧
    check (0, 0) 0 reciprocalResolution reciprocalTrace = false ∧
    checkWithin (1, 0) 2 ⟨1, 1, 1, 0, 1⟩ ⟨[(1, 0)], 0, []⟩ (-1) = false := by decide +kernel

end GRWTSK.Analysis.ComplexAnalysis.RationalMellinNode
