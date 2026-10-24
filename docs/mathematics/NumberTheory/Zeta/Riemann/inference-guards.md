# Nontrivial zeros and inference guards


The nontrivial-zero domain retains all three hypotheses of Mathlib's Riemann hypothesis target: a zero of the zeta function, exclusion of the negative even trivial zeros, and exclusion of the pole at one. In `GRWTSK.RiemannHypothesis`, the exact predicate is:

```lean
def NontrivialZetaZero (s : ℂ) : Prop :=
  riemannZeta s = 0 ∧ (¬ ∃ n : ℕ, s = -2 * (n + 1)) ∧ s ≠ 1
```

The exclusion at `-2` retains the distinction between a genuine zeta zero and a member of this domain:

```lean
theorem trivial_zero_is_excluded :
    riemannZeta (-2) = 0 ∧ ¬ NontrivialZetaZero (-2)

theorem pole_is_excluded : ¬ NontrivialZetaZero 1
```

The first proof uses Mathlib's negative even zero theorem and the witness `n = 0` in the exclusion clause. The second uses the explicit `s ≠ 1` clause. These statements preserve the domain of the target; they do not establish where its nontrivial zeros lie.

The reusable [complex reflection result](../../../Analysis/ComplexAnalysis/CriticalReflection/reflection.md) and [Hermitian matrix counterexample](../../../Algebra/LinearAlgebra/MatrixTheory/HermitianCounterexamples/negative-identity.md) belong to their respective mathematical objects. Their existing declaration names remain compatibility names within `GRWTSK.RiemannHypothesis`.

## Source and verification scope

[Zero definitions](../../../../../GRWTSK/NumberTheory/Zeta/Riemann/ZeroDefinitions.lean) and [zero exclusions](../../../../../GRWTSK/NumberTheory/Zeta/Riemann/ZeroExclusions.lean). Status: **historical-source-description**. The frozen source qualification covers 10 source owners and 41 owned mathematical declarations under the standard axiom profile. It also checks 39 zeta declarations and 32 guard contracts. Broader consumer acceptance remains incomplete; the Riemann hypothesis and missing arithmetic premises remain open.

Three original guard proofs use canonical dependencies, while four synthetic audit wrappers exercise the guard theorems. The wrappers are verification fixtures. No external original proof consumer of these four guards has been verified. The scoped check preserves all 30 compared declaration types and the source proof text; the Hermitian proof's elaborated value differs only in 32 local binder names associated with its source module.

Local direction: grwtsk contributors. Formalization and verification assistance: OpenAI Codex. MIT; historical human/machine authoring split unknown. Lean and Mathlib retain upstream identities, named authors and licenses. No mathematical originality is claimed. Credit and historical evidence limits (artifact:gitblob:e717d9762d6031755bcd6e700ca0aa087232db0f).

**Current source scope.** Source links identify the existing mathematical modules. Earlier proposed bindings and verification receipts retain their recorded paths and hashes; this pointer repair records current bytes and does not claim fresh proof replay.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/NumberTheory/Zeta/Riemann/ZeroDefinitions.lean`](../../../../../GRWTSK/NumberTheory/Zeta/Riemann/ZeroDefinitions.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 4 |
| Theorem/lemma commands | 0 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
