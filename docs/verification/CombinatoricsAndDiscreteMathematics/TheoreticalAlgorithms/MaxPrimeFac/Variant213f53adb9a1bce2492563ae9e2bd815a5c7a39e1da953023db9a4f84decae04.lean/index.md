# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MaxPrimeFac.Variant213f53adb9a1bce2492563ae9e2bd815a5c7a39e1da953023db9a4f84decae04

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d70a8d34a5886f0e983c63f51d6efc87e8e244c2",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MaxPrimeFac/Variant213f53adb9a1bce2492563ae9e2bd815a5c7a39e1da953023db9a4f84decae04.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MaxPrimeFac/Variant213f53adb9a1bce2492563ae9e2bd815a5c7a39e1da953023db9a4f84decae04.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MaxPrimeFac/Variant213f53adb9a1bce2492563ae9e2bd815a5c7a39e1da953023db9a4f84decae04.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d70a8d34a5886f0e983c63f51d6efc87e8e244c2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MaxPrimeFac/Variant213f53adb9a1bce2492563ae9e2bd815a5c7a39e1da953023db9a4f84decae04.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MaxPrimeFac/Variant213f53adb9a1bce2492563ae9e2bd815a5c7a39e1da953023db9a4f84decae04.lean.json)

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
| 1 | `def` | [maxPrimeFac](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MaxPrimeFac/Variant213f53adb9a1bce2492563ae9e2bd815a5c7a39e1da953023db9a4f84decae04.lean/declarations/maxprimefac--c3eb6422adc7ab1e7bf9aa79.md) | 47 | `declaration-track:c3eb6422adc7ab1e7bf9aa79b1ad7a7ff504276f34ce8a4a8ccb314ec26aff9e` |
| 2 | `lemma` | [maxPrimeFac_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MaxPrimeFac/Variant213f53adb9a1bce2492563ae9e2bd815a5c7a39e1da953023db9a4f84decae04.lean/declarations/maxprimefac-zero--cbc72beb4ea49e1776c4e6d3.md) | 49 | `result-track:cbc72beb4ea49e1776c4e6d38b15e2bfd62f0d86eaab07bdb3c821d9348efadd` |
| 3 | `lemma` | [maxPrimeFac_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MaxPrimeFac/Variant213f53adb9a1bce2492563ae9e2bd815a5c7a39e1da953023db9a4f84decae04.lean/declarations/maxprimefac-one--6efa1e8e44227c142cc717f7.md) | 50 | `result-track:6efa1e8e44227c142cc717f7c4c8f763b36b2d7f6c7d1dc3c5a574b03452b453` |
| 4 | `lemma` | [prime_maxPrimeFac_of_one_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MaxPrimeFac/Variant213f53adb9a1bce2492563ae9e2bd815a5c7a39e1da953023db9a4f84decae04.lean/declarations/prime-maxprimefac-of-one-lt--bdf0b31ecea2d101ecd92142.md) | 52 | `result-track:bdf0b31ecea2d101ecd921428a213511d05d26b934bd88bb8011c8ca7f49a252` |
| 5 | `lemma` | [maxPrimeFac_dvd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MaxPrimeFac/Variant213f53adb9a1bce2492563ae9e2bd815a5c7a39e1da953023db9a4f84decae04.lean/declarations/maxprimefac-dvd--c40003e33439cd5f9993b33c.md) | 58 | `result-track:c40003e33439cd5f9993b33c26a66883bcecec37924ea214d9a088829bc07e6f` |
| 6 | `lemma` | [le_maxPrimeFac](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MaxPrimeFac/Variant213f53adb9a1bce2492563ae9e2bd815a5c7a39e1da953023db9a4f84decae04.lean/declarations/le-maxprimefac--57504c4413927cb058b24305.md) | 66 | `result-track:57504c4413927cb058b24305d9a980a3ca25f9175432376c9e07f96720c0781a` |
| 7 | `lemma` | [isGreatest_maxPrimeFac](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MaxPrimeFac/Variant213f53adb9a1bce2492563ae9e2bd815a5c7a39e1da953023db9a4f84decae04.lean/declarations/isgreatest-maxprimefac--e1d67d9dc479ec18331e7a76.md) | 74 | `result-track:e1d67d9dc479ec18331e7a76e3ba35ac6d3b14877e01fedda6be66dc605f01f6` |
| 8 | `lemma` | [isLUB_maxPrimeFac](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MaxPrimeFac/Variant213f53adb9a1bce2492563ae9e2bd815a5c7a39e1da953023db9a4f84decae04.lean/declarations/islub-maxprimefac--2aa400540335ff17a071a7c2.md) | 81 | `result-track:2aa400540335ff17a071a7c2d5768ba6b56ac565351f2a84927c2f82a70cbd77` |
| 9 | `lemma` | [maxPrimeFac_le_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MaxPrimeFac/Variant213f53adb9a1bce2492563ae9e2bd815a5c7a39e1da953023db9a4f84decae04.lean/declarations/maxprimefac-le-iff--9d7784c19f40f05d0f4fcdfe.md) | 85 | `result-track:9d7784c19f40f05d0f4fcdfe30b140896296ab1928291beb45988f09597d55fc` |
| 10 | `lemma` | [one_le_maxPrimeFac_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MaxPrimeFac/Variant213f53adb9a1bce2492563ae9e2bd815a5c7a39e1da953023db9a4f84decae04.lean/declarations/one-le-maxprimefac-iff--106d349408ee6f1393828686.md) | 90 | `result-track:106d349408ee6f1393828686a1808787b4f9fbb4baabc40c7b0d6cc086de89e0` |
| 11 | `lemma` | [one_lt_maxPrimeFac_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MaxPrimeFac/Variant213f53adb9a1bce2492563ae9e2bd815a5c7a39e1da953023db9a4f84decae04.lean/declarations/one-lt-maxprimefac-iff--6e33caa42ec7e04be60c9bd4.md) | 95 | `result-track:6e33caa42ec7e04be60c9bd46e44a011ba061555e14c654c65def68c6c6482ac` |
| 12 | `lemma` | [maxPrimeFac_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MaxPrimeFac/Variant213f53adb9a1bce2492563ae9e2bd815a5c7a39e1da953023db9a4f84decae04.lean/declarations/maxprimefac-mul--e9979422d8bb69d051cf1879.md) | 101 | `result-track:e9979422d8bb69d051cf1879bccc85cd6e876d640821b55bf06b58ba1a7b8ba9` |
| 13 | `lemma` | [maxPrimeFac_pow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MaxPrimeFac/Variant213f53adb9a1bce2492563ae9e2bd815a5c7a39e1da953023db9a4f84decae04.lean/declarations/maxprimefac-pow--bf0817232239ea14234fa850.md) | 116 | `result-track:bf0817232239ea14234fa8508c9c2cc3f5a50f10624a7a811a76f954b603cb61` |
| 14 | `lemma` | [Prime.maxPrimeFac_eq_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MaxPrimeFac/Variant213f53adb9a1bce2492563ae9e2bd815a5c7a39e1da953023db9a4f84decae04.lean/declarations/prime-maxprimefac-eq-self--866530d199f4387c91fc2768.md) | 124 | `result-track:866530d199f4387c91fc27686f04a2a13e3ad62ee7a2b8c0e0251cb5787c267d` |
| 15 | `lemma` | [maxPrimeFac_eq_self_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MaxPrimeFac/Variant213f53adb9a1bce2492563ae9e2bd815a5c7a39e1da953023db9a4f84decae04.lean/declarations/maxprimefac-eq-self-iff--721cebec0b6b75007fc87b7e.md) | 131 | `result-track:721cebec0b6b75007fc87b7e7f56d09db72201eba587239768dd6d2804014870` |
| 16 | `lemma` | [maxPrimeFac_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MaxPrimeFac/Variant213f53adb9a1bce2492563ae9e2bd815a5c7a39e1da953023db9a4f84decae04.lean/declarations/maxprimefac-le--7be03b48e62e1c5b39c1a668.md) | 143 | `result-track:7be03b48e62e1c5b39c1a668400174c98d541f86df738e58c9feee03328140b3` |
| 17 | `lemma` | [maxPrimeFac_eq_sSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MaxPrimeFac/Variant213f53adb9a1bce2492563ae9e2bd815a5c7a39e1da953023db9a4f84decae04.lean/declarations/maxprimefac-eq-ssup--1a81527d24a7dff22e1236bf.md) | 149 | `result-track:1a81527d24a7dff22e1236bfd66ba497cbef9ef02c7862b7214aae8f0905d95a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
