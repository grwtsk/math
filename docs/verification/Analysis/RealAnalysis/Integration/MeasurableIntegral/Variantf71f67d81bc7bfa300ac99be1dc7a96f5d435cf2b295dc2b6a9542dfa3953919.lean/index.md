# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.MeasurableIntegral.Variantf71f67d81bc7bfa300ac99be1dc7a96f5d435cf2b295dc2b6a9542dfa3953919

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "563fbbb2bff3c1ec767ea32591ec96b1b942d2ad",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/MeasurableIntegral/Variantf71f67d81bc7bfa300ac99be1dc7a96f5d435cf2b295dc2b6a9542dfa3953919.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeasurableIntegral/Variantf71f67d81bc7bfa300ac99be1dc7a96f5d435cf2b295dc2b6a9542dfa3953919.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeasurableIntegral/Variantf71f67d81bc7bfa300ac99be1dc7a96f5d435cf2b295dc2b6a9542dfa3953919.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `563fbbb2bff3c1ec767ea32591ec96b1b942d2ad`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/MeasurableIntegral/Variantf71f67d81bc7bfa300ac99be1dc7a96f5d435cf2b295dc2b6a9542dfa3953919.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/MeasurableIntegral/Variantf71f67d81bc7bfa300ac99be1dc7a96f5d435cf2b295dc2b6a9542dfa3953919.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.MeasurableLIntegral` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ProbabilityTheory.measurableSet_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeasurableIntegral/Variantf71f67d81bc7bfa300ac99be1dc7a96f5d435cf2b295dc2b6a9542dfa3953919.lean/declarations/probabilitytheory-measurableset-integrable--281ef0b64465a2ae21117ce3.md) | 30 | `result-track:281ef0b64465a2ae21117ce3c3724c7814c59f98d3113f9d2de37e790bcc360d` |
| 2 | `theorem` | [ProbabilityTheory.measurableSet_kernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeasurableIntegral/Variantf71f67d81bc7bfa300ac99be1dc7a96f5d435cf2b295dc2b6a9542dfa3953919.lean/declarations/probabilitytheory-measurableset-kernel-integrable--c01d316ba3216eb59a637d1a.md) | 37 | `result-track:c01d316ba3216eb59a637d1ac956dad3f1a9c5dc3e907eac7f7612731a2fc041` |
| 3 | `theorem` | [StronglyMeasurable.integral_kernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeasurableIntegral/Variantf71f67d81bc7bfa300ac99be1dc7a96f5d435cf2b295dc2b6a9542dfa3953919.lean/declarations/stronglymeasurable-integral-kernel--34aee426c4a370b9f925e663.md) | 50 | `result-track:34aee426c4a370b9f925e663d7884eb36ee675b52307a13ce97d393713160d85` |
| 4 | `theorem` | [StronglyMeasurable.integral_kernel_prod_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeasurableIntegral/Variantf71f67d81bc7bfa300ac99be1dc7a96f5d435cf2b295dc2b6a9542dfa3953919.lean/declarations/stronglymeasurable-integral-kernel-prod-right--451b14f6a5bb23a6e65d3572.md) | 73 | `result-track:451b14f6a5bb23a6e65d3572785520bc48755a8391f87b6bff1157d7da493585` |
| 5 | `theorem` | [StronglyMeasurable.integral_kernel_prod_right'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeasurableIntegral/Variantf71f67d81bc7bfa300ac99be1dc7a96f5d435cf2b295dc2b6a9542dfa3953919.lean/declarations/stronglymeasurable-integral-kernel-prod-right--242d52e67862749c5a6b8dda.md) | 120 | `result-track:242d52e67862749c5a6b8dda9ee70d62029ea9038d6a28296fc2c64f5a3a796b` |
| 6 | `theorem` | [StronglyMeasurable.integral_kernel_prod_right''](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeasurableIntegral/Variantf71f67d81bc7bfa300ac99be1dc7a96f5d435cf2b295dc2b6a9542dfa3953919.lean/declarations/stronglymeasurable-integral-kernel-prod-right--7803f5fbf2000f7c57860f13.md) | 125 | `result-track:7803f5fbf2000f7c57860f133c01e93c071607b678bd2f9262ab031f02a6fb59` |
| 7 | `theorem` | [StronglyMeasurable.integral_kernel_prod_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeasurableIntegral/Variantf71f67d81bc7bfa300ac99be1dc7a96f5d435cf2b295dc2b6a9542dfa3953919.lean/declarations/stronglymeasurable-integral-kernel-prod-left--59cb1b9fdba2b14003ce3f37.md) | 135 | `result-track:59cb1b9fdba2b14003ce3f37ceba94b0b998e436a9ce7f24fc34ffce97c57a0f` |
| 8 | `theorem` | [StronglyMeasurable.integral_kernel_prod_left'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeasurableIntegral/Variantf71f67d81bc7bfa300ac99be1dc7a96f5d435cf2b295dc2b6a9542dfa3953919.lean/declarations/stronglymeasurable-integral-kernel-prod-left--cd26bac4a2c9e78071e7f5e6.md) | 139 | `result-track:cd26bac4a2c9e78071e7f5e6c3bb76674477c9e3b435ac899f6c2b37615f9499` |
| 9 | `theorem` | [StronglyMeasurable.integral_kernel_prod_left''](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeasurableIntegral/Variantf71f67d81bc7bfa300ac99be1dc7a96f5d435cf2b295dc2b6a9542dfa3953919.lean/declarations/stronglymeasurable-integral-kernel-prod-left--ee6ae466a02c31eddf2e4460.md) | 143 | `result-track:ee6ae466a02c31eddf2e44601034ad80f0cdc25f73e03830ff1969d1a11c314c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
