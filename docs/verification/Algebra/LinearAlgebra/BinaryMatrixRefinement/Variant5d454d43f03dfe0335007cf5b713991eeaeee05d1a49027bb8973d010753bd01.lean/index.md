# Verification target: GRWTSK.Algebra.LinearAlgebra.BinaryMatrixRefinement.Variant5d454d43f03dfe0335007cf5b713991eeaeee05d1a49027bb8973d010753bd01

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c69651a98e85e7dca8cbdfdb953b1a414638811",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variant5d454d43f03dfe0335007cf5b713991eeaeee05d1a49027bb8973d010753bd01.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variant5d454d43f03dfe0335007cf5b713991eeaeee05d1a49027bb8973d010753bd01.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variant5d454d43f03dfe0335007cf5b713991eeaeee05d1a49027bb8973d010753bd01.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c69651a98e85e7dca8cbdfdb953b1a414638811`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variant5d454d43f03dfe0335007cf5b713991eeaeee05d1a49027bb8973d010753bd01.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variant5d454d43f03dfe0335007cf5b713991eeaeee05d1a49027bb8973d010753bd01.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.DiscreteGeometry.FramedCellTopology` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [padMatrix](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variant5d454d43f03dfe0335007cf5b713991eeaeee05d1a49027bb8973d010753bd01.lean/declarations/padmatrix--186f9ac97ee161baa45ebc44.md) | 23 | `declaration-track:186f9ac97ee161baa45ebc44bf9cd7858299c1210d4df5c187ed39b588ed7355` |
| 2 | `theorem` | [padMatrix_rows](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variant5d454d43f03dfe0335007cf5b713991eeaeee05d1a49027bb8973d010753bd01.lean/declarations/padmatrix-rows--7f7b32379c1f178e11435057.md) | 41 | `result-track:7f7b32379c1f178e11435057aaebd0e84bdc44beb26a451de38b81336107cde3` |
| 3 | `theorem` | [padMatrix_cols](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variant5d454d43f03dfe0335007cf5b713991eeaeee05d1a49027bb8973d010753bd01.lean/declarations/padmatrix-cols--5f329b00cb1e4e187630c498.md) | 48 | `result-track:5f329b00cb1e4e187630c49838a0817f4719d7bcc2c6448f42d10121fdcfbafa` |
| 4 | `structure` | [BinaryMatrixRefinementRule](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variant5d454d43f03dfe0335007cf5b713991eeaeee05d1a49027bb8973d010753bd01.lean/declarations/binarymatrixrefinementrule--755015e00609c994fe44e8cc.md) | 55 | `declaration-track:755015e00609c994fe44e8cc99d91bbf76060ad8034ab0835c9eab106db6e380` |
| 5 | `structure` | [ZeroPreservingRefinementRule](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variant5d454d43f03dfe0335007cf5b713991eeaeee05d1a49027bb8973d010753bd01.lean/declarations/zeropreservingrefinementrule--55371f8802d6067639ae4a78.md) | 61 | `declaration-track:55371f8802d6067639ae4a78d0e8bd40e4df6b0dcb869fda591fa0a952e3a92f` |
| 6 | `structure` | [BinaryMatrixRenormalizationRule](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variant5d454d43f03dfe0335007cf5b713991eeaeee05d1a49027bb8973d010753bd01.lean/declarations/binarymatrixrenormalizationrule--80f416a6aa731df48fdd58f8.md) | 70 | `declaration-track:80f416a6aa731df48fdd58f8a9d3897ea0b5c921a955c5c5891724ea1bf730f1` |
| 7 | `def` | [refineMatrix](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variant5d454d43f03dfe0335007cf5b713991eeaeee05d1a49027bb8973d010753bd01.lean/declarations/refinematrix--af8bb1665ad98aef1e8fd7ea.md) | 77 | `declaration-track:af8bb1665ad98aef1e8fd7ea9b740fc2baa49bcf02b7f66cd5e42eb79a259891` |
| 8 | `theorem` | [refineMatrix_rows](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variant5d454d43f03dfe0335007cf5b713991eeaeee05d1a49027bb8973d010753bd01.lean/declarations/refinematrix-rows--ae1c6477e56acf86b8fde4c3.md) | 101 | `result-track:ae1c6477e56acf86b8fde4c375865a9e5f5dcaa75915f83b3109dfcb1741feef` |
| 9 | `theorem` | [refineMatrix_cols](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variant5d454d43f03dfe0335007cf5b713991eeaeee05d1a49027bb8973d010753bd01.lean/declarations/refinematrix-cols--12a5f9ed15e11e2112582677.md) | 108 | `result-track:12a5f9ed15e11e2112582677ab686ea2b0f4ca0779f199276837369b8b025b51` |
| 10 | `def` | [constRefinementRule](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variant5d454d43f03dfe0335007cf5b713991eeaeee05d1a49027bb8973d010753bd01.lean/declarations/constrefinementrule--3b637d4fa0d4724d5aa421c9.md) | 115 | `declaration-track:3b637d4fa0d4724d5aa421c9601513bff56050cc252f8b1703c7b5185bc06398` |
| 11 | `def` | [constZeroPreservingRefinementRule](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variant5d454d43f03dfe0335007cf5b713991eeaeee05d1a49027bb8973d010753bd01.lean/declarations/constzeropreservingrefinementrule--a64008f71faf7c818022c377.md) | 123 | `declaration-track:a64008f71faf7c818022c37715524b42033f4b54beadcab37b2c7e36a2659ea2` |
| 12 | `def` | [refineConst](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variant5d454d43f03dfe0335007cf5b713991eeaeee05d1a49027bb8973d010753bd01.lean/declarations/refineconst--6d66bd22fae3acc9a43748eb.md) | 131 | `declaration-track:6d66bd22fae3acc9a43748eb543e1f501fed2216ae8810581c33d7b82f4eb18e` |
| 13 | `def` | [zoomOutTopLeft](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variant5d454d43f03dfe0335007cf5b713991eeaeee05d1a49027bb8973d010753bd01.lean/declarations/zoomouttopleft--566b41d0f05e0d0b04bec0f8.md) | 143 | `declaration-track:566b41d0f05e0d0b04bec0f86e5f284ebfcc6ad640c5a8fbc2e62d8d68933734` |
| 14 | `theorem` | [zoomOut_refine_const](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variant5d454d43f03dfe0335007cf5b713991eeaeee05d1a49027bb8973d010753bd01.lean/declarations/zoomout-refine-const--0cf6ea9c090bbecc8610b829.md) | 158 | `result-track:0cf6ea9c090bbecc8610b82992bd942e596c881c8e462252d02d7f6f182ade6b` |
| 15 | `theorem` | [refineMatrix_zero_of_zeroPreserving](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variant5d454d43f03dfe0335007cf5b713991eeaeee05d1a49027bb8973d010753bd01.lean/declarations/refinematrix-zero-of-zeropreserving--54015b7bfad3f0b5c8a6ec79.md) | 185 | `result-track:54015b7bfad3f0b5c8a6ec79f3621f2b8b677fdffb03775646a215a872f0273a` |
| 16 | `def` | [bitMass](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variant5d454d43f03dfe0335007cf5b713991eeaeee05d1a49027bb8973d010753bd01.lean/declarations/bitmass--d275d90869dc6649a14dfb86.md) | 199 | `declaration-track:d275d90869dc6649a14dfb86da42142272a958ac15056cb0f7d3c8c4641f1d1a` |
| 17 | `def` | [matrixMass](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variant5d454d43f03dfe0335007cf5b713991eeaeee05d1a49027bb8973d010753bd01.lean/declarations/matrixmass--cbc15eb96290eb43340785c5.md) | 203 | `declaration-track:cbc15eb96290eb43340785c58ed148bb45f15de30ec4d81a46481515d4363a9e` |
| 18 | `def` | [matrixDensity](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variant5d454d43f03dfe0335007cf5b713991eeaeee05d1a49027bb8973d010753bd01.lean/declarations/matrixdensity--d2d91076302c1b03dff6b43d.md) | 207 | `declaration-track:d2d91076302c1b03dff6b43d7cd773f8d1762a9a5b137b5079fc13de28a181ed` |
| 19 | `def` | [blockAt](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variant5d454d43f03dfe0335007cf5b713991eeaeee05d1a49027bb8973d010753bd01.lean/declarations/blockat--0fd0c968b7c49e7d99a9013b.md) | 218 | `declaration-track:0fd0c968b7c49e7d99a9013bb92ff4bbc5c6a913820eb8a19c5a4d8b1a4018eb` |
| 20 | `def` | [renormalizedMass](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variant5d454d43f03dfe0335007cf5b713991eeaeee05d1a49027bb8973d010753bd01.lean/declarations/renormalizedmass--40c89280cab240aa3baf5f67.md) | 236 | `declaration-track:40c89280cab240aa3baf5f67b8cd1808246ff8a9ce93c331a1f2cc680e081e0d` |
| 21 | `def` | [renormalizedEnergy](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variant5d454d43f03dfe0335007cf5b713991eeaeee05d1a49027bb8973d010753bd01.lean/declarations/renormalizedenergy--e21077e651aea9f5925f2b5f.md) | 244 | `declaration-track:e21077e651aea9f5925f2b5fe4fca17e8f1a0f6b2b9fa86bc6098a5423221f50` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
