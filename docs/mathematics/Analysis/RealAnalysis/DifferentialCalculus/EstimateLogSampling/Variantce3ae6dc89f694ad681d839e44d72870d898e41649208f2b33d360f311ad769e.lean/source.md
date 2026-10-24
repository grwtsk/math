# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.EstimateLogSampling.Variantce3ae6dc89f694ad681d839e44d72870d898e41649208f2b33d360f311ad769e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dab20048249146742a2d0f8922c978f6fa570299` · SHA-256 `ce3ae6dc89f694ad681d839e44d72870d898e41649208f2b33d360f311ad769e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMomentReflection

/-!
# RH estimate: logarithmic sampling specialization

This module specializes the finite sampling core to the exact logarithmic
kernel used by the Möbius source.

The sample is kept in the same exponential form as the actual source kernel:

  log(u) * exp(-(log x + log u)/2) * F(log x + log u).

For positive x and u this equals the archived
  log(u) / sqrt(xu) * F(log x + log u)
form.  Its exact derivative is computed and bounded pointwise from abstract
uniform bounds on F and F'.

No arithmetic estimate is introduced.
-/

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateLogSampling

open MeasureTheory Set
open EstimateTwoMomentSampling EstimateMomentReflection
open EstimateSourceMobiusKernel
open FormalResearch.RiemannHypothesis.SourcePairing

noncomputable section

def logSamplingTerm (F : ℝ → ℝ) (x u : ℝ) : ℝ :=
  Real.log u *
    Real.exp (-(Real.log x + Real.log u) / 2) *
    F (Real.log x + Real.log u)

def logSamplingDerivative (F : ℝ → ℝ) (x u : ℝ) : ℝ :=
  Real.exp (-(Real.log x + Real.log u) / 2) / u *
    ((1 - Real.log u / 2) *
        F (Real.log x + Real.log u) +
      Real.log u *
        deriv F (Real.log x + Real.log u))

theorem logSamplingTerm_contDiffOn_pos
    {F : ℝ → ℝ} (hF : ContDiff ℝ 1 F)
    {x : ℝ} (hx : 0 < x) :
    ContDiffOn ℝ 1 (logSamplingTerm F x) (Ioi 0) := by
  unfold logSamplingTerm
  have hlogu :
      ContDiffOn ℝ 1 Real.log (Ioi (0 : ℝ)) := by
    apply Real.contDiffOn_log.mono
    intro u hu
    simp only [mem_compl_iff, mem_singleton_iff]
    exact ne_of_gt hu
  have hshift :
      ContDiffOn ℝ 1
        (fun u : ℝ => Real.log x + Real.log u)
        (Ioi 0) :=
    contDiffOn_const.add hlogu
  have hexp :
      ContDiffOn ℝ 1
        (fun u : ℝ =>
          Real.exp (-(Real.log x + Real.log u) / 2))
        (Ioi 0) := by
    fun_prop
  have hcomp :
      ContDiffOn ℝ 1
        (fun u : ℝ => F (Real.log x + Real.log u))
        (Ioi 0) := by
    simpa only [Function.comp_def] using
      hF.comp_contDiffOn hshift
  exact hlogu.mul (hexp.mul hcomp)

theorem logSamplingTerm_hasDerivAt
    {F : ℝ → ℝ} (hF : ContDiff ℝ 1 F)
    {x u : ℝ} (hx : 0 < x) (hu : 0 < u) :
    HasDerivAt (logSamplingTerm F x)
      (logSamplingDerivative F x u) u := by
  have hlog :
      HasDerivAt Real.log u⁻¹ u :=
    Real.hasDerivAt_log (ne_of_gt hu)
  have hshift :
      HasDerivAt
        (fun v : ℝ => Real.log x + Real.log v)
        u⁻¹ u :=
    (hasDerivAt_const u (Real.log x)).add hlog
  have hnegdiv :
      HasDerivAt
        (fun v : ℝ =>
          -(Real.log x + Real.log v) / 2)
        (-u⁻¹ / 2) u :=
    hshift.neg.div_const 2
  have hexp :
      HasDerivAt
        (fun v : ℝ =>
          Real.exp (-(Real.log x + Real.log v) / 2))
        (Real.exp (-(Real.log x + Real.log u) / 2) *
          (-u⁻¹ / 2)) u :=
    hnegdiv.exp
  have hF' :
      HasDerivAt F
        (deriv F (Real.log x + Real.log u))
        (Real.log x + Real.log u) :=
    (hF.differentiable (by norm_num)
      (Real.log x + Real.log u)).hasDerivAt
  have hcomp :=
    hF'.comp u hshift
  have h :=
    hlog.mul (hexp.mul hcomp)
  convert h using 1
  · rfl
  · unfold logSamplingDerivative
    field_simp [ne_of_gt hu]
    ring

@[simp]
theorem deriv_logSamplingTerm
    {F : ℝ → ℝ} (hF : ContDiff ℝ 1 F)
    {x u : ℝ} (hx : 0 < x) (hu : 0 < u) :
    deriv (logSamplingTerm F x) u =
      logSamplingDerivative F x u :=
  (logSamplingTerm_hasDerivAt hF hx hu).deriv

