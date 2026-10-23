/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularKernelClosedForm
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis

/-- Non-existential form of the source-proved off-boundary Fejer decay. -/
theorem symmetricTriangularKernelDecay_explicit
    {N : ℕ} (hN : 0 < N)
    {t : ℝ} (ht0 : 0 < |t|)
    (htHalf : |t| ≤ (1 : ℝ) / 2) :
    ‖symmetricTriangularKernel N (t : AddCircle (1 : ℝ))‖ ≤
      ((1 : ℝ) / 4) / ((N : ℝ) * t^2) := by
  have hdenLower :
      2 * |t| ≤ |Real.sin (Real.pi * t)| :=
    abs_sin_pi_mul_lower htHalf
  have hnum :
      |Real.sin (Real.pi * (N : ℝ) * t)| ≤ 1 :=
    Real.abs_sin_le_one _
  have hNreal : (0 : ℝ) < (N : ℝ) := by
    exact_mod_cast hN
  rw [symmetricTriangularKernelClosedForm_offBoundary
    N hN t ht0 htHalf]
  simp only [← Complex.ofReal_sin, norm_div, norm_pow,
    Complex.norm_real, Real.norm_eq_abs]
  have hratio :
      |Real.sin (Real.pi * (N : ℝ) * t)| /
          |Real.sin (Real.pi * t)| ≤
        1 / (2 * |t|) := by
    apply div_le_div hnum (by positivity) hdenLower (by positivity)
  have hratio0 :
      0 ≤
        |Real.sin (Real.pi * (N : ℝ) * t)| /
          |Real.sin (Real.pi * t)| := by
    positivity
  have hsq :
      (|Real.sin (Real.pi * (N : ℝ) * t)| /
          |Real.sin (Real.pi * t)|)^2 ≤
        (1 / (2 * |t|))^2 := by
    exact pow_le_pow_left₀ hratio0 hratio 2
  have hcalc :
      (1 / (2 * |t|))^2 / (N : ℝ) =
        ((1 : ℝ) / 4) / ((N : ℝ) * t^2) := by
    rw [sq_abs]
    field_simp [hNreal.ne', ne_of_gt ht0]
    ring
  calc
    ((|Real.sin (Real.pi * (N : ℝ) * t)| /
        |Real.sin (Real.pi * t)|)^2) / (N : ℝ)
        ≤ ((1 / (2 * |t|))^2) / (N : ℝ) := by
          exact div_le_div_of_nonneg_right hsq hNreal.le
    _ = ((1 : ℝ) / 4) / ((N : ℝ) * t^2) := hcalc

/-- Sample the symmetric triangular kernel on the X-lattice with the natural
1/X convolution normalization. -/
def sampledTriangularKernel
    (X N d : ℕ) : ℝ :=
  (1 / (X : ℝ)) *
    ‖symmetricTriangularKernel N
      (((d : ℝ) / (X : ℝ)) : AddCircle (1 : ℝ))‖

theorem sampledTriangularKernel_nonnegative
    (X N d : ℕ) :
    0 ≤ sampledTriangularKernel X N d := by
  unfold sampledTriangularKernel
  positivity

/-- On the principal half-circle, the source-proved Fejer decay gives the
exact lattice estimate X/(4 N d^2) after 1/X normalization. -/
theorem sampledTriangularKernel_le
    {X N d : ℕ}
    (hX : 0 < X)
    (hN : 0 < N)
    (hd : 0 < d)
    (hdHalf : 2 * d ≤ X) :
    sampledTriangularKernel X N d ≤
      (X : ℝ) / (4 * (N : ℝ) * (d : ℝ)^2) := by
  unfold sampledTriangularKernel
  have hXr : (0 : ℝ) < (X : ℝ) := by exact_mod_cast hX
  have hNr : (0 : ℝ) < (N : ℝ) := by exact_mod_cast hN
  have hdr : (0 : ℝ) < (d : ℝ) := by exact_mod_cast hd
  have ht0 :
      0 < |((d : ℝ) / (X : ℝ))| := by
    rw [abs_of_pos (div_pos hdr hXr)]
    exact div_pos hdr hXr
  have htHalf :
      |((d : ℝ) / (X : ℝ))| ≤ (1 : ℝ) / 2 := by
    rw [abs_of_pos (div_pos hdr hXr)]
    rw [div_le_iff₀ hXr]
    have hcast : (2 : ℝ) * (d : ℝ) ≤ (X : ℝ) := by
      exact_mod_cast hdHalf
    linarith
  have hK :=
    symmetricTriangularKernelDecay_explicit hN ht0 htHalf
  have hInvX : 0 ≤ (1 : ℝ) / (X : ℝ) := by positivity
  have hscaled :=
    mul_le_mul_of_nonneg_left hK hInvX
  calc
    (1 / (X : ℝ)) *
        ‖symmetricTriangularKernel N
          (((d : ℝ) / (X : ℝ)) : AddCircle (1 : ℝ))‖
        ≤ (1 / (X : ℝ)) *
          (((1 : ℝ) / 4) /
            ((N : ℝ) * (((d : ℝ) / (X : ℝ))^2))) := hscaled
    _ = (X : ℝ) / (4 * (N : ℝ) * (d : ℝ)^2) := by
      field_simp [hXr.ne', hNr.ne', hdr.ne']
      ring

/-- Source-facing propagation frontier: identify the actual prime-prefix
smoothing tail as a weighted sum of the sampled kernel values. -/
def PrimePrefixSampledKernelTailPropagationClaim : Prop :=
  ∀ X N m : ℕ,
    0 < X → 0 < N →
    2 * X ≤ m → m ≤ 4 * X →
      ∃ tailError : ℝ,
        |tailError| ≤
          Real.log ((4 * X : ℕ) : ℝ) *
            ∑ d ∈ Finset.Icc 1 (X / 2),
              sampledTriangularKernel X N d

end GRWTSK.RiemannHypothesis
