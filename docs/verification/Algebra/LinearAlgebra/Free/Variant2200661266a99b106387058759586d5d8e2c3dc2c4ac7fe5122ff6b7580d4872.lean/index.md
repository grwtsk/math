# Verification target: GRWTSK.Algebra.LinearAlgebra.Free.Variant2200661266a99b106387058759586d5d8e2c3dc2c4ac7fe5122ff6b7580d4872

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "07eb158871e4ae857d498449709000aaaba180eb",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Free/Variant2200661266a99b106387058759586d5d8e2c3dc2c4ac7fe5122ff6b7580d4872.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant2200661266a99b106387058759586d5d8e2c3dc2c4ac7fe5122ff6b7580d4872.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant2200661266a99b106387058759586d5d8e2c3dc2c4ac7fe5122ff6b7580d4872.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `07eb158871e4ae857d498449709000aaaba180eb`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Free/Variant2200661266a99b106387058759586d5d8e2c3dc2c4ac7fe5122ff6b7580d4872.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Free/Variant2200661266a99b106387058759586d5d8e2c3dc2c4ac7fe5122ff6b7580d4872.lean.json)

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
| 1 | `class` | [Module.IsTorsionFree](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant2200661266a99b106387058759586d5d8e2c3dc2c4ac7fe5122ff6b7580d4872.lean/declarations/module-istorsionfree--b84216266a0429fe1824aade.md) | 53 | `declaration-track:b84216266a0429fe1824aade392c9008927af991da45d1a26adfcd166e4e3c29` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant2200661266a99b106387058759586d5d8e2c3dc2c4ac7fe5122ff6b7580d4872.lean/declarations/instance--db0035fdbcad2d1bc18b6243.md) | 58 | `declaration-track:db0035fdbcad2d1bc18b6243fd0fec26d74c08a3a7155266eb9b4e7a9e6dbe87` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant2200661266a99b106387058759586d5d8e2c3dc2c4ac7fe5122ff6b7580d4872.lean/declarations/instance--8c016c182721c158eb0bccc1.md) | 59 | `declaration-track:8c016c182721c158eb0bccc11c1938c5bedb1b90153ac9dc4bdbd8c57daf7ef4` |
| 4 | `lemma` | [Function.Injective.moduleIsTorsionFree](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant2200661266a99b106387058759586d5d8e2c3dc2c4ac7fe5122ff6b7580d4872.lean/declarations/function-injective-moduleistorsionfree--694550c72dcb14c547b211b4.md) | 62 | `result-track:694550c72dcb14c547b211b4506cc532727c871a2c28258fa8e52811788acadb` |
| 5 | `lemma` | [Module.IsTorsionFree.comap](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant2200661266a99b106387058759586d5d8e2c3dc2c4ac7fe5122ff6b7580d4872.lean/declarations/module-istorsionfree-comap--955f8c73f11a5fdd28e6f8d0.md) | 68 | `result-track:955f8c73f11a5fdd28e6f8d0ae4876b7e105cd8d7fc7dd1f620b767969349c1b` |
| 6 | `instance` | [IsAddTorsionFree.to_isTorsionFree_nat](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant2200661266a99b106387058759586d5d8e2c3dc2c4ac7fe5122ff6b7580d4872.lean/declarations/isaddtorsionfree-to-istorsionfree-nat--a0634e6629f96ed3d8f7e955.md) | 73 | `declaration-track:a0634e6629f96ed3d8f7e955ccdd75b4368a792101cf8486579b6a32bb2882c4` |
| 7 | `instance` | [Subsingleton.to_moduleIsTorsionFree](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant2200661266a99b106387058759586d5d8e2c3dc2c4ac7fe5122ff6b7580d4872.lean/declarations/subsingleton-to-moduleistorsionfree--6e98db0b51c77fb41c8f7983.md) | 76 | `declaration-track:6e98db0b51c77fb41c8f79831310f7e41b5776087dbcfd12d6509cfff2bfe905` |
| 8 | `lemma` | [IsRegular.smul_right_injective](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant2200661266a99b106387058759586d5d8e2c3dc2c4ac7fe5122ff6b7580d4872.lean/declarations/isregular-smul-right-injective--88f27889d5fcaf008005211d.md) | 82 | `result-track:88f27889d5fcaf008005211d097088b9840ceb362b140b7d8d3a1067d23bdab5` |
| 9 | `lemma` | [IsRegular.smul_right_inj](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant2200661266a99b106387058759586d5d8e2c3dc2c4ac7fe5122ff6b7580d4872.lean/declarations/isregular-smul-right-inj--7a86f2b662d3e8b4aeb780f3.md) | 85 | `result-track:7a86f2b662d3e8b4aeb780f37c0328182f110d82af3fbba55dd99df615349ecf` |
| 10 | `lemma` | [IsRegular.smul_eq_zero_iff_right](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant2200661266a99b106387058759586d5d8e2c3dc2c4ac7fe5122ff6b7580d4872.lean/declarations/isregular-smul-eq-zero-iff-right--bab72dd67e9fed23fe8fb7d9.md) | 88 | `result-track:bab72dd67e9fed23fe8fb7d92c9674cce2932e648209d663fa8fd55108541a83` |
| 11 | `lemma` | [IsRegular.smul_ne_zero_iff_right](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant2200661266a99b106387058759586d5d8e2c3dc2c4ac7fe5122ff6b7580d4872.lean/declarations/isregular-smul-ne-zero-iff-right--3d6dc0d973c54d33d63ba879.md) | 91 | `result-track:3d6dc0d973c54d33d63ba8790df0945e94090f0d50692ee3e84a5ba0370bb388` |
| 12 | `lemma` | [Module.IsTorsionFree.trans](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant2200661266a99b106387058759586d5d8e2c3dc2c4ac7fe5122ff6b7580d4872.lean/declarations/module-istorsionfree-trans--c13a12fe59b6c363610babf1.md) | 95 | `result-track:c13a12fe59b6c363610babf17d6cb041d3a6e68a9b506b75644ba97fe22c0f2e` |
| 13 | `lemma` | [IsSMulRegular.of_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant2200661266a99b106387058759586d5d8e2c3dc2c4ac7fe5122ff6b7580d4872.lean/declarations/issmulregular-of-ne-zero--05d7e407e6e913d665771a3c.md) | 104 | `result-track:05d7e407e6e913d665771a3c25fd8f006ac7d4db1b3b01f79e9b55e5bbc1b6f5` |
| 14 | `lemma` | [smul_right_injective](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant2200661266a99b106387058759586d5d8e2c3dc2c4ac7fe5122ff6b7580d4872.lean/declarations/smul-right-injective--ae59a4e94cb809fdfc74377f.md) | 108 | `result-track:ae59a4e94cb809fdfc74377f702a51b32454953c4c4948bb7cd66e48b9a0e81c` |
| 15 | `lemma` | [smul_right_inj](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant2200661266a99b106387058759586d5d8e2c3dc2c4ac7fe5122ff6b7580d4872.lean/declarations/smul-right-inj--14dde7006ce93a85dccb99e2.md) | 111 | `result-track:14dde7006ce93a85dccb99e2d8bdccef24a443e079c2a69736a0c86c7448ff91` |
| 16 | `lemma` | [smul_eq_zero_iff_right](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant2200661266a99b106387058759586d5d8e2c3dc2c4ac7fe5122ff6b7580d4872.lean/declarations/smul-eq-zero-iff-right--44d041d63691879466b1a319.md) | 114 | `result-track:44d041d63691879466b1a319930e49bf0b6345423db8f5878879bef50fd38d24` |
| 17 | `lemma` | [smul_ne_zero_iff_right](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant2200661266a99b106387058759586d5d8e2c3dc2c4ac7fe5122ff6b7580d4872.lean/declarations/smul-ne-zero-iff-right--d235e39ce8c3ac3ac0317bd2.md) | 117 | `result-track:d235e39ce8c3ac3ac0317bd24317061e622128245875cf9b2a595aeee0da1f60` |
| 18 | `lemma` | [smul_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant2200661266a99b106387058759586d5d8e2c3dc2c4ac7fe5122ff6b7580d4872.lean/declarations/smul-eq-zero--052d8911e2dd78f4965d9a41.md) | 119 | `result-track:052d8911e2dd78f4965d9a41fa0d2496e2f29a94c252bb10920a41c8ff8d0148` |
| 19 | `lemma` | [smul_ne_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant2200661266a99b106387058759586d5d8e2c3dc2c4ac7fe5122ff6b7580d4872.lean/declarations/smul-ne-zero-iff--27a6fe64023bf3c88a7c2f3e.md) | 122 | `result-track:27a6fe64023bf3c88a7c2f3e2e7278aa8397f59afb590f64bea7c7ba23524fd7` |
| 20 | `lemma` | [smul_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant2200661266a99b106387058759586d5d8e2c3dc2c4ac7fe5122ff6b7580d4872.lean/declarations/smul-ne-zero--0c0117086b6b046d4f332f5f.md) | 124 | `result-track:0c0117086b6b046d4f332f5f4fe6b963476ea154c0e537be42d060807a0dc94f` |
| 21 | `lemma` | [smul_eq_zero_iff_left](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant2200661266a99b106387058759586d5d8e2c3dc2c4ac7fe5122ff6b7580d4872.lean/declarations/smul-eq-zero-iff-left--3496a49615b543a59ef049ec.md) | 126 | `result-track:3496a49615b543a59ef049ec8ddd00e20a2dc4c4d1f5b409f27f344bb54aaf3a` |
| 22 | `lemma` | [smul_ne_zero_iff_left](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant2200661266a99b106387058759586d5d8e2c3dc2c4ac7fe5122ff6b7580d4872.lean/declarations/smul-ne-zero-iff-left--e61c25d7f833a4885a5f5abd.md) | 127 | `result-track:e61c25d7f833a4885a5f5abdac58e90508857859883850f9844bb56574e76383` |
| 23 | `lemma` | [IsAddTorsionFree.of_isTorsionFree](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant2200661266a99b106387058759586d5d8e2c3dc2c4ac7fe5122ff6b7580d4872.lean/declarations/isaddtorsionfree-of-istorsionfree--516b456513ff2a52c16f1e30.md) | 133 | `result-track:516b456513ff2a52c16f1e3009792b6763ed7766db0b11e7c67138dd537025f1` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant2200661266a99b106387058759586d5d8e2c3dc2c4ac7fe5122ff6b7580d4872.lean/declarations/instance--03fe76ed94fe7d939a84f4a0.md) | 138 | `declaration-track:03fe76ed94fe7d939a84f4a05f57355f06fb60d4ae9ecc21e3c13382ce125ff2` |
| 25 | `lemma` | [Module.isTorsionFree_nat_iff_isAddTorsionFree](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant2200661266a99b106387058759586d5d8e2c3dc2c4ac7fe5122ff6b7580d4872.lean/declarations/module-istorsionfree-nat-iff-isaddtorsionfree--32276a79b7d565339e6404ab.md) | 142 | `result-track:32276a79b7d565339e6404ab2a884e73dab557a34847949139bca63f65ac976f` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant2200661266a99b106387058759586d5d8e2c3dc2c4ac7fe5122ff6b7580d4872.lean/declarations/instance--653afad6f3b8d03feb753a91.md) | 151 | `declaration-track:653afad6f3b8d03feb753a91e7ab507a75bfd2356977bbb7b1b86db0f9e454da` |
| 27 | `lemma` | [Module.isTorsionFree_int_iff_isAddTorsionFree](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant2200661266a99b106387058759586d5d8e2c3dc2c4ac7fe5122ff6b7580d4872.lean/declarations/module-istorsionfree-int-iff-isaddtorsionfree--2030e0b4489ccc275f1389ec.md) | 155 | `result-track:2030e0b4489ccc275f1389ec7b9457a4438a75f58468562f51dff7364fd4d3a1` |
| 28 | `theorem` | [isLeftRegular_natCast](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant2200661266a99b106387058759586d5d8e2c3dc2c4ac7fe5122ff6b7580d4872.lean/declarations/isleftregular-natcast--e365702b2d0bc5501a2c3e13.md) | 167 | `result-track:e365702b2d0bc5501a2c3e13645bb71e5471f378cf5e753805e97ca4e9294535` |
| 29 | `theorem` | [isRightRegular_natCast](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant2200661266a99b106387058759586d5d8e2c3dc2c4ac7fe5122ff6b7580d4872.lean/declarations/isrightregular-natcast--7cd764ac4dfc5c456b3dab09.md) | 171 | `result-track:7cd764ac4dfc5c456b3dab0934adfc2728da7b56305f6f915715f4b7e6bec3e3` |
| 30 | `theorem` | [isRegular_natCast](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant2200661266a99b106387058759586d5d8e2c3dc2c4ac7fe5122ff6b7580d4872.lean/declarations/isregular-natcast--141c7bec5c78926c3cea9172.md) | 175 | `result-track:141c7bec5c78926c3cea917236d7e79dfe4e0c90c77147a39dd5c5fd8b403248` |
| 31 | `lemma` | [Module.IsTorsionFree.of_smul_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant2200661266a99b106387058759586d5d8e2c3dc2c4ac7fe5122ff6b7580d4872.lean/declarations/module-istorsionfree-of-smul-eq-zero--ae2934b3a107deee15af0767.md) | 183 | `result-track:ae2934b3a107deee15af0767abbd016307d69e23e60eca8fe2f64559b0681687` |
| 32 | `lemma` | [Module.isTorsionFree_iff_smul_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant2200661266a99b106387058759586d5d8e2c3dc2c4ac7fe5122ff6b7580d4872.lean/declarations/module-istorsionfree-iff-smul-eq-zero--6466c2271ba6eea011c98be2.md) | 189 | `result-track:6466c2271ba6eea011c98be2a27fb78d38e73853a7d9594f9e9f3ea59584ee1c` |
| 33 | `lemma` | [smul_left_injective](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant2200661266a99b106387058759586d5d8e2c3dc2c4ac7fe5122ff6b7580d4872.lean/declarations/smul-left-injective--02207d3e36824557d917c36b.md) | 197 | `result-track:02207d3e36824557d917c36b01a9a31bdb013e66a0204f7540279ec82b787a3a` |
| 34 | `lemma` | [smul_left_inj](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant2200661266a99b106387058759586d5d8e2c3dc2c4ac7fe5122ff6b7580d4872.lean/declarations/smul-left-inj--ba0073d54e4d0d190dbbda2a.md) | 202 | `result-track:ba0073d54e4d0d190dbbda2a8c7bfd68a51b5678a4ab04ee277bd0d360cb19b5` |
| 35 | `lemma` | [CharZero.of_isAddTorsionFree](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant2200661266a99b106387058759586d5d8e2c3dc2c4ac7fe5122ff6b7580d4872.lean/declarations/charzero-of-isaddtorsionfree--3658cf2285950854a6a17569.md) | 213 | `result-track:3658cf2285950854a6a175691558b245d0f3cf49fb35474e946dd5a90cae5b4e` |
| 36 | `theorem` | [isSelfNeg_of_isSMulRegular_two](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant2200661266a99b106387058759586d5d8e2c3dc2c4ac7fe5122ff6b7580d4872.lean/declarations/isselfneg-of-issmulregular-two--0564a01cd1fce95a99e64eaf.md) | 224 | `result-track:0564a01cd1fce95a99e64eafabed252304afa043cfaf40c3c4c28a634d8964ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
