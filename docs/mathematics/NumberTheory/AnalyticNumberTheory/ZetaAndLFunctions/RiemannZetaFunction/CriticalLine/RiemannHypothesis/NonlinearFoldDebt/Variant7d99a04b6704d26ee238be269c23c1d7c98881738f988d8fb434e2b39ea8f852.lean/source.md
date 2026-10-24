# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.NonlinearFoldDebt.Variant7d99a04b6704d26ee238be269c23c1d7c98881738f988d8fb434e2b39ea8f852

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0a5be36465168573473716b56fd98beaa4499318` · SHA-256 `7d99a04b6704d26ee238be269c23c1d7c98881738f988d8fb434e2b39ea8f852`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib

/-!
# A nonlinear Jacobian transport retains its logarithmic-curvature debt

AC05-04's literal fold satisfies g(phi(u)) = psi(u)/sqrt(j(u)), with j = phi'.
The chain and quotient rules recover the exact transformed derivative at a
positive Jacobian. Its square times the Jacobian gives the precise derivative
energy density. Zero curvature removes the correction; otherwise even a
constant source can acquire a nonzero derivative. The global change-of-variables
and L2-unitarity theorem, diffeomorphism construction and uniform integrated
curvature estimate remain separate.

Human accordion and cost direction: grwtsk contributors. Local derivative and
energy-density consumer: OpenAI Codex. Mathlib chain, square-root and quotient
rules retain their names and formal artifact origin.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.NonlinearFoldDebt
noncomputable section

private theorem solve_chain_quotient {j jp v vp w : ℝ} (hj : 0 < j)
    (he : w * j = (vp * Real.sqrt j - v * (jp / (2 * Real.sqrt j))) /
      (Real.sqrt j) ^ 2) :
    w = (vp - (jp / (2 * j)) * v) / (j * Real.sqrt j) := by
  have hs : Real.sqrt j ≠ 0 := (Real.sqrt_pos.mpr hj).ne'
  have hsq := Real.sq_sqrt hj.le
  rw [hsq] at he
  field_simp at he ⊢
  rw [hsq] at he
  nlinarith only [he]

theorem exact_transformed_derivative {phi psi j g : ℝ → ℝ} {x jp vp w : ℝ}
    (hj : 0 < j x) (hphi : HasDerivAt phi (j x) x)
    (hjac : HasDerivAt j jp x) (hpsi : HasDerivAt psi vp x)
    (hg : HasDerivAt g w (phi x))
    (htransport : ∀ u : ℝ, g (phi u) = psi u / Real.sqrt (j u)) :
    w = (vp - (jp / (2 * j x)) * psi x) / (j x * Real.sqrt (j x)) := by
  have hs : Real.sqrt (j x) ≠ 0 := (Real.sqrt_pos.mpr hj).ne'
  have hrhs := hpsi.div (hjac.sqrt hj.ne') hs
  have hcomp := hg.comp x hphi
  have he : (fun u ↦ g (phi u)) = (fun u ↦ psi u / Real.sqrt (j u)) := funext htransport
  change HasDerivAt (fun u ↦ g (phi u)) (w * j x) x at hcomp
  rw [he] at hcomp
  exact solve_chain_quotient hj (hcomp.unique hrhs)

theorem exact_transformed_energy_density {j jp v vp w : ℝ} (hj : 0 < j)
    (hw : w = (vp - (jp / (2 * j)) * v) / (j * Real.sqrt j)) :
    w ^ 2 * j = (vp - (jp / (2 * j)) * v) ^ 2 / j ^ 2 := by
  have hs : Real.sqrt j ≠ 0 := (Real.sqrt_pos.mpr hj).ne'
  have hsq := Real.sq_sqrt hj.le
  rw [hw, div_pow, mul_pow, hsq]
  field_simp

theorem affine_jacobian_removes_curvature (j v vp : ℝ) :
    (vp - ((0 : ℝ) / (2 * j)) * v) / (j * Real.sqrt j) =
      vp / (j * Real.sqrt j) := by simp

theorem curvature_can_create_derivative {j jp v : ℝ} (hj : 0 < j)
    (hjp : jp ≠ 0) (hv : v ≠ 0) :
    ((0 : ℝ) - (jp / (2 * j)) * v) / (j * Real.sqrt j) ≠ 0 := by
  apply div_ne_zero
  · simpa only [zero_sub] using neg_ne_zero.mpr (mul_ne_zero (div_ne_zero hjp (by positivity)) hv)
  · exact mul_ne_zero hj.ne' (Real.sqrt_pos.mpr hj).ne'

/-- The literal exponential fold sends the constant source to a nonconstant function. -/
theorem exponential_fold_constant_source_derivative :
    (∀ u : ℝ, (1 / Real.sqrt (Real.exp u)) =
      (fun _ : ℝ ↦ (1 : ℝ)) u / Real.sqrt (Real.exp u)) ∧
    HasDerivAt (fun y : ℝ ↦ 1 / Real.sqrt y) (-1 / 2) 1 := by
  constructor
  · intro u
    rfl
  · have hd : HasDerivAt (fun y : ℝ ↦ 1 / Real.sqrt y)
        ((0 * Real.sqrt 1 - 1 * (1 / (2 * Real.sqrt 1))) / (Real.sqrt 1) ^ 2) 1 :=
      (hasDerivAt_const (1 : ℝ) (1 : ℝ)).div
        (Real.hasDerivAt_sqrt (by norm_num : (1 : ℝ) ≠ 0)) (by norm_num)
    norm_num at hd ⊢
    exact hd

end
end GRWTSK.RiemannHypothesis.Conversation.NonlinearFoldDebt
```