/-- At positive integer samples, the generic logarithmic term is exactly the
source-kernel term when F is the actual source correlation. -/
theorem logSamplingTerm_source_eq
    (A x : ℝ) (k : ℕ)
    (hx : 0 < x) (hk : 1 ≤ k) :
    logSamplingTerm
        (sourceCorrelation Realization.explicitSecondDerivative A)
        x k =
      sourceKernelTerm A k x := by
  have hkpos : 0 < (k : ℝ) := by
    exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hk)
  unfold logSamplingTerm sourceKernelTerm exponentialTest
  rw [Real.log_mul (ne_of_gt hx) (ne_of_gt hkpos)]
  ring

theorem leftSampleSum_source_eq
    (A x : ℝ) (N : ℕ)
    (hx : 0 < x) :
    leftSampleSum
        (logSamplingTerm
          (sourceCorrelation Realization.explicitSecondDerivative A) x)
        N =
      ∑ k ∈ Finset.Icc 1 N,
        sourceKernelTerm A k x := by
  unfold leftSampleSum
  apply Finset.sum_congr rfl
  intro k hk
  exact logSamplingTerm_source_eq
    A x k hx (Finset.mem_Icc.mp hk).1

/-- Abstract sup bounds used by the logarithmic derivative estimate. -/
def ProfileSupBounds
    (F : ℝ → ℝ) (B0 B1 : ℝ) : Prop :=
  0 ≤ B0 ∧ 0 ≤ B1 ∧
  (∀ t : ℝ, |F t| ≤ B0) ∧
  (∀ t : ℝ, |deriv F t| ≤ B1)

def logSamplingDerivativeMajorant
    (x B0 B1 u : ℝ) : ℝ :=
  Real.exp (-Real.log x / 2) *
    Real.exp (-Real.log u / 2) / u *
    ((1 + Real.log u / 2) * B0 +
      Real.log u * B1)

/-- Pointwise derivative majorant on u >= 1. -/
theorem abs_logSamplingDerivative_le
    {F : ℝ → ℝ} {x u B0 B1 : ℝ}
    (hx : 0 < x) (hu : 1 ≤ u)
    (hB : ProfileSupBounds F B0 B1) :
    |logSamplingDerivative F x u| ≤
      logSamplingDerivativeMajorant x B0 B1 u := by
  have hu0 : 0 < u := lt_of_lt_of_le zero_lt_one hu
  have hlogu : 0 ≤ Real.log u :=
    Real.log_nonneg hu
  have hexpfac :
      Real.exp (-(Real.log x + Real.log u) / 2) =
        Real.exp (-Real.log x / 2) *
          Real.exp (-Real.log u / 2) := by
    rw [← Real.exp_add]
    congr 1
    ring
  unfold logSamplingDerivative
  rw [hexpfac, abs_mul, abs_div,
    abs_of_pos hu0]
  have hE0 :
      0 ≤ Real.exp (-Real.log x / 2) *
        Real.exp (-Real.log u / 2) := by
    positivity
  have hinner :
      |(1 - Real.log u / 2) *
          F (Real.log x + Real.log u) +
        Real.log u *
          deriv F (Real.log x + Real.log u)| ≤
        (1 + Real.log u / 2) * B0 +
          Real.log u * B1 := by
    calc
      |(1 - Real.log u / 2) *
          F (Real.log x + Real.log u) +
        Real.log u *
          deriv F (Real.log x + Real.log u)| ≤
          |1 - Real.log u / 2| *
              |F (Real.log x + Real.log u)| +
            |Real.log u| *
              |deriv F (Real.log x + Real.log u)| := by
        simpa [abs_mul] using
          abs_add
            ((1 - Real.log u / 2) *
              F (Real.log x + Real.log u))
            (Real.log u *
              deriv F (Real.log x + Real.log u))
      _ ≤
          (1 + Real.log u / 2) * B0 +
            Real.log u * B1 := by
        have hcoef :
            |1 - Real.log u / 2| ≤
              1 + Real.log u / 2 := by
          rw [abs_le]
          constructor <;> linarith
        rw [abs_of_nonneg hlogu]
        gcongr
        · exact hcoef
        · exact hB.2.2.1 _
        · exact hB.2.2.2 _
  unfold logSamplingDerivativeMajorant
  have hdiv0 : 0 ≤
      Real.exp (-Real.log x / 2) *
        Real.exp (-Real.log u / 2) / u := by
    positivity
  exact
    (mul_le_mul_of_nonneg_left hinner hdiv0).trans_eq
      (by ring)

/-- Pointwise logarithmic specialization checkpoint. -/
def LogSamplingCheckpoint : Prop :=
  (∀ A x : ℝ, ∀ k : ℕ,
    0 < x → 1 ≤ k →
      logSamplingTerm
        (sourceCorrelation Realization.explicitSecondDerivative A)
        x k =
      sourceKernelTerm A k x) ∧
  (∀ F : ℝ → ℝ, ContDiff ℝ 1 F →
    ∀ x u B0 B1 : ℝ,
      0 < x → 1 ≤ u →
      ProfileSupBounds F B0 B1 →
      |logSamplingDerivative F x u| ≤
        logSamplingDerivativeMajorant x B0 B1 u)

theorem log_sampling_checkpoint :
    LogSamplingCheckpoint :=
  ⟨fun A x k hx hk =>
      logSamplingTerm_source_eq A x k hx hk,
    fun F hF x u B0 B1 hx hu hB =>
      abs_logSamplingDerivative_le hx hu hB⟩

end
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateLogSampling
```
