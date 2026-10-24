# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Bitwise.Variant457f9b6ea6b6b639d7219cd5f00e7fb390604730cf51f25d8f01d2a14a3b87d2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "102b37ee8fc2c8513fcfdaa1b9ed83f6a06fa2a1",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant457f9b6ea6b6b639d7219cd5f00e7fb390604730cf51f25d8f01d2a14a3b87d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant457f9b6ea6b6b639d7219cd5f00e7fb390604730cf51f25d8f01d2a14a3b87d2.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant457f9b6ea6b6b639d7219cd5f00e7fb390604730cf51f25d8f01d2a14a3b87d2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `102b37ee8fc2c8513fcfdaa1b9ed83f6a06fa2a1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant457f9b6ea6b6b639d7219cd5f00e7fb390604730cf51f25d8f01d2a14a3b87d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant457f9b6ea6b6b639d7219cd5f00e7fb390604730cf51f25d8f01d2a14a3b87d2.lean.json)

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
| 1 | `lemma` | [bitwise_zero_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant457f9b6ea6b6b639d7219cd5f00e7fb390604730cf51f25d8f01d2a14a3b87d2.lean/declarations/bitwise-zero-left--3c48f450b342116a639498c8.md) | 55 | `result-track:3c48f450b342116a639498c85d6f4662591dfb6a2f3932040f22a523cd1183d5` |
| 2 | `lemma` | [bitwise_zero_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant457f9b6ea6b6b639d7219cd5f00e7fb390604730cf51f25d8f01d2a14a3b87d2.lean/declarations/bitwise-zero-right--569d1446f3f3e294ad28757a.md) | 59 | `result-track:569d1446f3f3e294ad28757a2f888d08f4fa53105ddf757978323b0ca6cc45ac` |
| 3 | `lemma` | [bitwise_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant457f9b6ea6b6b639d7219cd5f00e7fb390604730cf51f25d8f01d2a14a3b87d2.lean/declarations/bitwise-zero--a536630eef71083774beaa8f.md) | 65 | `result-track:a536630eef71083774beaa8fbbf28aa7196090e4c15c49959e2072ca60712b43` |
| 4 | `lemma` | [bitwise_of_ne_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant457f9b6ea6b6b639d7219cd5f00e7fb390604730cf51f25d8f01d2a14a3b87d2.lean/declarations/bitwise-of-ne-zero--337190502cb16b1e22bf0ee0.md) | 68 | `result-track:337190502cb16b1e22bf0ee007a080e7b1748b998a563757982faec09372cefb` |
| 5 | `theorem` | [binaryRec_of_ne_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant457f9b6ea6b6b639d7219cd5f00e7fb390604730cf51f25d8f01d2a14a3b87d2.lean/declarations/binaryrec-of-ne-zero--e248f444d81760470da7e6e8.md) | 75 | `result-track:e248f444d81760470da7e6e87f864386c599759209b052a283642a0c10445ea6` |
| 6 | `lemma` | [bitwise_bit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant457f9b6ea6b6b639d7219cd5f00e7fb390604730cf51f25d8f01d2a14a3b87d2.lean/declarations/bitwise-bit--08657763461e51d5e360cd94.md) | 81 | `result-track:08657763461e51d5e360cd9450a01886331d43972a052df8915932ee93c0aed0` |
| 7 | `lemma` | [bit_mod_two_eq_zero_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant457f9b6ea6b6b639d7219cd5f00e7fb390604730cf51f25d8f01d2a14a3b87d2.lean/declarations/bit-mod-two-eq-zero-iff--61c496f77595ca3633b46646.md) | 89 | `result-track:61c496f77595ca3633b4664600b6e5f6af9b2e4b52c96d9da15522f133918085` |
| 8 | `lemma` | [bit_mod_two_eq_one_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant457f9b6ea6b6b639d7219cd5f00e7fb390604730cf51f25d8f01d2a14a3b87d2.lean/declarations/bit-mod-two-eq-one-iff--5f95441aa8b3708ba5bdf38d.md) | 93 | `result-track:5f95441aa8b3708ba5bdf38d977e385a4a4bea52d27a7363678d945ed9b46c2d` |
| 9 | `theorem` | [lor_bit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant457f9b6ea6b6b639d7219cd5f00e7fb390604730cf51f25d8f01d2a14a3b87d2.lean/declarations/lor-bit--bab36482a5f327874da2f9c5.md) | 98 | `result-track:bab36482a5f327874da2f9c599d7e0764e2eb3b78ef381187d4b0e01dc579c6e` |
| 10 | `theorem` | [land_bit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant457f9b6ea6b6b639d7219cd5f00e7fb390604730cf51f25d8f01d2a14a3b87d2.lean/declarations/land-bit--42cb27a088f0e0bb78274e74.md) | 102 | `result-track:42cb27a088f0e0bb78274e74ab9dbd3cc7837c82641f3ae6ac69e90d4ba6e9c3` |
| 11 | `theorem` | [ldiff_bit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant457f9b6ea6b6b639d7219cd5f00e7fb390604730cf51f25d8f01d2a14a3b87d2.lean/declarations/ldiff-bit--c53becb4fe8c6df3a97000ab.md) | 106 | `result-track:c53becb4fe8c6df3a97000ab5de00c4bea1da8f224c1e500c4f40cccf265ea6c` |
| 12 | `theorem` | [xor_bit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant457f9b6ea6b6b639d7219cd5f00e7fb390604730cf51f25d8f01d2a14a3b87d2.lean/declarations/xor-bit--2b8a630904effd335367064c.md) | 110 | `result-track:2b8a630904effd335367064cc19207a34707dfbef2d7ff2e736b6dfcbf3c010d` |
| 13 | `theorem` | [testBit_lor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant457f9b6ea6b6b639d7219cd5f00e7fb390604730cf51f25d8f01d2a14a3b87d2.lean/declarations/testbit-lor--54d82b41b57de9049c93a528.md) | 115 | `result-track:54d82b41b57de9049c93a5288c4971d7c5c51de685c70cf3aa83d316cdd5cfa4` |
| 14 | `theorem` | [testBit_land](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant457f9b6ea6b6b639d7219cd5f00e7fb390604730cf51f25d8f01d2a14a3b87d2.lean/declarations/testbit-land--0d8edf89af0b3e67a0253b44.md) | 118 | `result-track:0d8edf89af0b3e67a0253b442d916d2ebc752671270f5695ccd8654c0a967daf` |
| 15 | `theorem` | [testBit_ldiff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant457f9b6ea6b6b639d7219cd5f00e7fb390604730cf51f25d8f01d2a14a3b87d2.lean/declarations/testbit-ldiff--eeb397e1260ea37eccb4dba1.md) | 122 | `result-track:eeb397e1260ea37eccb4dba17e935507adc8116838e87b24b50c04583eee7b4a` |
| 16 | `lemma` | [bitwise_bit'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant457f9b6ea6b6b639d7219cd5f00e7fb390604730cf51f25d8f01d2a14a3b87d2.lean/declarations/bitwise-bit--3fa993602f9eb04d6cc78559.md) | 130 | `result-track:3fa993602f9eb04d6cc7855902784d6cdcfe6e5314a2724bf25f0366a0c37b79` |
| 17 | `lemma` | [bitwise_eq_binaryRec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant457f9b6ea6b6b639d7219cd5f00e7fb390604730cf51f25d8f01d2a14a3b87d2.lean/declarations/bitwise-eq-binaryrec--a1ac0cc4dae076173977eb98.md) | 139 | `result-track:a1ac0cc4dae076173977eb9864938c76fa1afc62bc94e0c7a19ab309637038ea` |
| 18 | `theorem` | [zero_of_testBit_eq_false](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant457f9b6ea6b6b639d7219cd5f00e7fb390604730cf51f25d8f01d2a14a3b87d2.lean/declarations/zero-of-testbit-eq-false--cc2611982b8c00acc0ea4413.md) | 156 | `result-track:cc2611982b8c00acc0ea4413a55f13ee967e0770bae4e990c1af05fc712c445b` |
| 19 | `theorem` | [testBit_eq_false_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant457f9b6ea6b6b639d7219cd5f00e7fb390604730cf51f25d8f01d2a14a3b87d2.lean/declarations/testbit-eq-false-of-lt--45a09fea43addc454630c0d1.md) | 161 | `result-track:45a09fea43addc454630c0d1bc0bb6ace582f6dd94285568efe81a935131161d` |
| 20 | `theorem` | [testBit_eq_inth](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant457f9b6ea6b6b639d7219cd5f00e7fb390604730cf51f25d8f01d2a14a3b87d2.lean/declarations/testbit-eq-inth--ff5fb6613b17a6fa3bddc687.md) | 165 | `result-track:ff5fb6613b17a6fa3bddc6876c945ac7f58c62abe06e98157df894178080c2cb` |
| 21 | `theorem` | [exists_most_significant_bit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant457f9b6ea6b6b639d7219cd5f00e7fb390604730cf51f25d8f01d2a14a3b87d2.lean/declarations/exists-most-significant-bit--6d7ea370cd94ee1304e2e847.md) | 176 | `result-track:6d7ea370cd94ee1304e2e847005200ef5c0388c8a32eae137f29997b37eda0f8` |
| 22 | `theorem` | [lt_of_testBit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant457f9b6ea6b6b639d7219cd5f00e7fb390604730cf51f25d8f01d2a14a3b87d2.lean/declarations/lt-of-testbit--302e3dfd6d4bd9f2783b801b.md) | 192 | `result-track:302e3dfd6d4bd9f2783b801b56fc11440501e4390d8a27b298faaae7ccaa9da1` |
| 23 | `theorem` | [bitwise_swap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant457f9b6ea6b6b639d7219cd5f00e7fb390604730cf51f25d8f01d2a14a3b87d2.lean/declarations/bitwise-swap--4315640cd7dc364325178f97.md) | 217 | `result-track:4315640cd7dc364325178f9793c4b496c19596c5c87f2f09744ed60c82298672` |
| 24 | `theorem` | [bitwise_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant457f9b6ea6b6b639d7219cd5f00e7fb390604730cf51f25d8f01d2a14a3b87d2.lean/declarations/bitwise-comm--a5d4da84a7ba2dd83ea3328f.md) | 230 | `result-track:a5d4da84a7ba2dd83ea3328feabf5a64b6747d455851b36e0ef9d276607b474b` |
| 25 | `theorem` | [lor_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant457f9b6ea6b6b639d7219cd5f00e7fb390604730cf51f25d8f01d2a14a3b87d2.lean/declarations/lor-comm--aa99ea3a4161f9b31ab431fb.md) | 237 | `result-track:aa99ea3a4161f9b31ab431fb077a0a490fe36c8d56972ea8644e99dfb5509f55` |
| 26 | `theorem` | [land_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant457f9b6ea6b6b639d7219cd5f00e7fb390604730cf51f25d8f01d2a14a3b87d2.lean/declarations/land-comm--8e8c8866be14e9a60562c624.md) | 240 | `result-track:8e8c8866be14e9a60562c6249c04bcb3e08f4b7d95f361262ede03f9d3996c65` |
| 27 | `lemma` | [and_two_pow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant457f9b6ea6b6b639d7219cd5f00e7fb390604730cf51f25d8f01d2a14a3b87d2.lean/declarations/and-two-pow--10fe9bd5af2cb6f7f52946e6.md) | 243 | `result-track:10fe9bd5af2cb6f7f52946e6b368fc960ee5dc46c9f017a2b2719c85097f3fe0` |
| 28 | `lemma` | [two_pow_and](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant457f9b6ea6b6b639d7219cd5f00e7fb390604730cf51f25d8f01d2a14a3b87d2.lean/declarations/two-pow-and--301984484e710a4fc930a08e.md) | 251 | `result-track:301984484e710a4fc930a08e35e24f286ca411113be6785ae0be35770f9a4acf` |
| 29 | `macro` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant457f9b6ea6b6b639d7219cd5f00e7fb390604730cf51f25d8f01d2a14a3b87d2.lean/declarations/macro--3cd54a594124f4857aa24f62.md) | 256 | `declaration-track:3cd54a594124f4857aa24f620f4e62b22dda31cd7a259291106e039ae495925f` |
| 30 | `theorem` | [land_assoc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant457f9b6ea6b6b639d7219cd5f00e7fb390604730cf51f25d8f01d2a14a3b87d2.lean/declarations/land-assoc--ae4d1ff1e046da496bbf3628.md) | 262 | `result-track:ae4d1ff1e046da496bbf3628e6bc63d7cb9f31e695d354d5fc2d980bd374209e` |
| 31 | `theorem` | [lor_assoc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant457f9b6ea6b6b639d7219cd5f00e7fb390604730cf51f25d8f01d2a14a3b87d2.lean/declarations/lor-assoc--d2e199ff3bb7236fed304fa4.md) | 264 | `result-track:d2e199ff3bb7236fed304fa438eab8d6159ad0327f7bf3d239a271cd7716eea5` |
| 32 | `theorem` | [xor_trichotomy](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant457f9b6ea6b6b639d7219cd5f00e7fb390604730cf51f25d8f01d2a14a3b87d2.lean/declarations/xor-trichotomy--ab8a920ee0663423aa00bbd6.md) | 266 | `result-track:ab8a920ee0663423aa00bbd6d1858656a6d7f87cfc20273f2e57f1b34e4d79de` |
| 33 | `theorem` | [lt_xor_cases](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant457f9b6ea6b6b639d7219cd5f00e7fb390604730cf51f25d8f01d2a14a3b87d2.lean/declarations/lt-xor-cases--6cbb7c8946a80d14bf8df4e5.md) | 296 | `result-track:6cbb7c8946a80d14bf8df4e53554f2d5a9b9c6234a658de72dd96c528d10d043` |
| 34 | `theorem` | [xor_mod_two_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant457f9b6ea6b6b639d7219cd5f00e7fb390604730cf51f25d8f01d2a14a3b87d2.lean/declarations/xor-mod-two-eq--d92ce106e6ad81914a56c29f.md) | 301 | `result-track:d92ce106e6ad81914a56c29f577181522fe41b0eba1a869a112796b4e3b403fe` |
| 35 | `theorem` | [even_xor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant457f9b6ea6b6b639d7219cd5f00e7fb390604730cf51f25d8f01d2a14a3b87d2.lean/declarations/even-xor--ac80acf4f7277c6af3f8541a.md) | 311 | `result-track:ac80acf4f7277c6af3f8541a55578ceb6ded393e77c04f8191cbd4475057a824` |
| 36 | `theorem` | [xor_one_of_even](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant457f9b6ea6b6b639d7219cd5f00e7fb390604730cf51f25d8f01d2a14a3b87d2.lean/declarations/xor-one-of-even--3414742825e746fab138c583.md) | 316 | `result-track:3414742825e746fab138c58373e77bce48c25b420f49092720590c37c3884177` |
| 37 | `theorem` | [xor_one_of_odd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant457f9b6ea6b6b639d7219cd5f00e7fb390604730cf51f25d8f01d2a14a3b87d2.lean/declarations/xor-one-of-odd--af3f6929452324137859ad59.md) | 324 | `result-track:af3f6929452324137859ad592d0b35b7cd89a83998af5f82044c1212f14fd3dd` |
| 38 | `theorem` | [xor_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant457f9b6ea6b6b639d7219cd5f00e7fb390604730cf51f25d8f01d2a14a3b87d2.lean/declarations/xor-range--a7b4371c96c1d3931c4ad1a7.md) | 333 | `result-track:a7b4371c96c1d3931c4ad1a77748a34131a339b0e4a66733e9be904ec2a8bd71` |
| 39 | `lemma` | [shiftLeft_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant457f9b6ea6b6b639d7219cd5f00e7fb390604730cf51f25d8f01d2a14a3b87d2.lean/declarations/shiftleft-lt--a271318111834699ef20b81f.md) | 355 | `result-track:a271318111834699ef20b81fe35c46565f3bdd4b3a690410fbcbb78ed464dce2` |
| 40 | `lemma` | [append_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant457f9b6ea6b6b639d7219cd5f00e7fb390604730cf51f25d8f01d2a14a3b87d2.lean/declarations/append-lt--132317cead376690cd6ab2c9.md) | 359 | `result-track:132317cead376690cd6ab2c9e1bf000479411de69a61d55c35837ae088a064ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
