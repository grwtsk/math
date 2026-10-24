# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.LaplaceKernel.Variant7e96379d451e4a273bd85368f1d8cbe933477aa0cecb64a1940094ae100562c0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b37dc028552ad5c88919f5982be9cde54071fb12",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LaplaceKernel/Variant7e96379d451e4a273bd85368f1d8cbe933477aa0cecb64a1940094ae100562c0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LaplaceKernel/Variant7e96379d451e4a273bd85368f1d8cbe933477aa0cecb64a1940094ae100562c0.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LaplaceKernel/Variant7e96379d451e4a273bd85368f1d8cbe933477aa0cecb64a1940094ae100562c0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b37dc028552ad5c88919f5982be9cde54071fb12`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LaplaceKernel/Variant7e96379d451e4a273bd85368f1d8cbe933477aa0cecb64a1940094ae100562c0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LaplaceKernel/Variant7e96379d451e4a273bd85368f1d8cbe933477aa0cecb64a1940094ae100562c0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [kernelIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LaplaceKernel/Variant7e96379d451e4a273bd85368f1d8cbe933477aa0cecb64a1940094ae100562c0.lean/declarations/kernelintegrand--fe89d10fa18478fdcedeadb1.md) | 19 | `declaration-track:fe89d10fa18478fdcedeadb141b95a994a4e5c76430ba5d7613cbe567d4178e8` |
| 2 | `lemma` | [norm_kernelIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LaplaceKernel/Variant7e96379d451e4a273bd85368f1d8cbe933477aa0cecb64a1940094ae100562c0.lean/declarations/norm-kernelintegrand--94c7c7954d65facb723a5bb4.md) | 22 | `result-track:94c7c7954d65facb723a5bb4555410f2f7afd7edc48d48695669d81457c13a2c` |
| 3 | `lemma` | [kernelIntegrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LaplaceKernel/Variant7e96379d451e4a273bd85368f1d8cbe933477aa0cecb64a1940094ae100562c0.lean/declarations/kernelintegrand-integrable--753ce7afa7e019855046ce05.md) | 27 | `result-track:753ce7afa7e019855046ce05af624ab27920aae17e1fb37af4226ae4d36de577` |
| 4 | `lemma` | [kernelIntegrand_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LaplaceKernel/Variant7e96379d451e4a273bd85368f1d8cbe933477aa0cecb64a1940094ae100562c0.lean/declarations/kernelintegrand-tendsto--bad5425b54027e9029bc0904.md) | 37 | `result-track:bad5425b54027e9029bc0904f673fa77a2a4cf709852f38314478ff61ab76d5d` |
| 5 | `lemma` | [kernelIntegrand_deriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LaplaceKernel/Variant7e96379d451e4a273bd85368f1d8cbe933477aa0cecb64a1940094ae100562c0.lean/declarations/kernelintegrand-deriv--affa1f7c85ac90e55a0bea7b.md) | 46 | `result-track:affa1f7c85ac90e55a0bea7bd0915805f7db5e2487e85561e000ba8544a205ea` |
| 6 | `lemma` | [integral_recurrence](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LaplaceKernel/Variant7e96379d451e4a273bd85368f1d8cbe933477aa0cecb64a1940094ae100562c0.lean/declarations/integral-recurrence--79875a1aa1f519b5e9098c16.md) | 56 | `result-track:79875a1aa1f519b5e9098c16c87fe404d825c5bca9029412c9ede42fb04de231` |
| 7 | `def` | [kernelNumerator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LaplaceKernel/Variant7e96379d451e4a273bd85368f1d8cbe933477aa0cecb64a1940094ae100562c0.lean/declarations/kernelnumerator--fa1a310b2157edfe2595cfce.md) | 74 | `declaration-track:fa1a310b2157edfe2595cfceb944839c1bd83332dc876f24af94d30bac2cd577` |
| 8 | `def` | [laplaceKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LaplaceKernel/Variant7e96379d451e4a273bd85368f1d8cbe933477aa0cecb64a1940094ae100562c0.lean/declarations/laplacekernel--7e670d9a97a397f797f64e29.md) | 78 | `declaration-track:7e670d9a97a397f797f64e2905e73ef1223863877090887568103ae3bc35ad6d` |
| 9 | `lemma` | [laplaceKernel_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LaplaceKernel/Variant7e96379d451e4a273bd85368f1d8cbe933477aa0cecb64a1940094ae100562c0.lean/declarations/laplacekernel-zero--2980f884acb65f1c9e1a8c7e.md) | 81 | `result-track:2980f884acb65f1c9e1a8c7e0927ba7c96cfe13dc278851f2b6e970894e5d513` |
| 10 | `lemma` | [laplaceKernel_succ](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LaplaceKernel/Variant7e96379d451e4a273bd85368f1d8cbe933477aa0cecb64a1940094ae100562c0.lean/declarations/laplacekernel-succ--6e0b6b1301e196ca53de81e8.md) | 84 | `result-track:6e0b6b1301e196ca53de81e8983a887acc27f4c72991795710324bf1f36b6587` |
| 11 | `lemma` | [integral_eq_laplaceKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LaplaceKernel/Variant7e96379d451e4a273bd85368f1d8cbe933477aa0cecb64a1940094ae100562c0.lean/declarations/integral-eq-laplacekernel--3b191f9b56f89f88fd77e877.md) | 91 | `result-track:3b191f9b56f89f88fd77e877c3b8a58d7aec302ef629e55ca6e6b13eb45cd0a6` |
| 12 | `lemma` | [kernelNumerator_analytic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LaplaceKernel/Variant7e96379d451e4a273bd85368f1d8cbe933477aa0cecb64a1940094ae100562c0.lean/declarations/kernelnumerator-analytic--07771803da4d96cce1a1261c.md) | 101 | `result-track:07771803da4d96cce1a1261ca4a023478bc4bc605c30fe778c79a05b20192eb8` |
| 13 | `lemma` | [laplaceKernel_analytic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LaplaceKernel/Variant7e96379d451e4a273bd85368f1d8cbe933477aa0cecb64a1940094ae100562c0.lean/declarations/laplacekernel-analytic--490a927a6dbe2ede7caacc46.md) | 107 | `result-track:490a927a6dbe2ede7caacc46a3503fcf55c6723d77871e2a0ba86c1d403f1f98` |
| 14 | `lemma` | [kernelNumerator_at_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LaplaceKernel/Variant7e96379d451e4a273bd85368f1d8cbe933477aa0cecb64a1940094ae100562c0.lean/declarations/kernelnumerator-at-zero--33ee069912804c00cea3c2eb.md) | 112 | `result-track:33ee069912804c00cea3c2eb163fb55fae24eeef2e5b58fb5fe1f5fe581cb1c5` |
| 15 | `lemma` | [laplaceKernel_cleared](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LaplaceKernel/Variant7e96379d451e4a273bd85368f1d8cbe933477aa0cecb64a1940094ae100562c0.lean/declarations/laplacekernel-cleared--fe6434246c9cebb72935f463.md) | 117 | `result-track:fe6434246c9cebb72935f463a3cc23e635fc79b1172c577e0929c625cd8cdb69` |
| 16 | `lemma` | [laplaceKernel_cleared_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LaplaceKernel/Variant7e96379d451e4a273bd85368f1d8cbe933477aa0cecb64a1940094ae100562c0.lean/declarations/laplacekernel-cleared-tendsto--a53315342f8e98b34ef3294c.md) | 122 | `result-track:a53315342f8e98b34ef3294c7d81921116e74f0fe4ff6f91a1e958a701d04460` |
| 17 | `lemma` | [laplaceKernel_lower_cleared_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LaplaceKernel/Variant7e96379d451e4a273bd85368f1d8cbe933477aa0cecb64a1940094ae100562c0.lean/declarations/laplacekernel-lower-cleared-tendsto--70e259389d8d2e89d53f258f.md) | 133 | `result-track:70e259389d8d2e89d53f258f779f64922e9d925e0f7b4aecd349ec3d9ee9815a` |
| 18 | `lemma` | [laplaceKernel_sum_cleared_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LaplaceKernel/Variant7e96379d451e4a273bd85368f1d8cbe933477aa0cecb64a1940094ae100562c0.lean/declarations/laplacekernel-sum-cleared-tendsto--b9b59e30d522bbd57bfb0af8.md) | 147 | `result-track:b9b59e30d522bbd57bfb0af80701f88f10a5541419ff6a960edbf98c8ec2eb84` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
