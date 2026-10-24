# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.PSeries.Variant7811e74e96fcc01942688b6ddbcc21658e2dc1d31081f39ce0362b6a5d82af6a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b47876fb71f32410cc831651f31232a5f4342a7",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/PSeries/Variant7811e74e96fcc01942688b6ddbcc21658e2dc1d31081f39ce0362b6a5d82af6a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variant7811e74e96fcc01942688b6ddbcc21658e2dc1d31081f39ce0362b6a5d82af6a.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variant7811e74e96fcc01942688b6ddbcc21658e2dc1d31081f39ce0362b6a5d82af6a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b47876fb71f32410cc831651f31232a5f4342a7`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/PSeries/Variant7811e74e96fcc01942688b6ddbcc21658e2dc1d31081f39ce0362b6a5d82af6a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/PSeries/Variant7811e74e96fcc01942688b6ddbcc21658e2dc1d31081f39ce0362b6a5d82af6a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.NNReal` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variant7811e74e96fcc01942688b6ddbcc21658e2dc1d31081f39ce0362b6a5d82af6a.lean/declarations/macro-rules--56e000fed47319d52998f53d.md) | 31 | `declaration-track:56e000fed47319d52998f53d1a4d0c0796a36bf769e033a167721a7dd8417d07` |
| 2 | `theorem` | [le_sum_condensed'](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variant7811e74e96fcc01942688b6ddbcc21658e2dc1d31081f39ce0362b6a5d82af6a.lean/declarations/le-sum-condensed--96dc46817abfa625b4f0cbab.md) | 51 | `result-track:96dc46817abfa625b4f0cbabb736b1bed5588a75e9491d5ffabdd3e1d8f2ad32` |
| 3 | `theorem` | [le_sum_condensed](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variant7811e74e96fcc01942688b6ddbcc21658e2dc1d31081f39ce0362b6a5d82af6a.lean/declarations/le-sum-condensed--f42d3ec7ba9922004ac6830f.md) | 65 | `result-track:f42d3ec7ba9922004ac6830f543cf73066ac1dd512fb0b0284b0c79509e09c1e` |
| 4 | `theorem` | [sum_condensed_le'](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variant7811e74e96fcc01942688b6ddbcc21658e2dc1d31081f39ce0362b6a5d82af6a.lean/declarations/sum-condensed-le--5897cec4162e76e0352cb731.md) | 71 | `result-track:5897cec4162e76e0352cb73100130905658c223a60501116e9f6e64bc5ccd40f` |
| 5 | `theorem` | [sum_condensed_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variant7811e74e96fcc01942688b6ddbcc21658e2dc1d31081f39ce0362b6a5d82af6a.lean/declarations/sum-condensed-le--55b273eb83d440166ce54b22.md) | 87 | `result-track:55b273eb83d440166ce54b22a1703d09b6c46d12365510acc731b3514936e06a` |
| 6 | `theorem` | [le_tsum_condensed](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variant7811e74e96fcc01942688b6ddbcc21658e2dc1d31081f39ce0362b6a5d82af6a.lean/declarations/le-tsum-condensed--7fcbef212abf036a3bce86ec.md) | 99 | `result-track:7fcbef212abf036a3bce86eca38f4996f3405f93338a6c57c6ccefc701461f8b` |
| 7 | `theorem` | [tsum_condensed_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variant7811e74e96fcc01942688b6ddbcc21658e2dc1d31081f39ce0362b6a5d82af6a.lean/declarations/tsum-condensed-le--8c69b00f909a0a6c58807897.md) | 107 | `result-track:8c69b00f909a0a6c58807897afc49a3641279027a49fb92f8108cc9e726cdce8` |
| 8 | `theorem` | [summable_condensed_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variant7811e74e96fcc01942688b6ddbcc21658e2dc1d31081f39ce0362b6a5d82af6a.lean/declarations/summable-condensed-iff--b6a0d0ec503e75a807e67fbd.md) | 123 | `result-track:b6a0d0ec503e75a807e67fbde8114bd69e33feda55da92a431ee4ad51f746d6d` |
| 9 | `theorem` | [summable_condensed_iff_of_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variant7811e74e96fcc01942688b6ddbcc21658e2dc1d31081f39ce0362b6a5d82af6a.lean/declarations/summable-condensed-iff-of-nonneg--2df3373d1958b5720e20d671.md) | 139 | `result-track:2df3373d1958b5720e20d671e518dec30e3ec7e2f3c57e6f7754344d08327ae3` |
| 10 | `theorem` | [Real.summable_nat_rpow_inv](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variant7811e74e96fcc01942688b6ddbcc21658e2dc1d31081f39ce0362b6a5d82af6a.lean/declarations/real-summable-nat-rpow-inv--cce41f9d27464290cf2953f2.md) | 162 | `result-track:cce41f9d27464290cf2953f21e96c6614c1ecd915a92e215bfdb70f1ffe1fd93` |
| 11 | `theorem` | [Real.summable_nat_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variant7811e74e96fcc01942688b6ddbcc21658e2dc1d31081f39ce0362b6a5d82af6a.lean/declarations/real-summable-nat-rpow--49f57317cf4354468458b285.md) | 196 | `result-track:49f57317cf4354468458b28538c5d75c71235b5431138ec6e003959b60cc81a7` |
| 12 | `theorem` | [Real.summable_one_div_nat_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variant7811e74e96fcc01942688b6ddbcc21658e2dc1d31081f39ce0362b6a5d82af6a.lean/declarations/real-summable-one-div-nat-rpow--67abf4889bd3dbb6e0489722.md) | 203 | `result-track:67abf4889bd3dbb6e04897226e6c976410da3b524c0c1aa7a4cc1e605c698647` |
| 13 | `theorem` | [Real.summable_nat_pow_inv](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variant7811e74e96fcc01942688b6ddbcc21658e2dc1d31081f39ce0362b6a5d82af6a.lean/declarations/real-summable-nat-pow-inv--f09b89781dfff1b34dfbc0b8.md) | 212 | `result-track:f09b89781dfff1b34dfbc0b8118710e265fa5696e9ee3d7add5109765bc384f9` |
| 14 | `theorem` | [Real.summable_one_div_nat_pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variant7811e74e96fcc01942688b6ddbcc21658e2dc1d31081f39ce0362b6a5d82af6a.lean/declarations/real-summable-one-div-nat-pow--773fd721b74e6a29f03e8660.md) | 219 | `result-track:773fd721b74e6a29f03e86609e2d198b8984fd865b4830a2aafc2d4ba811e9c0` |
| 15 | `theorem` | [Real.summable_one_div_int_pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variant7811e74e96fcc01942688b6ddbcc21658e2dc1d31081f39ce0362b6a5d82af6a.lean/declarations/real-summable-one-div-int-pow--c762f4d68ffd6feaefa10512.md) | 226 | `result-track:c762f4d68ffd6feaefa10512e25ae3643d08147b3f00afc27fbf309653207f43` |
| 16 | `theorem` | [Real.summable_abs_int_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variant7811e74e96fcc01942688b6ddbcc21658e2dc1d31081f39ce0362b6a5d82af6a.lean/declarations/real-summable-abs-int-rpow--b79be7032ac9804fa03ac588.md) | 237 | `result-track:b79be7032ac9804fa03ac5885c245f22589b71e9d396e8f12f844aee5e9c7cb6` |
| 17 | `theorem` | [Real.not_summable_nat_cast_inv](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variant7811e74e96fcc01942688b6ddbcc21658e2dc1d31081f39ce0362b6a5d82af6a.lean/declarations/real-not-summable-nat-cast-inv--7fdb4ea5f8d36bb35a8575c2.md) | 255 | `result-track:7fdb4ea5f8d36bb35a8575c2605e3bbbfa1968318135fe5824a309a41459f664` |
| 18 | `theorem` | [Real.not_summable_one_div_nat_cast](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variant7811e74e96fcc01942688b6ddbcc21658e2dc1d31081f39ce0362b6a5d82af6a.lean/declarations/real-not-summable-one-div-nat-cast--1ea5dc66faaa2e9750d9e6fa.md) | 262 | `result-track:1ea5dc66faaa2e9750d9e6fa07a93e729fc851a564bf35eaf669101298753129` |
| 19 | `theorem` | [Real.tendsto_sum_range_one_div_nat_succ_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variant7811e74e96fcc01942688b6ddbcc21658e2dc1d31081f39ce0362b6a5d82af6a.lean/declarations/real-tendsto-sum-range-one-div-nat-succ-attop--ef0c2b4cf715d8d3d1718a93.md) | 267 | `result-track:ef0c2b4cf715d8d3d1718a93d6c490de07fac9530438caa9fee727c38bb125e3` |
| 20 | `theorem` | [NNReal.summable_rpow_inv](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variant7811e74e96fcc01942688b6ddbcc21658e2dc1d31081f39ce0362b6a5d82af6a.lean/declarations/nnreal-summable-rpow-inv--530f4584c4ef55bba4edc0d7.md) | 275 | `result-track:530f4584c4ef55bba4edc0d7ce6bdb92ac7daaf723510ce3beda7c9399b073f9` |
| 21 | `theorem` | [NNReal.summable_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variant7811e74e96fcc01942688b6ddbcc21658e2dc1d31081f39ce0362b6a5d82af6a.lean/declarations/nnreal-summable-rpow--068c6bfc31a5bd60ca5bccef.md) | 281 | `result-track:068c6bfc31a5bd60ca5bccef0851f7665a6ef0bcd48914c760b11ae3c1fec325` |
| 22 | `theorem` | [NNReal.summable_one_div_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variant7811e74e96fcc01942688b6ddbcc21658e2dc1d31081f39ce0362b6a5d82af6a.lean/declarations/nnreal-summable-one-div-rpow--d9299fe2cb9e178d5f1fb16b.md) | 285 | `result-track:d9299fe2cb9e178d5f1fb16b469a8e5d359c9df026e3b6fd66074813796de9d4` |
| 23 | `theorem` | [sum_Ioc_inv_sq_le_sub](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variant7811e74e96fcc01942688b6ddbcc21658e2dc1d31081f39ce0362b6a5d82af6a.lean/declarations/sum-ioc-inv-sq-le-sub--e802c848cdb4b582926a6bfe.md) | 296 | `result-track:e802c848cdb4b582926a6bfebc32478a519c26ec74fe600690e4be71c265f3c5` |
| 24 | `theorem` | [sum_Ioo_inv_sq_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variant7811e74e96fcc01942688b6ddbcc21658e2dc1d31081f39ce0362b6a5d82af6a.lean/declarations/sum-ioo-inv-sq-le--1afadc8b199fb799966b464d.md) | 316 | `result-track:1afadc8b199fb799966b464d31261cf4b3143ca446871ced42c0e5caa25320fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
