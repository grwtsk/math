# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.MeasurableIntegral.Variant40ebd1eb80648f65b22f9c26f04ccd05f32d6f9a3527cbfa0526aea45d8520fb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc8d18d361f9d23ccda666c20eeed133d95b9b6f",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/MeasurableIntegral/Variant40ebd1eb80648f65b22f9c26f04ccd05f32d6f9a3527cbfa0526aea45d8520fb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeasurableIntegral/Variant40ebd1eb80648f65b22f9c26f04ccd05f32d6f9a3527cbfa0526aea45d8520fb.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeasurableIntegral/Variant40ebd1eb80648f65b22f9c26f04ccd05f32d6f9a3527cbfa0526aea45d8520fb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc8d18d361f9d23ccda666c20eeed133d95b9b6f`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/MeasurableIntegral/Variant40ebd1eb80648f65b22f9c26f04ccd05f32d6f9a3527cbfa0526aea45d8520fb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/MeasurableIntegral/Variant40ebd1eb80648f65b22f9c26f04ccd05f32d6f9a3527cbfa0526aea45d8520fb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.MeasurableLIntegral` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ProbabilityTheory.measurableSet_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeasurableIntegral/Variant40ebd1eb80648f65b22f9c26f04ccd05f32d6f9a3527cbfa0526aea45d8520fb.lean/declarations/probabilitytheory-measurableset-integrable--a01f2826bb1ea683cf8920fc.md) | 38 | `result-track:a01f2826bb1ea683cf8920fce8fb1802e71bcb59a6ccff6e0ddd40ecba0758f5` |
| 2 | `theorem` | [ProbabilityTheory.measurableSet_kernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeasurableIntegral/Variant40ebd1eb80648f65b22f9c26f04ccd05f32d6f9a3527cbfa0526aea45d8520fb.lean/declarations/probabilitytheory-measurableset-kernel-integrable--4e65a6536f7f6bc99a53198f.md) | 45 | `result-track:4e65a6536f7f6bc99a53198fdfc75a7eb2312d182451bf7575dc88a4a0961889` |
| 3 | `theorem` | [StronglyMeasurable.integral_kernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeasurableIntegral/Variant40ebd1eb80648f65b22f9c26f04ccd05f32d6f9a3527cbfa0526aea45d8520fb.lean/declarations/stronglymeasurable-integral-kernel--fbd80eceaa69501062a6b5d0.md) | 58 | `result-track:fbd80eceaa69501062a6b5d0798131bf52da19d136c93889dc3c7e9635e13b9a` |
| 4 | `theorem` | [StronglyMeasurable.integral_kernel_prod_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeasurableIntegral/Variant40ebd1eb80648f65b22f9c26f04ccd05f32d6f9a3527cbfa0526aea45d8520fb.lean/declarations/stronglymeasurable-integral-kernel-prod-right--2daa62a85b582e79ecdf0150.md) | 81 | `result-track:2daa62a85b582e79ecdf01506caddd2f37ec788fa93c6f00356cb2eaaf8309c5` |
| 5 | `theorem` | [StronglyMeasurable.integral_kernel_prod_right'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeasurableIntegral/Variant40ebd1eb80648f65b22f9c26f04ccd05f32d6f9a3527cbfa0526aea45d8520fb.lean/declarations/stronglymeasurable-integral-kernel-prod-right--7e8e8870ea8bd7ffda099c62.md) | 128 | `result-track:7e8e8870ea8bd7ffda099c6215ccfd8e1193ff9a7a3ee3fa4821aaac932d86cf` |
| 6 | `theorem` | [StronglyMeasurable.integral_kernel_prod_right''](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeasurableIntegral/Variant40ebd1eb80648f65b22f9c26f04ccd05f32d6f9a3527cbfa0526aea45d8520fb.lean/declarations/stronglymeasurable-integral-kernel-prod-right--e3cf3466734fb98b5c396387.md) | 133 | `result-track:e3cf3466734fb98b5c3963879206bb0a34877a88ae5afdd7229a0c7ce9f36ab1` |
| 7 | `theorem` | [StronglyMeasurable.integral_kernel_prod_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeasurableIntegral/Variant40ebd1eb80648f65b22f9c26f04ccd05f32d6f9a3527cbfa0526aea45d8520fb.lean/declarations/stronglymeasurable-integral-kernel-prod-left--7d6d9c696083cec5090b3971.md) | 143 | `result-track:7d6d9c696083cec5090b3971556c51588cb1289086bcfc2a0782cd8801e25aa4` |
| 8 | `theorem` | [StronglyMeasurable.integral_kernel_prod_left'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeasurableIntegral/Variant40ebd1eb80648f65b22f9c26f04ccd05f32d6f9a3527cbfa0526aea45d8520fb.lean/declarations/stronglymeasurable-integral-kernel-prod-left--40a682fece868707d703fea5.md) | 147 | `result-track:40a682fece868707d703fea54be252b7b203eecd1adbbf1b65c073d7cc30265e` |
| 9 | `theorem` | [StronglyMeasurable.integral_kernel_prod_left''](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MeasurableIntegral/Variant40ebd1eb80648f65b22f9c26f04ccd05f32d6f9a3527cbfa0526aea45d8520fb.lean/declarations/stronglymeasurable-integral-kernel-prod-left--193c3bdda719fc6928aaef19.md) | 151 | `result-track:193c3bdda719fc6928aaef19cbadb863fb2046d3261d7e4080c068689c6362e3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
