# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.TrivSqZeroExt.Variantd434d3dc847922d9b919afacfb1436ba3f9e6e12a4c39fe59d1bdba671307cd1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a1895cd43a7674d15f896a8bbde20d286e041f84",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variantd434d3dc847922d9b919afacfb1436ba3f9e6e12a4c39fe59d1bdba671307cd1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variantd434d3dc847922d9b919afacfb1436ba3f9e6e12a4c39fe59d1bdba671307cd1.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variantd434d3dc847922d9b919afacfb1436ba3f9e6e12a4c39fe59d1bdba671307cd1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a1895cd43a7674d15f896a8bbde20d286e041f84`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variantd434d3dc847922d9b919afacfb1436ba3f9e6e12a4c39fe59d1bdba671307cd1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variantd434d3dc847922d9b919afacfb1436ba3f9e6e12a4c39fe59d1bdba671307cd1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [fst_expSeries](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variantd434d3dc847922d9b919afacfb1436ba3f9e6e12a4c39fe59d1bdba671307cd1.lean/declarations/fst-expseries--d4f39f6fe1cdd49bd8bac5a4.md) | 80 | `result-track:d4f39f6fe1cdd49bd8bac5a414429c4e1ac0b47e6e15fd8b9b1fd754224be7a2` |
| 2 | `theorem` | [snd_expSeries_of_smul_comm](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variantd434d3dc847922d9b919afacfb1436ba3f9e6e12a4c39fe59d1bdba671307cd1.lean/declarations/snd-expseries-of-smul-comm--a1a9d5bd8b80d18f7c5796b7.md) | 93 | `result-track:a1a9d5bd8b80d18f7c5796b7b12b7998a4d8f63504464e47993624a2affdcb95` |
| 3 | `theorem` | [hasSum_snd_expSeries_of_smul_comm](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variantd434d3dc847922d9b919afacfb1436ba3f9e6e12a4c39fe59d1bdba671307cd1.lean/declarations/hassum-snd-expseries-of-smul-comm--f860f8577e9cc11c7b6ec8d4.md) | 103 | `result-track:f860f8577e9cc11c7b6ec8d4aa247b822cc8905572a80e2b49987bb74a057c55` |
| 4 | `theorem` | [hasSum_expSeries_of_smul_comm](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variantd434d3dc847922d9b919afacfb1436ba3f9e6e12a4c39fe59d1bdba671307cd1.lean/declarations/hassum-expseries-of-smul-comm--3332a1086bc1eab53227166a.md) | 116 | `result-track:3332a1086bc1eab53227166ad89a2819c1a0384b72291a2ed7f8fe5dc1ef388d` |
| 5 | `theorem` | [exp_def_of_smul_comm](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variantd434d3dc847922d9b919afacfb1436ba3f9e6e12a4c39fe59d1bdba671307cd1.lean/declarations/exp-def-of-smul-comm--3f4122e29ad2ba2274efeea3.md) | 128 | `result-track:3f4122e29ad2ba2274efeea3cbc927f3be62a087c7c6e32d499595132ed0fdd7` |
| 6 | `theorem` | [exp_inl](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variantd434d3dc847922d9b919afacfb1436ba3f9e6e12a4c39fe59d1bdba671307cd1.lean/declarations/exp-inl--622bd9b627b715bb0436855b.md) | 141 | `result-track:622bd9b627b715bb0436855bacf4ae5a6ec86f149529574567db3f8b3a3710c5` |
| 7 | `theorem` | [exp_inr](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variantd434d3dc847922d9b919afacfb1436ba3f9e6e12a4c39fe59d1bdba671307cd1.lean/declarations/exp-inr--137378075a147d2a2573f3aa.md) | 146 | `result-track:137378075a147d2a2573f3aa7a5b2626d98f003f9e4f41626ba08c65205265b1` |
| 8 | `theorem` | [exp_def](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variantd434d3dc847922d9b919afacfb1436ba3f9e6e12a4c39fe59d1bdba671307cd1.lean/declarations/exp-def--c194138cd1447af59eb74437.md) | 160 | `result-track:c194138cd1447af59eb744376efdbf582574315891ecd900cfcbf91c7e5cb10d` |
| 9 | `theorem` | [fst_exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variantd434d3dc847922d9b919afacfb1436ba3f9e6e12a4c39fe59d1bdba671307cd1.lean/declarations/fst-exp--8e0d55f3b114a137096f4fc5.md) | 164 | `result-track:8e0d55f3b114a137096f4fc59e88e9fb9dcad079400531a088c262b5dea84803` |
| 10 | `theorem` | [snd_exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variantd434d3dc847922d9b919afacfb1436ba3f9e6e12a4c39fe59d1bdba671307cd1.lean/declarations/snd-exp--ed386b83fa90089fd6fb43d3.md) | 168 | `result-track:ed386b83fa90089fd6fb43d3b182f39f7acc7dc80893ce3cd2739a00926029e8` |
| 11 | `theorem` | [eq_smul_exp_of_invertible](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variantd434d3dc847922d9b919afacfb1436ba3f9e6e12a4c39fe59d1bdba671307cd1.lean/declarations/eq-smul-exp-of-invertible--7f671dfdfba5c4cf79db36e6.md) | 172 | `result-track:7f671dfdfba5c4cf79db36e648558250ddf38d6b7b585f16a40491c69882801a` |
| 12 | `theorem` | [eq_smul_exp_of_ne_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variantd434d3dc847922d9b919afacfb1436ba3f9e6e12a4c39fe59d1bdba671307cd1.lean/declarations/eq-smul-exp-of-ne-zero--daf8bb4ab2714201f6c4bfbf.md) | 190 | `result-track:daf8bb4ab2714201f6c4bfbf69e381978cc2107b06f5a64f59954a61de69af59` |
| 13 | `instance` | [instL1SeminormedAddCommGroup](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variantd434d3dc847922d9b919afacfb1436ba3f9e6e12a4c39fe59d1bdba671307cd1.lean/declarations/instl1seminormedaddcommgroup--4d166e6f86d411578c626f38.md) | 210 | `declaration-track:4d166e6f86d411578c626f386b84b15eeb4ffba33940bb5ff733d28aec162cad` |
| 14 | `example` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variantd434d3dc847922d9b919afacfb1436ba3f9e6e12a4c39fe59d1bdba671307cd1.lean/declarations/example--8204da7daf1b342d4b2cd31f.md) | 215 | `declaration-track:8204da7daf1b342d4b2cd31faea19ed0bb56ad3a603ec21ddd5bc41c119592ad` |
| 15 | `theorem` | [norm_def](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variantd434d3dc847922d9b919afacfb1436ba3f9e6e12a4c39fe59d1bdba671307cd1.lean/declarations/norm-def--1ec35349942b07df4d598063.md) | 220 | `result-track:1ec35349942b07df4d598063796eef34b43b9a36458cc61c427ae62445947e3a` |
| 16 | `theorem` | [nnnorm_def](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variantd434d3dc847922d9b919afacfb1436ba3f9e6e12a4c39fe59d1bdba671307cd1.lean/declarations/nnnorm-def--6e11647d1e4b8e2056953383.md) | 226 | `result-track:6e11647d1e4b8e20569533836eba5763883aceae8156b27b74326a9f510436bd` |
| 17 | `theorem` | [norm_inl](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variantd434d3dc847922d9b919afacfb1436ba3f9e6e12a4c39fe59d1bdba671307cd1.lean/declarations/norm-inl--f062c021f3bcbf572c574dd1.md) | 229 | `result-track:f062c021f3bcbf572c574dd160fdebdcb629650ebd64a15c984d7a0aa2727386` |
| 18 | `theorem` | [norm_inr](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variantd434d3dc847922d9b919afacfb1436ba3f9e6e12a4c39fe59d1bdba671307cd1.lean/declarations/norm-inr--0de2555c3bf33cd318407b98.md) | 230 | `result-track:0de2555c3bf33cd318407b98beb453728a5b632c7eb08b5e6ef50fe42ce87f18` |
| 19 | `theorem` | [nnnorm_inl](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variantd434d3dc847922d9b919afacfb1436ba3f9e6e12a4c39fe59d1bdba671307cd1.lean/declarations/nnnorm-inl--69a8df580966b28fb55afac0.md) | 232 | `result-track:69a8df580966b28fb55afac0507eccf0bf8ad342284a0e3ba3e59396ac96434a` |
| 20 | `theorem` | [nnnorm_inr](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variantd434d3dc847922d9b919afacfb1436ba3f9e6e12a4c39fe59d1bdba671307cd1.lean/declarations/nnnorm-inr--82444c795c94b93bf4a5aaee.md) | 234 | `result-track:82444c795c94b93bf4a5aaee6e15cb992937dfae928810832a7bf8de2de462d5` |
| 21 | `instance` | [instL1SeminormedRing](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variantd434d3dc847922d9b919afacfb1436ba3f9e6e12a4c39fe59d1bdba671307cd1.lean/declarations/instl1seminormedring--c2b05a22a8701e16563e3fcd.md) | 240 | `declaration-track:c2b05a22a8701e16563e3fcdf072fc92dcc688963518adf4b7988c21a8b8206b` |
| 22 | `instance` | [instL1IsBoundedSMul](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variantd434d3dc847922d9b919afacfb1436ba3f9e6e12a4c39fe59d1bdba671307cd1.lean/declarations/instl1isboundedsmul--0fc88816a13ffb061990dbf7.md) | 257 | `declaration-track:0fc88816a13ffb061990dbf73030afd318db3f34b83dc9453cc5354da92d8389` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variantd434d3dc847922d9b919afacfb1436ba3f9e6e12a4c39fe59d1bdba671307cd1.lean/declarations/instance--f389dfcdfd7b19f94bf26468.md) | 260 | `declaration-track:f389dfcdfd7b19f94bf26468d7fc404e44f0c3c2943591ea83c12cb2e2d23183` |
| 24 | `instance` | [instL1SeminormedCommRing](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variantd434d3dc847922d9b919afacfb1436ba3f9e6e12a4c39fe59d1bdba671307cd1.lean/declarations/instl1seminormedcommring--91389eb28e976a2e8e8d497b.md) | 271 | `declaration-track:91389eb28e976a2e8e8d497b8de750ffcfc3832b507740aaf596a2b0bccb5faa` |
| 25 | `instance` | [instL1NormedAddCommGroup](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variantd434d3dc847922d9b919afacfb1436ba3f9e6e12a4c39fe59d1bdba671307cd1.lean/declarations/instl1normedaddcommgroup--620ca41b43b08a869e9a4bdb.md) | 286 | `declaration-track:620ca41b43b08a869e9a4bdb4e7b192838aaafdb57b445097c78cb26adcf98c5` |
| 26 | `instance` | [instL1NormedRing](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variantd434d3dc847922d9b919afacfb1436ba3f9e6e12a4c39fe59d1bdba671307cd1.lean/declarations/instl1normedring--a9805db3e9b0b8666e5cf779.md) | 289 | `declaration-track:a9805db3e9b0b8666e5cf779158707ddcf32525c02ad39a9967cf8968262f9c0` |
| 27 | `instance` | [instL1NormedCommRing](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variantd434d3dc847922d9b919afacfb1436ba3f9e6e12a4c39fe59d1bdba671307cd1.lean/declarations/instl1normedcommring--7235010a2c2ad912114eebbd.md) | 301 | `declaration-track:7235010a2c2ad912114eebbd3ec34789215cb12e56b74197a158705e12be0538` |
| 28 | `instance` | [instL1NormedSpace](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variantd434d3dc847922d9b919afacfb1436ba3f9e6e12a4c39fe59d1bdba671307cd1.lean/declarations/instl1normedspace--94c16fecdb68644887996188.md) | 314 | `declaration-track:94c16fecdb686448879961881532818559077426531ce05f47a896e10a311b5b` |
| 29 | `instance` | [instL1NormedAlgebra](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variantd434d3dc847922d9b919afacfb1436ba3f9e6e12a4c39fe59d1bdba671307cd1.lean/declarations/instl1normedalgebra--2178b5a82341f82bbb867f09.md) | 317 | `declaration-track:2178b5a82341f82bbb867f093dce75085b763535cc3ed6787a0a36e98c2637ad` |
| 30 | `example` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variantd434d3dc847922d9b919afacfb1436ba3f9e6e12a4c39fe59d1bdba671307cd1.lean/declarations/example--c9d6fafce8d57df69349082a.md) | 334 | `declaration-track:c9d6fafce8d57df69349082a849f4fd996f5024a0453237495c3b257517a14dd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
