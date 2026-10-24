# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.ZeroDefinitions

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ba8fb7cc4ada4f7b7c36836c687ea22b2e31ae16` · SHA-256 `fd02b8e4076cb1e3eb1baeee5460b1f3f9c085478033a0a7ba12db5bfb6b26c2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.CriticalReflection
import Mathlib.NumberTheory.LSeries.RiemannZeta
import Mathlib.Analysis.Complex.Norm

/-!
# Exact Riemann-hypothesis research objects

The zero predicate retains all three hypotheses of Mathlib's `RiemannHypothesis`.
These definitions neither assume RH nor define an alternative terminal target.
-/

namespace GRWTSK.RiemannHypothesis

/-- A zero with precisely the trivial-zero and pole exclusions in Mathlib's RH target. -/
def NontrivialZetaZero (s : ℂ) : Prop :=
  riemannZeta s = 0 ∧ (¬ ∃ n : ℕ, s = -2 * (n + 1)) ∧ s ≠ 1

/-- Complex conjugation, one generator of the Klein-four zero symmetry. -/
def zeroConjugate (s : ℂ) : ℂ := star s

/-- Functional-equation reflection, the other generator. -/
def zeroReflect (s : ℂ) : ℂ := 1 - s

/-- Squared distance to the critical-line reflection, with values in the reals. -/
def rhDefect (s : ℂ) : ℝ := Complex.normSq (s - criticalReflection s)

end GRWTSK.RiemannHypothesis
```
