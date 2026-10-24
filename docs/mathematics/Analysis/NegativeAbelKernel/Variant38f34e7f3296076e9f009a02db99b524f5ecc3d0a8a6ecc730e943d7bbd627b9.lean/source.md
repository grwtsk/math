# Complete source: GRWTSK.Analysis.NegativeAbelKernel.Variant38f34e7f3296076e9f009a02db99b524f5ecc3d0a8a6ecc730e943d7bbd627b9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `85a76b9efd6bc4323edf9b07d3f45e70560d0038` · SHA-256 `38f34e7f3296076e9f009a02db99b524f5ecc3d0a8a6ecc730e943d7bbd627b9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceCorrelationCurvatureSign
import FormalResearch.RiemannHypothesis.SourceCorrelationCurvatureFive
import Mathlib.Analysis.Calculus.BumpFunction.InnerProduct
import Mathlib.MeasureTheory.Integral.Bochner.Set

/-!
# A one-sided function bound does not bound the native second-Abel pairing

Batch 03 LT03-12 keeps the actual kernel C''-C'/2. It is continuous and strictly
negative at zero. A smooth nonpositive compactly supported comparison function
can therefore make its kernel pairing arbitrarily positive. This is a literal
native-kernel obstruction on a generic function class. The actual arithmetic
primitive has additional zeta structure and is not replaced by that comparison.

Human signed-pairing warning: grwtsk contributors. Local smooth counterexample
and unchanged-kernel consumer: OpenAI Codex. Mathlib's bump and integral laws
and the existing source-curvature declarations retain their qualified identity.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.NegativeAbelKernel
open MeasureTheory Filter
open scoped Topology
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceCorrelationCurvature
open FormalResearch.RiemannHypothesis.SourceCorrelationCurvatureFive
open FormalResearch.RiemannHypothesis.SourceCorrelationCurvatureSign
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
noncomputable section

/-- The actual kernel in this module, with the following exact parameterization.

def actualKernel (A t : ℝ) : ℝ := deriv (deriv (sourceCorrelation explicitSecondDerivative A))
t - deriv (sourceCorrelation explicitSecondDerivative A) t / 2
-/
def actualKernel (A t : ℝ) : ℝ :=
  deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t -
    deriv (sourceCorrelation explicitSecondDerivative A) t / 2

theorem actual_kernel_continuous {A : ℝ} (hA : 0 < A) : Continuous (actualKernel A) := by
  exact (sourceCorrelation_deriv_contDiff hA).continuous_deriv_one.sub
    ((sourceCorrelation_deriv_contDiff hA).continuous.div_const 2)

theorem actual_kernel_negative_at_zero {A : ℝ} (hA : 0 < A) : actualKernel A 0 < 0 := by
  rw [actualKernel, sourceCorrelation_deriv_zero hA, zero_div, sub_zero]
  exact sourceCorrelation_curvature_at_zero_neg hA

theorem smooth_nonpositive_pairing_unbounded {K : ℝ → ℝ} (hK : Continuous K)
    (hK0 : K 0 < 0) (Q : ℝ) :
    ∃ F : ℝ → ℝ, ContDiff ℝ (↑(⊤ : ℕ∞)) F ∧ HasCompactSupport F ∧ (∀ x, F x ≤ 0) ∧
      Integrable (fun x ↦ F x * K x) ∧ Q < ∫ x, F x * K x := by
  have hevent : ∀ᶠ x in 𝓝 (0 : ℝ), K x < 0 := hK.continuousAt.eventually_lt_const hK0
  obtain ⟨r, hr, hlocal⟩ := Metric.eventually_nhds_iff.mp hevent
  let phi : ContDiffBump (0 : ℝ) :=
    ⟨r / 2, r, by linarith, by linarith⟩
  have hphi0 : phi 0 = 1 := phi.one_of_mem_closedBall (by
    simp only [Metric.mem_closedBall, dist_self]
    exact phi.rIn_pos.le)
  have hn : ∀ x, 0 ≤ phi x * (-K x) := by
    intro x
    by_cases hx : phi x = 0
    · rw [hx, zero_mul]
    · have hxball : x ∈ Metric.ball (0 : ℝ) r := by
        have hs : x ∈ Function.support phi := hx
        rw [phi.support_eq] at hs
        exact hs
      exact mul_nonneg phi.nonneg (neg_nonneg.mpr (hlocal (Metric.mem_ball.mp hxball)).le)
  have hc : Continuous (fun x ↦ phi x * (-K x)) :=
    (phi.contDiff (n := 0)).continuous.mul hK.neg
  have hs : HasCompactSupport (fun x ↦ phi x * (-K x)) := phi.hasCompactSupport.mul_right
  have hJ : 0 < ∫ x, phi x * (-K x) :=
    hc.integral_pos_of_hasCompactSupport_nonneg_nonzero hs hn (by
      rw [hphi0, one_mul]
      exact (neg_pos.mpr hK0).ne')
  let J : ℝ := ∫ x, phi x * (-K x)
  let c : ℝ := (|Q| + 1) / J
  have hc0 : 0 < c := div_pos (by positivity) hJ
  let F : ℝ → ℝ := fun x ↦ -c * phi x
  have hFs : HasCompactSupport F := phi.hasCompactSupport.mul_left
  have hFc : ContDiff ℝ (↑(⊤ : ℕ∞)) F :=
    (contDiff_const : ContDiff ℝ (↑(⊤ : ℕ∞)) (fun _ : ℝ ↦ -c)).mul (phi.contDiff (n := ⊤))
  have hFi : Integrable (fun x ↦ F x * K x) :=
    (hFc.continuous.mul hK).integrable_of_hasCompactSupport hFs.mul_right
  have hvalue : (∫ x, F x * K x) = |Q| + 1 := by
    have heq : (fun x ↦ F x * K x) = fun x ↦ c * (phi x * (-K x)) := by
      funext x
      dsimp [F]
      ring
    rw [heq, integral_const_mul]
    change c * J = |Q| + 1
    dsimp [c]
    exact div_mul_cancel₀ _ hJ.ne'
  refine ⟨F, hFc, hFs, ?_, hFi, ?_⟩
  · intro x
    exact mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr hc0.le) phi.nonneg
  · rw [hvalue]
    exact (le_abs_self Q).trans_lt (lt_add_one _)

theorem actual_native_pairing_unbounded {A : ℝ} (hA : 0 < A) (Q : ℝ) :
    ∃ F : ℝ → ℝ, ContDiff ℝ (↑(⊤ : ℕ∞)) F ∧ HasCompactSupport F ∧ (∀ x, F x ≤ 0) ∧
      Integrable (fun x ↦ F x * actualKernel A x) ∧ Q < ∫ x, F x * actualKernel A x :=
  smooth_nonpositive_pairing_unbounded (actual_kernel_continuous hA)
    (actual_kernel_negative_at_zero hA) Q

end
end GRWTSK.RiemannHypothesis.Conversation.NegativeAbelKernel
```
