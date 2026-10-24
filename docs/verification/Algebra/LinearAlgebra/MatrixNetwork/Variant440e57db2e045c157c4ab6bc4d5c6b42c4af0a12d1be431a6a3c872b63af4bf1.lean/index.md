# Verification target: GRWTSK.Algebra.LinearAlgebra.MatrixNetwork.Variant440e57db2e045c157c4ab6bc4d5c6b42c4af0a12d1be431a6a3c872b63af4bf1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3d8491efd05de2f0cc3c43e743df80f5d4d6d329",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MatrixNetwork/Variant440e57db2e045c157c4ab6bc4d5c6b42c4af0a12d1be431a6a3c872b63af4bf1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MatrixNetwork/Variant440e57db2e045c157c4ab6bc4d5c6b42c4af0a12d1be431a6a3c872b63af4bf1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MatrixNetwork/Variant440e57db2e045c157c4ab6bc4d5c6b42c4af0a12d1be431a6a3c872b63af4bf1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3d8491efd05de2f0cc3c43e743df80f5d4d6d329`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MatrixNetwork/Variant440e57db2e045c157c4ab6bc4d5c6b42c4af0a12d1be431a6a3c872b63af4bf1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MatrixNetwork/Variant440e57db2e045c157c4ab6bc4d5c6b42c4af0a12d1be431a6a3c872b63af4bf1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.ML.Network` — import line 6; external provider; requires a separately pinned dependency.
- `LeanCert.ML.Optimized.Matrix` — import line 7; external provider; requires a separately pinned dependency.
- `LeanCert.ML.Optimized.QuantizedLayer` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rationalToIntMatrix](../../../../../mathematics/Algebra/LinearAlgebra/MatrixNetwork/Variant440e57db2e045c157c4ab6bc4d5c6b42c4af0a12d1be431a6a3c872b63af4bf1.lean/declarations/rationaltointmatrix--5c3a581cba2ba3b2bd9b1106.md) | 44 | `declaration-track:5c3a581cba2ba3b2bd9b1106ca3d0c73b26d6f63638a87252b5846578dcde6a1` |
| 2 | `def` | [layerToIntervalMatrix](../../../../../mathematics/Algebra/LinearAlgebra/MatrixNetwork/Variant440e57db2e045c157c4ab6bc4d5c6b42c4af0a12d1be431a6a3c872b63af4bf1.lean/declarations/layertointervalmatrix--3b90b3d3edb1117bfbdb448d.md) | 54 | `declaration-track:3b90b3d3edb1117bfbdb448d32e1e7a7749def172858f004f8604910e3b68317` |
| 3 | `abbrev` | [InputBatch](../../../../../mathematics/Algebra/LinearAlgebra/MatrixNetwork/Variant440e57db2e045c157c4ab6bc4d5c6b42c4af0a12d1be431a6a3c872b63af4bf1.lean/declarations/inputbatch--2fc8a9b56694313b4051d2c9.md) | 64 | `declaration-track:2fc8a9b56694313b4051d2c9e1acb01764bc3aa93bf1389d1b8961c3893a9c78` |
| 4 | `abbrev` | [OutputBatch](../../../../../mathematics/Algebra/LinearAlgebra/MatrixNetwork/Variant440e57db2e045c157c4ab6bc4d5c6b42c4af0a12d1be431a6a3c872b63af4bf1.lean/declarations/outputbatch--aa240afe1b98f2c035e9b0cc.md) | 68 | `declaration-track:aa240afe1b98f2c035e9b0cc31b62978f4cafaf3eebc6e7523b408c3a6e358f0` |
| 5 | `def` | [batchLinear](../../../../../mathematics/Algebra/LinearAlgebra/MatrixNetwork/Variant440e57db2e045c157c4ab6bc4d5c6b42c4af0a12d1be431a6a3c872b63af4bf1.lean/declarations/batchlinear--c399377c2ea5ba90b04748e1.md) | 73 | `declaration-track:c399377c2ea5ba90b04748e14f16a2e98685e1b50b04b28a1423e5728f755207` |
| 6 | `def` | [attentionScores](../../../../../mathematics/Algebra/LinearAlgebra/MatrixNetwork/Variant440e57db2e045c157c4ab6bc4d5c6b42c4af0a12d1be431a6a3c872b63af4bf1.lean/declarations/attentionscores--8ba97b8418e327750712de25.md) | 85 | `declaration-track:8ba97b8418e327750712de25630b0560d37d81e9faadc14217b498d6785033cf` |
| 7 | `structure` | [AttentionParams](../../../../../mathematics/Algebra/LinearAlgebra/MatrixNetwork/Variant440e57db2e045c157c4ab6bc4d5c6b42c4af0a12d1be431a6a3c872b63af4bf1.lean/declarations/attentionparams--5392edaba7bdbd77cff3c0d5.md) | 91 | `declaration-track:5392edaba7bdbd77cff3c0d5684109697d0f1c59b02d9bce46a6469c0b6665df` |
| 8 | `def` | [projectQKV](../../../../../mathematics/Algebra/LinearAlgebra/MatrixNetwork/Variant440e57db2e045c157c4ab6bc4d5c6b42c4af0a12d1be431a6a3c872b63af4bf1.lean/declarations/projectqkv--084248fde775c1c97d824e12.md) | 104 | `declaration-track:084248fde775c1c97d824e12d1e632fde06493e5df46ed3a73b500c850d5c9af` |
| 9 | `def` | [reluIntMatrix](../../../../../mathematics/Algebra/LinearAlgebra/MatrixNetwork/Variant440e57db2e045c157c4ab6bc4d5c6b42c4af0a12d1be431a6a3c872b63af4bf1.lean/declarations/reluintmatrix--faec57f50e19a41a0e02dbc2.md) | 116 | `declaration-track:faec57f50e19a41a0e02dbc2a07924f78aa675a51aff31771254c02955c92b9f` |
| 10 | `def` | [reluIntervalMatrix](../../../../../mathematics/Algebra/LinearAlgebra/MatrixNetwork/Variant440e57db2e045c157c4ab6bc4d5c6b42c4af0a12d1be431a6a3c872b63af4bf1.lean/declarations/reluintervalmatrix--f0d229f2647d325533f8e739.md) | 121 | `declaration-track:f0d229f2647d325533f8e739bce1c71f5012748e9fd827d7601d8fda91bb66a0` |
| 11 | `def` | [addBiasMatrix](../../../../../mathematics/Algebra/LinearAlgebra/MatrixNetwork/Variant440e57db2e045c157c4ab6bc4d5c6b42c4af0a12d1be431a6a3c872b63af4bf1.lean/declarations/addbiasmatrix--bb50174c0ab88fceab915e58.md) | 129 | `declaration-track:bb50174c0ab88fceab915e589833e48649173115a156c09a8e64e0681d1393ea` |
| 12 | `def` | [layerForwardBatch](../../../../../mathematics/Algebra/LinearAlgebra/MatrixNetwork/Variant440e57db2e045c157c4ab6bc4d5c6b42c4af0a12d1be431a6a3c872b63af4bf1.lean/declarations/layerforwardbatch--f4b9a48dd2766e0e944481e4.md) | 141 | `declaration-track:f4b9a48dd2766e0e944481e4f5ebec6511805608d4eb01cf7bfdc567856ab2cf` |
| 13 | `theorem` | [mem_batchLinear](../../../../../mathematics/Algebra/LinearAlgebra/MatrixNetwork/Variant440e57db2e045c157c4ab6bc4d5c6b42c4af0a12d1be431a6a3c872b63af4bf1.lean/declarations/mem-batchlinear--c86dbfc0f0c346eb18f7507e.md) | 153 | `result-track:c86dbfc0f0c346eb18f7507eac8b492c1a67934a235cc5cce7a9bec5f9cec08f` |
| 14 | `theorem` | [mem_attentionScores](../../../../../mathematics/Algebra/LinearAlgebra/MatrixNetwork/Variant440e57db2e045c157c4ab6bc4d5c6b42c4af0a12d1be431a6a3c872b63af4bf1.lean/declarations/mem-attentionscores--978f165d80714b18dc04f6cc.md) | 165 | `result-track:978f165d80714b18dc04f6cc7dd727164c3576294d2162df3d0db72a9aa92f9f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
