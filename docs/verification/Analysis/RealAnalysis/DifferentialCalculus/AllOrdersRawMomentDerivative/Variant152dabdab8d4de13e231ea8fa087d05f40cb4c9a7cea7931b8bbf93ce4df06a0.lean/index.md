# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.AllOrdersRawMomentDerivative.Variant152dabdab8d4de13e231ea8fa087d05f40cb4c9a7cea7931b8bbf93ce4df06a0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e45c6b0e10243903e077bec55756f2879e6ad1c",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AllOrdersRawMomentDerivative/Variant152dabdab8d4de13e231ea8fa087d05f40cb4c9a7cea7931b8bbf93ce4df06a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AllOrdersRawMomentDerivative/Variant152dabdab8d4de13e231ea8fa087d05f40cb4c9a7cea7931b8bbf93ce4df06a0.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AllOrdersRawMomentDerivative/Variant152dabdab8d4de13e231ea8fa087d05f40cb4c9a7cea7931b8bbf93ce4df06a0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e45c6b0e10243903e077bec55756f2879e6ad1c`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AllOrdersRawMomentDerivative/Variant152dabdab8d4de13e231ea8fa087d05f40cb4c9a7cea7931b8bbf93ce4df06a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/AllOrdersRawMomentDerivative/Variant152dabdab8d4de13e231ea8fa087d05f40cb4c9a7cea7931b8bbf93ce4df06a0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.OrderFourRecursiveCumulant` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.FTaylorSeries` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.Operations` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [contDiff_unnormalizedWeight](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AllOrdersRawMomentDerivative/Variant152dabdab8d4de13e231ea8fa087d05f40cb4c9a7cea7931b8bbf93ce4df06a0.lean/declarations/contdiff-unnormalizedweight--ce58f78832e1c479b700b352.md) | 52 | `result-track:ce58f78832e1c479b700b352f319f7533bd58d14a4cf871266097108391c4822` |
| 2 | `theorem` | [iteratedFDeriv_unnormalizedWeight](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AllOrdersRawMomentDerivative/Variant152dabdab8d4de13e231ea8fa087d05f40cb4c9a7cea7931b8bbf93ce4df06a0.lean/declarations/iteratedfderiv-unnormalizedweight--8f42727fa380027502fc4d1c.md) | 62 | `result-track:8f42727fa380027502fc4d1cae87dd85f1b677c084da5bea762968a1a16ef3ae` |
| 3 | `theorem` | [iteratedFDeriv_partition_eq_unnormalizedMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AllOrdersRawMomentDerivative/Variant152dabdab8d4de13e231ea8fa087d05f40cb4c9a7cea7931b8bbf93ce4df06a0.lean/declarations/iteratedfderiv-partition-eq-unnormalizedmoment--7027540ed91ea550643cd466.md) | 107 | `result-track:7027540ed91ea550643cd466e06deea95bddb31569cd227a368e07b34c6ef798` |
| 4 | `theorem` | [partition_mul_rawDirectionalMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AllOrdersRawMomentDerivative/Variant152dabdab8d4de13e231ea8fa087d05f40cb4c9a7cea7931b8bbf93ce4df06a0.lean/declarations/partition-mul-rawdirectionalmoment--a5fb12a30f5f13f1b8d004b6.md) | 131 | `result-track:a5fb12a30f5f13f1b8d004b6abf3dc2100142daa307b490c599476109ac22cd5` |
| 5 | `theorem` | [iteratedFDeriv_partition_eq_partition_mul_rawMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AllOrdersRawMomentDerivative/Variant152dabdab8d4de13e231ea8fa087d05f40cb4c9a7cea7931b8bbf93ce4df06a0.lean/declarations/iteratedfderiv-partition-eq-partition-mul-rawmoment--6a85d1b5cb0271751712020e.md) | 149 | `result-track:6a85d1b5cb0271751712020e6c995182cab4f556a2737a2deae321eace535253` |
| 6 | `theorem` | [inv_partition_mul_iteratedFDeriv_partition_eq_rawMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AllOrdersRawMomentDerivative/Variant152dabdab8d4de13e231ea8fa087d05f40cb4c9a7cea7931b8bbf93ce4df06a0.lean/declarations/inv-partition-mul-iteratedfderiv-partition-eq-rawmoment--97b3b38b8a44b0d24f0ec81f.md) | 172 | `result-track:97b3b38b8a44b0d24f0ec81f7b74b6caa6a29f04bb81f69ff9b6e0a03363db4e` |
| 7 | `theorem` | [iteratedFDeriv_partition_div_partition_eq_rawMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AllOrdersRawMomentDerivative/Variant152dabdab8d4de13e231ea8fa087d05f40cb4c9a7cea7931b8bbf93ce4df06a0.lean/declarations/iteratedfderiv-partition-div-partition-eq-rawmoment--90bf2ead8648b7a631f81790.md) | 184 | `result-track:90bf2ead8648b7a631f817907e8a08caa8192606519f254b31436ec1e9841b3f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
