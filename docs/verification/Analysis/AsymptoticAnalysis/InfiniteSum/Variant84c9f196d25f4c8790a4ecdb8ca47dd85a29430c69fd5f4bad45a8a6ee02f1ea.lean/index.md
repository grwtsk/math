# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.InfiniteSum.Variant84c9f196d25f4c8790a4ecdb8ca47dd85a29430c69fd5f4bad45a8a6ee02f1ea

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d025095fe1651bee64c5e50b94011c5640e4139",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/InfiniteSum/Variant84c9f196d25f4c8790a4ecdb8ca47dd85a29430c69fd5f4bad45a8a6ee02f1ea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant84c9f196d25f4c8790a4ecdb8ca47dd85a29430c69fd5f4bad45a8a6ee02f1ea.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant84c9f196d25f4c8790a4ecdb8ca47dd85a29430c69fd5f4bad45a8a6ee02f1ea.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d025095fe1651bee64c5e50b94011c5640e4139`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/InfiniteSum/Variant84c9f196d25f4c8790a4ecdb8ca47dd85a29430c69fd5f4bad45a8a6ee02f1ea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/InfiniteSum/Variant84c9f196d25f4c8790a4ecdb8ca47dd85a29430c69fd5f4bad45a8a6ee02f1ea.lean.json)

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
| 1 | `theorem` | [cauchySeq_finset_iff_vanishing_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant84c9f196d25f4c8790a4ecdb8ca47dd85a29430c69fd5f4bad45a8a6ee02f1ea.lean/declarations/cauchyseq-finset-iff-vanishing-norm--d4f7b928f7427fbcbbd6f790.md) | 48 | `result-track:d4f7b928f7427fbcbbd6f790dc49e95641cdae8d65a2d89723bda613d08d31db` |
| 2 | `theorem` | [summable_iff_vanishing_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant84c9f196d25f4c8790a4ecdb8ca47dd85a29430c69fd5f4bad45a8a6ee02f1ea.lean/declarations/summable-iff-vanishing-norm--be0861a319dba2683e6a7f5a.md) | 56 | `result-track:be0861a319dba2683e6a7f5ae58cb2a8521520bb8b074324047bf88f6139fff2` |
| 3 | `theorem` | [cauchySeq_finset_of_norm_bounded_eventually](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant84c9f196d25f4c8790a4ecdb8ca47dd85a29430c69fd5f4bad45a8a6ee02f1ea.lean/declarations/cauchyseq-finset-of-norm-bounded-eventually--435ea9de2b5ed4941a5ecaba.md) | 60 | `result-track:435ea9de2b5ed4941a5ecabafeecfa24f2b39f5ed292f568c4fd748f81b13b46` |
| 4 | `theorem` | [cauchySeq_finset_of_norm_bounded](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant84c9f196d25f4c8790a4ecdb8ca47dd85a29430c69fd5f4bad45a8a6ee02f1ea.lean/declarations/cauchyseq-finset-of-norm-bounded--0defdb3dfcd51d386de900c0.md) | 76 | `result-track:0defdb3dfcd51d386de900c0a913049e6303495a9bc1a287082fb8579fd9ae1e` |
| 5 | `theorem` | [cauchySeq_range_of_norm_bounded](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant84c9f196d25f4c8790a4ecdb8ca47dd85a29430c69fd5f4bad45a8a6ee02f1ea.lean/declarations/cauchyseq-range-of-norm-bounded--deefa68022137d573c20fb03.md) | 82 | `result-track:deefa68022137d573c20fb03aa1d073cc352f6fa78bce0592aec7a953d1213dd` |
| 6 | `theorem` | [cauchySeq_finset_of_summable_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant84c9f196d25f4c8790a4ecdb8ca47dd85a29430c69fd5f4bad45a8a6ee02f1ea.lean/declarations/cauchyseq-finset-of-summable-norm--f65dd8a41e8bb88e2402acad.md) | 95 | `result-track:f65dd8a41e8bb88e2402acadc794818dafb6ac734babf3ce1aebe237a8094d4b` |
| 7 | `theorem` | [hasSum_of_subseq_of_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant84c9f196d25f4c8790a4ecdb8ca47dd85a29430c69fd5f4bad45a8a6ee02f1ea.lean/declarations/hassum-of-subseq-of-summable--e62539ab5375a9e11fd70a77.md) | 102 | `result-track:e62539ab5375a9e11fd70a771b4d5396c27bd86a00258c4c2b3e3a705d935496` |
| 8 | `theorem` | [hasSum_iff_tendsto_nat_of_summable_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant84c9f196d25f4c8790a4ecdb8ca47dd85a29430c69fd5f4bad45a8a6ee02f1ea.lean/declarations/hassum-iff-tendsto-nat-of-summable-norm--fc9cd488b4dc551e746099a9.md) | 107 | `result-track:fc9cd488b4dc551e746099a9aa93b8242669fd6c30d7f96472e8d642b9b429a2` |
| 9 | `theorem` | [Summable.of_norm_bounded](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant84c9f196d25f4c8790a4ecdb8ca47dd85a29430c69fd5f4bad45a8a6ee02f1ea.lean/declarations/summable-of-norm-bounded--14b10e38b48995209f00a8c1.md) | 113 | `result-track:14b10e38b48995209f00a8c178241951e2c985c478a4f5543a5c49ec689111c6` |
| 10 | `theorem` | [HasSum.enorm_le_of_bounded](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant84c9f196d25f4c8790a4ecdb8ca47dd85a29430c69fd5f4bad45a8a6ee02f1ea.lean/declarations/hassum-enorm-le-of-bounded--352a32372a05d2752521b8b1.md) | 118 | `result-track:352a32372a05d2752521b8b17385d8719814d6018ffbb6b15b9fbf92ae59fe27` |
| 11 | `theorem` | [HasSum.norm_le_of_bounded](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant84c9f196d25f4c8790a4ecdb8ca47dd85a29430c69fd5f4bad45a8a6ee02f1ea.lean/declarations/hassum-norm-le-of-bounded--4ceedba9d976101334d21fe9.md) | 122 | `result-track:4ceedba9d976101334d21fe92136530d7ab5f74a9c7c3fc5d88d27000c839149` |
| 12 | `theorem` | [tsum_of_enorm_bounded](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant84c9f196d25f4c8790a4ecdb8ca47dd85a29430c69fd5f4bad45a8a6ee02f1ea.lean/declarations/tsum-of-enorm-bounded--3af54a86f440237c18455869.md) | 129 | `result-track:3af54a86f440237c18455869feaa5bb58177835a91119298ac11be5362efd8b0` |
| 13 | `theorem` | [enorm_tsum_le_tsum_enorm](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant84c9f196d25f4c8790a4ecdb8ca47dd85a29430c69fd5f4bad45a8a6ee02f1ea.lean/declarations/enorm-tsum-le-tsum-enorm--ab3ae566b7ef1693bc48fc22.md) | 135 | `result-track:ab3ae566b7ef1693bc48fc221d6ff00d9489692a2d7ace39f237cb9cba45b6ec` |
| 14 | `theorem` | [tsum_of_norm_bounded](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant84c9f196d25f4c8790a4ecdb8ca47dd85a29430c69fd5f4bad45a8a6ee02f1ea.lean/declarations/tsum-of-norm-bounded--00119f31620f35bc64952262.md) | 142 | `result-track:00119f31620f35bc64952262b9145b62f5982e4a4f06d9bce04ab73b2f133675` |
| 15 | `theorem` | [norm_tsum_le_tsum_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant84c9f196d25f4c8790a4ecdb8ca47dd85a29430c69fd5f4bad45a8a6ee02f1ea.lean/declarations/norm-tsum-le-tsum-norm--013af233003a7eee3067e47e.md) | 151 | `result-track:013af233003a7eee3067e47e1e6b75516ccad15c9a2373cc588949121195ec80` |
| 16 | `theorem` | [tsum_of_nnnorm_bounded](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant84c9f196d25f4c8790a4ecdb8ca47dd85a29430c69fd5f4bad45a8a6ee02f1ea.lean/declarations/tsum-of-nnnorm-bounded--da3f247453058efcbd7855f9.md) | 159 | `result-track:da3f247453058efcbd7855f977183204c3ddda67f5b2742eba4048e760a4b6e9` |
| 17 | `theorem` | [nnnorm_tsum_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant84c9f196d25f4c8790a4ecdb8ca47dd85a29430c69fd5f4bad45a8a6ee02f1ea.lean/declarations/nnnorm-tsum-le--150b6d610a64f28364289d54.md) | 167 | `result-track:150b6d610a64f28364289d5476cd1b42d3d8db1fbd22f336048174703e25b6be` |
| 18 | `theorem` | [tsum_enorm_ne_top_iff_summable_nnnorm](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant84c9f196d25f4c8790a4ecdb8ca47dd85a29430c69fd5f4bad45a8a6ee02f1ea.lean/declarations/tsum-enorm-ne-top-iff-summable-nnnorm--a50292dc1117c9401663ebd9.md) | 170 | `result-track:a50292dc1117c9401663ebd9e7c1f51f3e8daaa192ee2da705668912392a22c9` |
| 19 | `lemma` | [tsum_enorm_ne_top_iff_summable_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant84c9f196d25f4c8790a4ecdb8ca47dd85a29430c69fd5f4bad45a8a6ee02f1ea.lean/declarations/tsum-enorm-ne-top-iff-summable-norm--822f0c118d6be90d84122062.md) | 174 | `result-track:822f0c118d6be90d84122062ca3694d0a0b20c7fe14c889f8e064b5cb3d5d453` |
| 20 | `theorem` | [Summable.of_norm_bounded_eventually](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant84c9f196d25f4c8790a4ecdb8ca47dd85a29430c69fd5f4bad45a8a6ee02f1ea.lean/declarations/summable-of-norm-bounded-eventually--9ae1d0f91bb5219dc90c9370.md) | 182 | `result-track:9ae1d0f91bb5219dc90c9370450c21f50425e8fb8b3591cb4f371cbb79f88acd` |
| 21 | `theorem` | [Summable.of_norm_bounded_eventually_nat](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant84c9f196d25f4c8790a4ecdb8ca47dd85a29430c69fd5f4bad45a8a6ee02f1ea.lean/declarations/summable-of-norm-bounded-eventually-nat--6cf98e9829b01658c5cfd741.md) | 188 | `result-track:6cf98e9829b01658c5cfd741b8615c2939307a1465987dd52d7b79c9c728b9ee` |
| 22 | `theorem` | [Summable.of_nnnorm_bounded](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant84c9f196d25f4c8790a4ecdb8ca47dd85a29430c69fd5f4bad45a8a6ee02f1ea.lean/declarations/summable-of-nnnorm-bounded--6aca09a1c90054ddf3d9cb74.md) | 192 | `result-track:6aca09a1c90054ddf3d9cb74ecff7b3e29e3f8b33dd2b78fe910fd7e2bc9471d` |
| 23 | `theorem` | [Summable.of_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant84c9f196d25f4c8790a4ecdb8ca47dd85a29430c69fd5f4bad45a8a6ee02f1ea.lean/declarations/summable-of-norm--b3c2532b79112f98ef61212c.md) | 196 | `result-track:b3c2532b79112f98ef61212c1a7dfe06df766dee971cecb172baae1d30938d99` |
| 24 | `theorem` | [Summable.of_nnnorm](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant84c9f196d25f4c8790a4ecdb8ca47dd85a29430c69fd5f4bad45a8a6ee02f1ea.lean/declarations/summable-of-nnnorm--7eeffb97cecc461d391ddf1c.md) | 199 | `result-track:7eeffb97cecc461d391ddf1c97e2b50236d7840c689ab553b4e523f853b81d95` |
| 25 | `theorem` | [Summable.of_enorm](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant84c9f196d25f4c8790a4ecdb8ca47dd85a29430c69fd5f4bad45a8a6ee02f1ea.lean/declarations/summable-of-enorm--1f30df298436268933fc832f.md) | 202 | `result-track:1f30df298436268933fc832f837afce2973295665e3f335ad3ea4b939e6894e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
