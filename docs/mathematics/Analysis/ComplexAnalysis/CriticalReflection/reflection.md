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

[Zeta zero definitions](../../../NumberTheory/Zeta/Riemann/inference-guards.md) reuse this generic reflection. The [Hermitian counterexample](../../../Algebra/LinearAlgebra/MatrixTheory/HermitianCounterexamples/negative-identity.md) concerns a separate inference from symmetry to positivity.

## Source and verification scope

[Critical reflection](../../../../../GRWTSK/Analysis/ComplexAnalysis/CriticalReflection.lean) and [reflection counterexample](../../../../../GRWTSK/Analysis/ComplexAnalysis/ReflectionCounterexamples.lean). Status: **historical-source-description**. The frozen source qualification covers 10 source owners and 41 owned mathematical declarations under the standard axiom profile. It also checks 39 zeta declarations and 32 guard contracts. Broader consumer acceptance remains incomplete; the Riemann hypothesis and missing arithmetic premises remain open. The old declaration namespace remains for compatibility; the reusable source modules are under complex analysis.

Local direction: grwtsk contributors. Formalization and verification assistance: OpenAI Codex. MIT; historical human/machine authoring split unknown. Lean and Mathlib retain upstream identities, named authors and licenses. No mathematical originality is claimed. Credit and historical evidence limits (artifact:gitblob:e717d9762d6031755bcd6e700ca0aa087232db0f).

**Current source scope.** Source links identify the existing mathematical modules. Earlier proposed bindings and verification receipts retain their recorded paths and hashes; this pointer repair records current bytes and does not claim fresh proof replay.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Analysis/Complex/CriticalReflection.lean`](../../../../../GRWTSK/Analysis/ComplexAnalysis/CriticalReflection.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 2 |
| Theorem/lemma commands | 1 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
