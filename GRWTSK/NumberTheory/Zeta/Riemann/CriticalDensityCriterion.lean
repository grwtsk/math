/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Imported GRWTSK and Mathlib authorship and licenses are retained. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalZeroDivisor
import GRWTSK.Analysis.ComplexAnalysis.IntervalMellinKernel
import Mathlib.Tactic

/-!
# A reversible criterion on the actual Mellin density

The density is the one integrated by the existing tent kernel. Its critical
all-positive-rate bound is equivalent to the canonical RH proposition.
The reverse proof uses the exact exponential formula and the existing
functional-equation reflection, not a converse of a prime-count inequality.
Constants may depend on the zero and epsilon. No growth witness is asserted.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.RiemannHypothesis.CriticalDensityCriterion
open CanonicalZeroDivisor
open GRWTSK.Analysis.ComplexAnalysis.IntervalMellinKernel

/-- The original complete zero carrier, without replacing it by sampled zeros. -/
def CanonicalUpperHalfPlane : Prop := ∀ z : ZeroPoint, z.1.re ≤ 1 / 2

/-- Every positive slack, with source-specific constants and an eventual onset. -/
def CriticalDensityGrowth : Prop :=
  ∀ z : ZeroPoint, ∀ ε : ℝ, 0 < ε →
    ∃ C R : ℝ, 0 ≤ C ∧ 0 ≤ R ∧ ∀ t : ℝ, R ≤ t →
      ‖density z.1 (Real.exp t)‖ ≤ C * Real.exp ((-(1 / 2) + ε) * t)

/-- Exact source growth; no zeta hypothesis is needed for this identity. -/
theorem norm_density_exp (z : ℂ) (t : ℝ) :
    ‖density z (Real.exp t)‖ = Real.exp ((z.re - 1) * t) := by
  simp [density, Complex.norm_exp, Complex.mul_re, Real.log_exp]

/-- The upper half-plane bound constructs all constants in the density criterion. -/
theorem density_growth_of_upper (h : CanonicalUpperHalfPlane) : CriticalDensityGrowth := by
  intro z ε hε
  refine ⟨1, 0, by norm_num, le_rfl, ?_⟩
  intro t ht
  rw [norm_density_exp, one_mul]
  apply Real.exp_le_exp.mpr
  apply mul_le_mul_of_nonneg_right _ ht
  have hz := h z
  linarith

/-- A single right-of-line zero violates some positive density growth rate.
An elementary finite exponential estimate replaces an unproved limit interchange. -/
theorem upper_of_density_growth (h : CriticalDensityGrowth) : CanonicalUpperHalfPlane := by
  intro z
  by_contra hz
  have hz' : 1 / 2 < z.1.re := lt_of_not_ge hz
  let ε : ℝ := (z.1.re - 1 / 2) / 2
  have hε : 0 < ε := by dsimp [ε]; linarith
  obtain ⟨C, R, hC, hR, hb⟩ := h z ε hε
  let t : ℝ := R + 1 + (C + 1) / ε
  have ht : R ≤ t := by
    have hp : 0 ≤ (C + 1) / ε := div_nonneg (by linarith) hε.le
    dsimp [t]
    linarith
  have hbound := hb t ht
  have he : Real.exp ((z.1.re - 1) * t) =
      Real.exp (ε * t) * Real.exp ((-(1 / 2) + ε) * t) := by
    rw [← Real.exp_add]
    congr 1
    dsimp [ε]
    ring
  rw [norm_density_exp, he] at hbound
  have hsmall : Real.exp (ε * t) ≤ C :=
    (mul_le_mul_right (Real.exp_pos _)).mp hbound
  have hid : ε * t = ε * (R + 1) + (C + 1) := by
    dsimp [t]
    field_simp [hε.ne']
    <;> ring
  have hlarge := Real.add_one_le_exp (ε * t)
  rw [hid] at hlarge
  have hnonneg : 0 ≤ ε * (R + 1) := mul_nonneg hε.le (by linarith)
  linarith

/-- Functional-equation reflection upgrades a one-sided spectral envelope to RH. -/
theorem riemannHypothesis_of_upper (h : CanonicalUpperHalfPlane) :
    _root_.RiemannHypothesis := by
  intro s hs htrivial hpole
  let z : ZeroPoint := ⟨s, hs, htrivial, hpole⟩
  let zr : ZeroPoint := ⟨zeroReflect s, z.2.reflect⟩
  have hu : s.re ≤ 1 / 2 := h z
  have hl : (1 - s).re ≤ 1 / 2 := h zr
  simp only [Complex.sub_re, Complex.one_re] at hl
  linarith

theorem upper_of_riemannHypothesis (h : _root_.RiemannHypothesis) :
    CanonicalUpperHalfPlane :=
  fun z => (h z.1 z.2.1 z.2.2.1 z.2.2.2).le

theorem upper_iff_riemannHypothesis : CanonicalUpperHalfPlane ↔ _root_.RiemannHypothesis :=
  ⟨riemannHypothesis_of_upper, upper_of_riemannHypothesis⟩

/-- Genuine equivalence on the source before smoothing, not on the prime-count output. -/
theorem density_growth_iff_riemannHypothesis :
    CriticalDensityGrowth ↔ _root_.RiemannHypothesis :=
  ⟨fun h => riemannHypothesis_of_upper (upper_of_density_growth h),
    fun h => density_growth_of_upper (upper_of_riemannHypothesis h)⟩

/-- Exact witness form of failure; all exclusions remain in ZeroPoint. -/
theorem not_RH_iff_right_zero :
    ¬ _root_.RiemannHypothesis ↔ ∃ z : ZeroPoint, 1 / 2 < z.1.re := by
  rw [← upper_iff_riemannHypothesis, CanonicalUpperHalfPlane]
  simp only [not_forall, not_le]

end GRWTSK.RiemannHypothesis.CriticalDensityCriterion
