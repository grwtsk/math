# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Definitions.Variantf6f7cbf025c6e60819562c797e90676679d345cab3ac8dec0742acb3368bf9c6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5521df965e06746aa0ca4fa8bf9db28e175c5588` · SHA-256 `f6f7cbf025c6e60819562c797e90676679d345cab3ac8dec0742acb3368bf9c6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.NumberTheory.LSeries.RiemannZeta
import Mathlib.Analysis.Complex.Norm

/-!
# Exact Riemann-hypothesis research objects

The zero predicate retains all three hypotheses of Mathlib's `RiemannHypothesis`.
These definitions neither assume RH nor define an alternative terminal target.
-/

namespace FormalResearch.RiemannHypothesis

/-- A zero with precisely the trivial-zero and pole exclusions in Mathlib's RH target. -/
def NontrivialZetaZero (s : ℂ) : Prop :=
  riemannZeta s = 0 ∧ (¬ ∃ n : ℕ, s = -2 * (n + 1)) ∧ s ≠ 1

/-- Complex conjugation, one generator of the Klein-four zero symmetry. -/
def zeroConjugate (s : ℂ) : ℂ := star s

/-- Functional-equation reflection, the other generator. -/
def zeroReflect (s : ℂ) : ℂ := 1 - s

/-- Reflection in the critical line; the composite of the two generators. -/
def criticalReflection (s : ℂ) : ℂ := 1 - star s

/-- Squared distance to the critical-line reflection, with values in the reals. -/
def rhDefect (s : ℂ) : ℝ := Complex.normSq (s - criticalReflection s)

end FormalResearch.RiemannHypothesis
```
