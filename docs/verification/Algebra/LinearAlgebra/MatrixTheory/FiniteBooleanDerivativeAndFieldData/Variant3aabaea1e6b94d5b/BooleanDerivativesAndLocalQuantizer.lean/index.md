# Verification target: GRWTSK.Algebra.LinearAlgebra.MatrixTheory.FiniteBooleanDerivativeAndFieldData.Variant3aabaea1e6b94d5b.BooleanDerivativesAndLocalQuantizer

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c2e73f6c89a4888f3c454d501776c03555006d1f",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MatrixTheory/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/BooleanDerivativesAndLocalQuantizer.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/BooleanDerivativesAndLocalQuantizer.lean/index.md) · [Full source](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/BooleanDerivativesAndLocalQuantizer.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c2e73f6c89a4888f3c454d501776c03555006d1f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MatrixTheory/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/BooleanDerivativesAndLocalQuantizer.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MatrixTheory/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/BooleanDerivativesAndLocalQuantizer.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Quantization.Core` — import line 19; external provider; requires a separately pinned dependency.
- `BitMatrix.Reduction.SAT` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Ring.Nat` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Field` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 23; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Powerset` — import line 24; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Sum` — import line 25; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 26; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 27; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 28; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 29; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 30; external provider; requires a separately pinned dependency.
- [`GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.BooleanStructures.FiniteBooleanDerivativeAndFieldData.Variant3aabaea1e6b94d5b.XorVectorAlgebra`](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanStructures/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/XorVectorAlgebra.lean/index.md) — import line 32; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [derivative](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/BooleanDerivativesAndLocalQuantizer.lean/declarations/derivative--c6f994ca3437b4537af95d43.md) | 74 | `declaration-track:c6f994ca3437b4537af95d4387c8633c0c169dbdd0b705da3e3e8a3186ae952d` |
| 2 | `def` | [bitDerivative](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/BooleanDerivativesAndLocalQuantizer.lean/declarations/bitderivative--8ec5416ece70b96f55ad25ff.md) | 78 | `declaration-track:8ec5416ece70b96f55ad25ff369ac3af1e6bc467d670cb04b586220d8ab8e7ea` |
| 3 | `def` | [derivativeBit](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/BooleanDerivativesAndLocalQuantizer.lean/declarations/derivativebit--7afce1acd8cb069511de8ef5.md) | 83 | `declaration-track:7afce1acd8cb069511de8ef57ebad49e0b9fe90059898cbe0d07352d906b81d1` |
| 4 | `def` | [localJacobian](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/BooleanDerivativesAndLocalQuantizer.lean/declarations/localjacobian--c1a26634872d0cf548270916.md) | 91 | `declaration-track:c1a26634872d0cf5482709160438dfddde93a6e8cb93afe3b4bd12ffbbd95842` |
| 5 | `theorem` | [derivative_shift](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/BooleanDerivativesAndLocalQuantizer.lean/declarations/derivative-shift--195ccbc2a8df0447acb820fe.md) | 95 | `result-track:195ccbc2a8df0447acb820fe1b6ae6ef5c8b2f23a03378d2e62b71ae20a0d4fb` |
| 6 | `theorem` | [bitDerivative_flipBit](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/BooleanDerivativesAndLocalQuantizer.lean/declarations/bitderivative-flipbit--cb0879e6b934e516ca52d40e.md) | 102 | `result-track:cb0879e6b934e516ca52d40ee590dda948a7750356ce7c09df9c20b0de326d17` |
| 7 | `def` | [jacobianQuantizer](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/BooleanDerivativesAndLocalQuantizer.lean/declarations/jacobianquantizer--fd56f2e1be1386671a66851c.md) | 108 | `declaration-track:fd56f2e1be1386671a66851c5e8ada97c661f968d750574f2fa1f89aceea13c2` |
| 8 | `theorem` | [jacobianQuantizer_encode](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/BooleanDerivativesAndLocalQuantizer.lean/declarations/jacobianquantizer-encode--6d367fc427a6ef33f020812b.md) | 113 | `result-track:6d367fc427a6ef33f020812beb43c6d6864aa3596bd93b361e05fce3e826221d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
