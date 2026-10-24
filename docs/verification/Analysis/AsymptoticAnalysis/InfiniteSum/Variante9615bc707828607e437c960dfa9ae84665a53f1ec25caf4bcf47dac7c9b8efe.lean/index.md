# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.InfiniteSum.Variante9615bc707828607e437c960dfa9ae84665a53f1ec25caf4bcf47dac7c9b8efe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c869d50433d298eee261f776c4bb3d3c62371896",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/InfiniteSum/Variante9615bc707828607e437c960dfa9ae84665a53f1ec25caf4bcf47dac7c9b8efe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variante9615bc707828607e437c960dfa9ae84665a53f1ec25caf4bcf47dac7c9b8efe.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variante9615bc707828607e437c960dfa9ae84665a53f1ec25caf4bcf47dac7c9b8efe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c869d50433d298eee261f776c4bb3d3c62371896`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/InfiniteSum/Variante9615bc707828607e437c960dfa9ae84665a53f1ec25caf4bcf47dac7c9b8efe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/InfiniteSum/Variante9615bc707828607e437c960dfa9ae84665a53f1ec25caf4bcf47dac7c9b8efe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Intervals` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Uniform` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.NNReal.Lemmas` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cauchySeq_finset_iff_vanishing_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variante9615bc707828607e437c960dfa9ae84665a53f1ec25caf4bcf47dac7c9b8efe.lean/declarations/cauchyseq-finset-iff-vanishing-norm--b5da8883c3577405e0d93c33.md) | 45 | `result-track:b5da8883c3577405e0d93c3306c595b219ec2a8408e39f2c11399bbe704a0227` |
| 2 | `theorem` | [summable_iff_vanishing_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variante9615bc707828607e437c960dfa9ae84665a53f1ec25caf4bcf47dac7c9b8efe.lean/declarations/summable-iff-vanishing-norm--64cc1e63f26bdf4f03de0141.md) | 53 | `result-track:64cc1e63f26bdf4f03de014185d311397a1cf00e245bf59b41e9eaf50254af6a` |
| 3 | `theorem` | [cauchySeq_finset_of_norm_bounded_eventually](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variante9615bc707828607e437c960dfa9ae84665a53f1ec25caf4bcf47dac7c9b8efe.lean/declarations/cauchyseq-finset-of-norm-bounded-eventually--dede813d5cc80db90bae0ff4.md) | 57 | `result-track:dede813d5cc80db90bae0ff465d886bf2fb66c3b58407e60eebc2bf3c255a287` |
| 4 | `theorem` | [cauchySeq_finset_of_norm_bounded](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variante9615bc707828607e437c960dfa9ae84665a53f1ec25caf4bcf47dac7c9b8efe.lean/declarations/cauchyseq-finset-of-norm-bounded--367339ed4d63cfe428074d1c.md) | 73 | `result-track:367339ed4d63cfe428074d1cef2ed54a9dad7b68ae530921baa4e0e516de9b4c` |
| 5 | `theorem` | [cauchySeq_range_of_norm_bounded](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variante9615bc707828607e437c960dfa9ae84665a53f1ec25caf4bcf47dac7c9b8efe.lean/declarations/cauchyseq-range-of-norm-bounded--d0ffeafe91442824311f88dc.md) | 79 | `result-track:d0ffeafe91442824311f88dcac28a1afd21ffc98d343b308820ceaafa542daa0` |
| 6 | `theorem` | [cauchySeq_finset_of_summable_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variante9615bc707828607e437c960dfa9ae84665a53f1ec25caf4bcf47dac7c9b8efe.lean/declarations/cauchyseq-finset-of-summable-norm--39ae1ef224d01d13b21c2318.md) | 92 | `result-track:39ae1ef224d01d13b21c231867c93f29085b5524a38103b144a0d539ece7b3ba` |
| 7 | `theorem` | [hasSum_of_subseq_of_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variante9615bc707828607e437c960dfa9ae84665a53f1ec25caf4bcf47dac7c9b8efe.lean/declarations/hassum-of-subseq-of-summable--c83f02250d2d4a8d75773012.md) | 99 | `result-track:c83f02250d2d4a8d757730120f981f9757fbd100d8ab4a18cf80ad988d99dbf0` |
| 8 | `theorem` | [hasSum_iff_tendsto_nat_of_summable_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variante9615bc707828607e437c960dfa9ae84665a53f1ec25caf4bcf47dac7c9b8efe.lean/declarations/hassum-iff-tendsto-nat-of-summable-norm--86dd3bc0a104687b1c856711.md) | 104 | `result-track:86dd3bc0a104687b1c85671124964983707952b22ba9b98a1ee7c3d5aacd5e24` |
| 9 | `theorem` | [Summable.of_norm_bounded](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variante9615bc707828607e437c960dfa9ae84665a53f1ec25caf4bcf47dac7c9b8efe.lean/declarations/summable-of-norm-bounded--1a4fff2c16e0ac7d88b87a47.md) | 110 | `result-track:1a4fff2c16e0ac7d88b87a4728eba5b062c1ef6adf7ba0378c0812de1d142a44` |
| 10 | `theorem` | [HasSum.norm_le_of_bounded](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variante9615bc707828607e437c960dfa9ae84665a53f1ec25caf4bcf47dac7c9b8efe.lean/declarations/hassum-norm-le-of-bounded--e29e76fbacc3ea83b7b5f2c2.md) | 115 | `result-track:e29e76fbacc3ea83b7b5f2c298cf2e9aacd26988ef57b823e195346b7d4ba484` |
| 11 | `theorem` | [tsum_of_norm_bounded](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variante9615bc707828607e437c960dfa9ae84665a53f1ec25caf4bcf47dac7c9b8efe.lean/declarations/tsum-of-norm-bounded--72fbfa3eb345c634343421d8.md) | 122 | `result-track:72fbfa3eb345c634343421d897052c79c6c308ceb857b2a8754c044c9dc683b1` |
| 12 | `theorem` | [norm_tsum_le_tsum_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variante9615bc707828607e437c960dfa9ae84665a53f1ec25caf4bcf47dac7c9b8efe.lean/declarations/norm-tsum-le-tsum-norm--a9ca85f6ccda8a6d3cadb4e9.md) | 131 | `result-track:a9ca85f6ccda8a6d3cadb4e9b72d70e6657e7421a300dcd5ef9f4f5d205562e8` |
| 13 | `theorem` | [tsum_of_nnnorm_bounded](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variante9615bc707828607e437c960dfa9ae84665a53f1ec25caf4bcf47dac7c9b8efe.lean/declarations/tsum-of-nnnorm-bounded--aadc8743404e3ad1d1efe10a.md) | 139 | `result-track:aadc8743404e3ad1d1efe10a459bf4a15df76e484f622993b54b51c5960fd90a` |
| 14 | `theorem` | [nnnorm_tsum_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variante9615bc707828607e437c960dfa9ae84665a53f1ec25caf4bcf47dac7c9b8efe.lean/declarations/nnnorm-tsum-le--0e7e5330c700a01d33283146.md) | 147 | `result-track:0e7e5330c700a01d33283146f6313c53e05f3885293b42a748b455d51441c87c` |
| 15 | `theorem` | [Summable.of_norm_bounded_eventually](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variante9615bc707828607e437c960dfa9ae84665a53f1ec25caf4bcf47dac7c9b8efe.lean/declarations/summable-of-norm-bounded-eventually--2ab7a29e6246b35ac4784764.md) | 154 | `result-track:2ab7a29e6246b35ac4784764b880d1db639634c796c4899a7d8327146437c7d4` |
| 16 | `theorem` | [Summable.of_norm_bounded_eventually_nat](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variante9615bc707828607e437c960dfa9ae84665a53f1ec25caf4bcf47dac7c9b8efe.lean/declarations/summable-of-norm-bounded-eventually-nat--6924f4931a9a3af5b84f137f.md) | 160 | `result-track:6924f4931a9a3af5b84f137fd38f524c9f29f9cb4567d1ed3752666027225bd5` |
| 17 | `theorem` | [Summable.of_nnnorm_bounded](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variante9615bc707828607e437c960dfa9ae84665a53f1ec25caf4bcf47dac7c9b8efe.lean/declarations/summable-of-nnnorm-bounded--4aa3cf01b3fc58e7af61abd2.md) | 164 | `result-track:4aa3cf01b3fc58e7af61abd28e4ae19e48a62bf3569de79351b6123d871b0f88` |
| 18 | `theorem` | [Summable.of_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variante9615bc707828607e437c960dfa9ae84665a53f1ec25caf4bcf47dac7c9b8efe.lean/declarations/summable-of-norm--c9df90ab6445c3c586ad9128.md) | 168 | `result-track:c9df90ab6445c3c586ad91283245563607b14b0082b1ef7a20031f7ee09970e2` |
| 19 | `theorem` | [Summable.of_nnnorm](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variante9615bc707828607e437c960dfa9ae84665a53f1ec25caf4bcf47dac7c9b8efe.lean/declarations/summable-of-nnnorm--b3e4336606bdd60ce77172fb.md) | 171 | `result-track:b3e4336606bdd60ce77172fb515306cb5804d70d7a0ad98bd70b22db32d07861` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
