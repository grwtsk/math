# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.BinaryEntropy.Variantedbd99b656f57fa5d861612695e2e91db4e81319b1f775670baffa7f351a6d57

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0caac3f1d0d7d540bed1425284e14dde2b19dedc",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantedbd99b656f57fa5d861612695e2e91db4e81319b1f775670baffa7f351a6d57.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantedbd99b656f57fa5d861612695e2e91db4e81319b1f775670baffa7f351a6d57.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantedbd99b656f57fa5d861612695e2e91db4e81319b1f775670baffa7f351a6d57.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0caac3f1d0d7d540bed1425284e14dde2b19dedc`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantedbd99b656f57fa5d861612695e2e91db4e81319b1f775670baffa7f351a6d57.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantedbd99b656f57fa5d861612695e2e91db4e81319b1f775670baffa7f351a6d57.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Log.NegMulLog` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.SpecificFunctions.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [binEntropy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantedbd99b656f57fa5d861612695e2e91db4e81319b1f775670baffa7f351a6d57.lean/declarations/binentropy--f3a52fba02695e365d33ba84.md) | 59 | `declaration-track:f3a52fba02695e365d33ba84e3e4f723060cf59a6ab3c1efadd28a5fe25076eb` |
| 2 | `lemma` | [binEntropy_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantedbd99b656f57fa5d861612695e2e91db4e81319b1f775670baffa7f351a6d57.lean/declarations/binentropy-zero--ed49b2dc4bb7db4e8e4e1d68.md) | 61 | `result-track:ed49b2dc4bb7db4e8e4e1d6888a10497b1573625bba5fa022781f5643083a410` |
| 3 | `lemma` | [binEntropy_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantedbd99b656f57fa5d861612695e2e91db4e81319b1f775670baffa7f351a6d57.lean/declarations/binentropy-one--d5ee776c4296b9d1f9771497.md) | 62 | `result-track:d5ee776c4296b9d1f9771497c6db1ba90f29073dc1c3e5d3f8a785ff812923e6` |
| 4 | `lemma` | [binEntropy_two_inv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantedbd99b656f57fa5d861612695e2e91db4e81319b1f775670baffa7f351a6d57.lean/declarations/binentropy-two-inv--b633fa115d1c5391abbefed0.md) | 63 | `result-track:b633fa115d1c5391abbefed0f99270fa35df4912a854974b46f38be7fbcf133c` |
| 5 | `lemma` | [binEntropy_eq_negMulLog_add_negMulLog_one_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantedbd99b656f57fa5d861612695e2e91db4e81319b1f775670baffa7f351a6d57.lean/declarations/binentropy-eq-negmullog-add-negmullog-one-sub--8907216f134c9402a3d8bf4e.md) | 65 | `result-track:8907216f134c9402a3d8bf4e9fd796c873994de9811906b144b60daea9a87e1d` |
| 6 | `lemma` | [binEntropy_eq_negMulLog_add_negMulLog_one_sub'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantedbd99b656f57fa5d861612695e2e91db4e81319b1f775670baffa7f351a6d57.lean/declarations/binentropy-eq-negmullog-add-negmullog-one-sub--da6e7417d57ad728a971815a.md) | 68 | `result-track:da6e7417d57ad728a971815a9818e71ea5c046ee86bf238aa6fbd8a492807134` |
| 7 | `lemma` | [binEntropy_one_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantedbd99b656f57fa5d861612695e2e91db4e81319b1f775670baffa7f351a6d57.lean/declarations/binentropy-one-sub--8d20a61c78092ef3fafc03a3.md) | 73 | `result-track:8d20a61c78092ef3fafc03a36a5f639174b54a66a13bdc43814b80286cbe6339` |
| 8 | `lemma` | [binEntropy_two_inv_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantedbd99b656f57fa5d861612695e2e91db4e81319b1f775670baffa7f351a6d57.lean/declarations/binentropy-two-inv-add--6f418b2773fbb91d2d9b9fcb.md) | 77 | `result-track:6f418b2773fbb91d2d9b9fcb1d8568a4f1d7db03b8c56633e53dd92e313c6f9d` |
| 9 | `lemma` | [binEntropy_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantedbd99b656f57fa5d861612695e2e91db4e81319b1f775670baffa7f351a6d57.lean/declarations/binentropy-pos--58800888d72d6e66dcbc2482.md) | 80 | `result-track:58800888d72d6e66dcbc2482f368e576c8fd568e4c2d370635da5d734abacad6` |
| 10 | `lemma` | [binEntropy_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantedbd99b656f57fa5d861612695e2e91db4e81319b1f775670baffa7f351a6d57.lean/declarations/binentropy-nonneg--618d37b42de2ce0a1af409ae.md) | 87 | `result-track:618d37b42de2ce0a1af409ae65cbe6196423d8abc19d843d54a2124d37f87f90` |
| 11 | `lemma` | [binEntropy_neg_of_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantedbd99b656f57fa5d861612695e2e91db4e81319b1f775670baffa7f351a6d57.lean/declarations/binentropy-neg-of-neg--577a3e3cd1d062d23b718212.md) | 95 | `result-track:577a3e3cd1d062d23b718212dc55a13d791888c34b7013f65a87fc7a0976ca5a` |
| 12 | `lemma` | [binEntropy_nonpos_of_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantedbd99b656f57fa5d861612695e2e91db4e81319b1f775670baffa7f351a6d57.lean/declarations/binentropy-nonpos-of-nonpos--1f4d53938e815fc2d8905c43.md) | 110 | `result-track:1f4d53938e815fc2d8905c439a94b36aa0320752729ed14b94dcf18dbbe99450` |
| 13 | `lemma` | [binEntropy_neg_of_one_lt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantedbd99b656f57fa5d861612695e2e91db4e81319b1f775670baffa7f351a6d57.lean/declarations/binentropy-neg-of-one-lt--b8847d34f7100fe9192671d8.md) | 116 | `result-track:b8847d34f7100fe9192671d86dd25f6ab332c974c16751af500b89f88589e39b` |
| 14 | `lemma` | [binEntropy_nonpos_of_one_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantedbd99b656f57fa5d861612695e2e91db4e81319b1f775670baffa7f351a6d57.lean/declarations/binentropy-nonpos-of-one-le--e65bff977c4800a61859f6d1.md) | 120 | `result-track:e65bff977c4800a61859f6d144ffb5cdf8dc81013f21eb5f8bdeb3458c17f67b` |
| 15 | `lemma` | [binEntropy_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantedbd99b656f57fa5d861612695e2e91db4e81319b1f775670baffa7f351a6d57.lean/declarations/binentropy-eq-zero--647991fa10f28db893162f54.md) | 123 | `result-track:647991fa10f28db893162f543db07439430e485c582e33001367b75e947fe391` |
| 16 | `lemma` | [binEntropy_lt_log_two](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantedbd99b656f57fa5d861612695e2e91db4e81319b1f775670baffa7f351a6d57.lean/declarations/binentropy-lt-log-two--2ee55dd14251f03f336f0661.md) | 133 | `result-track:2ee55dd14251f03f336f06618926f957e08e59fea53042eacb5f8a2cba47f485` |
| 17 | `lemma` | [binEntropy_le_log_two](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantedbd99b656f57fa5d861612695e2e91db4e81319b1f775670baffa7f351a6d57.lean/declarations/binentropy-le-log-two--7859338839618d735b8dcb7d.md) | 151 | `result-track:7859338839618d735b8dcb7d769cdddb6b7ea9342d4c582a492b56893b245c40` |
| 18 | `lemma` | [binEntropy_eq_log_two](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantedbd99b656f57fa5d861612695e2e91db4e81319b1f775670baffa7f351a6d57.lean/declarations/binentropy-eq-log-two--657d2e2812c15107a5fa09a3.md) | 156 | `result-track:657d2e2812c15107a5fa09a36677a84c8a0908eda65b3be96c5ad6eca8e7c948` |
| 19 | `lemma` | [binEntropy_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantedbd99b656f57fa5d861612695e2e91db4e81319b1f775670baffa7f351a6d57.lean/declarations/binentropy-continuous--9cb21d8353a53e0b42568df0.md) | 161 | `result-track:9cb21d8353a53e0b42568df09b839296d1c4d2b49066b327c3243ead13d23839` |
| 20 | `lemma` | [differentiableAt_binEntropy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantedbd99b656f57fa5d861612695e2e91db4e81319b1f775670baffa7f351a6d57.lean/declarations/differentiableat-binentropy--2f8e4cb0bb44b6ffabd1aab5.md) | 164 | `result-track:2f8e4cb0bb44b6ffabd1aab55232d2462595d471eb7e71577fced8c59a487a70` |
| 21 | `lemma` | [differentiableAt_binEntropy_iff_ne_zero_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantedbd99b656f57fa5d861612695e2e91db4e81319b1f775670baffa7f351a6d57.lean/declarations/differentiableat-binentropy-iff-ne-zero-one--4ea2479a2b67b39778c51528.md) | 171 | `result-track:4ea2479a2b67b39778c515286f961c6bc2733c958dd9eed313eea6ab9e1de3b7` |
| 22 | `lemma` | [deriv_binEntropy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantedbd99b656f57fa5d861612695e2e91db4e81319b1f775670baffa7f351a6d57.lean/declarations/deriv-binentropy--1c5c180ee85beac7b6252738.md) | 185 | `result-track:1c5c180ee85beac7b6252738b84a38a71ef74d972984c11b7a7f9ae85a4e7f4e` |
| 23 | `def` | [qaryEntropy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantedbd99b656f57fa5d861612695e2e91db4e81319b1f775670baffa7f351a6d57.lean/declarations/qaryentropy--051e2e4e132cc2e192288927.md) | 208 | `declaration-track:051e2e4e132cc2e192288927ea0a1e271e0eba9d4556f12ff3e1002716055e5c` |
| 24 | `lemma` | [qaryEntropy_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantedbd99b656f57fa5d861612695e2e91db4e81319b1f775670baffa7f351a6d57.lean/declarations/qaryentropy-zero--f55cca5e1a9673fe8953f825.md) | 210 | `result-track:f55cca5e1a9673fe8953f8257dd7d33caafcbf67554880df45611da177fd35d7` |
| 25 | `lemma` | [qaryEntropy_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantedbd99b656f57fa5d861612695e2e91db4e81319b1f775670baffa7f351a6d57.lean/declarations/qaryentropy-one--1494cc05217e76ea2f33db5f.md) | 211 | `result-track:1494cc05217e76ea2f33db5f09ac5ce32af8506c0aea0d8f8ae0cb07abbc1566` |
| 26 | `lemma` | [qaryEntropy_two](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantedbd99b656f57fa5d861612695e2e91db4e81319b1f775670baffa7f351a6d57.lean/declarations/qaryentropy-two--bce837dbe31cf29f2d97e429.md) | 212 | `result-track:bce837dbe31cf29f2d97e429ab2a7f4127017b0dfda43fbbdf2164d640aee312` |
| 27 | `lemma` | [qaryEntropy_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantedbd99b656f57fa5d861612695e2e91db4e81319b1f775670baffa7f351a6d57.lean/declarations/qaryentropy-pos--e6dab1b6e8d7e638a3d9108c.md) | 214 | `result-track:e6dab1b6e8d7e638a3d9108c0365909eb3a9ec32954a1cb953c1b23d394b5cb8` |
| 28 | `lemma` | [qaryEntropy_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantedbd99b656f57fa5d861612695e2e91db4e81319b1f775670baffa7f351a6d57.lean/declarations/qaryentropy-nonneg--4d7ad656a0c8e48e0e98c209.md) | 219 | `result-track:4d7ad656a0c8e48e0e98c209c40bd7e8857c2816e90415fead9687800eb06d51` |
| 29 | `lemma` | [qaryEntropy_neg_of_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantedbd99b656f57fa5d861612695e2e91db4e81319b1f775670baffa7f351a6d57.lean/declarations/qaryentropy-neg-of-neg--475f07d7225de22de2fd289b.md) | 227 | `result-track:475f07d7225de22de2fd289b9dbeafe11cf95fb97eb4b0234690f12a51d7b17c` |
| 30 | `lemma` | [qaryEntropy_nonpos_of_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantedbd99b656f57fa5d861612695e2e91db4e81319b1f775670baffa7f351a6d57.lean/declarations/qaryentropy-nonpos-of-nonpos--1f8746d9b822496127a19222.md) | 232 | `result-track:1f8746d9b822496127a192220fd3c5c794ef93c954f87daa9286b1db17e0d4e5` |
| 31 | `lemma` | [qaryEntropy_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantedbd99b656f57fa5d861612695e2e91db4e81319b1f775670baffa7f351a6d57.lean/declarations/qaryentropy-continuous--f3d3c899796e18d4797796a3.md) | 238 | `result-track:f3d3c899796e18d4797796a3656a55bc92bbbe48c460d432a35f799218a270c4` |
| 32 | `lemma` | [differentiableAt_qaryEntropy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantedbd99b656f57fa5d861612695e2e91db4e81319b1f775670baffa7f351a6d57.lean/declarations/differentiableat-qaryentropy--f319186557a3e934723ba260.md) | 241 | `result-track:f319186557a3e934723ba2607cc8a11939d3d11e8c8119d0c00541fbfd7c571c` |
| 33 | `lemma` | [deriv_qaryEntropy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantedbd99b656f57fa5d861612695e2e91db4e81319b1f775670baffa7f351a6d57.lean/declarations/deriv-qaryentropy--e4567c5d1e54c041728b0ad8.md) | 244 | `result-track:e4567c5d1e54c041728b0ad857e9243cb318b915ca02d3f0af9434eabf9cb6c3` |
| 34 | `lemma` | [hasDerivAt_binEntropy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantedbd99b656f57fa5d861612695e2e91db4e81319b1f775670baffa7f351a6d57.lean/declarations/hasderivat-binentropy--1880de9ae8aec77779328932.md) | 253 | `result-track:1880de9ae8aec77779328932a72b9c0fefb8e5796559197351d054c9534e813d` |
| 35 | `lemma` | [hasDerivAt_qaryEntropy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantedbd99b656f57fa5d861612695e2e91db4e81319b1f775670baffa7f351a6d57.lean/declarations/hasderivat-qaryentropy--371fe952cd6c55de44c4fb98.md) | 257 | `result-track:371fe952cd6c55de44c4fb98ef6e4411140414eb549c12c12c89e92dba757cf7` |
| 36 | `lemma` | [tendsto_log_one_sub_sub_log_nhdsGT_atAtop](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantedbd99b656f57fa5d861612695e2e91db4e81319b1f775670baffa7f351a6d57.lean/declarations/tendsto-log-one-sub-sub-log-nhdsgt-atatop--f1f1394d65201cf97315fa84.md) | 263 | `result-track:f1f1394d65201cf97315fa84fecea1c49ee42e03de598ee17ad7bce3a04de50e` |
| 37 | `lemma` | [tendsto_log_one_sub_sub_log_nhdsLT_one_atBot](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantedbd99b656f57fa5d861612695e2e91db4e81319b1f775670baffa7f351a6d57.lean/declarations/tendsto-log-one-sub-sub-log-nhdslt-one-atbot--41e85e64439b331cba030551.md) | 272 | `result-track:41e85e64439b331cba030551e2e5cf2614ffe30d16563e6e8efa731e5a9943d3` |
| 38 | `lemma` | [not_continuousAt_deriv_qaryEntropy_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantedbd99b656f57fa5d861612695e2e91db4e81319b1f775670baffa7f351a6d57.lean/declarations/not-continuousat-deriv-qaryentropy-one--04988178807cdb49c21fb57d.md) | 288 | `result-track:04988178807cdb49c21fb57dd470b70dbca89b92b761d05c544b8cd86bf0d0b5` |
| 39 | `lemma` | [not_continuousAt_deriv_qaryEntropy_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantedbd99b656f57fa5d861612695e2e91db4e81319b1f775670baffa7f351a6d57.lean/declarations/not-continuousat-deriv-qaryentropy-zero--9968e58be5fb1eafb60bd196.md) | 308 | `result-track:9968e58be5fb1eafb60bd19623264fd2d95ef8c93338ab6b2316da266a3b5ad4` |
| 40 | `lemma` | [deriv2_qaryEntropy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantedbd99b656f57fa5d861612695e2e91db4e81319b1f775670baffa7f351a6d57.lean/declarations/deriv2-qaryentropy--bad4f20100f1491bd6a4d0cc.md) | 326 | `result-track:bad4f20100f1491bd6a4d0cca1370b296af968112bd897c2da70f6925778b25c` |
| 41 | `lemma` | [deriv2_binEntropy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantedbd99b656f57fa5d861612695e2e91db4e81319b1f775670baffa7f351a6d57.lean/declarations/deriv2-binentropy--f758d9e28fc4052dded77b8b.md) | 358 | `result-track:f758d9e28fc4052dded77b8b406c3ab5779caf17765d7583a7a429459fa0d6a4` |
| 42 | `lemma` | [qaryEntropy_strictMonoOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantedbd99b656f57fa5d861612695e2e91db4e81319b1f775670baffa7f351a6d57.lean/declarations/qaryentropy-strictmonoon--10f6bab192de40f260eebdf7.md) | 364 | `result-track:10f6bab192de40f260eebdf7277b168ba88b02fb6b7c242afa52758491f16eff` |
| 43 | `lemma` | [qaryEntropy_strictAntiOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantedbd99b656f57fa5d861612695e2e91db4e81319b1f775670baffa7f351a6d57.lean/declarations/qaryentropy-strictantion--2d7599d3d4112e95fe302210.md) | 392 | `result-track:2d7599d3d4112e95fe302210fb3738391e9880a84f2b09d0980c651af6eb4852` |
| 44 | `lemma` | [binEntropy_strictMonoOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantedbd99b656f57fa5d861612695e2e91db4e81319b1f775670baffa7f351a6d57.lean/declarations/binentropy-strictmonoon--e0a3ddcb84c65a4381256247.md) | 424 | `result-track:e0a3ddcb84c65a43812562479ee5bd3112d63a4364af5dc1169f6dd884671870` |
| 45 | `lemma` | [binEntropy_strictAntiOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantedbd99b656f57fa5d861612695e2e91db4e81319b1f775670baffa7f351a6d57.lean/declarations/binentropy-strictantion--c7077e17752b3151f4e2cc5f.md) | 429 | `result-track:c7077e17752b3151f4e2cc5f27a27b5bee97f6bf43d7acb5ec2efe02fd1bd525` |
| 46 | `lemma` | [strictConcaveOn_qaryEntropy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantedbd99b656f57fa5d861612695e2e91db4e81319b1f775670baffa7f351a6d57.lean/declarations/strictconcaveon-qaryentropy--268b2907d69b0d24d8955c49.md) | 436 | `result-track:268b2907d69b0d24d8955c490a40ebe1b6f36c42c9e43132e2268e5558750e40` |
| 47 | `lemma` | [strictConcave_binEntropy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantedbd99b656f57fa5d861612695e2e91db4e81319b1f775670baffa7f351a6d57.lean/declarations/strictconcave-binentropy--7cce19278d8c38dc7f0ed65f.md) | 445 | `result-track:7cce19278d8c38dc7f0ed65f5ebc52bbb9a55b3aa5de68fb3e49e7bdea95f2c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
