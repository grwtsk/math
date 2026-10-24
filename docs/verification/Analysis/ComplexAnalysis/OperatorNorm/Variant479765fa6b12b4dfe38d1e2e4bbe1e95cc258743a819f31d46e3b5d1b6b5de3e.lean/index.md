# Verification target: GRWTSK.Analysis.ComplexAnalysis.OperatorNorm.Variant479765fa6b12b4dfe38d1e2e4bbe1e95cc258743a819f31d46e3b5d1b6b5de3e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7370beb0275b1de4515644d61866bdc7d2626cf7",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/OperatorNorm/Variant479765fa6b12b4dfe38d1e2e4bbe1e95cc258743a819f31d46e3b5d1b6b5de3e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/OperatorNorm/Variant479765fa6b12b4dfe38d1e2e4bbe1e95cc258743a819f31d46e3b5d1b6b5de3e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/OperatorNorm/Variant479765fa6b12b4dfe38d1e2e4bbe1e95cc258743a819f31d46e3b5d1b6b5de3e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7370beb0275b1de4515644d61866bdc7d2626cf7`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/OperatorNorm/Variant479765fa6b12b4dfe38d1e2e4bbe1e95cc258743a819f31d46e3b5d1b6b5de3e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/OperatorNorm/Variant479765fa6b12b4dfe38d1e2e4bbe1e95cc258743a819f31d46e3b5d1b6b5de3e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.OperatorNorm.NormedSpace` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.Determinant` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [det_conjLIE](../../../../../mathematics/Analysis/ComplexAnalysis/OperatorNorm/Variant479765fa6b12b4dfe38d1e2e4bbe1e95cc258743a819f31d46e3b5d1b6b5de3e.lean/declarations/det-conjlie--1066d0068c549849fb212251.md) | 24 | `result-track:1066d0068c549849fb2122513ac09ff9b3a427b870d3e9ff5a5743f1cccdadcf` |
| 2 | `theorem` | [linearEquiv_det_conjLIE](../../../../../mathematics/Analysis/ComplexAnalysis/OperatorNorm/Variant479765fa6b12b4dfe38d1e2e4bbe1e95cc258743a819f31d46e3b5d1b6b5de3e.lean/declarations/linearequiv-det-conjlie--a32b7f980d53ee3b4952bbe5.md) | 29 | `result-track:a32b7f980d53ee3b4952bbe5f88e4f336150f6eaac99ba6455a29835c8794fb9` |
| 3 | `theorem` | [reCLM_norm](../../../../../mathematics/Analysis/ComplexAnalysis/OperatorNorm/Variant479765fa6b12b4dfe38d1e2e4bbe1e95cc258743a819f31d46e3b5d1b6b5de3e.lean/declarations/reclm-norm--4fb2b133de923641c07dfdcb.md) | 33 | `result-track:4fb2b133de923641c07dfdcbab236ee574fab8a734777897e46810f33b0c20c6` |
| 4 | `theorem` | [reCLM_nnnorm](../../../../../mathematics/Analysis/ComplexAnalysis/OperatorNorm/Variant479765fa6b12b4dfe38d1e2e4bbe1e95cc258743a819f31d46e3b5d1b6b5de3e.lean/declarations/reclm-nnnorm--c8484cac1914fdac94bc0d29.md) | 40 | `result-track:c8484cac1914fdac94bc0d29fb8875b678ce8f79ca2adedd8dd82a69ea7e3ecf` |
| 5 | `theorem` | [imCLM_norm](../../../../../mathematics/Analysis/ComplexAnalysis/OperatorNorm/Variant479765fa6b12b4dfe38d1e2e4bbe1e95cc258743a819f31d46e3b5d1b6b5de3e.lean/declarations/imclm-norm--f5d38053e755dea77b5fc639.md) | 44 | `result-track:f5d38053e755dea77b5fc639ac2e9d38ef62e1ad52e998ea8b504b49b0553e52` |
| 6 | `theorem` | [imCLM_nnnorm](../../../../../mathematics/Analysis/ComplexAnalysis/OperatorNorm/Variant479765fa6b12b4dfe38d1e2e4bbe1e95cc258743a819f31d46e3b5d1b6b5de3e.lean/declarations/imclm-nnnorm--7b8f9048cf1b2726ae9f6e18.md) | 51 | `result-track:7b8f9048cf1b2726ae9f6e18d25d6ca6997b5bb9002f9145e93283515e95da4c` |
| 7 | `theorem` | [conjCLE_norm](../../../../../mathematics/Analysis/ComplexAnalysis/OperatorNorm/Variant479765fa6b12b4dfe38d1e2e4bbe1e95cc258743a819f31d46e3b5d1b6b5de3e.lean/declarations/conjcle-norm--507797107720e6509ff78891.md) | 55 | `result-track:507797107720e6509ff7889169bd57f5338e2e8fea671c75759ae4702153289e` |
| 8 | `theorem` | [conjCLE_nnorm](../../../../../mathematics/Analysis/ComplexAnalysis/OperatorNorm/Variant479765fa6b12b4dfe38d1e2e4bbe1e95cc258743a819f31d46e3b5d1b6b5de3e.lean/declarations/conjcle-nnorm--da82c340c8e90b2fe4924c4b.md) | 59 | `result-track:da82c340c8e90b2fe4924c4bea8d84811bb7dd85882f2b6c0d5faf8cc155b62f` |
| 9 | `theorem` | [ofRealCLM_norm](../../../../../mathematics/Analysis/ComplexAnalysis/OperatorNorm/Variant479765fa6b12b4dfe38d1e2e4bbe1e95cc258743a819f31d46e3b5d1b6b5de3e.lean/declarations/ofrealclm-norm--22a440871b60e046fbef4662.md) | 63 | `result-track:22a440871b60e046fbef46621a7dc4f742dd1089abc1ea547ebb69510dcdfb0d` |
| 10 | `theorem` | [ofRealCLM_nnnorm](../../../../../mathematics/Analysis/ComplexAnalysis/OperatorNorm/Variant479765fa6b12b4dfe38d1e2e4bbe1e95cc258743a819f31d46e3b5d1b6b5de3e.lean/declarations/ofrealclm-nnnorm--e4b4333487a9cbf3a2bffec7.md) | 67 | `result-track:e4b4333487a9cbf3a2bffec7d0b0917a4446bc3a19f22e1eaadc327a19b3f608` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
