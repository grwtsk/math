/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalPrimePowerSelector
import GRWTSK.NumberTheory.Zeta.Riemann.PinnedVonMangoldtCoefficientSource
import GRWTSK.NumberTheory.Zeta.Riemann.SequentialThreePointVolumePacking
import Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Dirichlet-damped canonical prime-power packing

The raw arithmetic coordinate (log q, Lambda(q)) is retained as provenance.
For the analytic packing candidate we use the exact s=2 Dirichlet damping

  P_2(q) = (log q / q^2, Lambda(q) / q^2).

This is source-derived from the same von Mangoldt Dirichlet-series channel
already bound to -zeta'/zeta on Re(s)>1.

The canonical prime-power values tend to infinity.  Both coordinates of P_2
therefore tend to zero.  Consequently both consecutive edge vectors tend to
zero, the oriented two-dimensional volume tends to zero, and its square (the
positive Gram-volume stage) tends to zero.

No prime number theorem or prime-gap theorem is used.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
DIRICHLET_DAMPED_PACKING_DECAY_SOURCE_PROVED.
-/

namespace GRWTSK.RiemannHypothesis

open Filter Topology
open GRWTSK.Polynomial.ConjugateQuartic

namespace PrimePowerEvent

/-- The formal logarithmic scale is literally log of the natural prime-power
value. -/
theorem logScale_eq_log_natValue (event : PrimePowerEvent) :
    event.logScale = Real.log (event.natValue : ℝ) := by
  simp [logScale, natValue, Nat.cast_pow, Real.log_pow]

/-- The raw von Mangoldt amplitude is bounded by the full logarithmic scale. -/
theorem mangoldtScale_le_logScale (event : PrimePowerEvent) :
    event.mangoldtScale ≤ event.logScale := by
  have hk : (1 : ℝ) ≤ event.exponent := by
    exact_mod_cast event.exponent_pos
  have hp : 0 ≤ event.mangoldtScale := event.mangoldtScale_pos.le
  change event.mangoldtScale ≤
    (event.exponent : ℝ) * event.mangoldtScale
  calc
    event.mangoldtScale = 1 * event.mangoldtScale := by ring
    _ ≤ (event.exponent : ℝ) * event.mangoldtScale :=
      mul_le_mul_of_nonneg_right hk hp

end PrimePowerEvent

/-- The canonical natural prime-power schedule is strictly monotone. -/
theorem canonicalPrimePowerValueSequence_strictMono :
    StrictMono canonicalPrimePowerValueSequence :=
  strictMono_nat_of_lt_succ canonicalPrimePowerValueSequence_strict

/-- Hence its real-valued natural labels tend to +infinity. -/
theorem canonicalPrimePowerValueSequence_real_tendsto_atTop :
    Tendsto
      (fun n => (canonicalPrimePowerValueSequence n : ℝ))
      atTop atTop :=
  tendsto_natCast_atTop_atTop.comp
    canonicalPrimePowerValueSequence_strictMono.tendsto_atTop

/-- Horizontal s=2 Dirichlet damping. -/
def dirichletTwoX (n : ℕ) : ℝ :=
  let q := (canonicalPrimePowerValueSequence n : ℝ)
  Real.log q / q ^ 2

/-- Vertical s=2 Dirichlet damping of the actual von Mangoldt coefficient. -/
def dirichletTwoY (n : ℕ) : ℝ :=
  let event := canonicalPrimePowerEventSequence n
  let q := (canonicalPrimePowerValueSequence n : ℝ)
  event.mangoldtScale / q ^ 2

/-- Canonical s=2 damped arithmetic point. -/
def dirichletTwoPoint (n : ℕ) : PackingPoint :=
  ⟨dirichletTwoX n, dirichletTwoY n⟩

/-- The horizontal damped logarithmic coordinate tends to zero. -/
theorem dirichletTwoX_tendsto_zero :
    Tendsto dirichletTwoX atTop (𝓝 0) := by
  have hbase :
      Tendsto (fun x : ℝ => Real.log x / x ^ 2) atTop (𝓝 0) := by
    have h :=
      (isLittleO_log_rpow_atTop
        (by norm_num : (0 : ℝ) < 2)).tendsto_div_nhds_zero
    simpa only [Real.rpow_two] using h
  exact hbase.comp canonicalPrimePowerValueSequence_real_tendsto_atTop

/-- The vertical damped coefficient is nonnegative. -/
theorem dirichletTwoY_nonnegative (n : ℕ) :
    0 ≤ dirichletTwoY n := by
  unfold dirichletTwoY
  positivity

