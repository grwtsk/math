# Verification target: GRWTSK.Algebra.LinearAlgebra.BilinearAndQuadraticForms.FourPhase

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a07b6419718157a6bd7eb6f8bdb33678ce2eee17",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BilinearAndQuadraticForms/FourPhase.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/FourPhase.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/FourPhase.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a07b6419718157a6bd7eb6f8bdb33678ce2eee17`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BilinearAndQuadraticForms/FourPhase.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BilinearAndQuadraticForms/FourPhase.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 1; external provider; requires a separately pinned dependency.
- `Std` — import line 2; external provider; requires a separately pinned dependency.
- `Init.Data.Rat` — import line 3; external provider; requires a separately pinned dependency.
- `Init.GrindInstances.Ring.Rat` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Matrix2](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/FourPhase.lean/declarations/matrix2--73d69c704b8a429fc5031171.md) | 13 | `declaration-track:73d69c704b8a429fc50311712c5f4abcda5ca7c7659930c6954d41d7fcbb36ce` |
| 2 | `abbrev` | [Four](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/FourPhase.lean/declarations/four--5612a874f87e7ec2e739cf85.md) | 14 | `declaration-track:5612a874f87e7ec2e739cf854a7044a0b22aa3fa0d59183fd91cddbc809c0711` |
| 3 | `def` | [quad](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/FourPhase.lean/declarations/quad--2cf46a0e797ffe7f5c067be5.md) | 16 | `declaration-track:2cf46a0e797ffe7f5c067be562334513d51503fbadc088e4637a8887ed27d815` |
| 4 | `def` | [controls](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/FourPhase.lean/declarations/controls--55d0ba19ebf3f3d98b2cacd0.md) | 19 | `declaration-track:55d0ba19ebf3f3d98b2cacd0c3d3a57042526214d2e97984af35583e9d194582` |
| 5 | `def` | [recover](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/FourPhase.lean/declarations/recover--f53e4b734d9b8aff7d60661a.md) | 22 | `declaration-track:f53e4b734d9b8aff7d60661a1ad367ceae097c2261a1d77f1460f70eaad7d4f7` |
| 6 | `theorem` | [recover_controls](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/FourPhase.lean/declarations/recover-controls--d6d737134b4ca90d323adc21.md) | 26 | `result-track:d6d737134b4ca90d323adc21ad58618feaf5da248da92e958862f49d9096f1a9` |
| 7 | `theorem` | [controls_consistent](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/FourPhase.lean/declarations/controls-consistent--3292501f72b9aac5886fcc57.md) | 31 | `result-track:3292501f72b9aac5886fcc57c45eab13b733d4c5779584623e7ab0ad4d82d0e7` |
| 8 | `theorem` | [recover_consistent](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/FourPhase.lean/declarations/recover-consistent--b0c284bd66398f5a2fdd36c6.md) | 36 | `result-track:b0c284bd66398f5a2fdd36c6947c6d40c6cb6782a9076df6ce7bd1e1b232cc48` |
| 9 | `theorem` | [reconstructed_reading](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/FourPhase.lean/declarations/reconstructed-reading--1dedd36a44b5e1a49e123cd9.md) | 42 | `result-track:1dedd36a44b5e1a49e123cd9a546aeb1048bd0958b40c32a1ca1edff0672d56e` |
| 10 | `theorem` | [positive_controls_negative_direction](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/FourPhase.lean/declarations/positive-controls-negative-direction--30975358c16df6d3cf4b1df3.md) | 47 | `result-track:30975358c16df6d3cf4b1df3082077bfe286410df54f235a7fdbf8b7f3d5d82e` |
| 11 | `def` | [cardinal](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/FourPhase.lean/declarations/cardinal--5e3cb1d1f2c3e39426cecec1.md) | 55 | `declaration-track:5e3cb1d1f2c3e39426cecec1c55576828b924de97889a5de953d41dac6b5d67b` |
| 12 | `theorem` | [cardinal_alias](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/FourPhase.lean/declarations/cardinal-alias--36f403cb847f8f7ca15cd215.md) | 56 | `result-track:36f403cb847f8f7ca15cd215eaa661a1325e8c51683d07dfce95accaa5597020` |
| 13 | `theorem` | [sharp_error_vertex](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/FourPhase.lean/declarations/sharp-error-vertex--43498d88b1e97e4d0f8e8737.md) | 62 | `result-track:43498d88b1e97e4d0f8e8737a735155c6a279d16181f8738b7c675798317312e` |
| 14 | `theorem` | [retained_square](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/FourPhase.lean/declarations/retained-square--4fc997b0341519d216c752e2.md) | 67 | `result-track:4fc997b0341519d216c752e29d83fddaed755aa43bcbb761811ac295a81ed700` |
| 15 | `theorem` | [native_isotropic_not_radical](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/FourPhase.lean/declarations/native-isotropic-not-radical--94a1553cae1dab0312387aee.md) | 73 | `result-track:94a1553cae1dab0312387aeee491c4478c5bd28123024b603937baeb2b65a918` |
| 16 | `theorem` | [negative_schur_example](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/FourPhase.lean/declarations/negative-schur-example--d6fc4a196db7698a4c872ef0.md) | 78 | `result-track:d6fc4a196db7698a4c872ef0e67eee4cc41ef792decd6b929783a84879eef67d` |
| 17 | `def` | [damp](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/FourPhase.lean/declarations/damp--c58ac1da6eece9948ddb99d2.md) | 83 | `declaration-track:c58ac1da6eece9948ddb99d21c114f0b9d6d43aa0580cb2295176cf67fc36c85` |
| 18 | `theorem` | [hodge_native_retained](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/FourPhase.lean/declarations/hodge-native-retained--fc13fea973eab51befd04807.md) | 84 | `result-track:fc13fea973eab51befd048075ed858862482d9e86d22c83d6f5963a87fb53143` |
| 19 | `theorem` | [hodge_signed_carry](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/FourPhase.lean/declarations/hodge-signed-carry--17b3cea653d397657b3f31bf.md) | 89 | `result-track:17b3cea653d397657b3f31bf87e3a6385ed1398f4a56e4e32935e51c89776193` |
| 20 | `def` | [singularExtension](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/FourPhase.lean/declarations/singularextension--560ca66bf45d1cec5cd604bb.md) | 96 | `declaration-track:560ca66bf45d1cec5cd604bbb359622feefa4bebdf406e59947c5136ac3a28cf` |
| 21 | `theorem` | [singular_range_counterexample](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/FourPhase.lean/declarations/singular-range-counterexample--8b2aac39abc34b40848b00a0.md) | 99 | `result-track:8b2aac39abc34b40848b00a0e7c24324d0835b994c0be5dc2112734f577e639b` |
| 22 | `theorem` | [refined_hat_quarter](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/FourPhase.lean/declarations/refined-hat-quarter--284378458b004339653d6d15.md) | 103 | `result-track:284378458b004339653d6d15dcd2e66bc27da72af5e722f4e1c65cfb5635fa49` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
