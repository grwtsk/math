# Verification target: GRWTSK.Algebra.LinearAlgebra.Matrix.Variant6945462926ac0ce32d0a57d0ab2c22861d7aa445aa4a9f7e90b23efe68b9f80d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7af8934071ad3b5dcba8143edbfc7f938cbf47af",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Matrix/Variant6945462926ac0ce32d0a57d0ab2c22861d7aa445aa4a9f7e90b23efe68b9f80d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant6945462926ac0ce32d0a57d0ab2c22861d7aa445aa4a9f7e90b23efe68b9f80d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant6945462926ac0ce32d0a57d0ab2c22861d7aa445aa4a9f7e90b23efe68b9f80d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7af8934071ad3b5dcba8143edbfc7f938cbf47af`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Matrix/Variant6945462926ac0ce32d0a57d0ab2c22861d7aa445aa4a9f7e90b23efe68b9f80d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Matrix/Variant6945462926ac0ce32d0a57d0ab2c22861d7aa445aa4a9f7e90b23efe68b9f80d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ModuleCat.toMatrixModCat](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant6945462926ac0ce32d0a57d0ab2c22861d7aa445aa4a9f7e90b23efe68b9f80d.lean/declarations/modulecat-tomatrixmodcat--415ad44c2d4d44e4ef9d5ed1.md) | 49 | `declaration-track:415ad44c2d4d44e4ef9d5ed137b68d454b9ebdf74f40f5d0a648130ef5f57f43` |
| 2 | `def` | [toModuleCatObj](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant6945462926ac0ce32d0a57d0ab2c22861d7aa445aa4a9f7e90b23efe68b9f80d.lean/declarations/tomodulecatobj--b7170f9bb706ff8ffd4150e4.md) | 67 | `declaration-track:b7170f9bb706ff8ffd4150e46cc7c5e754b793d2efd7c5678bc915e5d9d82501` |
| 3 | `lemma` | [mem_toModuleCatObj](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant6945462926ac0ce32d0a57d0ab2c22861d7aa445aa4a9f7e90b23efe68b9f80d.lean/declarations/mem-tomodulecatobj--ef44ede5cce9c656521aa4bc.md) | 80 | `result-track:ef44ede5cce9c656521aa4bc93775dcf84adea07b9fbb7695bf1d211ba285000` |
| 4 | `def` | [fromMatrixLinear](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant6945462926ac0ce32d0a57d0ab2c22861d7aa445aa4a9f7e90b23efe68b9f80d.lean/declarations/frommatrixlinear--9cc84422c506434c0920d09e.md) | 88 | `declaration-track:9cc84422c506434c0920d09e3bdb979ef8fbd24af5e422fc173618f298f9801e` |
| 5 | `lemma` | [MatrixModCat.isScalarTower_toModuleCat](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant6945462926ac0ce32d0a57d0ab2c22861d7aa445aa4a9f7e90b23efe68b9f80d.lean/declarations/matrixmodcat-isscalartower-tomodulecat--9f0163c2e046dfe83e123020.md) | 99 | `result-track:9f0163c2e046dfe83e123020e4a581e3f6b14cbc3681c85856ac78af859739a2` |
| 6 | `def` | [MatrixModCat.toModuleCat](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant6945462926ac0ce32d0a57d0ab2c22861d7aa445aa4a9f7e90b23efe68b9f80d.lean/declarations/matrixmodcat-tomodulecat--ff0fbeef663fcdfe14a9437d.md) | 109 | `declaration-track:ff0fbeef663fcdfe14a9437d14c14b027c684df12761939fa6329ec06aceaf54` |
| 7 | `def` | [fromModuleCatToModuleCatLinearEquivtoModuleCatObj](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant6945462926ac0ce32d0a57d0ab2c22861d7aa445aa4a9f7e90b23efe68b9f80d.lean/declarations/frommodulecattomodulecatlinearequivtomodulecatobj--3d71bb2e336aa1dfe63ea6ae.md) | 120 | `declaration-track:3d71bb2e336aa1dfe63ea6aeb681d2e30a0b9c400fcf8f8f2113f71e298b6033` |
| 8 | `def` | [fromModuleCatToModuleCatLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant6945462926ac0ce32d0a57d0ab2c22861d7aa445aa4a9f7e90b23efe68b9f80d.lean/declarations/frommodulecattomodulecatlinearequiv--2cffa896267674e2cb4dd3dd.md) | 129 | `declaration-track:2cffa896267674e2cb4dd3ddf43b7c138f66d42c8aff8cfffb9d369a3e7b2741` |
| 9 | `def` | [MatrixModCat.unitIso](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant6945462926ac0ce32d0a57d0ab2c22861d7aa445aa4a9f7e90b23efe68b9f80d.lean/declarations/matrixmodcat-unitiso--50845450a7febef27fd5ab6f.md) | 143 | `declaration-track:50845450a7febef27fd5ab6f4c814c1db4381f9e33cfd89610f3b4ceefb84fff` |
| 10 | `def` | [toModuleCatFromModuleCatLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant6945462926ac0ce32d0a57d0ab2c22861d7aa445aa4a9f7e90b23efe68b9f80d.lean/declarations/tomodulecatfrommodulecatlinearequiv--a38f5335fe833b99ccab10f8.md) | 152 | `declaration-track:a38f5335fe833b99ccab10f89c8be05ad4faf9e9579655f651fb1295a515dc1d` |
| 11 | `def` | [MatrixModCat.counitIso](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant6945462926ac0ce32d0a57d0ab2c22861d7aa445aa4a9f7e90b23efe68b9f80d.lean/declarations/matrixmodcat-counitiso--5e831186f5c12ee21cd579af.md) | 183 | `declaration-track:5e831186f5c12ee21cd579af54a20ea8b6e2f877a4091573190f13e2099fcdc5` |
| 12 | `def` | [ModuleCat.matrixEquivalence](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant6945462926ac0ce32d0a57d0ab2c22861d7aa445aa4a9f7e90b23efe68b9f80d.lean/declarations/modulecat-matrixequivalence--343c94302b84d414f58e184f.md) | 195 | `declaration-track:343c94302b84d414f58e184f03c8e6b8aeace626492c0042a71d2a3bc08a004f` |
| 13 | `def` | [moritaEquivalenceMatrix](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant6945462926ac0ce32d0a57d0ab2c22861d7aa445aa4a9f7e90b23efe68b9f80d.lean/declarations/moritaequivalencematrix--cd94614227308f827efa7cd9.md) | 213 | `declaration-track:cd94614227308f827efa7cd9fb5cc19fb35ef212db13014a71dd1c515bcb3738` |
| 14 | `theorem` | [IsMoritaEquivalent.matrix](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant6945462926ac0ce32d0a57d0ab2c22861d7aa445aa4a9f7e90b23efe68b9f80d.lean/declarations/ismoritaequivalent-matrix--a801be122c7637276b146d88.md) | 226 | `result-track:a801be122c7637276b146d883045081f4e919fb40a9d59c4053fb623d4ee5d1e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
