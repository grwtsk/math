# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.LaplaceKernel.Variant946642d3a0104ce59601bad92358e68c56500241c51bb6d840308504e5d6b4c3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b3797e814591ccde5aeff374feae6e5bd0e454a",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LaplaceKernel/Variant946642d3a0104ce59601bad92358e68c56500241c51bb6d840308504e5d6b4c3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LaplaceKernel/Variant946642d3a0104ce59601bad92358e68c56500241c51bb6d840308504e5d6b4c3.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LaplaceKernel/Variant946642d3a0104ce59601bad92358e68c56500241c51bb6d840308504e5d6b4c3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b3797e814591ccde5aeff374feae6e5bd0e454a`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LaplaceKernel/Variant946642d3a0104ce59601bad92358e68c56500241c51bb6d840308504e5d6b4c3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LaplaceKernel/Variant946642d3a0104ce59601bad92358e68c56500241c51bb6d840308504e5d6b4c3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [kernelIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LaplaceKernel/Variant946642d3a0104ce59601bad92358e68c56500241c51bb6d840308504e5d6b4c3.lean/declarations/kernelintegrand--26db82fa0bf0bf7b8dd9694c.md) | 11 | `declaration-track:26db82fa0bf0bf7b8dd9694c6c0628ac8d7c08a7de78e42913be938f5dfc6038` |
| 2 | `lemma` | [norm_kernelIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LaplaceKernel/Variant946642d3a0104ce59601bad92358e68c56500241c51bb6d840308504e5d6b4c3.lean/declarations/norm-kernelintegrand--39012475a204ccbd6a6b1523.md) | 14 | `result-track:39012475a204ccbd6a6b1523def733e43f926c65bb4b0af69d9b7c62c43b36ac` |
| 3 | `lemma` | [kernelIntegrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LaplaceKernel/Variant946642d3a0104ce59601bad92358e68c56500241c51bb6d840308504e5d6b4c3.lean/declarations/kernelintegrand-integrable--1a65d92653f5b59401000470.md) | 19 | `result-track:1a65d92653f5b59401000470e1d2a9a4d5a35a41b93f4c3541c2bcc6677eadcf` |
| 4 | `lemma` | [kernelIntegrand_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LaplaceKernel/Variant946642d3a0104ce59601bad92358e68c56500241c51bb6d840308504e5d6b4c3.lean/declarations/kernelintegrand-tendsto--f26eb8ec875ff44065fb0573.md) | 29 | `result-track:f26eb8ec875ff44065fb0573936892b4e8f892d9407b3ec6b02c46dc0a78dda7` |
| 5 | `lemma` | [kernelIntegrand_deriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LaplaceKernel/Variant946642d3a0104ce59601bad92358e68c56500241c51bb6d840308504e5d6b4c3.lean/declarations/kernelintegrand-deriv--7a7de5c5dceb5eb131438a2f.md) | 38 | `result-track:7a7de5c5dceb5eb131438a2fd7fd91f013f775ef2f73888c20aa1162fb2f3493` |
| 6 | `lemma` | [integral_recurrence](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LaplaceKernel/Variant946642d3a0104ce59601bad92358e68c56500241c51bb6d840308504e5d6b4c3.lean/declarations/integral-recurrence--1eaa25cbb78a12bbf51b3eb8.md) | 48 | `result-track:1eaa25cbb78a12bbf51b3eb821e5dd87d0645e9412ed32ba604a7a267d517cd3` |
| 7 | `def` | [kernelNumerator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LaplaceKernel/Variant946642d3a0104ce59601bad92358e68c56500241c51bb6d840308504e5d6b4c3.lean/declarations/kernelnumerator--a99d44ec881629fba598cd23.md) | 66 | `declaration-track:a99d44ec881629fba598cd23257b1ddb07127b3fcfe120e5987f9d83166fc5a8` |
| 8 | `def` | [laplaceKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LaplaceKernel/Variant946642d3a0104ce59601bad92358e68c56500241c51bb6d840308504e5d6b4c3.lean/declarations/laplacekernel--69471bd5eb95d965267ca73d.md) | 70 | `declaration-track:69471bd5eb95d965267ca73d5f34285fa5b556313a511b8494b2fb34161106cb` |
| 9 | `lemma` | [laplaceKernel_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LaplaceKernel/Variant946642d3a0104ce59601bad92358e68c56500241c51bb6d840308504e5d6b4c3.lean/declarations/laplacekernel-zero--2e9aae837b7942b11af91677.md) | 73 | `result-track:2e9aae837b7942b11af91677041a933b921aa95eda22b8c92b9732c724f4414a` |
| 10 | `lemma` | [laplaceKernel_succ](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LaplaceKernel/Variant946642d3a0104ce59601bad92358e68c56500241c51bb6d840308504e5d6b4c3.lean/declarations/laplacekernel-succ--b0f143b5f680feca66e743da.md) | 76 | `result-track:b0f143b5f680feca66e743dab1364bdb3aac8ee657f841bc50a1bcd615608686` |
| 11 | `lemma` | [integral_eq_laplaceKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LaplaceKernel/Variant946642d3a0104ce59601bad92358e68c56500241c51bb6d840308504e5d6b4c3.lean/declarations/integral-eq-laplacekernel--f053f68fc7e4ac2466bd8888.md) | 83 | `result-track:f053f68fc7e4ac2466bd888804c1a72a3884b7d98f52672f637bff4b46f08ff4` |
| 12 | `lemma` | [kernelNumerator_analytic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LaplaceKernel/Variant946642d3a0104ce59601bad92358e68c56500241c51bb6d840308504e5d6b4c3.lean/declarations/kernelnumerator-analytic--033177f442895d2baf74fe9e.md) | 93 | `result-track:033177f442895d2baf74fe9e0fee0a98b1b786570a73468fa62941542d349e13` |
| 13 | `lemma` | [laplaceKernel_analytic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LaplaceKernel/Variant946642d3a0104ce59601bad92358e68c56500241c51bb6d840308504e5d6b4c3.lean/declarations/laplacekernel-analytic--252ce8b66318aa3d578d2b8a.md) | 99 | `result-track:252ce8b66318aa3d578d2b8a546218a410898515e7c4f581090e184ee8d31473` |
| 14 | `lemma` | [kernelNumerator_at_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LaplaceKernel/Variant946642d3a0104ce59601bad92358e68c56500241c51bb6d840308504e5d6b4c3.lean/declarations/kernelnumerator-at-zero--7a1836af55bcc3f02f468a38.md) | 104 | `result-track:7a1836af55bcc3f02f468a38c0c116156c16882eeb60aa5954808cb1f9146b2b` |
| 15 | `lemma` | [laplaceKernel_cleared](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LaplaceKernel/Variant946642d3a0104ce59601bad92358e68c56500241c51bb6d840308504e5d6b4c3.lean/declarations/laplacekernel-cleared--a29c3150260a7a064f13d4f9.md) | 109 | `result-track:a29c3150260a7a064f13d4f944c7e1cb2251a2058891aa46f0af88657cedbbcf` |
| 16 | `lemma` | [laplaceKernel_cleared_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LaplaceKernel/Variant946642d3a0104ce59601bad92358e68c56500241c51bb6d840308504e5d6b4c3.lean/declarations/laplacekernel-cleared-tendsto--309e99d8f56d9a631aace930.md) | 114 | `result-track:309e99d8f56d9a631aace930d1f8f5b697bcbf9d73cf76b9e0cad69846f1fcac` |
| 17 | `lemma` | [laplaceKernel_lower_cleared_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LaplaceKernel/Variant946642d3a0104ce59601bad92358e68c56500241c51bb6d840308504e5d6b4c3.lean/declarations/laplacekernel-lower-cleared-tendsto--7704b1c3fbf3a31a83a9dce5.md) | 125 | `result-track:7704b1c3fbf3a31a83a9dce5a2a189b5e03b35a3039a8c401359582814247cab` |
| 18 | `lemma` | [laplaceKernel_sum_cleared_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LaplaceKernel/Variant946642d3a0104ce59601bad92358e68c56500241c51bb6d840308504e5d6b4c3.lean/declarations/laplacekernel-sum-cleared-tendsto--08b1f33599d0eb7e8a07fd5c.md) | 139 | `result-track:08b1f33599d0eb7e8a07fd5cf0413ec9a64a2e78ab00ac7c56d941e9aa27a2ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
