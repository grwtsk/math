# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FiberTensor.Variant58bebfa0831b70114e70db02c249432fd3572c51df2b01b7d04c3fda28ace897

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a7ba452a66b162109eafbc741ae36d4e79b859ed",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiberTensor/Variant58bebfa0831b70114e70db02c249432fd3572c51df2b01b7d04c3fda28ace897.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiberTensor/Variant58bebfa0831b70114e70db02c249432fd3572c51df2b01b7d04c3fda28ace897.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiberTensor/Variant58bebfa0831b70114e70db02c249432fd3572c51df2b01b7d04c3fda28ace897.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a7ba452a66b162109eafbc741ae36d4e79b859ed`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiberTensor/Variant58bebfa0831b70114e70db02c249432fd3572c51df2b01b7d04c3fda28ace897.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiberTensor/Variant58bebfa0831b70114e70db02c249432fd3572c51df2b01b7d04c3fda28ace897.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrix.Similarity` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [FactorRole](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiberTensor/Variant58bebfa0831b70114e70db02c249432fd3572c51df2b01b7d04c3fda28ace897.lean/declarations/factorrole--952c8f8597e4d8713f6c7142.md) | 5 | `declaration-track:952c8f8597e4d8713f6c7142e2c1039bcfa974a6e3aae3db6ba98dc239da2b44` |
| 2 | `structure` | [BinaryMatrixFactor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiberTensor/Variant58bebfa0831b70114e70db02c249432fd3572c51df2b01b7d04c3fda28ace897.lean/declarations/binarymatrixfactor--a7a46cd12df7b2a3f5cdd622.md) | 16 | `declaration-track:a7a46cd12df7b2a3f5cdd62269131005aac5e191e668b144073cb3e0afec686f` |
| 3 | `structure` | [FiberTensorSite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiberTensor/Variant58bebfa0831b70114e70db02c249432fd3572c51df2b01b7d04c3fda28ace897.lean/declarations/fibertensorsite--e92cab5ac1bba8203e8d21d4.md) | 23 | `declaration-track:e92cab5ac1bba8203e8d21d468dcca1114b518d9f7e82f583f0bc72d4cccc893` |
| 4 | `structure` | [BinaryMatrixFiberTensor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiberTensor/Variant58bebfa0831b70114e70db02c249432fd3572c51df2b01b7d04c3fda28ace897.lean/declarations/binarymatrixfibertensor--00ace44a461ed4933d3a0a37.md) | 29 | `declaration-track:00ace44a461ed4933d3a0a379248b2f0e90d520b94ea64af8e6884d261df580d` |
| 5 | `theorem` | [binaryMatrixFiberTensor_shared_rows](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiberTensor/Variant58bebfa0831b70114e70db02c249432fd3572c51df2b01b7d04c3fda28ace897.lean/declarations/binarymatrixfibertensor-shared-rows--db1183b7085af8647848426d.md) | 38 | `result-track:db1183b7085af8647848426da5269b78102adbc6278088d1b6a32a9bf286388e` |
| 6 | `theorem` | [fiberTensor_boundary_visible](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiberTensor/Variant58bebfa0831b70114e70db02c249432fd3572c51df2b01b7d04c3fda28ace897.lean/declarations/fibertensor-boundary-visible--1099ba8764e523b13c65d487.md) | 43 | `result-track:1099ba8764e523b13c65d48731c6430a7c66010ebe87cec052b3497705be6b15` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
