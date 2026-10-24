# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.BinaryEntropy.Variant1b3bec988d675f86b1da9d9a5bcb5959accb8c6142b4f0d1c1e43df9a7d50d62

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6fbf074cde11f37267238c5e7978d884376cb4e3",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variant1b3bec988d675f86b1da9d9a5bcb5959accb8c6142b4f0d1c1e43df9a7d50d62.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variant1b3bec988d675f86b1da9d9a5bcb5959accb8c6142b4f0d1c1e43df9a7d50d62.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variant1b3bec988d675f86b1da9d9a5bcb5959accb8c6142b4f0d1c1e43df9a7d50d62.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6fbf074cde11f37267238c5e7978d884376cb4e3`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variant1b3bec988d675f86b1da9d9a5bcb5959accb8c6142b4f0d1c1e43df9a7d50d62.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variant1b3bec988d675f86b1da9d9a5bcb5959accb8c6142b4f0d1c1e43df9a7d50d62.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Log.NegMulLog` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.SpecificFunctions.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [binEntropy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variant1b3bec988d675f86b1da9d9a5bcb5959accb8c6142b4f0d1c1e43df9a7d50d62.lean/declarations/binentropy--e3b2c175ad2e618157cd5fb5.md) | 67 | `declaration-track:e3b2c175ad2e618157cd5fb5758d5be19dc4034707d12845b3295fcda035c4d4` |
| 2 | `lemma` | [binEntropy_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variant1b3bec988d675f86b1da9d9a5bcb5959accb8c6142b4f0d1c1e43df9a7d50d62.lean/declarations/binentropy-zero--e8f061ffdffb02d07f97b80d.md) | 69 | `result-track:e8f061ffdffb02d07f97b80de70f198c0ee300cbf32f1522b28a892a9172e784` |
| 3 | `lemma` | [binEntropy_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variant1b3bec988d675f86b1da9d9a5bcb5959accb8c6142b4f0d1c1e43df9a7d50d62.lean/declarations/binentropy-one--79487db0df6ff06aec05c863.md) | 70 | `result-track:79487db0df6ff06aec05c8635b87f920d006d7036c61eee93da5cef517813d3b` |
| 4 | `lemma` | [binEntropy_two_inv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variant1b3bec988d675f86b1da9d9a5bcb5959accb8c6142b4f0d1c1e43df9a7d50d62.lean/declarations/binentropy-two-inv--6cc4c3ac5ffa9e403dc1ea56.md) | 71 | `result-track:6cc4c3ac5ffa9e403dc1ea563faa88c114e8ba260a81278187d87939c6f980fe` |
| 5 | `lemma` | [binEntropy_eq_negMulLog_add_negMulLog_one_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variant1b3bec988d675f86b1da9d9a5bcb5959accb8c6142b4f0d1c1e43df9a7d50d62.lean/declarations/binentropy-eq-negmullog-add-negmullog-one-sub--a55b0f53df187237ea7cc44b.md) | 73 | `result-track:a55b0f53df187237ea7cc44b071869befb23d9e3613736b40ac7698afe30851d` |
| 6 | `lemma` | [binEntropy_eq_negMulLog_add_negMulLog_one_sub'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variant1b3bec988d675f86b1da9d9a5bcb5959accb8c6142b4f0d1c1e43df9a7d50d62.lean/declarations/binentropy-eq-negmullog-add-negmullog-one-sub--1dc24fd67da79b46f140eebd.md) | 76 | `result-track:1dc24fd67da79b46f140eebdb30e7bc5d283a8da777d7da0559721251f3393ec` |
| 7 | `lemma` | [binEntropy_one_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variant1b3bec988d675f86b1da9d9a5bcb5959accb8c6142b4f0d1c1e43df9a7d50d62.lean/declarations/binentropy-one-sub--154b44ac78b120fd2ea88b0a.md) | 81 | `result-track:154b44ac78b120fd2ea88b0ae388eb21551e0458de1b3287becaf965ef7c0d09` |
| 8 | `lemma` | [binEntropy_two_inv_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variant1b3bec988d675f86b1da9d9a5bcb5959accb8c6142b4f0d1c1e43df9a7d50d62.lean/declarations/binentropy-two-inv-add--866f7ac38738254ba4bc566a.md) | 85 | `result-track:866f7ac38738254ba4bc566af86baa046db0de06ca7be76f9b1d75b8ae9f6d7c` |
| 9 | `lemma` | [binEntropy_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variant1b3bec988d675f86b1da9d9a5bcb5959accb8c6142b4f0d1c1e43df9a7d50d62.lean/declarations/binentropy-pos--9d250854b9765f7b342ed98d.md) | 88 | `result-track:9d250854b9765f7b342ed98d09fefdee143e82c430848a8ecc850cb931dbbb26` |
| 10 | `lemma` | [binEntropy_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variant1b3bec988d675f86b1da9d9a5bcb5959accb8c6142b4f0d1c1e43df9a7d50d62.lean/declarations/binentropy-nonneg--4847202de5b7ef77e1cbae06.md) | 95 | `result-track:4847202de5b7ef77e1cbae06f5a520af1b6eda70f52ee38824d82d97911a4611` |
| 11 | `lemma` | [binEntropy_neg_of_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variant1b3bec988d675f86b1da9d9a5bcb5959accb8c6142b4f0d1c1e43df9a7d50d62.lean/declarations/binentropy-neg-of-neg--09cc65d1016fbc835cf35889.md) | 103 | `result-track:09cc65d1016fbc835cf35889afa7b613bdbb9876090df061dae0a177a57e2c5c` |
| 12 | `lemma` | [binEntropy_nonpos_of_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variant1b3bec988d675f86b1da9d9a5bcb5959accb8c6142b4f0d1c1e43df9a7d50d62.lean/declarations/binentropy-nonpos-of-nonpos--b0ec3271e3c15f63d70df3a2.md) | 118 | `result-track:b0ec3271e3c15f63d70df3a22d1f90babbb920c782f36b38f7c56b79c603500d` |
| 13 | `lemma` | [binEntropy_neg_of_one_lt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variant1b3bec988d675f86b1da9d9a5bcb5959accb8c6142b4f0d1c1e43df9a7d50d62.lean/declarations/binentropy-neg-of-one-lt--059a81186791fd58a9acde76.md) | 124 | `result-track:059a81186791fd58a9acde76f172dd8bd3bf5a657b38bc16167c3628a4975292` |
| 14 | `lemma` | [binEntropy_nonpos_of_one_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variant1b3bec988d675f86b1da9d9a5bcb5959accb8c6142b4f0d1c1e43df9a7d50d62.lean/declarations/binentropy-nonpos-of-one-le--e6ccf0431d487b72d9b59547.md) | 128 | `result-track:e6ccf0431d487b72d9b59547f9adeeba706c2985aaacae05f3155d5d18ce97c6` |
| 15 | `lemma` | [binEntropy_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variant1b3bec988d675f86b1da9d9a5bcb5959accb8c6142b4f0d1c1e43df9a7d50d62.lean/declarations/binentropy-eq-zero--cd765be4118dd23075cbd67a.md) | 131 | `result-track:cd765be4118dd23075cbd67a6826e8223bd5d3753432ec6dc2fde24d71c72fa9` |
| 16 | `lemma` | [binEntropy_lt_log_two](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variant1b3bec988d675f86b1da9d9a5bcb5959accb8c6142b4f0d1c1e43df9a7d50d62.lean/declarations/binentropy-lt-log-two--f47b7540e46c719054e55550.md) | 141 | `result-track:f47b7540e46c719054e55550974189811a977aeddb130ff923b0a440e53e5ab0` |
| 17 | `lemma` | [binEntropy_le_log_two](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variant1b3bec988d675f86b1da9d9a5bcb5959accb8c6142b4f0d1c1e43df9a7d50d62.lean/declarations/binentropy-le-log-two--b316f5593efdb369b8236fd5.md) | 159 | `result-track:b316f5593efdb369b8236fd5e32d8106cc9eb8ca5e3dec607e9f4965b4d9c70b` |
| 18 | `lemma` | [binEntropy_eq_log_two](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variant1b3bec988d675f86b1da9d9a5bcb5959accb8c6142b4f0d1c1e43df9a7d50d62.lean/declarations/binentropy-eq-log-two--6202c908e6ad6ffb983e70e9.md) | 164 | `result-track:6202c908e6ad6ffb983e70e96d284a2630baa73fc6bdbc8fa43163a9402633f2` |
| 19 | `lemma` | [binEntropy_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variant1b3bec988d675f86b1da9d9a5bcb5959accb8c6142b4f0d1c1e43df9a7d50d62.lean/declarations/binentropy-continuous--0ef2e5c2060216b73ccdd77e.md) | 169 | `result-track:0ef2e5c2060216b73ccdd77e290cd4c4ea524c01149f7b087f00588ad40ff1bc` |
| 20 | `lemma` | [differentiableAt_binEntropy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variant1b3bec988d675f86b1da9d9a5bcb5959accb8c6142b4f0d1c1e43df9a7d50d62.lean/declarations/differentiableat-binentropy--c1293bab22c18afecd6586e4.md) | 172 | `result-track:c1293bab22c18afecd6586e48aa5d0b2e49e8dcecb45bec8e9d7360abf6dc75d` |
| 21 | `lemma` | [differentiableAt_binEntropy_iff_ne_zero_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variant1b3bec988d675f86b1da9d9a5bcb5959accb8c6142b4f0d1c1e43df9a7d50d62.lean/declarations/differentiableat-binentropy-iff-ne-zero-one--8d0bc60b29b65f7374a4e017.md) | 179 | `result-track:8d0bc60b29b65f7374a4e01774c0c992ee892cbea664265256999622af483762` |
| 22 | `lemma` | [deriv_binEntropy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variant1b3bec988d675f86b1da9d9a5bcb5959accb8c6142b4f0d1c1e43df9a7d50d62.lean/declarations/deriv-binentropy--316313da290e02ddb0608226.md) | 193 | `result-track:316313da290e02ddb06082265aeb5fa375124af47e5ad89297991d5a4c5b95e7` |
| 23 | `def` | [qaryEntropy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variant1b3bec988d675f86b1da9d9a5bcb5959accb8c6142b4f0d1c1e43df9a7d50d62.lean/declarations/qaryentropy--677aee9da5673fbbea910aa0.md) | 216 | `declaration-track:677aee9da5673fbbea910aa0fd88c89f1cc922a30bc7836b9b29edddb1f476be` |
| 24 | `lemma` | [qaryEntropy_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variant1b3bec988d675f86b1da9d9a5bcb5959accb8c6142b4f0d1c1e43df9a7d50d62.lean/declarations/qaryentropy-zero--61f99d7150ec6269c4b73c26.md) | 218 | `result-track:61f99d7150ec6269c4b73c26f4def8ac4160392ac9ea9b1cf5df7e4f6107a097` |
| 25 | `lemma` | [qaryEntropy_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variant1b3bec988d675f86b1da9d9a5bcb5959accb8c6142b4f0d1c1e43df9a7d50d62.lean/declarations/qaryentropy-one--b5c901e05503fa7a2ec7f9a8.md) | 219 | `result-track:b5c901e05503fa7a2ec7f9a843408f0342bbcbadbe28365fab93ee05d12532f8` |
| 26 | `lemma` | [qaryEntropy_two](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variant1b3bec988d675f86b1da9d9a5bcb5959accb8c6142b4f0d1c1e43df9a7d50d62.lean/declarations/qaryentropy-two--401578fa10db636dcc597010.md) | 220 | `result-track:401578fa10db636dcc5970101d1c9c5f57c8d52c23e30e8aa9d3344b0d3f2f01` |
| 27 | `lemma` | [qaryEntropy_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variant1b3bec988d675f86b1da9d9a5bcb5959accb8c6142b4f0d1c1e43df9a7d50d62.lean/declarations/qaryentropy-pos--8cd354818452b0864867e136.md) | 222 | `result-track:8cd354818452b0864867e136210f6edfeecaebe786af4685d2e49fb32a805563` |
| 28 | `lemma` | [qaryEntropy_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variant1b3bec988d675f86b1da9d9a5bcb5959accb8c6142b4f0d1c1e43df9a7d50d62.lean/declarations/qaryentropy-nonneg--7c1fdc059e3e0e4222dc1016.md) | 227 | `result-track:7c1fdc059e3e0e4222dc1016a637aeea8ffceafb83d2d70164518144c35db029` |
| 29 | `lemma` | [qaryEntropy_neg_of_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variant1b3bec988d675f86b1da9d9a5bcb5959accb8c6142b4f0d1c1e43df9a7d50d62.lean/declarations/qaryentropy-neg-of-neg--3e14e43a7081b58798c82f02.md) | 235 | `result-track:3e14e43a7081b58798c82f02960e23445c5fa680b3119d7726225e4de9d1572c` |
| 30 | `lemma` | [qaryEntropy_nonpos_of_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variant1b3bec988d675f86b1da9d9a5bcb5959accb8c6142b4f0d1c1e43df9a7d50d62.lean/declarations/qaryentropy-nonpos-of-nonpos--df7c1f26764292a415fa0567.md) | 240 | `result-track:df7c1f26764292a415fa0567baf8eedbb656be771093ba312d93cdf1a5334b0e` |
| 31 | `lemma` | [qaryEntropy_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variant1b3bec988d675f86b1da9d9a5bcb5959accb8c6142b4f0d1c1e43df9a7d50d62.lean/declarations/qaryentropy-continuous--e65d0b6f4cb3c13074169b2e.md) | 246 | `result-track:e65d0b6f4cb3c13074169b2edd6a3059ff902301a7011e99859f5bbfe145342b` |
| 32 | `lemma` | [differentiableAt_qaryEntropy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variant1b3bec988d675f86b1da9d9a5bcb5959accb8c6142b4f0d1c1e43df9a7d50d62.lean/declarations/differentiableat-qaryentropy--973f41c804ea479b156addab.md) | 249 | `result-track:973f41c804ea479b156addab21377954a083f0f13556465af2d623b689646f4a` |
| 33 | `lemma` | [deriv_qaryEntropy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variant1b3bec988d675f86b1da9d9a5bcb5959accb8c6142b4f0d1c1e43df9a7d50d62.lean/declarations/deriv-qaryentropy--9f65b213dc804323f38a33a9.md) | 252 | `result-track:9f65b213dc804323f38a33a98e2328e0828768002c81a530cf867de72cc6e02d` |
| 34 | `lemma` | [hasDerivAt_binEntropy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variant1b3bec988d675f86b1da9d9a5bcb5959accb8c6142b4f0d1c1e43df9a7d50d62.lean/declarations/hasderivat-binentropy--18a145bd55637388560beee3.md) | 261 | `result-track:18a145bd55637388560beee3b697e3c8f132cda532cb683ace2783fa027fa64e` |
| 35 | `lemma` | [hasDerivAt_qaryEntropy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variant1b3bec988d675f86b1da9d9a5bcb5959accb8c6142b4f0d1c1e43df9a7d50d62.lean/declarations/hasderivat-qaryentropy--be05ef0c96fbb724910c1568.md) | 265 | `result-track:be05ef0c96fbb724910c1568a95582b63d25764caf60341446dc3a9bbe2c267f` |
| 36 | `lemma` | [tendsto_log_one_sub_sub_log_nhdsGT_atAtop](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variant1b3bec988d675f86b1da9d9a5bcb5959accb8c6142b4f0d1c1e43df9a7d50d62.lean/declarations/tendsto-log-one-sub-sub-log-nhdsgt-atatop--c0d6898224633a54c433d1a5.md) | 271 | `result-track:c0d6898224633a54c433d1a50bd78b6f4979a897a6639644538bdf2bb8cb61d5` |
| 37 | `lemma` | [tendsto_log_one_sub_sub_log_nhdsLT_one_atBot](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variant1b3bec988d675f86b1da9d9a5bcb5959accb8c6142b4f0d1c1e43df9a7d50d62.lean/declarations/tendsto-log-one-sub-sub-log-nhdslt-one-atbot--52bca3739416c2caaaf45fe5.md) | 280 | `result-track:52bca3739416c2caaaf45fe5f5c19378702043b437df6090a868565305e12e0e` |
| 38 | `lemma` | [not_continuousAt_deriv_qaryEntropy_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variant1b3bec988d675f86b1da9d9a5bcb5959accb8c6142b4f0d1c1e43df9a7d50d62.lean/declarations/not-continuousat-deriv-qaryentropy-one--c82c1063afd03fb98a005b8f.md) | 296 | `result-track:c82c1063afd03fb98a005b8ff30e9edca6c97f37159580bb1df31b1468f274c5` |
| 39 | `lemma` | [not_continuousAt_deriv_qaryEntropy_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variant1b3bec988d675f86b1da9d9a5bcb5959accb8c6142b4f0d1c1e43df9a7d50d62.lean/declarations/not-continuousat-deriv-qaryentropy-zero--0eb0d2492a3faa38b1deaab9.md) | 316 | `result-track:0eb0d2492a3faa38b1deaab91b7d617df2b115e0a87d9e4ea1f2c88b37b5c94f` |
| 40 | `lemma` | [deriv2_qaryEntropy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variant1b3bec988d675f86b1da9d9a5bcb5959accb8c6142b4f0d1c1e43df9a7d50d62.lean/declarations/deriv2-qaryentropy--9b0dcdf9a24641ae0ef35e02.md) | 334 | `result-track:9b0dcdf9a24641ae0ef35e02ad1d84e208431a02ec1e1049643f735c6fbb91ba` |
| 41 | `lemma` | [deriv2_binEntropy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variant1b3bec988d675f86b1da9d9a5bcb5959accb8c6142b4f0d1c1e43df9a7d50d62.lean/declarations/deriv2-binentropy--56ae2005dcc8cfb9f3c39e46.md) | 366 | `result-track:56ae2005dcc8cfb9f3c39e460860823520972ef963862b8c8c9ab66db4241280` |
| 42 | `lemma` | [qaryEntropy_strictMonoOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variant1b3bec988d675f86b1da9d9a5bcb5959accb8c6142b4f0d1c1e43df9a7d50d62.lean/declarations/qaryentropy-strictmonoon--fda67fb678eaa808040b8238.md) | 372 | `result-track:fda67fb678eaa808040b82387c74aae4c57895d731946113b5f83d9bfcfc7d09` |
| 43 | `lemma` | [qaryEntropy_strictAntiOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variant1b3bec988d675f86b1da9d9a5bcb5959accb8c6142b4f0d1c1e43df9a7d50d62.lean/declarations/qaryentropy-strictantion--3585c58c70f2d06f4d838553.md) | 400 | `result-track:3585c58c70f2d06f4d8385534fb0ecf5147dd8fb0ee9a5d5121ab87bc71d93f4` |
| 44 | `lemma` | [binEntropy_strictMonoOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variant1b3bec988d675f86b1da9d9a5bcb5959accb8c6142b4f0d1c1e43df9a7d50d62.lean/declarations/binentropy-strictmonoon--8acc0b6bfc4d912eff8dc071.md) | 432 | `result-track:8acc0b6bfc4d912eff8dc071727f46bda9c4461716222b2708d1a5dc56176ab2` |
| 45 | `lemma` | [binEntropy_strictAntiOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variant1b3bec988d675f86b1da9d9a5bcb5959accb8c6142b4f0d1c1e43df9a7d50d62.lean/declarations/binentropy-strictantion--b40365a275457dade7a9e956.md) | 437 | `result-track:b40365a275457dade7a9e956aa5c8427f9b7c73f90e5c46a084275af13573a47` |
| 46 | `lemma` | [strictConcaveOn_qaryEntropy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variant1b3bec988d675f86b1da9d9a5bcb5959accb8c6142b4f0d1c1e43df9a7d50d62.lean/declarations/strictconcaveon-qaryentropy--0eb9577227b975c6bd99161e.md) | 444 | `result-track:0eb9577227b975c6bd99161e955b77802355cbebd78a63b0bc7db94d1f1b9aa2` |
| 47 | `lemma` | [strictConcave_binEntropy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variant1b3bec988d675f86b1da9d9a5bcb5959accb8c6142b4f0d1c1e43df9a7d50d62.lean/declarations/strictconcave-binentropy--c58ab8e9a9035a1e44d2fbfe.md) | 453 | `result-track:c58ab8e9a9035a1e44d2fbfee51d86f2921faebc47902a285e15830e18d4d774` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
