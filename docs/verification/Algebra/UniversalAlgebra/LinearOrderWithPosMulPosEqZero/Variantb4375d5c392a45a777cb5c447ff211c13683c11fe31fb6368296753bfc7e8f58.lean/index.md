# Verification target: GRWTSK.Algebra.UniversalAlgebra.LinearOrderWithPosMulPosEqZero.Variantb4375d5c392a45a777cb5c447ff211c13683c11fe31fb6368296753bfc7e8f58

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e3582815740a1d81e80573a0f5b229f9965ad317",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/LinearOrderWithPosMulPosEqZero/Variantb4375d5c392a45a777cb5c447ff211c13683c11fe31fb6368296753bfc7e8f58.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/LinearOrderWithPosMulPosEqZero/Variantb4375d5c392a45a777cb5c447ff211c13683c11fe31fb6368296753bfc7e8f58.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/LinearOrderWithPosMulPosEqZero/Variantb4375d5c392a45a777cb5c447ff211c13683c11fe31fb6368296753bfc7e8f58.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e3582815740a1d81e80573a0f5b229f9965ad317`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/LinearOrderWithPosMulPosEqZero/Variantb4375d5c392a45a777cb5c447ff211c13683c11fe31fb6368296753bfc7e8f58.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/LinearOrderWithPosMulPosEqZero/Variantb4375d5c392a45a777cb5c447ff211c13683c11fe31fb6368296753bfc7e8f58.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monoid.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.GroupWithZero.Canonical` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Foo](../../../../../mathematics/Algebra/UniversalAlgebra/LinearOrderWithPosMulPosEqZero/Variantb4375d5c392a45a777cb5c447ff211c13683c11fe31fb6368296753bfc7e8f58.lean/declarations/foo--2834110fff19d21583d8c264.md) | 32 | `declaration-track:2834110fff19d21583d8c264276efbf9927bb381305ee8daf9a641435bbc19d0` |
| 2 | `instance` | [inhabited](../../../../../mathematics/Algebra/UniversalAlgebra/LinearOrderWithPosMulPosEqZero/Variantb4375d5c392a45a777cb5c447ff211c13683c11fe31fb6368296753bfc7e8f58.lean/declarations/inhabited--0b929968a2ea2f6f986149f0.md) | 40 | `declaration-track:0b929968a2ea2f6f986149f0dad7d53f15ac56eeb5bfdb551a82fba9a7d2b125` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearOrderWithPosMulPosEqZero/Variantb4375d5c392a45a777cb5c447ff211c13683c11fe31fb6368296753bfc7e8f58.lean/declarations/instance--2a53473e4108c5f27c0e0358.md) | 43 | `declaration-track:2a53473e4108c5f27c0e0358f1578e8cf93ff78bccf73bf78d814763b33db4fe` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearOrderWithPosMulPosEqZero/Variantb4375d5c392a45a777cb5c447ff211c13683c11fe31fb6368296753bfc7e8f58.lean/declarations/instance--7724ec18b75ce0216721012f.md) | 46 | `declaration-track:7724ec18b75ce0216721012fee2dd3e4617a30df2bb413db6049f21b65f1e805` |
| 5 | `def` | [aux1](../../../../../mathematics/Algebra/UniversalAlgebra/LinearOrderWithPosMulPosEqZero/Variantb4375d5c392a45a777cb5c447ff211c13683c11fe31fb6368296753bfc7e8f58.lean/declarations/aux1--f1b406c21b48572d0f969c58.md) | 52 | `declaration-track:f1b406c21b48572d0f969c585d6c2099fdb42003f83fca2cdc0396a3b76f7735` |
| 6 | `macro` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearOrderWithPosMulPosEqZero/Variantb4375d5c392a45a777cb5c447ff211c13683c11fe31fb6368296753bfc7e8f58.lean/declarations/macro--8d0ec6e4b6836a79701215ba.md) | 58 | `declaration-track:8d0ec6e4b6836a79701215ba35e96753f59e5434cc47ed0ddb9cf1557df6f2de` |
| 7 | `theorem` | [aux1_inj](../../../../../mathematics/Algebra/UniversalAlgebra/LinearOrderWithPosMulPosEqZero/Variantb4375d5c392a45a777cb5c447ff211c13683c11fe31fb6368296753bfc7e8f58.lean/declarations/aux1-inj--a59e7a939611a99daa2e42c3.md) | 60 | `result-track:a59e7a939611a99daa2e42c39e9cd1f0d2dc7da2e0f46f07eed2db160614ae74` |
| 8 | `instance` | [linearOrder](../../../../../mathematics/Algebra/UniversalAlgebra/LinearOrderWithPosMulPosEqZero/Variantb4375d5c392a45a777cb5c447ff211c13683c11fe31fb6368296753bfc7e8f58.lean/declarations/linearorder--fd68521fe07d68e37f76f955.md) | 62 | `declaration-track:fd68521fe07d68e37f76f955e5ad6b85c6ea870f44d301f105b2b32d00e213e1` |
| 9 | `def` | [mul](../../../../../mathematics/Algebra/UniversalAlgebra/LinearOrderWithPosMulPosEqZero/Variantb4375d5c392a45a777cb5c447ff211c13683c11fe31fb6368296753bfc7e8f58.lean/declarations/mul--13a74fd809ac7408c704d64f.md) | 66 | `declaration-track:13a74fd809ac7408c704d64f875318742b0d8ec0b606e773c4c648c1e59c5db5` |
| 10 | `instance` | [commMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/LinearOrderWithPosMulPosEqZero/Variantb4375d5c392a45a777cb5c447ff211c13683c11fe31fb6368296753bfc7e8f58.lean/declarations/commmonoid--bffe497646d0922f436e0653.md) | 71 | `declaration-track:bffe497646d0922f436e0653b2cbb55ccc74d25e7db2affca672dc4106ca86e5` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearOrderWithPosMulPosEqZero/Variantb4375d5c392a45a777cb5c447ff211c13683c11fe31fb6368296753bfc7e8f58.lean/declarations/instance--5570d0cce8b951b2cc7d2e6f.md) | 79 | `declaration-track:5570d0cce8b951b2cc7d2e6f550afeab043bd4580acaf6d79df1e2cdf5a3ec17` |
| 12 | `theorem` | [not_mul_pos](../../../../../mathematics/Algebra/UniversalAlgebra/LinearOrderWithPosMulPosEqZero/Variantb4375d5c392a45a777cb5c447ff211c13683c11fe31fb6368296753bfc7e8f58.lean/declarations/not-mul-pos--48a84580a38c50b0f0be69f1.md) | 90 | `result-track:48a84580a38c50b0f0be69f1faac190f95bfcfc78590c6b3f0bcbbcf5004add4` |
| 13 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearOrderWithPosMulPosEqZero/Variantb4375d5c392a45a777cb5c447ff211c13683c11fe31fb6368296753bfc7e8f58.lean/declarations/example--db704157fadafe5795e5f33e.md) | 96 | `declaration-track:db704157fadafe5795e5f33ee60f6fd695437746f0148cdfa1a69d9c4bd4bb3d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
