# A Hermitian matrix with a negative quadratic direction


The negative identity matrix on a one-element real index set is Hermitian and fails to be positive semidefinite. This explicit witness prevents an inference from Hermitian symmetry alone to positivity.

The existing declaration in `GRWTSK.RiemannHypothesis` retains its exact matrix type:

```lean
theorem hermitian_does_not_imply_positive_semidefinite :
    (- (1 : Matrix (Fin 1) (Fin 1) ℝ)).IsHermitian ∧
      ¬ (- (1 : Matrix (Fin 1) (Fin 1) ℝ)).PosSemidef
```

Hermitian symmetry follows from the identity matrix and real conjugation. For the vector whose single coordinate is `1`, the quadratic form of the negative identity is `-1`. Positive semidefiniteness would require this value to be nonnegative, giving the contradiction used in the source proof.

The theorem has no zeta or analytic hypothesis. The [zeta domain exclusions](../../../../NumberTheory/Zeta/Riemann/inference-guards.md) and [complex reflection counterexample](../../../../Analysis/ComplexAnalysis/CriticalReflection/reflection.md) address other inference errors.

## Source and verification scope

[Hermitian counterexample](../../../../../../GRWTSK/Algebra/LinearAlgebra/MatrixTheory/HermitianCounterexamples.lean). Status: **historical-source-description**. The frozen source qualification covers 10 source owners and 41 owned mathematical declarations under the standard axiom profile. It also checks 39 zeta declarations and 32 guard contracts. Broader consumer acceptance remains incomplete; the Riemann hypothesis and missing arithmetic premises remain open. The source statement and proof text are preserved. Its elaborated proof value differs from the old mixed module only in 32 local binder names associated with the module; this is not byte-for-byte equality of all elaborated proof values. The declaration namespace remains for compatibility.

Local direction: grwtsk contributors. Formalization and verification assistance: OpenAI Codex. MIT; historical human/machine authoring split unknown. Lean and Mathlib retain upstream identities, named authors and licenses. No mathematical originality is claimed. Credit and historical evidence limits (artifact:gitblob:e717d9762d6031755bcd6e700ca0aa087232db0f).

**Current source scope.** Source links identify the existing mathematical modules. Earlier proposed bindings and verification receipts retain their recorded paths and hashes; this pointer repair records current bytes and does not claim fresh proof replay.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/LinearAlgebra/Matrix/HermitianCounterexamples.lean`](../../../../../../GRWTSK/Algebra/LinearAlgebra/MatrixTheory/HermitianCounterexamples.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 1 |
| Theorem/lemma commands | 1 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
