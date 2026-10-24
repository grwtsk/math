# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.TimeKernelTruncationFragment.Variant6c15564666ff9483e302724e2acdbe4a52c7c7804c140a1712b39b6c7e45cd77

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f416c52b356247f6155bfd4201cf76181034707b",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/TimeKernelTruncationFragment/Variant6c15564666ff9483e302724e2acdbe4a52c7c7804c140a1712b39b6c7e45cd77.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TimeKernelTruncationFragment/Variant6c15564666ff9483e302724e2acdbe4a52c7c7804c140a1712b39b6c7e45cd77.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TimeKernelTruncationFragment/Variant6c15564666ff9483e302724e2acdbe4a52c7c7804c140a1712b39b6c7e45cd77.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f416c52b356247f6155bfd4201cf76181034707b`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/TimeKernelTruncationFragment/Variant6c15564666ff9483e302724e2acdbe4a52c7c7804c140a1712b39b6c7e45cd77.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/TimeKernelTruncationFragment/Variant6c15564666ff9483e302724e2acdbe4a52c7c7804c140a1712b39b6c7e45cd77.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [truncatedKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TimeKernelTruncationFragment/Variant6c15564666ff9483e302724e2acdbe4a52c7c7804c140a1712b39b6c7e45cd77.lean/declarations/truncatedkernel--c27e885d861c683f3294230f.md) | 18 | `declaration-track:c27e885d861c683f3294230ff42ff059bd51946035b08f2fecc6924e17328c96` |
| 2 | `theorem` | [truncatedKernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TimeKernelTruncationFragment/Variant6c15564666ff9483e302724e2acdbe4a52c7c7804c140a1712b39b6c7e45cd77.lean/declarations/truncatedkernel-integrable--5e3461eb0df647627884fe24.md) | 20 | `result-track:5e3461eb0df647627884fe245f35c1e08bec66bb58321c2e36fadf9b64782e0e` |
| 3 | `theorem` | [truncatedKernel_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TimeKernelTruncationFragment/Variant6c15564666ff9483e302724e2acdbe4a52c7c7804c140a1712b39b6c7e45cd77.lean/declarations/truncatedkernel-memlp--6f3750050d4103bb0dbdaab2.md) | 23 | `result-track:6f3750050d4103bb0dbdaab289240539f436be41b7275d570ff81cb190df8e1a` |
| 4 | `theorem` | [kernel_sub_truncated](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TimeKernelTruncationFragment/Variant6c15564666ff9483e302724e2acdbe4a52c7c7804c140a1712b39b6c7e45cd77.lean/declarations/kernel-sub-truncated--3d3f437811b75bca5dc40459.md) | 26 | `result-track:3d3f437811b75bca5dc40459d028e3843ba3b2c1f5b983f8dc4c3246e54634cd` |
| 5 | `theorem` | [norm_kernel_sub_truncated_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TimeKernelTruncationFragment/Variant6c15564666ff9483e302724e2acdbe4a52c7c7804c140a1712b39b6c7e45cd77.lean/declarations/norm-kernel-sub-truncated-integral--2b30d6acc270e1238f1899e8.md) | 37 | `result-track:2b30d6acc270e1238f1899e84fdc906935037ff8239ae12cd551e438813c513f` |
| 6 | `theorem` | [tail_majorant_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TimeKernelTruncationFragment/Variant6c15564666ff9483e302724e2acdbe4a52c7c7804c140a1712b39b6c7e45cd77.lean/declarations/tail-majorant-integrable--7cab9d5f423277c024674d03.md) | 45 | `result-track:7cab9d5f423277c024674d034e436e537f75ac940c5b7e6484a6dcd8a744e374` |
| 7 | `theorem` | [tail_majorant_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TimeKernelTruncationFragment/Variant6c15564666ff9483e302724e2acdbe4a52c7c7804c140a1712b39b6c7e45cd77.lean/declarations/tail-majorant-integral--ad4475e624a56f72995a3549.md) | 56 | `result-track:ad4475e624a56f72995a35495927a0d30a9957561621088f18171ea50f1c5fd1` |
| 8 | `theorem` | [kernel_tail_integral_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TimeKernelTruncationFragment/Variant6c15564666ff9483e302724e2acdbe4a52c7c7804c140a1712b39b6c7e45cd77.lean/declarations/kernel-tail-integral-le--6931bd20146cbb28c2f9681b.md) | 68 | `result-track:6931bd20146cbb28c2f9681b865695d7a1a0f26c3f2ea0e65559ebd96a4df101` |
| 9 | `theorem` | [norm_kernel_sub_truncated_integral_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TimeKernelTruncationFragment/Variant6c15564666ff9483e302724e2acdbe4a52c7c7804c140a1712b39b6c7e45cd77.lean/declarations/norm-kernel-sub-truncated-integral-le--555216ad0ddcd705a84bfa03.md) | 76 | `result-track:555216ad0ddcd705a84bfa031d3cbd808a37d4cd11548aa53ca20f9c35912146` |
| 10 | `def` | [kernelMass](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TimeKernelTruncationFragment/Variant6c15564666ff9483e302724e2acdbe4a52c7c7804c140a1712b39b6c7e45cd77.lean/declarations/kernelmass--d8fd01be2b70358eac4a9c02.md) | 82 | `declaration-track:d8fd01be2b70358eac4a9c025f953f624b34f0b8abf85fc3dd8444ca193e1f6d` |
| 11 | `theorem` | [kernelMass_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TimeKernelTruncationFragment/Variant6c15564666ff9483e302724e2acdbe4a52c7c7804c140a1712b39b6c7e45cd77.lean/declarations/kernelmass-nonneg--c7a5efdefd7f5a7109dad43b.md) | 84 | `result-track:c7a5efdefd7f5a7109dad43b579f865ff247d34d76e26133c5c3aa10396ba64c` |
| 12 | `theorem` | [truncated_norm_integral_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TimeKernelTruncationFragment/Variant6c15564666ff9483e302724e2acdbe4a52c7c7804c140a1712b39b6c7e45cd77.lean/declarations/truncated-norm-integral-le--2aca06665321c7e190bdb86a.md) | 86 | `result-track:2aca06665321c7e190bdb86a3bcb9fc18b1011c75388f57b01af7f3d091e0b24` |
| 13 | `def` | [truncatedOperator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TimeKernelTruncationFragment/Variant6c15564666ff9483e302724e2acdbe4a52c7c7804c140a1712b39b6c7e45cd77.lean/declarations/truncatedoperator--20fc03eeab2a07aed3e5e790.md) | 91 | `declaration-track:20fc03eeab2a07aed3e5e790d40e5bd4eb53fc3d8ef4361fa6598d5a4bf4a0a5` |
| 14 | `theorem` | [truncatedOperator_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TimeKernelTruncationFragment/Variant6c15564666ff9483e302724e2acdbe4a52c7c7804c140a1712b39b6c7e45cd77.lean/declarations/truncatedoperator-norm-le--bd3746c14edf444918de1b9d.md) | 94 | `result-track:bd3746c14edf444918de1b9d07ba0c908c2f6db9e5113c8ffe8d2665ac038ec4` |
| 15 | `theorem` | [operator_norm_sub_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TimeKernelTruncationFragment/Variant6c15564666ff9483e302724e2acdbe4a52c7c7804c140a1712b39b6c7e45cd77.lean/declarations/operator-norm-sub-le--b92b90719ee5efe92da503e9.md) | 97 | `result-track:b92b90719ee5efe92da503e936ca300d482fae43d719ce3936e2a5522a61338a` |
| 16 | `def` | [truncatedEnergy](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TimeKernelTruncationFragment/Variant6c15564666ff9483e302724e2acdbe4a52c7c7804c140a1712b39b6c7e45cd77.lean/declarations/truncatedenergy--9586f2b44d855b902e97b558.md) | 103 | `declaration-track:9586f2b44d855b902e97b55869ed161566cd3adeaa4bbc85546e00181e4e30ee` |
| 17 | `theorem` | [truncatedEnergy_isPositive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TimeKernelTruncationFragment/Variant6c15564666ff9483e302724e2acdbe4a52c7c7804c140a1712b39b6c7e45cd77.lean/declarations/truncatedenergy-ispositive--2c43246e56d95cf63e43116b.md) | 106 | `result-track:2c43246e56d95cf63e43116b267f08bd3cdcd70b2393c912f8c5405afc46d925` |
| 18 | `theorem` | [norm_energy_difference](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TimeKernelTruncationFragment/Variant6c15564666ff9483e302724e2acdbe4a52c7c7804c140a1712b39b6c7e45cd77.lean/declarations/norm-energy-difference--6c83517c18356c82385b3301.md) | 109 | `result-track:6c83517c18356c82385b3301a8e9aa79b5f3064246730af3948cbdf0d7059f58` |
| 19 | `theorem` | [energy_norm_sub_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TimeKernelTruncationFragment/Variant6c15564666ff9483e302724e2acdbe4a52c7c7804c140a1712b39b6c7e45cd77.lean/declarations/energy-norm-sub-le--9da2864ef98d859ed4a9f7ab.md) | 126 | `result-track:9da2864ef98d859ed4a9f7ab37a648952fe739f1634ddc2960c646134fd3c5a5` |
| 20 | `def` | [diagonalCutoff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TimeKernelTruncationFragment/Variant6c15564666ff9483e302724e2acdbe4a52c7c7804c140a1712b39b6c7e45cd77.lean/declarations/diagonalcutoff--1fb4a44ab7b75f4f3d2e269c.md) | 138 | `declaration-track:1fb4a44ab7b75f4f3d2e269c7dc40e3121f65abe007b1a328f296b8cd3f32d10` |
| 21 | `theorem` | [diagonalCutoff_ge_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TimeKernelTruncationFragment/Variant6c15564666ff9483e302724e2acdbe4a52c7c7804c140a1712b39b6c7e45cd77.lean/declarations/diagonalcutoff-ge-two--48149d4ba5ac00702c29f243.md) | 140 | `result-track:48149d4ba5ac00702c29f2433a13c8beec621eaf55783f32c00aae0fb4d49d18` |
| 22 | `theorem` | [diagonal_exp_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TimeKernelTruncationFragment/Variant6c15564666ff9483e302724e2acdbe4a52c7c7804c140a1712b39b6c7e45cd77.lean/declarations/diagonal-exp-le--fb7532e321bee5c1a2a95e9c.md) | 142 | `result-track:fb7532e321bee5c1a2a95e9c101bda1e01a1aa63c73c565d1eccce5660ef4c39` |
| 23 | `theorem` | [diagonal_operator_error_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TimeKernelTruncationFragment/Variant6c15564666ff9483e302724e2acdbe4a52c7c7804c140a1712b39b6c7e45cd77.lean/declarations/diagonal-operator-error-le--4f15e77b4024f12239d762a6.md) | 152 | `result-track:4f15e77b4024f12239d762a640555848b24a7015a13c041107c2dc4d5a8f6547` |
| 24 | `theorem` | [diagonal_energy_error_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TimeKernelTruncationFragment/Variant6c15564666ff9483e302724e2acdbe4a52c7c7804c140a1712b39b6c7e45cd77.lean/declarations/diagonal-energy-error-le--ff1435abec2268c71caddf4c.md) | 158 | `result-track:ff1435abec2268c71caddf4c5b4a810eb5a457e30d62de7aae7c4db9a8ed8dca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
