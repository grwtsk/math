# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.LogLikelihoodRatio.Variantf54c44096973b1aa4921a357d4debc68a3230f81cfd743d9014d948e875cf5fe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3ea8fbcc92483f27dcafebc1f6e9a61551afabed",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantf54c44096973b1aa4921a357d4debc68a3230f81cfd743d9014d948e875cf5fe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantf54c44096973b1aa4921a357d4debc68a3230f81cfd743d9014d948e875cf5fe.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantf54c44096973b1aa4921a357d4debc68a3230f81cfd743d9014d948e875cf5fe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3ea8fbcc92483f27dcafebc1f6e9a61551afabed`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantf54c44096973b1aa4921a357d4debc68a3230f81cfd743d9014d948e875cf5fe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantf54c44096973b1aa4921a357d4debc68a3230f81cfd743d9014d948e875cf5fe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [llr](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantf54c44096973b1aa4921a357d4debc68a3230f81cfd743d9014d948e875cf5fe.lean/declarations/llr--3688cfc8180b8660dee47189.md) | 45 | `declaration-track:3688cfc8180b8660dee47189155996cdf4767454157a4b936105727f12642da9` |
| 2 | `lemma` | [llr_def](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantf54c44096973b1aa4921a357d4debc68a3230f81cfd743d9014d948e875cf5fe.lean/declarations/llr-def--42a0aaf21d3773ed37b009d7.md) | 47 | `result-track:42a0aaf21d3773ed37b009d76ab9edff884641ec89af4132b985019a3bddd206` |
| 3 | `lemma` | [llr_self](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantf54c44096973b1aa4921a357d4debc68a3230f81cfd743d9014d948e875cf5fe.lean/declarations/llr-self--645ebd31b8591ccfb6ccd7b8.md) | 49 | `result-track:645ebd31b8591ccfb6ccd7b895127fdb508c1bbc09d40eaecbf3b66c2d847bba` |
| 4 | `lemma` | [exp_llr](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantf54c44096973b1aa4921a357d4debc68a3230f81cfd743d9014d948e875cf5fe.lean/declarations/exp-llr--336d37c32ed2fde7b1bfbae8.md) | 52 | `result-track:336d37c32ed2fde7b1bfbae82a0e1319228c7f4bcd999b0f4d58478ff437eef9` |
| 5 | `lemma` | [exp_llr_of_ac](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantf54c44096973b1aa4921a357d4debc68a3230f81cfd743d9014d948e875cf5fe.lean/declarations/exp-llr-of-ac--ccdd57884eae5f0a53141e0a.md) | 61 | `result-track:ccdd57884eae5f0a53141e0af75cb0436628cd32a893d7455c8641444ef9afe4` |
| 6 | `lemma` | [exp_llr_of_ac'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantf54c44096973b1aa4921a357d4debc68a3230f81cfd743d9014d948e875cf5fe.lean/declarations/exp-llr-of-ac--79142a7957f8ff4d7e9e1a80.md) | 67 | `result-track:79142a7957f8ff4d7e9e1a80a101101773f29cba4a95d2da7874b3cbbb0d9eb9` |
| 7 | `lemma` | [neg_llr](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantf54c44096973b1aa4921a357d4debc68a3230f81cfd743d9014d948e875cf5fe.lean/declarations/neg-llr--65916b04faf778a67e5b24e2.md) | 72 | `result-track:65916b04faf778a67e5b24e275508de9f4ba3db57306087d6a8859fe6f3807d3` |
| 8 | `lemma` | [exp_neg_llr](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantf54c44096973b1aa4921a357d4debc68a3230f81cfd743d9014d948e875cf5fe.lean/declarations/exp-neg-llr--ed393d354b01957da3dfd262.md) | 78 | `result-track:ed393d354b01957da3dfd2625d451ed83058aa6d6af78afe69347ed16f01c5d3` |
| 9 | `lemma` | [exp_neg_llr'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantf54c44096973b1aa4921a357d4debc68a3230f81cfd743d9014d948e875cf5fe.lean/declarations/exp-neg-llr--fa555bb4a65fc02b8952b673.md) | 84 | `result-track:fa555bb4a65fc02b8952b673d00a44a6858a50f802848bceff2120467543a833` |
| 10 | `lemma` | [measurable_llr](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantf54c44096973b1aa4921a357d4debc68a3230f81cfd743d9014d948e875cf5fe.lean/declarations/measurable-llr--c6879a198aba460fd0b6b402.md) | 91 | `result-track:c6879a198aba460fd0b6b402e47d6480c1430f520b5c5fd15537024684f2710a` |
| 11 | `lemma` | [stronglyMeasurable_llr](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantf54c44096973b1aa4921a357d4debc68a3230f81cfd743d9014d948e875cf5fe.lean/declarations/stronglymeasurable-llr--365029239ed2ede6b5193b04.md) | 95 | `result-track:365029239ed2ede6b5193b0433219fca7824f6162b1ee5ae76493901a80274e9` |
| 12 | `lemma` | [llr_smul_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantf54c44096973b1aa4921a357d4debc68a3230f81cfd743d9014d948e875cf5fe.lean/declarations/llr-smul-left--3d4064bd1eee6239458a227d.md) | 98 | `result-track:3d4064bd1eee6239458a227d67f41ad376a36137aebeda2aa46e6b402de1a0ac` |
| 13 | `lemma` | [llr_smul_nnreal_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantf54c44096973b1aa4921a357d4debc68a3230f81cfd743d9014d948e875cf5fe.lean/declarations/llr-smul-nnreal-left--cfde6723f1270910619facc4.md) | 115 | `result-track:cfde6723f1270910619facc443ea6c3772003861dea9c6944e5323174f29e081` |
| 14 | `lemma` | [llr_smul_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantf54c44096973b1aa4921a357d4debc68a3230f81cfd743d9014d948e875cf5fe.lean/declarations/llr-smul-right--95789b48dba72b3ed233a16d.md) | 123 | `result-track:95789b48dba72b3ed233a16d776fb6a2f710cb82abae68e9319c3058ba6d29f6` |
| 15 | `lemma` | [llr_smul_nnreal_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantf54c44096973b1aa4921a357d4debc68a3230f81cfd743d9014d948e875cf5fe.lean/declarations/llr-smul-nnreal-right--bfed87648fa69f58a1f79258.md) | 141 | `result-track:bfed87648fa69f58a1f79258145942137632631c281f04ef8d1f5de757e6064c` |
| 16 | `lemma` | [llr_smul_inv_left_eq_smul_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantf54c44096973b1aa4921a357d4debc68a3230f81cfd743d9014d948e875cf5fe.lean/declarations/llr-smul-inv-left-eq-smul-right--4410c0cfd2dfcc302b211483.md) | 149 | `result-track:4410c0cfd2dfcc302b2114833a3347b724b0b145f950e317d03295746479656b` |
| 17 | `lemma` | [llr_smul_same](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantf54c44096973b1aa4921a357d4debc68a3230f81cfd743d9014d948e875cf5fe.lean/declarations/llr-smul-same--b83ba4b60deea257eba99a3f.md) | 159 | `result-track:b83ba4b60deea257eba99a3fa9ee1f0e99f324f7db2a9b09975699284e816b27` |
| 18 | `lemma` | [llr_smul_nnreal_same](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantf54c44096973b1aa4921a357d4debc68a3230f81cfd743d9014d948e875cf5fe.lean/declarations/llr-smul-nnreal-same--d04a83a73b6b068edf252c68.md) | 167 | `result-track:d04a83a73b6b068edf252c681a643009d81eef0ba3d296e811fdaf44f1ffcb41` |
| 19 | `lemma` | [integrable_rnDeriv_mul_log_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantf54c44096973b1aa4921a357d4debc68a3230f81cfd743d9014d948e875cf5fe.lean/declarations/integrable-rnderiv-mul-log-iff--bb6ce5ad3229d99f0bb15148.md) | 174 | `result-track:bb6ce5ad3229d99f0bb15148342599874c15de1a1ff46071a48348b4e347ee5e` |
| 20 | `lemma` | [integral_rnDeriv_mul_log](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantf54c44096973b1aa4921a357d4debc68a3230f81cfd743d9014d948e875cf5fe.lean/declarations/integral-rnderiv-mul-log--627bed0ec5a7f26b7bdffdae.md) | 179 | `result-track:627bed0ec5a7f26b7bdffdaea11cf22ab563e3a559267fdc290e1c5c3ecc6d0a` |
| 21 | `lemma` | [llr_tilted_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantf54c44096973b1aa4921a357d4debc68a3230f81cfd743d9014d948e875cf5fe.lean/declarations/llr-tilted-left--af93d8a46077b1359e80f798.md) | 185 | `result-track:af93d8a46077b1359e80f7981fd4bce24d35ca7122c93456058012cbc856a236` |
| 22 | `lemma` | [integrable_llr_tilted_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantf54c44096973b1aa4921a357d4debc68a3230f81cfd743d9014d948e875cf5fe.lean/declarations/integrable-llr-tilted-left--78184d9184e69a3131638a81.md) | 203 | `result-track:78184d9184e69a3131638a81339775d4a5fcc22912778b5a613c3e5bb9a88b84` |
| 23 | `lemma` | [integral_llr_tilted_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantf54c44096973b1aa4921a357d4debc68a3230f81cfd743d9014d948e875cf5fe.lean/declarations/integral-llr-tilted-left--61c03c7490b7608a616a8ae9.md) | 210 | `result-track:61c03c7490b7608a616a8ae91af5c2a6b9c0a70d085313457ccc3edfa27d4820` |
| 24 | `lemma` | [llr_tilted_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantf54c44096973b1aa4921a357d4debc68a3230f81cfd743d9014d948e875cf5fe.lean/declarations/llr-tilted-right--63a30d6215891d9e80262c53.md) | 224 | `result-track:63a30d6215891d9e80262c5351f79e0edcb79259c3451f509555c351d39f2b8f` |
| 25 | `lemma` | [integrable_llr_tilted_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantf54c44096973b1aa4921a357d4debc68a3230f81cfd743d9014d948e875cf5fe.lean/declarations/integrable-llr-tilted-right--5b29d771e63b409da9197d25.md) | 239 | `result-track:5b29d771e63b409da9197d25a69e5067e7fed53436781047f61bdd5ee53d394c` |
| 26 | `lemma` | [integral_llr_tilted_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantf54c44096973b1aa4921a357d4debc68a3230f81cfd743d9014d948e875cf5fe.lean/declarations/integral-llr-tilted-right--90357c2492e8a6e87ca769ae.md) | 246 | `result-track:90357c2492e8a6e87ca769ae86871f6d262469a86f43f4caa6f8233d080a84e3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
