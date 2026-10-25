# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BranchSourcePhaseFrame.Variant36ab31f073e648c96fad88f63415eaffc56a5f8f2ca5f6dbb85235e5c8f7e586

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3f1f5547a7e3972705bf5dc9531620238775a327` · SHA-256 `36ab31f073e648c96fad88f63415eaffc56a5f8f2ca5f6dbb85235e5c8f7e586`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.ActualComplexSourceMoment
import Mathlib.Tactic

/-!
# Native source zero contract and the exact two-probe frame

Batch 27, `source-phase-certificates.md`, sections 1 and 3. The ODE energy
identity is an explicit analytic input. `NativeImaginaryZeroProblem` is the
exact native statement still requiring that analytic proof, not an axiom.
The frame identities and native nonvanishing implication below are checked.
Human research direction: grwtsk contributors. Implementation: OpenAI Codex.
-/
set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.Conversation.BranchSourcePhaseFrame
open GRWTSK.RiemannHypothesis.Conversation.ActualComplexSourceMoment
open FormalResearch.RiemannHypothesis.SourcePairing

/-- The native imaginary zero problem in this module, with the following exact parameterization.

This defines a condition; no witness is supplied by the definition.
def NativeImaginaryZeroProblem : Prop := ∀ A : ℝ, 1 ≤ A → ∀ z : ℂ, complexBumpMoment A z = 0 →
z.re = 0
-/
def NativeImaginaryZeroProblem : Prop :=
  ∀ A : ℝ, 1 ≤ A → ∀ z : ℂ, complexBumpMoment A z = 0 → z.re = 0

theorem energy_identity_forces_imaginary (w : ℂ) (B D : ℝ) (hB : 0 < B) (hD : 0 < D)
    (henergy : w ^ 2 * (B : ℂ) = (-D : ℂ)) : w.re = 0 := by
  have hr := congrArg Complex.re henergy
  have hi := congrArg Complex.im henergy
  simp only [pow_two, Complex.mul_re, Complex.mul_im, Complex.ofReal_re,
    Complex.ofReal_im, Complex.neg_re, Complex.neg_im, mul_zero, sub_zero,
    ] at hr hi
  by_contra hw
  have hfactor : 2 * w.re * B ≠ 0 := mul_ne_zero (mul_ne_zero (by norm_num) hw) hB.ne'
  have him : w.im = 0 := (mul_eq_zero.mp (show (2 * w.re * B) * w.im = 0 by
    nlinarith [hi])).resolve_left hfactor
  rw [him] at hr
  nlinarith [mul_nonneg (sq_nonneg w.re) hB.le]

theorem native_bump_nonzero (hzero : NativeImaginaryZeroProblem) {A : ℝ} (hA : 1 ≤ A)
    (z : ℂ) (hz : z.re ≠ 0) : complexBumpMoment A z ≠ 0 := by
  intro h
  exact hz (hzero A hA z h)

theorem native_source_nonzero (hzero : NativeImaginaryZeroProblem) {A : ℝ} (hA : 1 ≤ A)
    (z : ℂ) (hz : z.re ≠ 0) (hpole : z ^ 2 - 1 / 4 ≠ 0) :
    complexTestMoment A z ≠ 0 := by
  rw [complex_actual_normalized_laplace_multiplier hA]
  have hZ : (Real.sqrt (sourceNormalization A) : ℂ) ≠ 0 := by
    exact_mod_cast (Real.sqrt_pos.mpr (source_normalization_pos A (by linarith))).ne'
  exact div_ne_zero (mul_ne_zero hpole (native_bump_nonzero hzero hA z hz)) hZ

/-- The second probe in this module, with the following exact parameterization.

def secondProbe (δ γ x y : ℝ) : ℝ := (δ ^ 2 - γ ^ 2) * x - 2 * δ * γ * y
-/
def secondProbe (δ γ x y : ℝ) : ℝ := (δ ^ 2 - γ ^ 2) * x - 2 * δ * γ * y

theorem exact_second_probe (z w : ℂ) :
    (z ^ 2 * w).re = secondProbe z.re z.im w.re w.im := by
  simp only [pow_two, Complex.mul_re, Complex.mul_im, secondProbe]
  ring

theorem quadrature_recovery (δ γ x y : ℝ) (hδ : δ ≠ 0) (hγ : γ ≠ 0) :
    ((δ ^ 2 - γ ^ 2) * x - secondProbe δ γ x y) / (2 * δ * γ) = y := by
  apply (div_eq_iff (mul_ne_zero (mul_ne_zero (by norm_num) hδ) hγ)).mpr
  unfold secondProbe
  ring

theorem frame_defect_identity (δ γ x y : ℝ) :
    (1 + (δ ^ 2 + γ ^ 2) ^ 2) * (x ^ 2 + secondProbe δ γ x y ^ 2) -
      4 * δ ^ 2 * γ ^ 2 * (x ^ 2 + y ^ 2) =
      (x + (δ ^ 2 - γ ^ 2) * secondProbe δ γ x y) ^ 2 +
        (2 * δ * γ * secondProbe δ γ x y) ^ 2 := by
  unfold secondProbe
  ring

theorem frame_lower_bound (δ γ x y : ℝ) :
    (4 * δ ^ 2 * γ ^ 2 / (1 + (δ ^ 2 + γ ^ 2) ^ 2)) * (x ^ 2 + y ^ 2) ≤
      x ^ 2 + secondProbe δ γ x y ^ 2 := by
  have h := frame_defect_identity δ γ x y
  have hpos : 0 < 1 + (δ ^ 2 + γ ^ 2) ^ 2 := by positivity
  rw [div_mul_eq_mul_div]
  apply (div_le_iff₀ hpos).mpr
  nlinarith [sq_nonneg (x + (δ ^ 2 - γ ^ 2) * secondProbe δ γ x y),
    sq_nonneg (2 * δ * γ * secondProbe δ γ x y)]

theorem both_probes_zero_forces_zero (δ γ x y : ℝ) (hδ : δ ≠ 0) (hγ : γ ≠ 0)
    (hx : x = 0) (hb : secondProbe δ γ x y = 0) : x = 0 ∧ y = 0 := by
  have h := quadrature_recovery δ γ x y hδ hγ
  rw [hb, hx] at h
  exact ⟨hx, by simpa using h.symm⟩

theorem individual_mode_identification (z w : ℂ) (hδ : z.re ≠ 0) (hγ : z.im ≠ 0)
    (ha : w.re = 0) (hb : (z ^ 2 * w).re = 0) : w = 0 := by
  rw [exact_second_probe] at hb
  obtain ⟨hr, hi⟩ := both_probes_zero_forces_zero z.re z.im w.re w.im hδ hγ ha hb
  exact Complex.ext (by simpa using hr) (by simpa using hi)

end FormalResearch.RiemannHypothesis.Conversation.BranchSourcePhaseFrame
```
