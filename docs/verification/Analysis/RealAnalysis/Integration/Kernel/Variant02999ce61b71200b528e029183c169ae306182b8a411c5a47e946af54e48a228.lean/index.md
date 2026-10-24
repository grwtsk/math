# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Kernel.Variant02999ce61b71200b528e029183c169ae306182b8a411c5a47e946af54e48a228

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "24e62b24c7297f7f0f57df7210664a0383694261",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Kernel/Variant02999ce61b71200b528e029183c169ae306182b8a411c5a47e946af54e48a228.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant02999ce61b71200b528e029183c169ae306182b8a411c5a47e946af54e48a228.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant02999ce61b71200b528e029183c169ae306182b8a411c5a47e946af54e48a228.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `24e62b24c7297f7f0f57df7210664a0383694261`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Kernel/Variant02999ce61b71200b528e029183c169ae306182b8a411c5a47e946af54e48a228.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Kernel/Variant02999ce61b71200b528e029183c169ae306182b8a411c5a47e946af54e48a228.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Laplace.Algebra` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [kernelIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant02999ce61b71200b528e029183c169ae306182b8a411c5a47e946af54e48a228.lean/declarations/kernelintegrand--db6ccd94b4b5639b57a088fe.md) | 30 | `declaration-track:db6ccd94b4b5639b57a088fe2e11a1e1e7a1bf49599c47026964b039ff8a68c0` |
| 2 | `lemma` | [norm_kernelIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant02999ce61b71200b528e029183c169ae306182b8a411c5a47e946af54e48a228.lean/declarations/norm-kernelintegrand--86142a2baecb5debbd0520a4.md) | 34 | `result-track:86142a2baecb5debbd0520a4f3faafc5ad85b2449c76db108af5e3e78e46c9e7` |
| 3 | `lemma` | [kernelIntegrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant02999ce61b71200b528e029183c169ae306182b8a411c5a47e946af54e48a228.lean/declarations/kernelintegrand-integrable--93770920453b7fd7cc37a101.md) | 42 | `result-track:93770920453b7fd7cc37a1012f2fa382fc63734b1daf40e9959a80871f454f37` |
| 4 | `lemma` | [kernelIntegrand_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant02999ce61b71200b528e029183c169ae306182b8a411c5a47e946af54e48a228.lean/declarations/kernelintegrand-tendsto--71993eef2b53c333ccac656a.md) | 60 | `result-track:71993eef2b53c333ccac656a2e1cb700907d7dffab1811ce0723e83a7434720a` |
| 5 | `lemma` | [kernelIntegrand_deriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant02999ce61b71200b528e029183c169ae306182b8a411c5a47e946af54e48a228.lean/declarations/kernelintegrand-deriv--99173dbb996a86e4143e76bb.md) | 73 | `result-track:99173dbb996a86e4143e76bba4d06a1222903617c585b3715eb610c7207cd78e` |
| 6 | `lemma` | [integral_recurrence](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant02999ce61b71200b528e029183c169ae306182b8a411c5a47e946af54e48a228.lean/declarations/integral-recurrence--92f719cfbfffdcc953b31f5a.md) | 87 | `result-track:92f719cfbfffdcc953b31f5a55b6ae93e07d434de684aae58aa868e40e241df3` |
| 7 | `def` | [kernelNumerator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant02999ce61b71200b528e029183c169ae306182b8a411c5a47e946af54e48a228.lean/declarations/kernelnumerator--bf1b6237dde44e014d3b62f4.md) | 113 | `declaration-track:bf1b6237dde44e014d3b62f48939deaf82841290ad406327dd149ce8ec839982` |
| 8 | `def` | [laplaceKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant02999ce61b71200b528e029183c169ae306182b8a411c5a47e946af54e48a228.lean/declarations/laplacekernel--1b10556191c803d681532f59.md) | 118 | `declaration-track:1b10556191c803d681532f595eeafb243aec32874dad18f3d9fb726376e964df` |
| 9 | `lemma` | [laplaceKernel_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant02999ce61b71200b528e029183c169ae306182b8a411c5a47e946af54e48a228.lean/declarations/laplacekernel-zero--7c8067ba81184f8ab3db3983.md) | 121 | `result-track:7c8067ba81184f8ab3db39831b082841d53de2bae91109822cbe34c3dfbdf893` |
| 10 | `lemma` | [laplaceKernel_succ](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant02999ce61b71200b528e029183c169ae306182b8a411c5a47e946af54e48a228.lean/declarations/laplacekernel-succ--371755a880f267a960439a6c.md) | 125 | `result-track:371755a880f267a960439a6c33b3281d8e36752f49605bd69bf2755861dac6c1` |
| 11 | `lemma` | [integral_eq_laplaceKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant02999ce61b71200b528e029183c169ae306182b8a411c5a47e946af54e48a228.lean/declarations/integral-eq-laplacekernel--dd31aae0a3f19e3825a963f9.md) | 134 | `result-track:dd31aae0a3f19e3825a963f9326cffe5a41910f54d383f1c6d7a595808d8d195` |
| 12 | `lemma` | [kernelNumerator_eq_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant02999ce61b71200b528e029183c169ae306182b8a411c5a47e946af54e48a228.lean/declarations/kernelnumerator-eq-sum--d21bcdbdf176376ceab6b6c4.md) | 153 | `result-track:d21bcdbdf176376ceab6b6c4aa776cc328f82962971e326d27cb8545e725a327` |
| 13 | `lemma` | [laplaceKernel_eq_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant02999ce61b71200b528e029183c169ae306182b8a411c5a47e946af54e48a228.lean/declarations/laplacekernel-eq-sum--0461eea7d2b28b974eea9639.md) | 174 | `result-track:0461eea7d2b28b974eea963939189b4edabf1a7edab8dc8af0dbf8d07fe1961f` |
| 14 | `lemma` | [kernelNumerator_eq_source_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant02999ce61b71200b528e029183c169ae306182b8a411c5a47e946af54e48a228.lean/declarations/kernelnumerator-eq-source-sum--5dffba86f7a0da8364cc7584.md) | 185 | `result-track:5dffba86f7a0da8364cc7584dcda18521bcc514d9e9116da8b9e091ba1f956a3` |
| 15 | `theorem` | [laplaceKernel_eq_J](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant02999ce61b71200b528e029183c169ae306182b8a411c5a47e946af54e48a228.lean/declarations/laplacekernel-eq-j--43e6d54345b95f10a5054842.md) | 197 | `result-track:43e6d54345b95f10a50548421154059773c7066a106b2a8187f4d7344ea028f7` |
| 16 | `theorem` | [j_integral_obligation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant02999ce61b71200b528e029183c169ae306182b8a411c5a47e946af54e48a228.lean/declarations/j-integral-obligation--a5b1edcc695e5892446b0b4a.md) | 218 | `result-track:a5b1edcc695e5892446b0b4a5732f172014495b0dcb65c5b8af787d575196427` |
| 17 | `def` | [headIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant02999ce61b71200b528e029183c169ae306182b8a411c5a47e946af54e48a228.lean/declarations/headintegral--fa5cd527dde15907371f7e36.md) | 236 | `declaration-track:fa5cd527dde15907371f7e362b6ffe3a4ef1870e8301bf5a0a493b1cb2660c0b` |
| 18 | `lemma` | [headIntegral_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant02999ce61b71200b528e029183c169ae306182b8a411c5a47e946af54e48a228.lean/declarations/headintegral-zero--a26de8873677da85a2344fc6.md) | 239 | `result-track:a26de8873677da85a2344fc6053ed14f9416187b91de53de13e3ed1f585addd6` |
| 19 | `lemma` | [headIntegral_succ](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant02999ce61b71200b528e029183c169ae306182b8a411c5a47e946af54e48a228.lean/declarations/headintegral-succ--5484621b87e4a7722a93a65b.md) | 253 | `result-track:5484621b87e4a7722a93a65b7c90547f9704c2b6a178d450569a1a732e8202f8` |
| 20 | `def` | [regularKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant02999ce61b71200b528e029183c169ae306182b8a411c5a47e946af54e48a228.lean/declarations/regularkernel--1fa83e08b9678a091f6ed7f9.md) | 296 | `declaration-track:1fa83e08b9678a091f6ed7f9eb89ff40fbde33d1a81da96296d328e02c3525ff` |
| 21 | `lemma` | [regularKernel_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant02999ce61b71200b528e029183c169ae306182b8a411c5a47e946af54e48a228.lean/declarations/regularkernel-zero--6d234384f22f0350c8931f65.md) | 299 | `result-track:6d234384f22f0350c8931f65d074da1b0f0d046d2811956b2387fd7d765b79f3` |
| 22 | `lemma` | [regularKernel_succ](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant02999ce61b71200b528e029183c169ae306182b8a411c5a47e946af54e48a228.lean/declarations/regularkernel-succ--68d29e14f4274387b392b09f.md) | 307 | `result-track:68d29e14f4274387b392b09fdb523a97cf019726fb257f844205b48ba62957b7` |
| 23 | `lemma` | [regularKernel_eq_laplaceKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant02999ce61b71200b528e029183c169ae306182b8a411c5a47e946af54e48a228.lean/declarations/regularkernel-eq-laplacekernel--72f4bec4ef8d44cafd0f34c2.md) | 320 | `result-track:72f4bec4ef8d44cafd0f34c256725f6b7b0d696e2de9b5ce7738e61881367a46` |
| 24 | `lemma` | [setIntegral_Icc_eq_headIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant02999ce61b71200b528e029183c169ae306182b8a411c5a47e946af54e48a228.lean/declarations/setintegral-icc-eq-headintegral--52dccd77e8e2e0a9e355009c.md) | 332 | `result-track:52dccd77e8e2e0a9e355009ca0ec655b1de42e6479a69e8b04628ef4d90a9c99` |
| 25 | `theorem` | [j_regular_part_obligation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant02999ce61b71200b528e029183c169ae306182b8a411c5a47e946af54e48a228.lean/declarations/j-regular-part-obligation--25164738e57182fa9f637d8b.md) | 344 | `result-track:25164738e57182fa9f637d8b4bedc52bdc7ee5046e8f2715daaeff8b9cfbfbbd` |
| 26 | `lemma` | [kernelNumerator_analytic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant02999ce61b71200b528e029183c169ae306182b8a411c5a47e946af54e48a228.lean/declarations/kernelnumerator-analytic--cc83b9573497794903d394c5.md) | 352 | `result-track:cc83b9573497794903d394c5f5402b740e138ffdfb6daa6bae5aeb659baeab0b` |
| 27 | `lemma` | [laplaceKernel_analytic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant02999ce61b71200b528e029183c169ae306182b8a411c5a47e946af54e48a228.lean/declarations/laplacekernel-analytic--3c491393367c6da73253db78.md) | 363 | `result-track:3c491393367c6da73253db78953742b82c7abd1d0726495510935a5aa642fa50` |
| 28 | `lemma` | [kernelNumerator_at_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant02999ce61b71200b528e029183c169ae306182b8a411c5a47e946af54e48a228.lean/declarations/kernelnumerator-at-zero--81674a318304e64c0aa8c08a.md) | 370 | `result-track:81674a318304e64c0aa8c08ade7c5e3e60c5af35578ac1fc2f0196f3066c73aa` |
| 29 | `lemma` | [laplaceKernel_cleared](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant02999ce61b71200b528e029183c169ae306182b8a411c5a47e946af54e48a228.lean/declarations/laplacekernel-cleared--69670cc3129763fbc9480b53.md) | 379 | `result-track:69670cc3129763fbc9480b53ce8714abe9cb4361b17529ae1db3a5379691cee3` |
| 30 | `lemma` | [laplaceKernel_cleared_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant02999ce61b71200b528e029183c169ae306182b8a411c5a47e946af54e48a228.lean/declarations/laplacekernel-cleared-tendsto--91e03abb68f3f1f204d10c17.md) | 387 | `result-track:91e03abb68f3f1f204d10c1749eaeff0497a519afcf8232d907a7ae5c868a429` |
| 31 | `theorem` | [J_cleared_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant02999ce61b71200b528e029183c169ae306182b8a411c5a47e946af54e48a228.lean/declarations/j-cleared-tendsto--c63936a4faaf1e0ff03d1aae.md) | 409 | `result-track:c63936a4faaf1e0ff03d1aaeb5fc629d9a6bfdeceb7ae0ba27d1b62925b083a1` |
| 32 | `theorem` | [kernel_checkpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant02999ce61b71200b528e029183c169ae306182b8a411c5a47e946af54e48a228.lean/declarations/kernel-checkpoint--944c2678d387b349e88a03a7.md) | 419 | `result-track:944c2678d387b349e88a03a7fb0842f41ca9a08b787745294ba1e4146b28a1c7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
