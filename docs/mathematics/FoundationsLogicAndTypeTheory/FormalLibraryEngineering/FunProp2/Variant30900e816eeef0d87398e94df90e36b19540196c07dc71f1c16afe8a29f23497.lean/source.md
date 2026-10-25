# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FunProp2.Variant30900e816eeef0d87398e94df90e36b19540196c07dc71f1c16afe8a29f23497

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `332090fc193fe0f1a1c346d5201811fd3241d593` · SHA-256 `30900e816eeef0d87398e94df90e36b19540196c07dc71f1c16afe8a29f23497`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.FunProp.Differentiable
import Mathlib.Analysis.Calculus.ContDiff.Basic
import Mathlib.Analysis.SpecialFunctions.Log.Deriv
import Mathlib.MeasureTheory.MeasurableSpace.Basic

import Mathlib.MeasureTheory.Measure.Haar.OfBasis


noncomputable
def foo (x : ℝ) := x * (Real.log x) ^ 2 - Real.exp x / x

example : ContinuousOn foo {0}ᶜ := by
  unfold foo; fun_prop (disch:=aesop)

example (y : ℝ) (hy : y ≠ 0) : ContinuousAt (fun x => x * (Real.log x) ^ 2 - Real.exp x / x) y := by
  fun_prop (disch:=aesop)


example : DifferentiableOn ℝ foo {0}ᶜ := by
  unfold foo; fun_prop (disch:=aesop)

example (y : ℝ) (hy : y ≠ 0) :
    DifferentiableAt ℝ foo y := by
  unfold foo; fun_prop (disch:=aesop)

example {n} : ContDiffOn ℝ n foo {0}ᶜ := by
  unfold foo; fun_prop (disch:=aesop)

example {n} (y : ℝ) (hy : y ≠ 0) :
    ContDiffAt ℝ n foo y := by
  unfold foo; fun_prop (disch:=aesop)

example : Continuous fun ((x, _, _) : ℝ × ℝ × ℝ) ↦ x := by fun_prop
example : Continuous fun ((_, y, _) : ℝ × ℝ × ℝ) ↦ y := by fun_prop
example : Continuous fun ((_, _, z) : ℝ × ℝ × ℝ) ↦ z := by fun_prop

-- This theorem is meant to work together with `measurable_of_continuousOn_compl_singleton`
-- Unification of `(hf : ContinuousOn f {a}ᶜ)` with this theorem determines the point `a` to be `0`
@[fun_prop]
theorem ContinuousOn.log' : ContinuousOn Real.log {0}ᶜ := ContinuousOn.log (by fun_prop) (by aesop)

-- Notice that no theorems about measuability of log are used. It is inferred from continuity.
example : Measurable (fun x => x * (Real.log x) ^ 2 - Real.exp x / x) := by
  fun_prop

-- Notice that no theorems about measuability of log are used. It is inferred from continuity.
example : AEMeasurable (fun x => x * (Real.log x) ^ 2 - Real.exp x / x) := by
  fun_prop (config:={maxTransitionDepth:=2})



private noncomputable def S (a b c d : ℝ) : ℝ :=
    a / (a + b + d) + b / (a + b + c) +
    c / (b + c + d) + d / (a + c + d)

private noncomputable def T (t : ℝ) : ℝ := S 1 (1 - t) t (t * (1 - t))

example : ContinuousOn T (Set.Icc 0 1) := by
  unfold T S
  fun_prop (disch:=(rintro x ⟨a,b⟩; nlinarith))


example : DifferentiableOn ℝ T (Set.Icc 0 1) := by
  unfold T S
  fun_prop (disch:=(rintro x ⟨a,b⟩; nlinarith))

example {n}: ContDiffOn ℝ n T (Set.Icc 0 1) := by
  unfold T S
  fun_prop (disch:=(rintro x ⟨a,b⟩; nlinarith))

example : Measurable T := by
  unfold T S
  fun_prop

example : AEMeasurable T := by
  unfold T S
  fun_prop


private theorem t1 : (5: ℕ) + (1 : ℕ∞) ≤ (12 : WithTop ℕ∞) := by norm_cast

example {f : ℝ → ℝ} (hf : ContDiff ℝ 12 f) :
    Differentiable ℝ (iteratedDeriv 5 (fun x => f (2*(f (x + x))) + x)) := by
  fun_prop (disch:=(exact t1))
```
