# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.D1.Variant8e869e94bed5ea85e00a59caf0ff76d19dc9c42cd19eba0bbf35e87ea709b3a2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "036f84b7cb8355e2f941db818033eff3ba55d236",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/D1/Variant8e869e94bed5ea85e00a59caf0ff76d19dc9c42cd19eba0bbf35e87ea709b3a2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant8e869e94bed5ea85e00a59caf0ff76d19dc9c42cd19eba0bbf35e87ea709b3a2.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant8e869e94bed5ea85e00a59caf0ff76d19dc9c42cd19eba0bbf35e87ea709b3a2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `036f84b7cb8355e2f941db818033eff3ba55d236`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/D1/Variant8e869e94bed5ea85e00a59caf0ff76d19dc9c42cd19eba0bbf35e87ea709b3a2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/D1/Variant8e869e94bed5ea85e00a59caf0ff76d19dc9c42cd19eba0bbf35e87ea709b3a2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Defs` — import line 28; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Normed` — import line 29; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.FunctionSeries` — import line 30; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 31; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [D1coeff_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant8e869e94bed5ea85e00a59caf0ff76d19dc9c42cd19eba0bbf35e87ea709b3a2.lean/declarations/d1coeff-pos--191a2648be2974d8491ac65f.md) | 46 | `result-track:191a2648be2974d8491ac65f2b8ebce44debea2b76e96584a7a28be58347e65f` |
| 2 | `theorem` | [D1coeff_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant8e869e94bed5ea85e00a59caf0ff76d19dc9c42cd19eba0bbf35e87ea709b3a2.lean/declarations/d1coeff-nonneg--2355658ba8ad8172d8afe74b.md) | 49 | `result-track:2355658ba8ad8172d8afe74b1b635bd7b58829c87208a418a9526328e8d6ac66` |
| 3 | `theorem` | [D1coeff_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant8e869e94bed5ea85e00a59caf0ff76d19dc9c42cd19eba0bbf35e87ea709b3a2.lean/declarations/d1coeff-zero--786957bbb4ec8e4806ec6adb.md) | 51 | `result-track:786957bbb4ec8e4806ec6adb71849f19978f2c5be5a84ff8ea4ce8962964054c` |
| 4 | `theorem` | [D1coeff_succ](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant8e869e94bed5ea85e00a59caf0ff76d19dc9c42cd19eba0bbf35e87ea709b3a2.lean/declarations/d1coeff-succ--dd648c49c73b2d98a6dad692.md) | 55 | `result-track:dd648c49c73b2d98a6dad692a7fdb53694e29a6c9f7015ee5476eeb91f1dcc08` |
| 5 | `theorem` | [D1coeff_succ_le_third](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant8e869e94bed5ea85e00a59caf0ff76d19dc9c42cd19eba0bbf35e87ea709b3a2.lean/declarations/d1coeff-succ-le-third--35627b8a721aeca58249afbc.md) | 73 | `result-track:35627b8a721aeca58249afbcbede839abb09576b199d0cd68c2c6c129af26192` |
| 6 | `theorem` | [D1coeff_succ_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant8e869e94bed5ea85e00a59caf0ff76d19dc9c42cd19eba0bbf35e87ea709b3a2.lean/declarations/d1coeff-succ-le--85396c14608e0eb022e25d76.md) | 85 | `result-track:85396c14608e0eb022e25d7648967e98b0c8cec3f93d7c24a561d545f483012a` |
| 7 | `theorem` | [D1coeff_tail_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant8e869e94bed5ea85e00a59caf0ff76d19dc9c42cd19eba0bbf35e87ea709b3a2.lean/declarations/d1coeff-tail-le--b6ac043db1996a4bf5209049.md) | 94 | `result-track:b6ac043db1996a4bf5209049cdd18caeaf94ba3e9316116df2831ffc0644da07` |
| 8 | `theorem` | [D1coeff_nine](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant8e869e94bed5ea85e00a59caf0ff76d19dc9c42cd19eba0bbf35e87ea709b3a2.lean/declarations/d1coeff-nine--58ec9ee01ad10ae3084b5ffc.md) | 106 | `result-track:58ec9ee01ad10ae3084b5ffca6c4054a3636354f63c16e13117462cdf2d59df8` |
| 9 | `theorem` | [D1coeff_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant8e869e94bed5ea85e00a59caf0ff76d19dc9c42cd19eba0bbf35e87ea709b3a2.lean/declarations/d1coeff-le--5ced0432852a147ebf00a7a3.md) | 110 | `result-track:5ced0432852a147ebf00a7a3e12342d64814e2e04d5a01f91687656c482dc767` |
| 10 | `def` | [D1term](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant8e869e94bed5ea85e00a59caf0ff76d19dc9c42cd19eba0bbf35e87ea709b3a2.lean/declarations/d1term--e4fe85d8e71dd8dbbf8365ef.md) | 133 | `declaration-track:e4fe85d8e71dd8dbbf8365efb5266fab0c9a61ae13b1c425cfd24288445b5e63` |
| 11 | `theorem` | [norm_D1term_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant8e869e94bed5ea85e00a59caf0ff76d19dc9c42cd19eba0bbf35e87ea709b3a2.lean/declarations/norm-d1term-le--d284bce2c1e99015450692d9.md) | 135 | `result-track:d284bce2c1e99015450692d9d2911454254197dcc36d3d5919eaa4798b3304c1` |
| 12 | `theorem` | [summable_D1coeff_mul_pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant8e869e94bed5ea85e00a59caf0ff76d19dc9c42cd19eba0bbf35e87ea709b3a2.lean/declarations/summable-d1coeff-mul-pow--e8c142347b625384210a1006.md) | 142 | `result-track:e8c142347b625384210a1006ef313305987c2170a36c893c14c7e06cf573b321` |
| 13 | `theorem` | [summable_D1term](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant8e869e94bed5ea85e00a59caf0ff76d19dc9c42cd19eba0bbf35e87ea709b3a2.lean/declarations/summable-d1term--0fe33bd567c37aaab20bd5df.md) | 162 | `result-track:0fe33bd567c37aaab20bd5dfe39f6819c5425d878c0b4e2ecba5be48e4833d65` |
| 14 | `theorem` | [D1_eq_tsum_D1term](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant8e869e94bed5ea85e00a59caf0ff76d19dc9c42cd19eba0bbf35e87ea709b3a2.lean/declarations/d1-eq-tsum-d1term--1bee582ce4333d05cc712888.md) | 165 | `result-track:1bee582ce4333d05cc7128883c7d051d227315bd08f61fb45ce547c550f31712` |
| 15 | `theorem` | [continuousOn_D1_Icc](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant8e869e94bed5ea85e00a59caf0ff76d19dc9c42cd19eba0bbf35e87ea709b3a2.lean/declarations/continuouson-d1-icc--1a37662ac1078e0d155bf8fa.md) | 168 | `result-track:1a37662ac1078e0d155bf8fa7de29fc700f832e0a26a84c1d97bf8e90ac37e3e` |
| 16 | `theorem` | [continuous_D1](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant8e869e94bed5ea85e00a59caf0ff76d19dc9c42cd19eba0bbf35e87ea709b3a2.lean/declarations/continuous-d1--16deadf1f87b479df5eb2f7d.md) | 179 | `result-track:16deadf1f87b479df5eb2f7d10e61fad7a63031956789eaa0843ed95def18b81` |
| 17 | `theorem` | [continuousOn_D1](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant8e869e94bed5ea85e00a59caf0ff76d19dc9c42cd19eba0bbf35e87ea709b3a2.lean/declarations/continuouson-d1--02dee22cfdcba628bd8bb019.md) | 188 | `result-track:02dee22cfdcba628bd8bb01902231496bf0b3f26bdf5a0a6d3624447afbea414` |
| 18 | `theorem` | [D1trunc_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant8e869e94bed5ea85e00a59caf0ff76d19dc9c42cd19eba0bbf35e87ea709b3a2.lean/declarations/d1trunc-eq--ab9badf8b7cce57c88d9a2b9.md) | 192 | `result-track:ab9badf8b7cce57c88d9a2b98555f5882906c8cfb60e2ecc5d8f6f6c20b8ee7e` |
| 19 | `theorem` | [D1_eq_trunc_add_tail](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant8e869e94bed5ea85e00a59caf0ff76d19dc9c42cd19eba0bbf35e87ea709b3a2.lean/declarations/d1-eq-trunc-add-tail--8d963d8b3e8c1cae20d2f39e.md) | 196 | `result-track:8d963d8b3e8c1cae20d2f39e08a41853368afa1f3d53ac617b0e76cbf3c1feb1` |
| 20 | `theorem` | [D1term_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant8e869e94bed5ea85e00a59caf0ff76d19dc9c42cd19eba0bbf35e87ea709b3a2.lean/declarations/d1term-nonneg--fcee54b047dfe82e8c500a24.md) | 201 | `result-track:fcee54b047dfe82e8c500a24a8e9216c9dde4c5aa863b25fc2d71a31b07a6e57` |
| 21 | `theorem` | [D1tail_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant8e869e94bed5ea85e00a59caf0ff76d19dc9c42cd19eba0bbf35e87ea709b3a2.lean/declarations/d1tail-nonneg--55c92dc8eb36e87974d2f9cc.md) | 204 | `result-track:55c92dc8eb36e87974d2f9cc6180e9fe61cc35b9ff6899d7b7959d43f6f22030` |
| 22 | `theorem` | [D1trunc_le_D1](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant8e869e94bed5ea85e00a59caf0ff76d19dc9c42cd19eba0bbf35e87ea709b3a2.lean/declarations/d1trunc-le-d1--6b0ebe59d79fc7613b67cf69.md) | 208 | `result-track:6b0ebe59d79fc7613b67cf699787b1adfb50098d4de7f3a9be245fdfb46f0619` |
| 23 | `theorem` | [D1trunc_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant8e869e94bed5ea85e00a59caf0ff76d19dc9c42cd19eba0bbf35e87ea709b3a2.lean/declarations/d1trunc-one--f5c46c409fdcabe75fcd5e36.md) | 213 | `result-track:f5c46c409fdcabe75fcd5e363f3743930c649cbd78c8da635c46a734254a1a73` |
| 24 | `theorem` | [D1_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant8e869e94bed5ea85e00a59caf0ff76d19dc9c42cd19eba0bbf35e87ea709b3a2.lean/declarations/d1-nonneg--585576ecd092efb555101f61.md) | 218 | `result-track:585576ecd092efb555101f61ff79c30f9e9d261483dbe465a952120e0da844a3` |
| 25 | `theorem` | [D1_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant8e869e94bed5ea85e00a59caf0ff76d19dc9c42cd19eba0bbf35e87ea709b3a2.lean/declarations/d1-zero--3a7cf15dfa5f7e70b305ba9d.md) | 223 | `result-track:3a7cf15dfa5f7e70b305ba9d7e578404f63978b7224bc5dbb2ef981cb486703c` |
| 26 | `def` | [eps9](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant8e869e94bed5ea85e00a59caf0ff76d19dc9c42cd19eba0bbf35e87ea709b3a2.lean/declarations/eps9--65d936b298852d517ff4112d.md) | 228 | `declaration-track:65d936b298852d517ff4112d263fe60520d27cac7dca87a7bdb302f82fa22f22` |
| 27 | `theorem` | [eps9_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant8e869e94bed5ea85e00a59caf0ff76d19dc9c42cd19eba0bbf35e87ea709b3a2.lean/declarations/eps9-eq--b6efaf816ec509370d08cdeb.md) | 230 | `result-track:b6efaf816ec509370d08cdeb5aeb2417c6cfacb0b3ecf3e8746ebb23f2905391` |
| 28 | `theorem` | [eps9_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant8e869e94bed5ea85e00a59caf0ff76d19dc9c42cd19eba0bbf35e87ea709b3a2.lean/declarations/eps9-pos--329d417d3a267bbb76770f87.md) | 233 | `result-track:329d417d3a267bbb76770f8772928739900899b6797869431d62e5aa7c7a652e` |
| 29 | `theorem` | [eps9_lt](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant8e869e94bed5ea85e00a59caf0ff76d19dc9c42cd19eba0bbf35e87ea709b3a2.lean/declarations/eps9-lt--9bd286e37ea3bdc249d909d3.md) | 236 | `result-track:9bd286e37ea3bdc249d909d39155fe5aacf14516f46590db6e9edbf71682408d` |
| 30 | `theorem` | [D1tail9_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant8e869e94bed5ea85e00a59caf0ff76d19dc9c42cd19eba0bbf35e87ea709b3a2.lean/declarations/d1tail9-le--b57881dbfe2082ee237eca05.md) | 239 | `result-track:b57881dbfe2082ee237eca05a3b94732f0b4f092b5c6f1a2340572eda5d070be` |
| 31 | `theorem` | [D1_le_D1trunc9_add](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant8e869e94bed5ea85e00a59caf0ff76d19dc9c42cd19eba0bbf35e87ea709b3a2.lean/declarations/d1-le-d1trunc9-add--cfb403b10bb768e4015ead24.md) | 257 | `result-track:cfb403b10bb768e4015ead24bb7e20eae0530522d849707580d0e0ad92f9ed40` |
| 32 | `theorem` | [D1_mem_Icc](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant8e869e94bed5ea85e00a59caf0ff76d19dc9c42cd19eba0bbf35e87ea709b3a2.lean/declarations/d1-mem-icc--f482d8ad45ab1ec5af907fb8.md) | 261 | `result-track:f482d8ad45ab1ec5af907fb84ed1a6097af1a2180d6f1538a0358efb1cb67675` |
| 33 | `theorem` | [continuous_D1trunc](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant8e869e94bed5ea85e00a59caf0ff76d19dc9c42cd19eba0bbf35e87ea709b3a2.lean/declarations/continuous-d1trunc--3bb0c9ff06da27796ed6ccc0.md) | 266 | `result-track:3bb0c9ff06da27796ed6ccc02b4ab004d01b17207ffb0b84d36ae8d558d03130` |
| 34 | `theorem` | [summable_D1coeff](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant8e869e94bed5ea85e00a59caf0ff76d19dc9c42cd19eba0bbf35e87ea709b3a2.lean/declarations/summable-d1coeff--2d2f3f7bae9eac2945ffcd52.md) | 271 | `result-track:2d2f3f7bae9eac2945ffcd52cca552151f8f131e0e478f026401852f1cbf8fcf` |
| 35 | `theorem` | [tendsto_D1coeff_tail](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant8e869e94bed5ea85e00a59caf0ff76d19dc9c42cd19eba0bbf35e87ea709b3a2.lean/declarations/tendsto-d1coeff-tail--bfed4d550dddeb3b8495879e.md) | 276 | `result-track:bfed4d550dddeb3b8495879e2a745ac2d9598878c590b087ccf4d19a8cc01bdd` |
| 36 | `theorem` | [D1tail_le_coeff_tail](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant8e869e94bed5ea85e00a59caf0ff76d19dc9c42cd19eba0bbf35e87ea709b3a2.lean/declarations/d1tail-le-coeff-tail--b8cb9f3beb72b9e6957820d3.md) | 280 | `result-track:b8cb9f3beb72b9e6957820d37991a3aacd6d1200b79c2ce6efe69ed642c43b39` |
| 37 | `theorem` | [abs_D1_sub_D1trunc_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant8e869e94bed5ea85e00a59caf0ff76d19dc9c42cd19eba0bbf35e87ea709b3a2.lean/declarations/abs-d1-sub-d1trunc-le--58aeb863ac3d90892b02eeda.md) | 291 | `result-track:58aeb863ac3d90892b02eeda7dbe6a9cdd240c60508ae4d0f68d556be14a4ee4` |
| 38 | `theorem` | [integral_D1term](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant8e869e94bed5ea85e00a59caf0ff76d19dc9c42cd19eba0bbf35e87ea709b3a2.lean/declarations/integral-d1term--d3f1e3d737e395377c34ba42.md) | 297 | `result-track:d3f1e3d737e395377c34ba4255d92f1a3502fc6630704a7f4d5f7a850d80ca8f` |
| 39 | `theorem` | [integral_D1trunc](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant8e869e94bed5ea85e00a59caf0ff76d19dc9c42cd19eba0bbf35e87ea709b3a2.lean/declarations/integral-d1trunc--bc2e0e8e62aa6727ef4c06e4.md) | 309 | `result-track:bc2e0e8e62aa6727ef4c06e456b5635e5e008ead53c3dd0628bfdb83fbe98228` |
| 40 | `theorem` | [abs_integral_D1_sub_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/D1/Variant8e869e94bed5ea85e00a59caf0ff76d19dc9c42cd19eba0bbf35e87ea709b3a2.lean/declarations/abs-integral-d1-sub-le--53a4eb7c17c072f5183068bb.md) | 329 | `result-track:53a4eb7c17c072f5183068bb2d330a2728a937025b02f5949b19f112d51a765a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
