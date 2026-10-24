# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DropRight.Variant9867e7cd99c9b4a41c2cba15f9911ae9712e6ba4fdadd0f5e12ce42403b5a941

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c5eb36f86f66e0386ebcb54ed0e39f5e346f733",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant9867e7cd99c9b4a41c2cba15f9911ae9712e6ba4fdadd0f5e12ce42403b5a941.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant9867e7cd99c9b4a41c2cba15f9911ae9712e6ba4fdadd0f5e12ce42403b5a941.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant9867e7cd99c9b4a41c2cba15f9911ae9712e6ba4fdadd0f5e12ce42403b5a941.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c5eb36f86f66e0386ebcb54ed0e39f5e346f733`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant9867e7cd99c9b4a41c2cba15f9911ae9712e6ba4fdadd0f5e12ce42403b5a941.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant9867e7cd99c9b4a41c2cba15f9911ae9712e6ba4fdadd0f5e12ce42403b5a941.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Induction` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.TakeWhile` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rdrop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant9867e7cd99c9b4a41c2cba15f9911ae9712e6ba4fdadd0f5e12ce42403b5a941.lean/declarations/rdrop--b076e7757ba2ee3b664d1020.md) | 50 | `declaration-track:b076e7757ba2ee3b664d1020988855a2a70f64c51e1e19a15c5fd7b6a40e9fd0` |
| 2 | `theorem` | [rdrop_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant9867e7cd99c9b4a41c2cba15f9911ae9712e6ba4fdadd0f5e12ce42403b5a941.lean/declarations/rdrop-nil--9eb9964c484e5346c597729d.md) | 54 | `result-track:9eb9964c484e5346c597729d0d5d057f61a03e9c40ed7f1fc1f5a5249e42748b` |
| 3 | `theorem` | [rdrop_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant9867e7cd99c9b4a41c2cba15f9911ae9712e6ba4fdadd0f5e12ce42403b5a941.lean/declarations/rdrop-zero--3c54659a4bcc1423f23c03ac.md) | 57 | `result-track:3c54659a4bcc1423f23c03ac3015a6693a4109544802f79c4cf8127cb4744bfa` |
| 4 | `theorem` | [rdrop_eq_reverse_drop_reverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant9867e7cd99c9b4a41c2cba15f9911ae9712e6ba4fdadd0f5e12ce42403b5a941.lean/declarations/rdrop-eq-reverse-drop-reverse--0cf7e3885401e28d0bebdd05.md) | 59 | `result-track:0cf7e3885401e28d0bebdd059cc966e7974ce95aeaf8bf33f6e89ff4b3a40ad2` |
| 5 | `theorem` | [rdrop_concat_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant9867e7cd99c9b4a41c2cba15f9911ae9712e6ba4fdadd0f5e12ce42403b5a941.lean/declarations/rdrop-concat-succ--3bd3e924c1487cc76934a4ad.md) | 68 | `result-track:3bd3e924c1487cc76934a4adae4ec101d493a64fdaba93d549a73f4cc43e737f` |
| 6 | `def` | [rtake](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant9867e7cd99c9b4a41c2cba15f9911ae9712e6ba4fdadd0f5e12ce42403b5a941.lean/declarations/rtake--94e89f25c989c12d85fa4689.md) | 72 | `declaration-track:94e89f25c989c12d85fa468957b5e2dc0b515e38f70c2fdf24c6c661af367204` |
| 7 | `theorem` | [rtake_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant9867e7cd99c9b4a41c2cba15f9911ae9712e6ba4fdadd0f5e12ce42403b5a941.lean/declarations/rtake-nil--732448eae8b43c00ec7fdac5.md) | 76 | `result-track:732448eae8b43c00ec7fdac597b0760d5c4d90170a30040affe4770d240ff26e` |
| 8 | `theorem` | [rtake_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant9867e7cd99c9b4a41c2cba15f9911ae9712e6ba4fdadd0f5e12ce42403b5a941.lean/declarations/rtake-zero--0361b30ed1dafa7b6fa8e321.md) | 79 | `result-track:0361b30ed1dafa7b6fa8e321292032c930ff3902c8d87f4b9ca46a982272f882` |
| 9 | `theorem` | [rtake_eq_reverse_take_reverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant9867e7cd99c9b4a41c2cba15f9911ae9712e6ba4fdadd0f5e12ce42403b5a941.lean/declarations/rtake-eq-reverse-take-reverse--39407a349c9c496aeced4ab0.md) | 81 | `result-track:39407a349c9c496aeced4ab09b7830321e59cdc4a24fa9169b0d6e5203dfda44` |
| 10 | `theorem` | [rtake_concat_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant9867e7cd99c9b4a41c2cba15f9911ae9712e6ba4fdadd0f5e12ce42403b5a941.lean/declarations/rtake-concat-succ--a22604a8a3264b0bd0475d8e.md) | 90 | `result-track:a22604a8a3264b0bd0475d8e7e0d4ab41fffac3a9bf4e007726c6f367a690179` |
| 11 | `def` | [rdropWhile](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant9867e7cd99c9b4a41c2cba15f9911ae9712e6ba4fdadd0f5e12ce42403b5a941.lean/declarations/rdropwhile--d436ccfafd36e4af42779690.md) | 95 | `declaration-track:d436ccfafd36e4af42779690d282b2b079b445dec724d640cd60c028f170e6e2` |
| 12 | `theorem` | [rdropWhile_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant9867e7cd99c9b4a41c2cba15f9911ae9712e6ba4fdadd0f5e12ce42403b5a941.lean/declarations/rdropwhile-nil--005f2729aa74eee0f841bc6d.md) | 99 | `result-track:005f2729aa74eee0f841bc6dbb8b0ae16b158f4af44db0c3f686d675c159b5a5` |
| 13 | `theorem` | [rdropWhile_concat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant9867e7cd99c9b4a41c2cba15f9911ae9712e6ba4fdadd0f5e12ce42403b5a941.lean/declarations/rdropwhile-concat--9f102c7791bc53ff221ffca3.md) | 101 | `result-track:9f102c7791bc53ff221ffca32501317bc5cc28dbd77d5a6caa0b15c9bb7a17fc` |
| 14 | `theorem` | [rdropWhile_concat_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant9867e7cd99c9b4a41c2cba15f9911ae9712e6ba4fdadd0f5e12ce42403b5a941.lean/declarations/rdropwhile-concat-pos--2f7194c463e1e3bfd70e852a.md) | 107 | `result-track:2f7194c463e1e3bfd70e852a90fcd5833a86c725d697aa61b1813bb0682d7b71` |
| 15 | `theorem` | [rdropWhile_concat_neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant9867e7cd99c9b4a41c2cba15f9911ae9712e6ba4fdadd0f5e12ce42403b5a941.lean/declarations/rdropwhile-concat-neg--42c82518c45b19e271491189.md) | 111 | `result-track:42c82518c45b19e271491189fadf8ed824a4559ff397314136874ce823f2f1f9` |
| 16 | `theorem` | [rdropWhile_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant9867e7cd99c9b4a41c2cba15f9911ae9712e6ba4fdadd0f5e12ce42403b5a941.lean/declarations/rdropwhile-singleton--d506e97bc6092781d9647dad.md) | 114 | `result-track:d506e97bc6092781d9647dad5115bf5cfb60acb9f27cafb30979ee817f29b208` |
| 17 | `theorem` | [rdropWhile_last_not](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant9867e7cd99c9b4a41c2cba15f9911ae9712e6ba4fdadd0f5e12ce42403b5a941.lean/declarations/rdropwhile-last-not--f08be0874304acc80d01f729.md) | 117 | `result-track:f08be0874304acc80d01f7290e828807484a14bb26516b4c540990afaffe45dc` |
| 18 | `theorem` | [rdropWhile_prefix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant9867e7cd99c9b4a41c2cba15f9911ae9712e6ba4fdadd0f5e12ce42403b5a941.lean/declarations/rdropwhile-prefix--ac5b63ab3f9b4c94d59a91de.md) | 122 | `result-track:ac5b63ab3f9b4c94d59a91de06d49f55c02aab022659cb3ca5e303167ed9347c` |
| 19 | `theorem` | [rdropWhile_eq_nil_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant9867e7cd99c9b4a41c2cba15f9911ae9712e6ba4fdadd0f5e12ce42403b5a941.lean/declarations/rdropwhile-eq-nil-iff--1143c1aeea9193c32b4e306e.md) | 129 | `result-track:1143c1aeea9193c32b4e306e35ccf79fc1ef06b1764fface465b80622c89a92c` |
| 20 | `theorem` | [dropWhile_eq_self_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant9867e7cd99c9b4a41c2cba15f9911ae9712e6ba4fdadd0f5e12ce42403b5a941.lean/declarations/dropwhile-eq-self-iff--543869ef7020e59caa1125fb.md) | 133 | `result-track:543869ef7020e59caa1125fb5c4ae66fcd7ba328178b5874629a1430851e198b` |
| 21 | `theorem` | [rdropWhile_eq_self_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant9867e7cd99c9b4a41c2cba15f9911ae9712e6ba4fdadd0f5e12ce42403b5a941.lean/declarations/rdropwhile-eq-self-iff--1867291ad0cdd3b93da4cc58.md) | 152 | `result-track:1867291ad0cdd3b93da4cc581627d4ebb73b16d8dcd27ec4550bde900f312ee4` |
| 22 | `theorem` | [dropWhile_idempotent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant9867e7cd99c9b4a41c2cba15f9911ae9712e6ba4fdadd0f5e12ce42403b5a941.lean/declarations/dropwhile-idempotent--8620b0b073aa477c0877c34d.md) | 157 | `result-track:8620b0b073aa477c0877c34dd95ee6d462f794e90a38f7ff07b180db49e0bd51` |
| 23 | `theorem` | [rdropWhile_idempotent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant9867e7cd99c9b4a41c2cba15f9911ae9712e6ba4fdadd0f5e12ce42403b5a941.lean/declarations/rdropwhile-idempotent--97cb4c52c5083bea05ee3ca1.md) | 161 | `result-track:97cb4c52c5083bea05ee3ca14ed6e59204f65ac404fd84df0767efa9f7d5369f` |
| 24 | `def` | [rtakeWhile](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant9867e7cd99c9b4a41c2cba15f9911ae9712e6ba4fdadd0f5e12ce42403b5a941.lean/declarations/rtakewhile--5b98b676d2ab24b7cfc68a79.md) | 166 | `declaration-track:5b98b676d2ab24b7cfc68a79bf26c6c334ab453da595a225de1c7b743a7e8054` |
| 25 | `theorem` | [rtakeWhile_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant9867e7cd99c9b4a41c2cba15f9911ae9712e6ba4fdadd0f5e12ce42403b5a941.lean/declarations/rtakewhile-nil--a6748eaa6177f12de2c31f3b.md) | 170 | `result-track:a6748eaa6177f12de2c31f3bbbff8dbfd21b56ddc54b41dfa226e9bb88b4b24d` |
| 26 | `theorem` | [rtakeWhile_concat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant9867e7cd99c9b4a41c2cba15f9911ae9712e6ba4fdadd0f5e12ce42403b5a941.lean/declarations/rtakewhile-concat--7668f7b1841e00861a2d8c8c.md) | 172 | `result-track:7668f7b1841e00861a2d8c8c733480f77ca0dc51df7cbdb0878ba509042fade9` |
| 27 | `theorem` | [rtakeWhile_concat_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant9867e7cd99c9b4a41c2cba15f9911ae9712e6ba4fdadd0f5e12ce42403b5a941.lean/declarations/rtakewhile-concat-pos--89936113d599dd06101a7c6c.md) | 178 | `result-track:89936113d599dd06101a7c6c069fb7bae6ac65d3c5ed678bf63d04f6f31f395d` |
| 28 | `theorem` | [rtakeWhile_concat_neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant9867e7cd99c9b4a41c2cba15f9911ae9712e6ba4fdadd0f5e12ce42403b5a941.lean/declarations/rtakewhile-concat-neg--2ca047b5b99dc73dc609d10b.md) | 182 | `result-track:2ca047b5b99dc73dc609d10b9dd97adcf005768bd3442a38ba58b49774232bdf` |
| 29 | `theorem` | [rtakeWhile_suffix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant9867e7cd99c9b4a41c2cba15f9911ae9712e6ba4fdadd0f5e12ce42403b5a941.lean/declarations/rtakewhile-suffix--17516c96e3b1319293e16f2c.md) | 185 | `result-track:17516c96e3b1319293e16f2c14948c3c9e328f061cd640f1d0993555dc5cfec6` |
| 30 | `theorem` | [rtakeWhile_eq_self_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant9867e7cd99c9b4a41c2cba15f9911ae9712e6ba4fdadd0f5e12ce42403b5a941.lean/declarations/rtakewhile-eq-self-iff--7ac9812a60a0cc00c0a460a7.md) | 192 | `result-track:7ac9812a60a0cc00c0a460a7b2e140567fca61a0a276bd1bc005ae64b661fa94` |
| 31 | `theorem` | [rtakeWhile_eq_nil_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant9867e7cd99c9b4a41c2cba15f9911ae9712e6ba4fdadd0f5e12ce42403b5a941.lean/declarations/rtakewhile-eq-nil-iff--0cff86bf91584fe5afdc2ba4.md) | 196 | `result-track:0cff86bf91584fe5afdc2ba409e6c543d4840a63f06783d69e36171895cbd28b` |
| 32 | `theorem` | [mem_rtakeWhile_imp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant9867e7cd99c9b4a41c2cba15f9911ae9712e6ba4fdadd0f5e12ce42403b5a941.lean/declarations/mem-rtakewhile-imp--c2c89cb3c8bd6c552175d663.md) | 199 | `result-track:c2c89cb3c8bd6c552175d663872f896cbf6e3cd31e6899abf74c22b618195f8d` |
| 33 | `theorem` | [rtakeWhile_idempotent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant9867e7cd99c9b4a41c2cba15f9911ae9712e6ba4fdadd0f5e12ce42403b5a941.lean/declarations/rtakewhile-idempotent--b308ab4948c00dac14aa3711.md) | 203 | `result-track:b308ab4948c00dac14aa37112b4bbbfa107efc1cde335aff74ba06d8d94a3a9e` |
| 34 | `lemma` | [rdrop_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant9867e7cd99c9b4a41c2cba15f9911ae9712e6ba4fdadd0f5e12ce42403b5a941.lean/declarations/rdrop-add--86b3a490a68e539159147a9f.md) | 207 | `result-track:86b3a490a68e539159147a9f36e086877bad61fa5dd3672945f804689e2d7536` |
| 35 | `lemma` | [rdrop_append_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant9867e7cd99c9b4a41c2cba15f9911ae9712e6ba4fdadd0f5e12ce42403b5a941.lean/declarations/rdrop-append-length--ff94d52d95e620b9f5574c4e.md) | 211 | `result-track:ff94d52d95e620b9f5574c4ee3ede165f6d6940884a0c9145e0cfbd9cfc5d421` |
| 36 | `lemma` | [rdrop_append_of_le_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant9867e7cd99c9b4a41c2cba15f9911ae9712e6ba4fdadd0f5e12ce42403b5a941.lean/declarations/rdrop-append-of-le-length--89d5651b358efc4fb44bddcd.md) | 216 | `result-track:89d5651b358efc4fb44bddcdb683ab051e7606f042d21f695c6b0ee69b7270dc` |
| 37 | `lemma` | [rdrop_append_length_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant9867e7cd99c9b4a41c2cba15f9911ae9712e6ba4fdadd0f5e12ce42403b5a941.lean/declarations/rdrop-append-length-add--d60d39830b2a31e60b7eb92c.md) | 224 | `result-track:d60d39830b2a31e60b7eb92c5c03131dc7fd2d373f2c0df65a27752768cf96e8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
