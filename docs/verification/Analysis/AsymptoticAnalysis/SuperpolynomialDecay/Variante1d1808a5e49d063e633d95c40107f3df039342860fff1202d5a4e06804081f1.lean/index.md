# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.SuperpolynomialDecay.Variante1d1808a5e49d063e633d95c40107f3df039342860fff1202d5a4e06804081f1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cf42927936151d2269bf8181b55c8d38999e4e15",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variante1d1808a5e49d063e633d95c40107f3df039342860fff1202d5a4e06804081f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variante1d1808a5e49d063e633d95c40107f3df039342860fff1202d5a4e06804081f1.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variante1d1808a5e49d063e633d95c40107f3df039342860fff1202d5a4e06804081f1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cf42927936151d2269bf8181b55c8d38999e4e15`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variante1d1808a5e49d063e633d95c40107f3df039342860fff1202d5a4e06804081f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variante1d1808a5e49d063e633d95c40107f3df039342860fff1202d5a4e06804081f1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Eval.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Asymptotics.Lemmas` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SuperpolynomialDecay](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variante1d1808a5e49d063e633d95c40107f3df039342860fff1202d5a4e06804081f1.lean/declarations/superpolynomialdecay--2263ad741b7f785471c2df17.md) | 54 | `declaration-track:2263ad741b7f785471c2df172b564ee06e40ffdb3806c23ce82e28a5b33f1da6` |
| 2 | `theorem` | [SuperpolynomialDecay.congr'](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variante1d1808a5e49d063e633d95c40107f3df039342860fff1202d5a4e06804081f1.lean/declarations/superpolynomialdecay-congr--4040ac10a1f7b80ed67839fb.md) | 64 | `result-track:4040ac10a1f7b80ed67839fb744e5502478fa7c047acdbb75aace81d5d221f4c` |
| 3 | `theorem` | [SuperpolynomialDecay.congr](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variante1d1808a5e49d063e633d95c40107f3df039342860fff1202d5a4e06804081f1.lean/declarations/superpolynomialdecay-congr--ec384145c9ca48462281f5f2.md) | 68 | `result-track:ec384145c9ca48462281f5f2281c267fcc4bb82a3f6986ae52c778fa1b8e3673` |
| 4 | `theorem` | [superpolynomialDecay_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variante1d1808a5e49d063e633d95c40107f3df039342860fff1202d5a4e06804081f1.lean/declarations/superpolynomialdecay-zero--01e39b47923585b6527e34a6.md) | 73 | `result-track:01e39b47923585b6527e34a69c3a60f5040ab7629ed40c7f2c90cdd31bcc3309` |
| 5 | `theorem` | [SuperpolynomialDecay.add](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variante1d1808a5e49d063e633d95c40107f3df039342860fff1202d5a4e06804081f1.lean/declarations/superpolynomialdecay-add--f5c0f1ed1577f0cb6d0c3f48.md) | 76 | `result-track:f5c0f1ed1577f0cb6d0c3f48b93c9f6b0bee62ec4917c3cd03a83736c8f591b7` |
| 6 | `theorem` | [SuperpolynomialDecay.mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variante1d1808a5e49d063e633d95c40107f3df039342860fff1202d5a4e06804081f1.lean/declarations/superpolynomialdecay-mul--be09ba2e3a2ebb83caf41ed2.md) | 80 | `result-track:be09ba2e3a2ebb83caf41ed2e14ee83cea7eeb0be6b152953adc3300c0b5f052` |
| 7 | `theorem` | [SuperpolynomialDecay.mul_const](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variante1d1808a5e49d063e633d95c40107f3df039342860fff1202d5a4e06804081f1.lean/declarations/superpolynomialdecay-mul-const--22dffc1d64f84b1aef7b6607.md) | 84 | `result-track:22dffc1d64f84b1aef7b6607d778af26992fae036b2e29ef26ad59c25b080769` |
| 8 | `theorem` | [SuperpolynomialDecay.const_mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variante1d1808a5e49d063e633d95c40107f3df039342860fff1202d5a4e06804081f1.lean/declarations/superpolynomialdecay-const-mul--8a62a6c89df06a52ddeab45f.md) | 88 | `result-track:8a62a6c89df06a52ddeab45f705485007ff3bdc01c4171db618d2d09417a9829` |
| 9 | `theorem` | [SuperpolynomialDecay.param_mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variante1d1808a5e49d063e633d95c40107f3df039342860fff1202d5a4e06804081f1.lean/declarations/superpolynomialdecay-param-mul--04638718a14756c00fde3865.md) | 92 | `result-track:04638718a14756c00fde3865e59312e1b437aa5db1275d1b90195dacf6433648` |
| 10 | `theorem` | [SuperpolynomialDecay.mul_param](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variante1d1808a5e49d063e633d95c40107f3df039342860fff1202d5a4e06804081f1.lean/declarations/superpolynomialdecay-mul-param--cb1299f56faf1c0ce36c420c.md) | 98 | `result-track:cb1299f56faf1c0ce36c420c16900ad76e86d5d6f643f429824067c5e7a866d9` |
| 11 | `theorem` | [SuperpolynomialDecay.param_pow_mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variante1d1808a5e49d063e633d95c40107f3df039342860fff1202d5a4e06804081f1.lean/declarations/superpolynomialdecay-param-pow-mul--4deb9f84711d9fe9497229b9.md) | 102 | `result-track:4deb9f84711d9fe9497229b9658ed47ca87d13c805f7dec2b8fe4a1bb9d9842c` |
| 12 | `theorem` | [SuperpolynomialDecay.mul_param_pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variante1d1808a5e49d063e633d95c40107f3df039342860fff1202d5a4e06804081f1.lean/declarations/superpolynomialdecay-mul-param-pow--1ffd63d7acdf7d2b9c8836c7.md) | 108 | `result-track:1ffd63d7acdf7d2b9c8836c722647de1f85cc595ac07639a3995d30e75f0fc9f` |
| 13 | `theorem` | [SuperpolynomialDecay.polynomial_mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variante1d1808a5e49d063e633d95c40107f3df039342860fff1202d5a4e06804081f1.lean/declarations/superpolynomialdecay-polynomial-mul--d2eff43adb24b040d9e86a18.md) | 112 | `result-track:d2eff43adb24b040d9e86a18d74d554adc0e3b30e6d03a79fe7814bc5510b311` |
| 14 | `theorem` | [SuperpolynomialDecay.mul_polynomial](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variante1d1808a5e49d063e633d95c40107f3df039342860fff1202d5a4e06804081f1.lean/declarations/superpolynomialdecay-mul-polynomial--e710edbb4e277d409f835f65.md) | 118 | `result-track:e710edbb4e277d409f835f6589a8d5392f5b9c6d3893cfce5339932af46d7b71` |
| 15 | `theorem` | [SuperpolynomialDecay.trans_eventuallyLE](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variante1d1808a5e49d063e633d95c40107f3df039342860fff1202d5a4e06804081f1.lean/declarations/superpolynomialdecay-trans-eventuallyle--b4580cbf2513d73370ccd7d7.md) | 129 | `result-track:b4580cbf2513d73370ccd7d7a252bb001feb82dc3142d3f7fff3d2700efa47a5` |
| 16 | `theorem` | [superpolynomialDecay_iff_abs_tendsto_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variante1d1808a5e49d063e633d95c40107f3df039342860fff1202d5a4e06804081f1.lean/declarations/superpolynomialdecay-iff-abs-tendsto-zero--2c87f253a39b139caf98f720.md) | 143 | `result-track:2c87f253a39b139caf98f7209b12be2e5af8de5d6e7885bfc2f5fec2609cd630` |
| 17 | `theorem` | [superpolynomialDecay_iff_superpolynomialDecay_abs](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variante1d1808a5e49d063e633d95c40107f3df039342860fff1202d5a4e06804081f1.lean/declarations/superpolynomialdecay-iff-superpolynomialdecay-abs--4e201f9ee15b9827cd85a9b8.md) | 148 | `result-track:4e201f9ee15b9827cd85a9b8761e6bef918fbe74730a05e27cba5e97f6e9ff30` |
| 18 | `theorem` | [SuperpolynomialDecay.trans_eventually_abs_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variante1d1808a5e49d063e633d95c40107f3df039342860fff1202d5a4e06804081f1.lean/declarations/superpolynomialdecay-trans-eventually-abs-le--e88fdbe01212f004604bc7ab.md) | 155 | `result-track:e88fdbe01212f004604bc7ab1dfdf7bd6c59b3de7ae1b7e0f4362e21b0fe43d6` |
| 19 | `theorem` | [SuperpolynomialDecay.trans_abs_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variante1d1808a5e49d063e633d95c40107f3df039342860fff1202d5a4e06804081f1.lean/declarations/superpolynomialdecay-trans-abs-le--2359aa11e780e3a5b80adfc1.md) | 166 | `result-track:2359aa11e780e3a5b80adfc174a58e8dd1fee51fdbddc0c4d2a216aab3ec9e58` |
| 20 | `theorem` | [superpolynomialDecay_mul_const_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variante1d1808a5e49d063e633d95c40107f3df039342860fff1202d5a4e06804081f1.lean/declarations/superpolynomialdecay-mul-const-iff--dd19f16091e82edef12fe4bb.md) | 176 | `result-track:dd19f16091e82edef12fe4bbf7277c11bfac4977211647ca21785a2d96ef6682` |
| 21 | `theorem` | [superpolynomialDecay_const_mul_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variante1d1808a5e49d063e633d95c40107f3df039342860fff1202d5a4e06804081f1.lean/declarations/superpolynomialdecay-const-mul-iff--48ab94a2d780e39299e34fcd.md) | 181 | `result-track:48ab94a2d780e39299e34fcde5d724ac80df8acd282bb1311030fcb2065c96b7` |
| 22 | `theorem` | [superpolynomialDecay_iff_abs_isBoundedUnder](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variante1d1808a5e49d063e633d95c40107f3df039342860fff1202d5a4e06804081f1.lean/declarations/superpolynomialdecay-iff-abs-isboundedunder--5e988984793141f46e224907.md) | 195 | `result-track:5e988984793141f46e224907379b27d21ee11c58615d0187bbade78b57cadf51` |
| 23 | `theorem` | [superpolynomialDecay_iff_zpow_tendsto_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variante1d1808a5e49d063e633d95c40107f3df039342860fff1202d5a4e06804081f1.lean/declarations/superpolynomialdecay-iff-zpow-tendsto-zero--96967c36c5f6c0dc3f2c77d5.md) | 213 | `result-track:96967c36c5f6c0dc3f2c77d5e261c2df2a6f891b816bb07cc8ed17c5e2428aeb` |
| 24 | `theorem` | [SuperpolynomialDecay.param_zpow_mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variante1d1808a5e49d063e633d95c40107f3df039342860fff1202d5a4e06804081f1.lean/declarations/superpolynomialdecay-param-zpow-mul--e70d5ba7ac0612a3674a154f.md) | 227 | `result-track:e70d5ba7ac0612a3674a154f028ac8bdd330c3297096799f8f20d4c640eacf64` |
| 25 | `theorem` | [SuperpolynomialDecay.mul_param_zpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variante1d1808a5e49d063e633d95c40107f3df039342860fff1202d5a4e06804081f1.lean/declarations/superpolynomialdecay-mul-param-zpow--037b1f26022361fd542348f7.md) | 234 | `result-track:037b1f26022361fd542348f7a2d512c12d0baca3e507bc8f0523a1128a662674` |
| 26 | `theorem` | [SuperpolynomialDecay.inv_param_mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variante1d1808a5e49d063e633d95c40107f3df039342860fff1202d5a4e06804081f1.lean/declarations/superpolynomialdecay-inv-param-mul--d13cac9ec76f33f606ef72b5.md) | 238 | `result-track:d13cac9ec76f33f606ef72b55f2ca8b7b85c98bc8e53527df388f4a27a53607b` |
| 27 | `theorem` | [SuperpolynomialDecay.param_inv_mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variante1d1808a5e49d063e633d95c40107f3df039342860fff1202d5a4e06804081f1.lean/declarations/superpolynomialdecay-param-inv-mul--2f0068edc88ba60c78d82a6b.md) | 242 | `result-track:2f0068edc88ba60c78d82a6b41c0a6156a54d7814f3c32f41e2855832d0eee05` |
| 28 | `theorem` | [superpolynomialDecay_param_mul_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variante1d1808a5e49d063e633d95c40107f3df039342860fff1202d5a4e06804081f1.lean/declarations/superpolynomialdecay-param-mul-iff--c749f6b93cbaf95ae3a91412.md) | 248 | `result-track:c749f6b93cbaf95ae3a91412816a9ebe2acd205175df5ecb86b65a56a4f92301` |
| 29 | `theorem` | [superpolynomialDecay_mul_param_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variante1d1808a5e49d063e633d95c40107f3df039342860fff1202d5a4e06804081f1.lean/declarations/superpolynomialdecay-mul-param-iff--dd74dc925e0f57caba0af3da.md) | 255 | `result-track:dd74dc925e0f57caba0af3da3f6cf05dbc3b02757bea0a609ce59fa475df1849` |
| 30 | `theorem` | [superpolynomialDecay_param_pow_mul_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variante1d1808a5e49d063e633d95c40107f3df039342860fff1202d5a4e06804081f1.lean/declarations/superpolynomialdecay-param-pow-mul-iff--19e3ca20d245b1ee3ac4ccdd.md) | 259 | `result-track:19e3ca20d245b1ee3ac4ccdd3f9de68cdaa567a4130c87a54a98f2604c16561f` |
| 31 | `theorem` | [superpolynomialDecay_mul_param_pow_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variante1d1808a5e49d063e633d95c40107f3df039342860fff1202d5a4e06804081f1.lean/declarations/superpolynomialdecay-mul-param-pow-iff--c6cdbac52eed4f6c68598549.md) | 267 | `result-track:c6cdbac52eed4f6c6859854982988357dd01c03a7d44d13646bda2654877f2e5` |
| 32 | `theorem` | [superpolynomialDecay_iff_norm_tendsto_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variante1d1808a5e49d063e633d95c40107f3df039342860fff1202d5a4e06804081f1.lean/declarations/superpolynomialdecay-iff-norm-tendsto-zero--49856fbd5b543a13befbb1a0.md) | 280 | `result-track:49856fbd5b543a13befbb1a0dd01ea0b70dbd273248dfba952920c15315f197b` |
| 33 | `theorem` | [superpolynomialDecay_iff_superpolynomialDecay_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variante1d1808a5e49d063e633d95c40107f3df039342860fff1202d5a4e06804081f1.lean/declarations/superpolynomialdecay-iff-superpolynomialdecay-norm--fc3ae220e80cebf7d58ab22b.md) | 285 | `result-track:fc3ae220e80cebf7d58ab22b8ff4719c4d255091cf6643b679186f44d0bf47cc` |
| 34 | `theorem` | [superpolynomialDecay_iff_isBigO](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variante1d1808a5e49d063e633d95c40107f3df039342860fff1202d5a4e06804081f1.lean/declarations/superpolynomialdecay-iff-isbigo--0cecabaad943dbf7a492e790.md) | 292 | `result-track:0cecabaad943dbf7a492e7900a0bfa2ea9180eed88112c3ab20662612e37ca8b` |
| 35 | `theorem` | [superpolynomialDecay_iff_isLittleO](../../../../../mathematics/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variante1d1808a5e49d063e633d95c40107f3df039342860fff1202d5a4e06804081f1.lean/declarations/superpolynomialdecay-iff-islittleo--432da9d05959eea1c7e6d332.md) | 307 | `result-track:432da9d05959eea1c7e6d332abd9dc94741f253934e4efe35fd9c99b0708ad80` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
