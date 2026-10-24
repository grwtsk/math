# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.KQHPoleNativeGuard.Variantf4098aa7c6693cd47401098f077ecaa023ae9d0048ef80aff801e57e8c619fa6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `62fbb4257d19ab6d809f5c482cad89f1868f67d4` · SHA-256 `f4098aa7c6693cd47401098f077ecaa023ae9d0048ef80aff801e57e8c619fa6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.MangoldtMobiusJacobi

/-!
# The literal arithmetic dilation is not a positive reference energy

grwtsk contributors selected the native spectral comparison. OpenAI Codex
formalized this exact sign obstruction using the existing signed dilation.
Whenever an actual retained source weight is nonzero, its two block directions
have opposite signs. This does not contradict a bound on the particular
arithmetic vector; it rules out an unproved full-space positivity premise.
-/

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.KQHPoleNativeGuard

open Matrix MangoldtMobiusJacobi
open scoped BigOperators

variable {ι : Type*} [Fintype ι] [DecidableEq ι]

/-- An exact localized test keeps the complete signed block form. -/
theorem localized_dilation_value (w : ι → ℝ) (q : ι) (a : ℝ) :
    jointVector (fun i => if i = q then 1 else 0)
        (fun i => if i = q then a else 0) ⬝ᵥ
      signedDilation (pairKernel w) *ᵥ
        jointVector (fun i => if i = q then 1 else 0)
          (fun i => if i = q then a else 0) = 2 * a * w q := by
  rw [pairKernel_covariance]
  simp [ite_mul, mul_ite]
  ring

/-- Every nonzero literal weight produces both a positive and a negative form
value; a positive Laughlin reference form cannot be assigned by analogy. -/
theorem sourceSignedOperator_opposite_signs (A : ℝ) (q : SourceAtom A)
    (hq : sourceAtomWeight A q ≠ 0) :
    (∃ x : SourceAtom A ⊕ SourceAtom A → ℝ,
      x ⬝ᵥ sourceSignedOperator A *ᵥ x < 0) ∧
    (∃ x : SourceAtom A ⊕ SourceAtom A → ℝ,
      0 < x ⬝ᵥ sourceSignedOperator A *ᵥ x) := by
  have hs : 0 < (sourceAtomWeight A q) ^ 2 := sq_pos_of_ne_zero hq
  constructor
  · refine ⟨jointVector (fun i => if i = q then 1 else 0)
      (fun i => if i = q then -sourceAtomWeight A q else 0), ?_⟩
    rw [sourceSignedOperator, localized_dilation_value]
    nlinarith
  · refine ⟨jointVector (fun i => if i = q then 1 else 0)
      (fun i => if i = q then sourceAtomWeight A q else 0), ?_⟩
    rw [sourceSignedOperator, localized_dilation_value]
    nlinarith

end FormalResearch.RiemannHypothesis.KQHPoleNativeGuard
```
