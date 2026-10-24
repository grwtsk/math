# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DropRight.Variant3bb9772b6ab2093462eef62adaf7270d6bcff6419a3912aff2d809ebb62cb92f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "388d1b64d112c93272381ab1cc59bc09fb01681b",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant3bb9772b6ab2093462eef62adaf7270d6bcff6419a3912aff2d809ebb62cb92f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant3bb9772b6ab2093462eef62adaf7270d6bcff6419a3912aff2d809ebb62cb92f.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant3bb9772b6ab2093462eef62adaf7270d6bcff6419a3912aff2d809ebb62cb92f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `388d1b64d112c93272381ab1cc59bc09fb01681b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant3bb9772b6ab2093462eef62adaf7270d6bcff6419a3912aff2d809ebb62cb92f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant3bb9772b6ab2093462eef62adaf7270d6bcff6419a3912aff2d809ebb62cb92f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Induction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.TakeWhile` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rdrop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant3bb9772b6ab2093462eef62adaf7270d6bcff6419a3912aff2d809ebb62cb92f.lean/declarations/rdrop--780d59514adc4fcbb4b6e3ca.md) | 42 | `declaration-track:780d59514adc4fcbb4b6e3cab45bd3dd9b16d7e5061bc72dbd124e755ea8ed11` |
| 2 | `theorem` | [rdrop_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant3bb9772b6ab2093462eef62adaf7270d6bcff6419a3912aff2d809ebb62cb92f.lean/declarations/rdrop-nil--9df4e1ab8b62e5a2ea89c4c6.md) | 46 | `result-track:9df4e1ab8b62e5a2ea89c4c6aa83e8a63f08daf5d2e303248c69d77c4bb10c1f` |
| 3 | `theorem` | [rdrop_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant3bb9772b6ab2093462eef62adaf7270d6bcff6419a3912aff2d809ebb62cb92f.lean/declarations/rdrop-zero--ceb1ffe1cfd48f18b6bb37f2.md) | 49 | `result-track:ceb1ffe1cfd48f18b6bb37f2d1408fd54522427f76f3711fb672981d6aa03c74` |
| 4 | `theorem` | [rdrop_eq_reverse_drop_reverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant3bb9772b6ab2093462eef62adaf7270d6bcff6419a3912aff2d809ebb62cb92f.lean/declarations/rdrop-eq-reverse-drop-reverse--e2d4874acaaabec7323036b5.md) | 51 | `result-track:e2d4874acaaabec7323036b5833c2c8d4205bff63eb7c05c036659f98e64756a` |
| 5 | `theorem` | [rdrop_concat_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant3bb9772b6ab2093462eef62adaf7270d6bcff6419a3912aff2d809ebb62cb92f.lean/declarations/rdrop-concat-succ--c8f1cce208e6f99784df8e44.md) | 60 | `result-track:c8f1cce208e6f99784df8e44d5c88e791815124630a34eca0aaea182caba26f8` |
| 6 | `def` | [rtake](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant3bb9772b6ab2093462eef62adaf7270d6bcff6419a3912aff2d809ebb62cb92f.lean/declarations/rtake--947cfa393480ba3e540b435d.md) | 64 | `declaration-track:947cfa393480ba3e540b435d280ea9a19fd9582afa4e603f459c1f2ad8b3d245` |
| 7 | `theorem` | [rtake_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant3bb9772b6ab2093462eef62adaf7270d6bcff6419a3912aff2d809ebb62cb92f.lean/declarations/rtake-nil--2535c41c4446290e830bd094.md) | 68 | `result-track:2535c41c4446290e830bd0945373dc47441a3214bad35315f35490e27395a311` |
| 8 | `theorem` | [rtake_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant3bb9772b6ab2093462eef62adaf7270d6bcff6419a3912aff2d809ebb62cb92f.lean/declarations/rtake-zero--42a681799fa0729d275b3dae.md) | 71 | `result-track:42a681799fa0729d275b3daeff210187461d9a0080dd58224c063cc7c257a262` |
| 9 | `theorem` | [rtake_eq_reverse_take_reverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant3bb9772b6ab2093462eef62adaf7270d6bcff6419a3912aff2d809ebb62cb92f.lean/declarations/rtake-eq-reverse-take-reverse--49cade29abb4730039887ec6.md) | 73 | `result-track:49cade29abb4730039887ec645be599c8f32e2c8a1ee153f4439dd1242cf182e` |
| 10 | `theorem` | [rtake_concat_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant3bb9772b6ab2093462eef62adaf7270d6bcff6419a3912aff2d809ebb62cb92f.lean/declarations/rtake-concat-succ--6681569d56e91bcbc431168c.md) | 82 | `result-track:6681569d56e91bcbc431168c0b3f65fa1f6d1b111c951dad440e1c739476e955` |
| 11 | `def` | [rdropWhile](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant3bb9772b6ab2093462eef62adaf7270d6bcff6419a3912aff2d809ebb62cb92f.lean/declarations/rdropwhile--645b20a9124e66c0b88b473e.md) | 87 | `declaration-track:645b20a9124e66c0b88b473e5c07a911740d206f214aa511874e285ce3ddb0d8` |
| 12 | `theorem` | [rdropWhile_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant3bb9772b6ab2093462eef62adaf7270d6bcff6419a3912aff2d809ebb62cb92f.lean/declarations/rdropwhile-nil--ebbe95b0245aeb21f725b8c8.md) | 91 | `result-track:ebbe95b0245aeb21f725b8c8c41aa4d7f50afba4c0443c27f3b873af92a2f0e2` |
| 13 | `theorem` | [rdropWhile_concat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant3bb9772b6ab2093462eef62adaf7270d6bcff6419a3912aff2d809ebb62cb92f.lean/declarations/rdropwhile-concat--b3bae7df96c3fb90c09996c2.md) | 93 | `result-track:b3bae7df96c3fb90c09996c29d819422d94f813ec3c2786c14d636c614199cd0` |
| 14 | `theorem` | [rdropWhile_concat_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant3bb9772b6ab2093462eef62adaf7270d6bcff6419a3912aff2d809ebb62cb92f.lean/declarations/rdropwhile-concat-pos--e9a35dfaaac443b89ca9ae20.md) | 99 | `result-track:e9a35dfaaac443b89ca9ae20dcd96f3f3b288d2a362e13c862b8383f5660383e` |
| 15 | `theorem` | [rdropWhile_concat_neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant3bb9772b6ab2093462eef62adaf7270d6bcff6419a3912aff2d809ebb62cb92f.lean/declarations/rdropwhile-concat-neg--864102acea823e467f222f3e.md) | 103 | `result-track:864102acea823e467f222f3e7bb13e7870e74c205b651d2e9fb585748ca178da` |
| 16 | `theorem` | [rdropWhile_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant3bb9772b6ab2093462eef62adaf7270d6bcff6419a3912aff2d809ebb62cb92f.lean/declarations/rdropwhile-singleton--b893963efd28126db9cba54b.md) | 106 | `result-track:b893963efd28126db9cba54bfbd3ee747b0a32dd39881c2cf44f882973423a77` |
| 17 | `theorem` | [rdropWhile_last_not](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant3bb9772b6ab2093462eef62adaf7270d6bcff6419a3912aff2d809ebb62cb92f.lean/declarations/rdropwhile-last-not--948bcff9fcde35089afd3614.md) | 109 | `result-track:948bcff9fcde35089afd3614afd8a612322ee089f74181dcdc71525190a867fe` |
| 18 | `theorem` | [rdropWhile_prefix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant3bb9772b6ab2093462eef62adaf7270d6bcff6419a3912aff2d809ebb62cb92f.lean/declarations/rdropwhile-prefix--f0d5b91626fba1d3b880f8c6.md) | 114 | `result-track:f0d5b91626fba1d3b880f8c6664a850ca70dfe2fd7f8f11e4edeedeba773fd0f` |
| 19 | `theorem` | [rdropWhile_eq_nil_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant3bb9772b6ab2093462eef62adaf7270d6bcff6419a3912aff2d809ebb62cb92f.lean/declarations/rdropwhile-eq-nil-iff--30a5f1feee1c63a5a39e3def.md) | 121 | `result-track:30a5f1feee1c63a5a39e3def6dfeef5efff3032440fc5a3c4960975b775b5a7b` |
| 20 | `theorem` | [dropWhile_eq_self_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant3bb9772b6ab2093462eef62adaf7270d6bcff6419a3912aff2d809ebb62cb92f.lean/declarations/dropwhile-eq-self-iff--7eac76ef5cee0bfc49d2bc5a.md) | 125 | `result-track:7eac76ef5cee0bfc49d2bc5a020af27480d09093566ad2e1cf154dbc5588a9fe` |
| 21 | `theorem` | [rdropWhile_eq_self_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant3bb9772b6ab2093462eef62adaf7270d6bcff6419a3912aff2d809ebb62cb92f.lean/declarations/rdropwhile-eq-self-iff--9f1f08160ebf991f03f10c10.md) | 144 | `result-track:9f1f08160ebf991f03f10c102ee3fe3da6feaa1d770e610c99e48ec8473af9e6` |
| 22 | `theorem` | [dropWhile_idempotent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant3bb9772b6ab2093462eef62adaf7270d6bcff6419a3912aff2d809ebb62cb92f.lean/declarations/dropwhile-idempotent--62590beeffaf66ff9a29f23a.md) | 149 | `result-track:62590beeffaf66ff9a29f23ac65d05bd0a72d848190feacfb32d53447f5d1f7a` |
| 23 | `theorem` | [rdropWhile_idempotent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant3bb9772b6ab2093462eef62adaf7270d6bcff6419a3912aff2d809ebb62cb92f.lean/declarations/rdropwhile-idempotent--0c4d36ae29a27fc8c4ee822f.md) | 153 | `result-track:0c4d36ae29a27fc8c4ee822ffbfa580d5d277bff029e3ffd66839a3f7e16ecba` |
| 24 | `def` | [rtakeWhile](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant3bb9772b6ab2093462eef62adaf7270d6bcff6419a3912aff2d809ebb62cb92f.lean/declarations/rtakewhile--bc6469a7b6639c7d98304030.md) | 158 | `declaration-track:bc6469a7b6639c7d98304030dd82cd328d4f125aa490af15121725e7e83b3be3` |
| 25 | `theorem` | [rtakeWhile_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant3bb9772b6ab2093462eef62adaf7270d6bcff6419a3912aff2d809ebb62cb92f.lean/declarations/rtakewhile-nil--c72a628ec5b91740ee56998b.md) | 162 | `result-track:c72a628ec5b91740ee56998b4abc4ccd4b93b399dd45a4e4ceab3cc7ffaae11b` |
| 26 | `theorem` | [rtakeWhile_concat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant3bb9772b6ab2093462eef62adaf7270d6bcff6419a3912aff2d809ebb62cb92f.lean/declarations/rtakewhile-concat--1a12a807d633edee144b0a4a.md) | 164 | `result-track:1a12a807d633edee144b0a4afc3b0d758d3c0d490058c5980906be29a582d771` |
| 27 | `theorem` | [rtakeWhile_concat_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant3bb9772b6ab2093462eef62adaf7270d6bcff6419a3912aff2d809ebb62cb92f.lean/declarations/rtakewhile-concat-pos--1d5295122cdd8565d0bca5a1.md) | 170 | `result-track:1d5295122cdd8565d0bca5a178392714e1c6b50944ff92c5e92ccdaf6f579a49` |
| 28 | `theorem` | [rtakeWhile_concat_neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant3bb9772b6ab2093462eef62adaf7270d6bcff6419a3912aff2d809ebb62cb92f.lean/declarations/rtakewhile-concat-neg--a09acd96a692e0ff9ad4e18e.md) | 174 | `result-track:a09acd96a692e0ff9ad4e18e5eca7759c79e14184e232666e8ab65d463b10e4d` |
| 29 | `theorem` | [rtakeWhile_suffix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant3bb9772b6ab2093462eef62adaf7270d6bcff6419a3912aff2d809ebb62cb92f.lean/declarations/rtakewhile-suffix--a8a49522a7dbc1a19da83ee0.md) | 177 | `result-track:a8a49522a7dbc1a19da83ee06309ca8e6426aa6a2893f0498e03b4210fcf36a4` |
| 30 | `theorem` | [rtakeWhile_eq_self_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant3bb9772b6ab2093462eef62adaf7270d6bcff6419a3912aff2d809ebb62cb92f.lean/declarations/rtakewhile-eq-self-iff--f536bbc4cdff85bacb8d569d.md) | 184 | `result-track:f536bbc4cdff85bacb8d569d9e47947c3ff5b7d463fec1f37e4cd8e55cef70a3` |
| 31 | `theorem` | [rtakeWhile_eq_nil_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant3bb9772b6ab2093462eef62adaf7270d6bcff6419a3912aff2d809ebb62cb92f.lean/declarations/rtakewhile-eq-nil-iff--beaa9eb27b1d3dc1037fcd18.md) | 188 | `result-track:beaa9eb27b1d3dc1037fcd183b764ef3d9dcbe5b0880bb555e346831dc0295d2` |
| 32 | `theorem` | [mem_rtakeWhile_imp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant3bb9772b6ab2093462eef62adaf7270d6bcff6419a3912aff2d809ebb62cb92f.lean/declarations/mem-rtakewhile-imp--f6f390dd4d44c2f88373d504.md) | 191 | `result-track:f6f390dd4d44c2f88373d504c829028ba4c8a20db6763b54467068993d01f8b7` |
| 33 | `theorem` | [rtakeWhile_idempotent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant3bb9772b6ab2093462eef62adaf7270d6bcff6419a3912aff2d809ebb62cb92f.lean/declarations/rtakewhile-idempotent--d95a58656cede3fb9e0d51b8.md) | 195 | `result-track:d95a58656cede3fb9e0d51b8ca7068067f354d0c8d932e3c97fe2e234d03b7c5` |
| 34 | `lemma` | [rdrop_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant3bb9772b6ab2093462eef62adaf7270d6bcff6419a3912aff2d809ebb62cb92f.lean/declarations/rdrop-add--010815d985c44bfa13b51902.md) | 199 | `result-track:010815d985c44bfa13b519021f910ea31769e022c1c083523d596de997c32f98` |
| 35 | `lemma` | [rdrop_append_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant3bb9772b6ab2093462eef62adaf7270d6bcff6419a3912aff2d809ebb62cb92f.lean/declarations/rdrop-append-length--8fa91a530c9c56c48fa59b5d.md) | 203 | `result-track:8fa91a530c9c56c48fa59b5d029f67a84633b214ffc7f2d77f4f4e3bb350ce12` |
| 36 | `lemma` | [rdrop_append_of_le_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant3bb9772b6ab2093462eef62adaf7270d6bcff6419a3912aff2d809ebb62cb92f.lean/declarations/rdrop-append-of-le-length--577b865425b7b5c0e31cf66a.md) | 208 | `result-track:577b865425b7b5c0e31cf66a54be9d3186b3f0552378a01b3149afc9378979f9` |
| 37 | `lemma` | [rdrop_append_length_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant3bb9772b6ab2093462eef62adaf7270d6bcff6419a3912aff2d809ebb62cb92f.lean/declarations/rdrop-append-length-add--80d376734e57dcb2cc3c2a3f.md) | 216 | `result-track:80d376734e57dcb2cc3c2a3f2fb111e12eb93f1c1458f756922dbe5de3aaf63d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
