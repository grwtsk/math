# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Pairwise.Variant41965f675c118d7828714a6de4d924871f4f942c8546a93b3675d39baf02aa5a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d76da8d260e95eb38104fe43bec295250587090",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant41965f675c118d7828714a6de4d924871f4f942c8546a93b3675d39baf02aa5a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant41965f675c118d7828714a6de4d924871f4f942c8546a93b3675d39baf02aa5a.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant41965f675c118d7828714a6de4d924871f4f942c8546a93b3675d39baf02aa5a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d76da8d260e95eb38104fe43bec295250587090`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant41965f675c118d7828714a6de4d924871f4f942c8546a93b3675d39baf02aa5a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant41965f675c118d7828714a6de4d924871f4f942c8546a93b3675d39baf02aa5a.lean.json)

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
| 1 | `theorem` | [pairwise_iff_forall_infix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant41965f675c118d7828714a6de4d924871f4f942c8546a93b3675d39baf02aa5a.lean/declarations/pairwise-iff-forall-infix--e07a36df48e69bde09f2f94a.md) | 44 | `result-track:e07a36df48e69bde09f2f94a69cc5d74eec277e02f8992ae0eabcb275adfdb72` |
| 2 | `theorem` | [Pairwise.forall_of_forall](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant41965f675c118d7828714a6de4d924871f4f942c8546a93b3675d39baf02aa5a.lean/declarations/pairwise-forall-of-forall--06b2d47e4d2cc5a8918c9dcd.md) | 51 | `result-track:06b2d47e4d2cc5a8918c9dcd584741f5a7ee0b9d6461df3be579dcc6e4a54657` |
| 3 | `theorem` | [Pairwise.forall](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant41965f675c118d7828714a6de4d924871f4f942c8546a93b3675d39baf02aa5a.lean/declarations/pairwise-forall--7a73fa295fb4ece5c0389a57.md) | 55 | `result-track:7a73fa295fb4ece5c0389a57a8e9e005ec918bc73752d69d12c2ac05c752874e` |
| 4 | `theorem` | [Pairwise.set_pairwise](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant41965f675c118d7828714a6de4d924871f4f942c8546a93b3675d39baf02aa5a.lean/declarations/pairwise-set-pairwise--cea63b85bc685dd8f6ba5303.md) | 62 | `result-track:cea63b85bc685dd8f6ba53035ac3ba53c68c0036cf11500ed523b75b509e88f4` |
| 5 | `theorem` | [pairwise_of_reflexive_of_forall_ne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant41965f675c118d7828714a6de4d924871f4f942c8546a93b3675d39baf02aa5a.lean/declarations/pairwise-of-reflexive-of-forall-ne--8ad1aaf5e46f6d1cfd06036d.md) | 65 | `result-track:8ad1aaf5e46f6d1cfd06036d98d65f70e091b0b59a75a6d0a00b90710483f9aa` |
| 6 | `theorem` | [pairwise_append_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant41965f675c118d7828714a6de4d924871f4f942c8546a93b3675d39baf02aa5a.lean/declarations/pairwise-append-of-mem--7875be62a3c41c760c63c597.md) | 75 | `result-track:7875be62a3c41c760c63c5975b42f20add7e14170eb904fc44eb6da5c833b026` |
| 7 | `theorem` | [pairwise_cons_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant41965f675c118d7828714a6de4d924871f4f942c8546a93b3675d39baf02aa5a.lean/declarations/pairwise-cons-of-mem--363dc90ed711da32492b94f8.md) | 82 | `result-track:363dc90ed711da32492b94f82a16e5f3e0ef2f383f7400ca459e5c2c269cde18` |
| 8 | `theorem` | [Pairwise.rel_head_tail](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant41965f675c118d7828714a6de4d924871f4f942c8546a93b3675d39baf02aa5a.lean/declarations/pairwise-rel-head-tail--183bda2072eda8f8f69129ed.md) | 86 | `result-track:183bda2072eda8f8f69129ed0a41df289c40080aa1f8f837c3041175cdcd089c` |
| 9 | `theorem` | [Pairwise.rel_head_of_rel_head_head](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant41965f675c118d7828714a6de4d924871f4f942c8546a93b3675d39baf02aa5a.lean/declarations/pairwise-rel-head-of-rel-head-head--8fa71871cbb1a8a6c4347150.md) | 90 | `result-track:8fa71871cbb1a8a6c43471505fd4f0ad62223efe77590751f86181a380c57e33` |
| 10 | `theorem` | [Pairwise.rel_head](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant41965f675c118d7828714a6de4d924871f4f942c8546a93b3675d39baf02aa5a.lean/declarations/pairwise-rel-head--c088ef1232a1d57897e8b369.md) | 95 | `result-track:c088ef1232a1d57897e8b369267723fd06db8f4739d636ae76ae7b82fd973ce3` |
| 11 | `theorem` | [Pairwise.rel_dropLast_getLast](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant41965f675c118d7828714a6de4d924871f4f942c8546a93b3675d39baf02aa5a.lean/declarations/pairwise-rel-droplast-getlast--208840fe8e62afa01438435c.md) | 99 | `result-track:208840fe8e62afa01438435cb2e57b9838f92c0175d9fdae852d72f0f688ce0f` |
| 12 | `theorem` | [Pairwise.rel_getLast_of_rel_getLast_getLast](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant41965f675c118d7828714a6de4d924871f4f942c8546a93b3675d39baf02aa5a.lean/declarations/pairwise-rel-getlast-of-rel-getlast-getlast--92a762e2313bd719d216e1f8.md) | 105 | `result-track:92a762e2313bd719d216e1f8e0684ae500d1e5b793eaa73aa6c2644edafca3b0` |
| 13 | `theorem` | [Pairwise.rel_getLast](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant41965f675c118d7828714a6de4d924871f4f942c8546a93b3675d39baf02aa5a.lean/declarations/pairwise-rel-getlast--2c147ab2038b6abc5218dd8e.md) | 111 | `result-track:2c147ab2038b6abc5218dd8e7d5b65133ff7a37597f65d7d924c7564c033edfb` |
| 14 | `theorem` | [Pairwise.head!_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant41965f675c118d7828714a6de4d924871f4f942c8546a93b3675d39baf02aa5a.lean/declarations/pairwise-head-le--3a6a2f642f10aedcb0fc285f.md) | 117 | `result-track:3a6a2f642f10aedcb0fc285f3809d39aab9632e9b48fc1f405a09674b43b1c8a` |
| 15 | `theorem` | [pairwise_replicate_of_refl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant41965f675c118d7828714a6de4d924871f4f942c8546a93b3675d39baf02aa5a.lean/declarations/pairwise-replicate-of-refl--4fb03858325a9b7d14c34be6.md) | 125 | `result-track:4fb03858325a9b7d14c34be68277a5e0bb69dd9b3e30d5bfcdd6de8cc9e392d8` |
| 16 | `theorem` | [pairwise_cons_cons_iff_of_trans](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant41965f675c118d7828714a6de4d924871f4f942c8546a93b3675d39baf02aa5a.lean/declarations/pairwise-cons-cons-iff-of-trans--e59c8ae991a86fcbe9a66224.md) | 132 | `result-track:e59c8ae991a86fcbe9a66224b9d4baf146de0e6fe53e1ac3e05efb860441d0a0` |
| 17 | `theorem` | [Pairwise.cons_cons_of_trans](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant41965f675c118d7828714a6de4d924871f4f942c8546a93b3675d39baf02aa5a.lean/declarations/pairwise-cons-cons-of-trans--0ec6069b64f860e227a6aa70.md) | 136 | `result-track:0ec6069b64f860e227a6aa700a3fd7a373533b495a5cedba8d76ff8b7f931773` |
| 18 | `theorem` | [Pairwise.rel_get_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant41965f675c118d7828714a6de4d924871f4f942c8546a93b3675d39baf02aa5a.lean/declarations/pairwise-rel-get-of-lt--ad7c4e18c4927baff54e1d02.md) | 141 | `result-track:ad7c4e18c4927baff54e1d02abb604ba76b62676ce1883411593740784654f45` |
| 19 | `theorem` | [Pairwise.rel_get_of_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant41965f675c118d7828714a6de4d924871f4f942c8546a93b3675d39baf02aa5a.lean/declarations/pairwise-rel-get-of-le--48824fa5cd4ae299849f2268.md) | 145 | `result-track:48824fa5cd4ae299849f2268b9cd63a4a508ffb71b6e765520a4ef5061ddcbb4` |
| 20 | `theorem` | [Pairwise.decide](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant41965f675c118d7828714a6de4d924871f4f942c8546a93b3675d39baf02aa5a.lean/declarations/pairwise-decide--6aa398c3f621e6da8481664e.md) | 149 | `result-track:6aa398c3f621e6da8481664eef599dc86f3fad989ef7fc679f1dbf8c57ee6a5d` |
| 21 | `theorem` | [tfae_iff_pairwise](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant41965f675c118d7828714a6de4d924871f4f942c8546a93b3675d39baf02aa5a.lean/declarations/tfae-iff-pairwise--623a27aa015c11767aff3e2f.md) | 159 | `result-track:623a27aa015c11767aff3e2fb7e0cd3162a51e3f6293c8d9aa6dbd3c80e6eed8` |
| 22 | `theorem` | [tfae_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant41965f675c118d7828714a6de4d924871f4f942c8546a93b3675d39baf02aa5a.lean/declarations/tfae-append--e21c9cb555ce81f989748889.md) | 162 | `result-track:e21c9cb555ce81f98974888922530f7427cde4199952e6577cd4d9d6897c399f` |
| 23 | `theorem` | [tfae_append_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant41965f675c118d7828714a6de4d924871f4f942c8546a93b3675d39baf02aa5a.lean/declarations/tfae-append-of-mem--9a34290cdabcea9942773709.md) | 166 | `result-track:9a34290cdabcea99427737093fa287ba4cc7efe966eb78d70044d94533e706ef` |
| 24 | `theorem` | [tfae_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant41965f675c118d7828714a6de4d924871f4f942c8546a93b3675d39baf02aa5a.lean/declarations/tfae-cons--bb3bd0f93d0b255b9dad454b.md) | 170 | `result-track:bb3bd0f93d0b255b9dad454b1c454a6fd6143217ecf90ef49cb7c768981386b3` |
| 25 | `theorem` | [tfae_cons_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant41965f675c118d7828714a6de4d924871f4f942c8546a93b3675d39baf02aa5a.lean/declarations/tfae-cons-of-mem--d51b869fe553a813d0b85b9d.md) | 174 | `result-track:d51b869fe553a813d0b85b9ded9313caa5b87dba21f0b953b0dc707976d76541` |
| 26 | `theorem` | [tfae_concat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant41965f675c118d7828714a6de4d924871f4f942c8546a93b3675d39baf02aa5a.lean/declarations/tfae-concat--0105f8f5d5d2ecac7fab8fb2.md) | 177 | `result-track:0105f8f5d5d2ecac7fab8fb24ca419e12857c4415fe8fa5f48dc971934ddc077` |
| 27 | `theorem` | [tfae_concat_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant41965f675c118d7828714a6de4d924871f4f942c8546a93b3675d39baf02aa5a.lean/declarations/tfae-concat-of-mem--1fd1fd56fa7cf24616b54fba.md) | 181 | `result-track:1fd1fd56fa7cf24616b54fbaa5873b9efee3aa455e28297298321ea5e5a91f34` |
| 28 | `theorem` | [tfae_cons_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant41965f675c118d7828714a6de4d924871f4f942c8546a93b3675d39baf02aa5a.lean/declarations/tfae-cons-cons--75db1923fa54e04a8944063d.md) | 184 | `result-track:75db1923fa54e04a8944063d6b25f4c095aa4e64d594a2e4bbd0705a3994b8bd` |
| 29 | `theorem` | [tfae_cons_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant41965f675c118d7828714a6de4d924871f4f942c8546a93b3675d39baf02aa5a.lean/declarations/tfae-cons-self--623765d1ed1fc0e7b920c363.md) | 188 | `result-track:623765d1ed1fc0e7b920c3634aee2fc88531296d359364a14f9cc4d5e8314bfb` |
| 30 | `theorem` | [tfae_of_cycle](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant41965f675c118d7828714a6de4d924871f4f942c8546a93b3675d39baf02aa5a.lean/declarations/tfae-of-cycle--09ff576ce0f9ce72c604dd0a.md) | 190 | `result-track:09ff576ce0f9ce72c604dd0a3352bf4c38b7d849a754acfdd4662c598d7dce17` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
