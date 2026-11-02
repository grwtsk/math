/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / LEAN_BUILD_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusEndpointPutnamSparseGapYoung
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusFareyFaryKakeyaIncidence
import Mathlib

set_option autoImplicit false
noncomputable section
open MeasureTheory

/-!
# The real Cauchy Gram determinant bound for the ACTUAL causal pickup source

No abstract "Gram certificate" or RH-strength source premise is added.
The source vectors are exactly the original signed real continuous
responses mu(m)*pickupResponse(m,u) over the actual physical-time
interval [0,T]. Positivity of their squared linear combination for
EVERY real test t, followed by an elementary discriminant argument,
gives the true two-by-two Gram determinant inequality:

  sourceKernel(T,m,n)^2 <= sourceDiagonal(T,m)*sourceDiagonal(T,n).

All original Mobius signs, birth cutoffs and response integrals remain.
The prior source_gram_young is weaker (Young bounds two cross terms);
this proof uses the additional square-integral structure, NOT RH.
-/

namespace GRWTSK.NumberTheory.Moebius.CausalGramCauchy

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.Moebius.FareyFaryKakeyaIncidence
open GRWTSK.NumberTheory.Moebius.PutnamSparseGapProof

/-- Scalar discriminant lemma including its rank-zero boundary:
a quadratic nonnegative at EVERY real argument has b^2<=a*c.
No positive-definiteness of the off-diagonal sign is imposed. -/
theorem square_discriminant_of_nonnegative
    (a b c : ℝ) (ha : 0 ≤ a)
    (hquad : ∀ t : ℝ, 0 ≤ a*t^2 + 2*b*t + c) :
    b^2 ≤ a*c := by
  by_cases ha0 : a = 0
  · have hb0 : b = 0 := by
      by_contra hb
      let t : ℝ := -(c + 1)/(2*b)
      have h := hquad t
      have ht : a*t^2 + 2*b*t + c = -1 := by
        dsimp [t]
        rw [ha0]
        field_simp [hb]
        ring
      linarith
    simp [ha0, hb0]
  · have haPos : 0 < a := lt_of_le_of_ne ha (Ne.symm ha0)
    have h := hquad (-b/a)
    have heq : a*(-b/a)^2 + 2*b*(-b/a) + c =
        c - b^2/a := by
      field_simp [ha0]
      ring
    rw [heq] at h
    have hdiv : b^2/a ≤ c := by linarith
    have hmul := (div_le_iff₀ haPos).mp hdiv
    nlinarith [hmul]

/-- Exact original signed-mass vector at one source index. -/
def sourceResponseVector (n : ℕ) (u : ℝ) : ℝ :=
  moebiusReal n * pickupResponse n u

theorem sourceResponseVector_continuous (n : ℕ) (hn : 0 < n) :
    Continuous (sourceResponseVector n) :=
  continuous_const.mul (pickupResponse_continuous hn)

/-- The source L² squared mass is literally the old sourceDiagonal,
not a substitute positive coefficient. -/
theorem sourceResponse_square_integral
    (n : ℕ) (hn : 0 < n) (T : ℝ) :
    (∫ u in (0 : ℝ)..T, sourceResponseVector n u ^ 2) =
      sourceDiagonal T n := by
  have hf := sourceResponseVector_continuous n hn
  calc
    _ = ∫ u in (0 : ℝ)..T,
         moebiusReal n^2 *
           (pickupResponse n u * pickupResponse n u) := by
           apply intervalIntegral.integral_congr
           intro u hu
           simp only [sourceResponseVector]
           ring
    _ = moebiusReal n^2 *
        (∫ u in (0 : ℝ)..T,
          pickupResponse n u * pickupResponse n u) := by
          rw [intervalIntegral.integral_const_mul]
    _ = sourceDiagonal T n := rfl

/-- Original signed two-source cross integral identity. -/
theorem sourceResponse_cross_integral
    (m n : ℕ) (hm : 0 < m) (hn : 0 < n) (T : ℝ) :
    (∫ u in (0 : ℝ)..T,
      sourceResponseVector m u * sourceResponseVector n u) =
      sourceKernel T m n := by
  have hf := sourceResponseVector_continuous m hm
  have hg := sourceResponseVector_continuous n hn
  calc
    _ = ∫ u in (0 : ℝ)..T,
        (moebiusReal m * moebiusReal n) *
          (pickupResponse m u * pickupResponse n u) := by
          apply intervalIntegral.integral_congr
          intro u hu
          simp only [sourceResponseVector]
          ring
    _ = (moebiusReal m * moebiusReal n) *
        (∫ u in (0 : ℝ)..T,
          pickupResponse m u * pickupResponse n u) := by
          rw [intervalIntegral.integral_const_mul]
    _ = sourceKernel T m n := rfl

