# Critical line reflection and Gaussian rotation

For a complex number `s`, critical line reflection is `1 - star s`. If `s = x + y * I` with real `x` and `y`, this map sends it to `(1 - x) + y * I`, reflecting across the line with real part `1 / 2`. The map is defined and proved involutive for every complex input; it has no zeta-zero hypothesis.

The existing declarations in `GRWTSK.RiemannHypothesis` are:

```lean
def criticalReflection (s : ℂ) : ℂ := 1 - star s

@[simp]
theorem critical_reflection_involutive (s : ℂ) :
    criticalReflection (criticalReflection s) = s

theorem critical_reflection_is_not_gaussian_rotation :
    criticalReflection (criticalReflection 1) = 1 ∧
      Complex.I * (Complex.I * 1) ≠ (1 : ℂ)
```

The involution follows by simplifying conjugation and subtraction. The counterexample compares two applications at `1`: reflection returns `1`, whereas multiplication by `I` twice gives `-1`. Consequently the reflection map cannot be replaced by multiplication by `I`.

[Zeta zero definitions](../../../NumberTheory/Zeta/Riemann/inference-guards.md) reuse this generic reflection. The [Hermitian counterexample](../../../LinearAlgebra/Matrix/HermitianCounterexamples/negative-identity.md) concerns a separate inference from symmetry to positivity.

## Source and verification scope

[Critical reflection](../../../../../GRWTSK/Analysis/Complex/CriticalReflection.lean) and [reflection counterexample](../../../../../GRWTSK/Analysis/Complex/ReflectionCounterexamples.lean). Status: **historical-source-description**. The frozen source qualification covers 10 source owners and 41 owned mathematical declarations under the standard axiom profile. It also checks 39 zeta declarations and 32 guard contracts. Broader consumer acceptance remains incomplete; the Riemann hypothesis and missing arithmetic premises remain open. The old declaration namespace remains for compatibility; the reusable source modules are under complex analysis.

Local direction: R.A. Jacob Martone. Formalization and verification assistance: OpenAI Codex. MIT; historical human/machine authoring split unknown. Lean and Mathlib retain upstream identities, named authors and licenses. No mathematical originality is claimed. [Credit and historical evidence limits](../../../../reference/documentation-history.md).
