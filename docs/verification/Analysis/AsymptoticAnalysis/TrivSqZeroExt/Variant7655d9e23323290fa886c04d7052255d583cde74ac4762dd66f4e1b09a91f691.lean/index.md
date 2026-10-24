# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.TrivSqZeroExt.Variant7655d9e23323290fa886c04d7052255d583cde74ac4762dd66f4e1b09a91f691

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3fb3e221e257f4e97241a741590afe575e62a23f",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant7655d9e23323290fa886c04d7052255d583cde74ac4762dd66f4e1b09a91f691.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant7655d9e23323290fa886c04d7052255d583cde74ac4762dd66f4e1b09a91f691.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant7655d9e23323290fa886c04d7052255d583cde74ac4762dd66f4e1b09a91f691.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3fb3e221e257f4e97241a741590afe575e62a23f`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant7655d9e23323290fa886c04d7052255d583cde74ac4762dd66f4e1b09a91f691.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant7655d9e23323290fa886c04d7052255d583cde74ac4762dd66f4e1b09a91f691.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Algebra.Exponential` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Lp.ProdLp` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.TrivSqZeroExt` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [fst_expSeries](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant7655d9e23323290fa886c04d7052255d583cde74ac4762dd66f4e1b09a91f691.lean/declarations/fst-expseries--c74635810f62dec4fdfedf1d.md) | 76 | `result-track:c74635810f62dec4fdfedf1db501ae4441597232aba3220629a22641fe2f3648` |
| 2 | `theorem` | [snd_expSeries_of_smul_comm](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant7655d9e23323290fa886c04d7052255d583cde74ac4762dd66f4e1b09a91f691.lean/declarations/snd-expseries-of-smul-comm--9a355401b85e67612dbaa8d4.md) | 89 | `result-track:9a355401b85e67612dbaa8d479f0c427ec071b4a2a41bfcea96c9fcc5072ebcc` |
| 3 | `theorem` | [hasSum_snd_expSeries_of_smul_comm](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant7655d9e23323290fa886c04d7052255d583cde74ac4762dd66f4e1b09a91f691.lean/declarations/hassum-snd-expseries-of-smul-comm--6040c53103907a5bfb345742.md) | 99 | `result-track:6040c53103907a5bfb34574285eb738ab0db41206eecbde8716ee17b1187a5e2` |
| 4 | `theorem` | [hasSum_expSeries_of_smul_comm](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant7655d9e23323290fa886c04d7052255d583cde74ac4762dd66f4e1b09a91f691.lean/declarations/hassum-expseries-of-smul-comm--2249dc3974f69daf73cdd3d6.md) | 112 | `result-track:2249dc3974f69daf73cdd3d6a89f02cd6564ca644abbcf8198a2db984a2984fb` |
| 5 | `theorem` | [exp_def_of_smul_comm](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant7655d9e23323290fa886c04d7052255d583cde74ac4762dd66f4e1b09a91f691.lean/declarations/exp-def-of-smul-comm--54f0c83caf448f7d8ed74532.md) | 123 | `result-track:54f0c83caf448f7d8ed74532b82f8c799cc0a293266d5c35e6faa84214ee41ef` |
| 6 | `theorem` | [exp_inl](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant7655d9e23323290fa886c04d7052255d583cde74ac4762dd66f4e1b09a91f691.lean/declarations/exp-inl--a13c3bf2d400fe8d6e303610.md) | 136 | `result-track:a13c3bf2d400fe8d6e3036100276cec8b4aa2481e3b1b364a3d57a36c1f1ce9a` |
| 7 | `theorem` | [exp_inr](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant7655d9e23323290fa886c04d7052255d583cde74ac4762dd66f4e1b09a91f691.lean/declarations/exp-inr--165e9d4f78e673ebdc10541b.md) | 141 | `result-track:165e9d4f78e673ebdc10541b417a1635ff7cb14e1b62c77c1eb79170b3fed5ab` |
| 8 | `theorem` | [exp_def](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant7655d9e23323290fa886c04d7052255d583cde74ac4762dd66f4e1b09a91f691.lean/declarations/exp-def--eb614fd44921073edb3594e8.md) | 156 | `result-track:eb614fd44921073edb3594e8c6ac142ab2a3690a6bc3d67a654cbd22cd5e85d0` |
| 9 | `theorem` | [fst_exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant7655d9e23323290fa886c04d7052255d583cde74ac4762dd66f4e1b09a91f691.lean/declarations/fst-exp--1f9a88cffa46c7d9d06796c2.md) | 160 | `result-track:1f9a88cffa46c7d9d06796c26f8db3257fd441e279d5b40cd17c860f85391af1` |
| 10 | `theorem` | [snd_exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant7655d9e23323290fa886c04d7052255d583cde74ac4762dd66f4e1b09a91f691.lean/declarations/snd-exp--49c643d5464f4d3da52aa563.md) | 164 | `result-track:49c643d5464f4d3da52aa5630ddb04a47bd0064aff3951b729e720faed6b4b2f` |
| 11 | `theorem` | [eq_smul_exp_of_invertible](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant7655d9e23323290fa886c04d7052255d583cde74ac4762dd66f4e1b09a91f691.lean/declarations/eq-smul-exp-of-invertible--2071580e1a1aa531df73e4e9.md) | 168 | `result-track:2071580e1a1aa531df73e4e909a932b0046306c3e2429394f8986669fcd5086e` |
| 12 | `theorem` | [eq_smul_exp_of_ne_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant7655d9e23323290fa886c04d7052255d583cde74ac4762dd66f4e1b09a91f691.lean/declarations/eq-smul-exp-of-ne-zero--82996b21a08dde85cd59bbd6.md) | 186 | `result-track:82996b21a08dde85cd59bbd6b56a9de6e6c0e4cd0a0f1f3c91ba57de85b1b5ed` |
| 13 | `instance` | [instL1SeminormedAddCommGroup](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant7655d9e23323290fa886c04d7052255d583cde74ac4762dd66f4e1b09a91f691.lean/declarations/instl1seminormedaddcommgroup--cf7e37c36e93b143628c4277.md) | 206 | `declaration-track:cf7e37c36e93b143628c4277188fe8882b8441f4fe6c6d4c34502d56a4f8a6dd` |
| 14 | `example` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant7655d9e23323290fa886c04d7052255d583cde74ac4762dd66f4e1b09a91f691.lean/declarations/example--cb0a1c0f5b8554d4cf4e0072.md) | 209 | `declaration-track:cb0a1c0f5b8554d4cf4e0072132334be72f3bda5cc4e0ecec526f296876f647c` |
| 15 | `theorem` | [norm_def](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant7655d9e23323290fa886c04d7052255d583cde74ac4762dd66f4e1b09a91f691.lean/declarations/norm-def--478e88535c97f048117b694a.md) | 213 | `result-track:478e88535c97f048117b694a8c15775877a7543101a66bf6ae0be0484922c467` |
| 16 | `theorem` | [nnnorm_def](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant7655d9e23323290fa886c04d7052255d583cde74ac4762dd66f4e1b09a91f691.lean/declarations/nnnorm-def--4a3db6fdd42e40ec860cf557.md) | 218 | `result-track:4a3db6fdd42e40ec860cf5576c0a7f075468432e42f9b4829896765327fba62d` |
| 17 | `theorem` | [norm_inl](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant7655d9e23323290fa886c04d7052255d583cde74ac4762dd66f4e1b09a91f691.lean/declarations/norm-inl--a697f0982811e2553c3cb225.md) | 221 | `result-track:a697f0982811e2553c3cb2256694300f98db01ebcb4fc8b71310ad37c03ab087` |
| 18 | `theorem` | [norm_inr](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant7655d9e23323290fa886c04d7052255d583cde74ac4762dd66f4e1b09a91f691.lean/declarations/norm-inr--056554ac3fd01421cb8c3922.md) | 222 | `result-track:056554ac3fd01421cb8c3922ab087f8276705d6c5a56915c7834c62fff230032` |
| 19 | `theorem` | [nnnorm_inl](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant7655d9e23323290fa886c04d7052255d583cde74ac4762dd66f4e1b09a91f691.lean/declarations/nnnorm-inl--99a8f6da2f2898e584b3e1be.md) | 224 | `result-track:99a8f6da2f2898e584b3e1be83e52dbb34955e374d837ca14674655a748e2edf` |
| 20 | `theorem` | [nnnorm_inr](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant7655d9e23323290fa886c04d7052255d583cde74ac4762dd66f4e1b09a91f691.lean/declarations/nnnorm-inr--447f6267e45e13ec5afa0632.md) | 225 | `result-track:447f6267e45e13ec5afa0632478bb23ad0594812979e62910f5082eec983d4ec` |
| 21 | `instance` | [instL1SeminormedRing](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant7655d9e23323290fa886c04d7052255d583cde74ac4762dd66f4e1b09a91f691.lean/declarations/instl1seminormedring--37abec24c5169005090c7581.md) | 230 | `declaration-track:37abec24c5169005090c7581d96e2b49a63cbabd03498e1ee93888d8ed4c08a7` |
| 22 | `instance` | [instL1IsBoundedSMul](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant7655d9e23323290fa886c04d7052255d583cde74ac4762dd66f4e1b09a91f691.lean/declarations/instl1isboundedsmul--75e65b6b161bcacc8305e908.md) | 247 | `declaration-track:75e65b6b161bcacc8305e908fabaff5aa9eb7f03e406126e27e6098a9ca6db41` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant7655d9e23323290fa886c04d7052255d583cde74ac4762dd66f4e1b09a91f691.lean/declarations/instance--5a83e41b2b28e5643d2df69f.md) | 250 | `declaration-track:5a83e41b2b28e5643d2df69f7a2b2416fd46d6a965e04b1796469e7c29e81ffb` |
| 24 | `instance` | [instL1SeminormedCommRing](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant7655d9e23323290fa886c04d7052255d583cde74ac4762dd66f4e1b09a91f691.lean/declarations/instl1seminormedcommring--5033b025738aa33c801baecb.md) | 262 | `declaration-track:5033b025738aa33c801baecb618625de7682c0949d7e8f4e2d5f358de0f90ee1` |
| 25 | `instance` | [instL1NormedAddCommGroup](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant7655d9e23323290fa886c04d7052255d583cde74ac4762dd66f4e1b09a91f691.lean/declarations/instl1normedaddcommgroup--615257aa5d20f4c5192e66dc.md) | 277 | `declaration-track:615257aa5d20f4c5192e66dcf9c0e7ff00e89cec80d8cfed47680aecf5370cd2` |
| 26 | `instance` | [instL1NormedRing](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant7655d9e23323290fa886c04d7052255d583cde74ac4762dd66f4e1b09a91f691.lean/declarations/instl1normedring--4e4b91396f60c42d8c44a780.md) | 280 | `declaration-track:4e4b91396f60c42d8c44a780454ab555ccb91169c6aaad73523348fda9c82a62` |
| 27 | `instance` | [instL1NormedCommRing](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant7655d9e23323290fa886c04d7052255d583cde74ac4762dd66f4e1b09a91f691.lean/declarations/instl1normedcommring--37d68eef057f261c9a96e05c.md) | 292 | `declaration-track:37d68eef057f261c9a96e05c95e11aedce4539fe57acc15dbf5f6b45dae97297` |
| 28 | `instance` | [instL1NormedSpace](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant7655d9e23323290fa886c04d7052255d583cde74ac4762dd66f4e1b09a91f691.lean/declarations/instl1normedspace--82e6fcacd3e13439eb5d2a01.md) | 305 | `declaration-track:82e6fcacd3e13439eb5d2a01a59f7bb38274676aa5c2e8d381b3cfb543b4ba2e` |
| 29 | `instance` | [instL1NormedAlgebra](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant7655d9e23323290fa886c04d7052255d583cde74ac4762dd66f4e1b09a91f691.lean/declarations/instl1normedalgebra--61c2978548675fd8ed81b72c.md) | 308 | `declaration-track:61c2978548675fd8ed81b72cdf81fa70feb2171ae99907ca06f6218133fe55e9` |
| 30 | `example` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant7655d9e23323290fa886c04d7052255d583cde74ac4762dd66f4e1b09a91f691.lean/declarations/example--ba02b92e6f3d2d6f7e7e0700.md) | 326 | `declaration-track:ba02b92e6f3d2d6f7e7e07004e371890ff78177936f46815d69cf704f4274687` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