/-- The vertical coordinate is bounded by the horizontal damped log coordinate. -/
theorem dirichletTwoY_le_X (n : ℕ) :
    dirichletTwoY n ≤ dirichletTwoX n := by
  let event := canonicalPrimePowerEventSequence n
  let q := (canonicalPrimePowerValueSequence n : ℝ)
  have hlog :
      event.logScale = Real.log q := by
    rw [PrimePowerEvent.logScale_eq_log_natValue]
    simp [event, q, canonicalPrimePowerEventSequence_natValue]
  have hraw := event.mangoldtScale_le_logScale
  rw [hlog] at hraw
  unfold dirichletTwoY dirichletTwoX
  exact div_le_div_of_nonneg_right hraw (sq_nonneg q)

/-- The actual s=2 von Mangoldt coordinate tends to zero. -/
theorem dirichletTwoY_tendsto_zero :
    Tendsto dirichletTwoY atTop (𝓝 0) :=
  squeeze_zero dirichletTwoY_nonnegative dirichletTwoY_le_X
    dirichletTwoX_tendsto_zero

/-- Concrete positive sliding sequence on the damped points. -/
def dirichletTwoPackingSequence : SequentialThreePointPrimePacking where
  point := dirichletTwoPoint
  source := canonicalPrimePowerValueSequence
  IsPrimePowerSource := IsPrimePow
  source_ok := canonicalPrimePowerValueSequence_isPrimePow

/-- Algebraic expression for the oriented volume at stage n. -/
def dirichletTwoOrientedVolume (n : ℕ) : ℝ :=
  (dirichletTwoX (n + 1) - dirichletTwoX n) *
      (dirichletTwoY (n + 2) - dirichletTwoY (n + 1)) -
    (dirichletTwoY (n + 1) - dirichletTwoY n) *
      (dirichletTwoX (n + 2) - dirichletTwoX (n + 1))

theorem dirichletTwoOrientedVolume_eq_packing (n : ℕ) :
    dirichletTwoOrientedVolume n =
      (dirichletTwoPackingSequence.packingAt n).orientedVolume := by
  rfl

/-- All shifted coordinate sequences still tend to zero. -/
private theorem dirichletTwoX_shift_tendsto_zero (k : ℕ) :
    Tendsto (fun n => dirichletTwoX (n + k)) atTop (𝓝 0) :=
  dirichletTwoX_tendsto_zero.comp (tendsto_add_atTop_nat k)

private theorem dirichletTwoY_shift_tendsto_zero (k : ℕ) :
    Tendsto (fun n => dirichletTwoY (n + k)) atTop (𝓝 0) :=
  dirichletTwoY_tendsto_zero.comp (tendsto_add_atTop_nat k)

/-- The oriented volume tends to zero because all four edge coordinates do. -/
theorem dirichletTwoOrientedVolume_tendsto_zero :
    Tendsto dirichletTwoOrientedVolume atTop (𝓝 0) := by
  have hx0 := dirichletTwoX_shift_tendsto_zero 0
  have hx1 := dirichletTwoX_shift_tendsto_zero 1
  have hx2 := dirichletTwoX_shift_tendsto_zero 2
  have hy0 := dirichletTwoY_shift_tendsto_zero 0
  have hy1 := dirichletTwoY_shift_tendsto_zero 1
  have hy2 := dirichletTwoY_shift_tendsto_zero 2
  have hdx01 :
      Tendsto (fun n => dirichletTwoX (n + 1) - dirichletTwoX n)
        atTop (𝓝 0) := by
    simpa using hx1.sub hx0
  have hdx12 :
      Tendsto
        (fun n => dirichletTwoX (n + 2) - dirichletTwoX (n + 1))
        atTop (𝓝 0) := by
    simpa using hx2.sub hx1
  have hdy01 :
      Tendsto (fun n => dirichletTwoY (n + 1) - dirichletTwoY n)
        atTop (𝓝 0) := by
    simpa using hy1.sub hy0
  have hdy12 :
      Tendsto
        (fun n => dirichletTwoY (n + 2) - dirichletTwoY (n + 1))
        atTop (𝓝 0) := by
    simpa using hy2.sub hy1
  simpa [dirichletTwoOrientedVolume] using
    (hdx01.mul hdy12).sub (hdy01.mul hdx12)

/-- The positive Gram-volume stages of the s=2 damped packing tend to zero. -/
theorem dirichletTwoPacking_valueAt_tendsto_zero :
    Tendsto dirichletTwoPackingSequence.valueAt atTop (𝓝 0) := by
  have hvol := dirichletTwoOrientedVolume_tendsto_zero
  have hsq :
      Tendsto (fun n => (dirichletTwoOrientedVolume n) ^ 2)
        atTop (𝓝 0) := by
    simpa using hvol.pow 2
  apply hsq.congr'
  filter_upwards with n
  rw [dirichletTwoOrientedVolume_eq_packing]
  rfl

/-- Every damped stage remains structurally nonnegative. -/
theorem dirichletTwoPacking_valueAt_nonnegative (n : ℕ) :
    0 ≤ dirichletTwoPackingSequence.valueAt n :=
  dirichletTwoPackingSequence.valueAt_nonnegative n

end GRWTSK.RiemannHypothesis
