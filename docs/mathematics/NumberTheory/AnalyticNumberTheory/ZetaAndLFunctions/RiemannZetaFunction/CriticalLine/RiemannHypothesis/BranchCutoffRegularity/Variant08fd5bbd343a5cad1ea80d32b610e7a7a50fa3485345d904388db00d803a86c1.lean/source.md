# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.BranchCutoffRegularity.Variant08fd5bbd343a5cad1ea80d32b610e7a7a50fa3485345d904388db00d803a86c1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8d1c5e02de168b7c548b8591e594e527bcbe3789` · SHA-256 `08fd5bbd343a5cad1ea80d32b610e7a7a50fa3485345d904388db00d803a86c1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.BranchProfileSeams

/-!
# Smoothness of a power switched on at an exact cutoff

Local analytic tool for Batch 26, `exact-profile-descent.md`, section 4.
Zero extension of x^(n+1) across x=0 is Cⁿ because every derivative through
order n has a zero endpoint trace. The n=4 case supplies the regularity
of a fifth-order source entry. No moving arithmetic sum is identified here.

Human mathematical direction: grwtsk contributors. Lean formalization:
OpenAI Codex, using Mathlib and the existing indicator derivative lemma.
-/

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.BranchCutoffRegularity

open Set
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity

/-- A monomial kept on the closed nonnegative half-line and zero on the negative half-line. -/
def positivePower (n : ℕ) (x : ℝ) : ℝ := (Ici 0).indicator (fun y ↦ y ^ n) x

/-- A positive-degree monomial matches zero continuously at the cutoff. -/
theorem positivePower_continuous {n : ℕ} (hn : 0 < n) : Continuous (positivePower n) := by
  unfold positivePower
  apply (continuous_id.pow n).indicator
  intro x hx
  simp only [frontier_Ici, mem_singleton_iff] at hx
  subst x
  exact zero_pow hn.ne'

/-- At degree at least two both the value and derivative match zero at the cutoff. -/
theorem positivePower_hasDerivAt {n : ℕ} (hn : 2 ≤ n) (x : ℝ) :
    HasDerivAt (positivePower n) ((n : ℝ) * positivePower (n - 1) x) x := by
  have hd (y : ℝ) : HasDerivAt (fun z : ℝ ↦ z ^ n) ((n : ℝ) * y ^ (n - 1)) y := by
    convert! (hasDerivAt_id y).pow n using 1
    simp
  have hz (y : ℝ) (hy : y ∈ frontier (Ici (0 : ℝ))) :
      y ^ n = 0 ∧ (n : ℝ) * y ^ (n - 1) = 0 := by
    simp only [frontier_Ici, mem_singleton_iff] at hy
    subst y
    simp [show n ≠ 0 by omega, show n - 1 ≠ 0 by omega]
  have h := indicator_hasDerivAt hd hz x
  have he : (Ici (0 : ℝ)).indicator (fun y ↦ (n : ℝ) * y ^ (n - 1)) x =
      (n : ℝ) * positivePower (n - 1) x := by
    simp only [positivePower, indicator_apply]
    split_ifs <;> simp
  rw [he] at h
  exact h

/-- The actual global ordinary derivative keeps the closed-half-line extension. -/
theorem positivePower_deriv {n : ℕ} (hn : 2 ≤ n) :
    deriv (positivePower n) = fun x ↦ (n : ℝ) * positivePower (n - 1) x :=
  funext fun x ↦ (positivePower_hasDerivAt hn x).deriv

/-- Matching zero traces proves Cⁿ of the switched degree-(n+1) monomial. -/
theorem positivePower_contDiff (n : ℕ) : ContDiff ℝ n (positivePower (n + 1)) := by
  induction n with
  | zero => exact contDiff_zero.mpr (positivePower_continuous (by omega : 0 < 0 + 1))
  | succ n ih =>
    rw [show ((n + 1 : ℕ) : WithTop ℕ∞) = (n : WithTop ℕ∞) + 1 by simp,
      contDiff_succ_iff_deriv]
    refine ⟨fun x ↦ (positivePower_hasDerivAt (by omega : 2 ≤ n + 1 + 1) x).differentiableAt,
      by simp, ?_⟩
    rw [positivePower_deriv (by omega : 2 ≤ n + 1 + 1),
      show n + 1 + 1 - 1 = n + 1 by omega]
    exact contDiff_const.mul ih

/-- The exact fifth-power cutoff is C⁴, including the entry point. -/
theorem positivePower_five_contDiff_four : ContDiff ℝ 4 (positivePower 5) :=
  positivePower_contDiff 4

end FormalResearch.RiemannHypothesis.BranchCutoffRegularity
```
