# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.Basic.Variant11514555716413f8a4a937ef2be1751b8ed8c4ae393936e670145e8204e69b72

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "399d1bf36952c5f9cef5634fd03f1be0236c5f03",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variant11514555716413f8a4a937ef2be1751b8ed8c4ae393936e670145e8204e69b72.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variant11514555716413f8a4a937ef2be1751b8ed8c4ae393936e670145e8204e69b72.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variant11514555716413f8a4a937ef2be1751b8ed8c4ae393936e670145e8204e69b72.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `399d1bf36952c5f9cef5634fd03f1be0236c5f03`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variant11514555716413f8a4a937ef2be1751b8ed8c4ae393936e670145e8204e69b72.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variant11514555716413f8a4a937ef2be1751b8ed8c4ae393936e670145e8204e69b72.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.SetLike.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SupIndep` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Partition](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variant11514555716413f8a4a937ef2be1751b8ed8c4ae393936e670145e8204e69b72.lean/declarations/partition--b866ff82e0673001611befef.md) | 37 | `declaration-track:b866ff82e0673001611befef9ac1d702ac661b56727e13d6b4e1acb748373010` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variant11514555716413f8a4a937ef2be1751b8ed8c4ae393936e670145e8204e69b72.lean/declarations/instance--90168ba27c78cbd93b182fba.md) | 55 | `declaration-track:90168ba27c78cbd93b182fba196ab1768c18c0f61994b6e599ddd00096a871ea` |
| 3 | `def` | [Simps.coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variant11514555716413f8a4a937ef2be1751b8ed8c4ae393936e670145e8204e69b72.lean/declarations/simps-coe--aafeb9506466b262817ee5e0.md) | 60 | `declaration-track:aafeb9506466b262817ee5e042b784d4db418eb9422e5b84adaca17eab51b99f` |
| 4 | `lemma` | [coe_parts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variant11514555716413f8a4a937ef2be1751b8ed8c4ae393936e670145e8204e69b72.lean/declarations/coe-parts--3a1dedeca845f904c227a42d.md) | 64 | `result-track:3a1dedeca845f904c227a42db3f306c2f755c49a7346251d0bedb6c0df93c857` |
| 5 | `lemma` | [ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variant11514555716413f8a4a937ef2be1751b8ed8c4ae393936e670145e8204e69b72.lean/declarations/ext--1423081e1ab9d18d3f62be1c.md) | 66 | `result-track:1423081e1ab9d18d3f62be1c9f168c58f8c2fb0cc055e654c5dd4eccf81d5708` |
| 6 | `lemma` | [sSupIndep](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variant11514555716413f8a4a937ef2be1751b8ed8c4ae393936e670145e8204e69b72.lean/declarations/ssupindep--79bec6e507d5dd5b4b233b36.md) | 70 | `result-track:79bec6e507d5dd5b4b233b362979ec157c09b4edb87dd5c755eaedfb68ff00af` |
| 7 | `lemma` | [disjoint](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variant11514555716413f8a4a937ef2be1751b8ed8c4ae393936e670145e8204e69b72.lean/declarations/disjoint--4921e2a6f3a54a343d21ff45.md) | 73 | `result-track:4921e2a6f3a54a343d21ff45b3400e44e74137064f9fc1b8cc0fb8d801059411` |
| 8 | `lemma` | [pairwiseDisjoint](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variant11514555716413f8a4a937ef2be1751b8ed8c4ae393936e670145e8204e69b72.lean/declarations/pairwisedisjoint--2f20e52ffc863b0b1ce45d98.md) | 77 | `result-track:2f20e52ffc863b0b1ce45d9856d4f80293b9104d8434d2508f134d5072adc3c6` |
| 9 | `lemma` | [sSup_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variant11514555716413f8a4a937ef2be1751b8ed8c4ae393936e670145e8204e69b72.lean/declarations/ssup-eq--5e6a4e0269862ed1b2b8f246.md) | 81 | `result-track:5e6a4e0269862ed1b2b8f246b55334f8574da5264bbf6e2460e40e45f9aac206` |
| 10 | `lemma` | [iSup_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variant11514555716413f8a4a937ef2be1751b8ed8c4ae393936e670145e8204e69b72.lean/declarations/isup-eq--db3db8ae4d2fd14e8bae5921.md) | 85 | `result-track:db3db8ae4d2fd14e8bae59217c655cc851c4bdd5bfd8144446a4cf84691bccba` |
| 11 | `lemma` | [le_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variant11514555716413f8a4a937ef2be1751b8ed8c4ae393936e670145e8204e69b72.lean/declarations/le-of-mem--b9a9bb3fa721244777100293.md) | 89 | `result-track:b9a9bb3fa7212447771002931ac75fa9a8c036336d26a6c93cbcfaa8c9405358` |
| 12 | `lemma` | [parts_nonempty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variant11514555716413f8a4a937ef2be1751b8ed8c4ae393936e670145e8204e69b72.lean/declarations/parts-nonempty--9c6e7ba4841fb293ddded0e5.md) | 92 | `result-track:9c6e7ba4841fb293ddded0e5bb7d776028cc2f3ea0c9213131a481b79bad164a` |
| 13 | `lemma` | [bot_notMem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variant11514555716413f8a4a937ef2be1751b8ed8c4ae393936e670145e8204e69b72.lean/declarations/bot-notmem--fc5c4783ec321d1744f1c0cb.md) | 96 | `result-track:fc5c4783ec321d1744f1c0cbb4401a700eb3db85bef9f4021fa4ee0d6370b122` |
| 14 | `lemma` | [ne_bot_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variant11514555716413f8a4a937ef2be1751b8ed8c4ae393936e670145e8204e69b72.lean/declarations/ne-bot-of-mem--22137c1bd3a0df926127d2f3.md) | 101 | `result-track:22137c1bd3a0df926127d2f3472aafe857b18b47b11d82bf39ba330ecf6cd6b5` |
| 15 | `lemma` | [bot_lt_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variant11514555716413f8a4a937ef2be1751b8ed8c4ae393936e670145e8204e69b72.lean/declarations/bot-lt-of-mem--b27f9d1fc9d5cba93995fb39.md) | 104 | `result-track:b27f9d1fc9d5cba93995fb39dc22e5af9e356c68a5d7614dee39175f22ff6fed` |
| 16 | `def` | [copy](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variant11514555716413f8a4a937ef2be1751b8ed8c4ae393936e670145e8204e69b72.lean/declarations/copy--b2287aa2fbae5c5d859df4d3.md) | 109 | `declaration-track:b2287aa2fbae5c5d859df4d3e178b2714ff59500d6cafca5106d5006de63eac6` |
| 17 | `lemma` | [mem_copy_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variant11514555716413f8a4a937ef2be1751b8ed8c4ae393936e670145e8204e69b72.lean/declarations/mem-copy-iff--13d61e42dbdc44eee94d9dd6.md) | 116 | `result-track:13d61e42dbdc44eee94d9dd6cd77e24af7275a8f60470b5ce840c6986d3efc12` |
| 18 | `def` | [partscopyEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variant11514555716413f8a4a937ef2be1751b8ed8c4ae393936e670145e8204e69b72.lean/declarations/partscopyequiv--96fb52782a186b4bb37d4039.md) | 120 | `declaration-track:96fb52782a186b4bb37d4039ec51c48ea71499b339d204f591fe9dbd6a92e3c2` |
| 19 | `def` | [removeBot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variant11514555716413f8a4a937ef2be1751b8ed8c4ae393936e670145e8204e69b72.lean/declarations/removebot--e2af9e53604aa15a61d77c17.md) | 125 | `declaration-track:e2af9e53604aa15a61d77c1765df121bdc2920e3f44381f6c8be26dad8d80bed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