/-- The full source quadratic for a real test coefficient t is
an actual integral of a nonnegative squared original waveform. -/
theorem sourceQuadratic_nonnegative
    (T : ℝ) (hT : 0 ≤ T)
    (m n : ℕ) (hm : 0 < m) (hn : 0 < n) (t : ℝ) :
    0 ≤ sourceDiagonal T m * t^2 +
      2 * sourceKernel T m n * t + sourceDiagonal T n := by
  let f : ℝ → ℝ := sourceResponseVector m
  let g : ℝ → ℝ := sourceResponseVector n
  have hf : Continuous f := sourceResponseVector_continuous m hm
  have hg : Continuous g := sourceResponseVector_continuous n hn
  have hf2 : IntervalIntegrable (fun u => f u ^ 2) volume 0 T :=
    (hf.pow 2).intervalIntegrable 0 T
  have hg2 : IntervalIntegrable (fun u => g u ^ 2) volume 0 T :=
    (hg.pow 2).intervalIntegrable 0 T
  have hfg : IntervalIntegrable (fun u => f u * g u) volume 0 T :=
    (hf.mul hg).intervalIntegrable 0 T
  have hnonneg :
      0 ≤ (∫ u in (0 : ℝ)..T, (t * f u + g u)^2) := by
    apply intervalIntegral.integral_nonneg hT
    intro u
    exact sq_nonneg _
  have hexpand (u : ℝ) :
      (t*f u + g u)^2 =
        t^2 * f u^2 + (2*t)*(f u*g u) + g u^2 := by ring
  have hint :
      (∫ u in (0 : ℝ)..T, (t * f u + g u)^2) =
        t^2 * (∫ u in (0 : ℝ)..T, f u^2) +
        (2*t) * (∫ u in (0 : ℝ)..T, f u*g u) +
        (∫ u in (0 : ℝ)..T, g u^2) := by
    calc
      _ = ∫ u in (0 : ℝ)..T,
          t^2 * f u^2 + (2*t)*(f u*g u) + g u^2 := by
            apply intervalIntegral.integral_congr
            intro u hu
            exact hexpand u
      _ = (∫ u in (0 : ℝ)..T, t^2 * f u^2) +
          (∫ u in (0 : ℝ)..T, (2*t)*(f u*g u)) +
          (∫ u in (0 : ℝ)..T, g u^2) := by
            rw [intervalIntegral.integral_add
              ((hf2.const_mul _).add (hfg.const_mul _)) hg2]
            rw [intervalIntegral.integral_add
              (hf2.const_mul _) (hfg.const_mul _)]
      _ = _ := by simp only [intervalIntegral.integral_const_mul]
  have hsource :
      t^2 * (∫ u in (0 : ℝ)..T, f u^2) +
        (2*t)*(∫ u in (0 : ℝ)..T, f u*g u) +
        (∫ u in (0 : ℝ)..T, g u^2) =
      sourceDiagonal T m*t^2 +
        2*sourceKernel T m n*t + sourceDiagonal T n := by
    dsimp only [f,g]
    rw [sourceResponse_square_integral m hm T,
      sourceResponse_square_integral n hn T,
      sourceResponse_cross_integral m n hm hn T]
    ring
  linarith [hnonneg, hint, hsource]

/-- Genuine source-derived Cauchy–Schwarz (two-by-two determinant)
for the SAME signed, physical-time causal Möbius response Gram. -/
theorem sourceKernel_sq_le_diagonal
    {T : ℝ} (hT : 0 ≤ T)
    {m n : ℕ} (hm : m ∈ endpointIndex T)
    (hn : n ∈ endpointIndex T) :
    (sourceKernel T m n)^2 ≤
      sourceDiagonal T m * sourceDiagonal T n := by
  have hmp : 0 < m := (Finset.mem_Icc.mp hm).1
  have hnp : 0 < n := (Finset.mem_Icc.mp hn).1
  exact square_discriminant_of_nonnegative
    (sourceDiagonal T m) (sourceKernel T m n)
    (sourceDiagonal T n)
    (sourceDiagonal_nonneg hT m hm)
    (sourceQuadratic_nonnegative T hT m n hmp hnp)

end GRWTSK.NumberTheory.Moebius.CausalGramCauchy
