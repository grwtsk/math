# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.Basic.Variantdf7f5e594119eb7bcd6cc30843f00619d9e32ab61a0880593f832682ee8bc710

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "42b6d4d956e77f6f993c612cb19d54f5fd32c9d6",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variantdf7f5e594119eb7bcd6cc30843f00619d9e32ab61a0880593f832682ee8bc710.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variantdf7f5e594119eb7bcd6cc30843f00619d9e32ab61a0880593f832682ee8bc710.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variantdf7f5e594119eb7bcd6cc30843f00619d9e32ab61a0880593f832682ee8bc710.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `42b6d4d956e77f6f993c612cb19d54f5fd32c9d6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variantdf7f5e594119eb7bcd6cc30843f00619d9e32ab61a0880593f832682ee8bc710.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variantdf7f5e594119eb7bcd6cc30843f00619d9e32ab61a0880593f832682ee8bc710.lean.json)

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
| 1 | `structure` | [Partition](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variantdf7f5e594119eb7bcd6cc30843f00619d9e32ab61a0880593f832682ee8bc710.lean/declarations/partition--2f4288dfb165cd238e7c8fad.md) | 61 | `declaration-track:2f4288dfb165cd238e7c8fad04dd748f0ff85b8591dd9fcaed0f46ba2c500b13` |
| 2 | `theorem` | [le_of_mem_parts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variantdf7f5e594119eb7bcd6cc30843f00619d9e32ab61a0880593f832682ee8bc710.lean/declarations/le-of-mem-parts--c5d4c5d2243dbf0004131e87.md) | 75 | `result-track:c5d4c5d2243dbf0004131e8737889a16984b8da7c8c0e4670d5d8dd07d11ad56` |
| 3 | `def` | [ofComposition](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variantdf7f5e594119eb7bcd6cc30843f00619d9e32ab61a0880593f832682ee8bc710.lean/declarations/ofcomposition--7dd67392faa095a46e301d03.md) | 80 | `declaration-track:7dd67392faa095a46e301d03b81195f224cf0112ed473a3fc05a7ceb0ecb8175` |
| 4 | `theorem` | [ofComposition_surj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variantdf7f5e594119eb7bcd6cc30843f00619d9e32ab61a0880593f832682ee8bc710.lean/declarations/ofcomposition-surj--98e65ba8b80c541a07bdae6e.md) | 85 | `result-track:98e65ba8b80c541a07bdae6e76a16754f82c0ac6c268e508aa62a930e25d0842` |
| 5 | `def` | [ofSums](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variantdf7f5e594119eb7bcd6cc30843f00619d9e32ab61a0880593f832682ee8bc710.lean/declarations/ofsums--76b2720c28ed788f00f8d94a.md) | 96 | `declaration-track:76b2720c28ed788f00f8d94ab8c5866ad78a714baf720f99197f14ae6d381b21` |
| 6 | `def` | [ofMultiset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variantdf7f5e594119eb7bcd6cc30843f00619d9e32ab61a0880593f832682ee8bc710.lean/declarations/ofmultiset--17be0875858dad6266c3c6a2.md) | 105 | `declaration-track:17be0875858dad6266c3c6a25b7a8d92042a5bc17c482701b7508550a27498de` |
| 7 | `def` | [ofSym](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variantdf7f5e594119eb7bcd6cc30843f00619d9e32ab61a0880593f832682ee8bc710.lean/declarations/ofsym--40372d10b8146c4225d5601a.md) | 108 | `declaration-track:40372d10b8146c4225d5601a2c47ca231012fe30817f38f4da5be7d4c1951552` |
| 8 | `lemma` | [ofSym_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variantdf7f5e594119eb7bcd6cc30843f00619d9e32ab61a0880593f832682ee8bc710.lean/declarations/ofsym-map--26fc13686b3f8279bd1cacf2.md) | 118 | `result-track:26fc13686b3f8279bd1cacf2423a1ba596f08b8a7f654b987ee9b4c05e6a2003` |
| 9 | `def` | [ofSymShapeEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variantdf7f5e594119eb7bcd6cc30843f00619d9e32ab61a0880593f832682ee8bc710.lean/declarations/ofsymshapeequiv--3f1ca8595a0dccd899a5f4b4.md) | 128 | `declaration-track:3f1ca8595a0dccd899a5f4b4c2fc212d176380b57a070c88574b3db6358d2783` |
| 10 | `def` | [toFinsuppAntidiag](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variantdf7f5e594119eb7bcd6cc30843f00619d9e32ab61a0880593f832682ee8bc710.lean/declarations/tofinsuppantidiag--6f8f7fccda639ad975bd7ec6.md) | 138 | `declaration-track:6f8f7fccda639ad975bd7ec6c862e0ddffe40946e861a7d4cd4cd09ae106362d` |
| 11 | `theorem` | [toFinsuppAntidiag_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variantdf7f5e594119eb7bcd6cc30843f00619d9e32ab61a0880593f832682ee8bc710.lean/declarations/tofinsuppantidiag-injective--5926548c6b7c83750457fd4a.md) | 145 | `result-track:5926548c6b7c83750457fd4a177d85fab80cc489b1b34977381735d5d7484009` |
| 12 | `theorem` | [toFinsuppAntidiag_mem_finsuppAntidiag](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variantdf7f5e594119eb7bcd6cc30843f00619d9e32ab61a0880593f832682ee8bc710.lean/declarations/tofinsuppantidiag-mem-finsuppantidiag--60f3a82126488df031945f9d.md) | 156 | `result-track:60f3a82126488df031945f9d13453b3de5276a8f83d708a743e0916201a02907` |
| 13 | `def` | [indiscrete](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variantdf7f5e594119eb7bcd6cc30843f00619d9e32ab61a0880593f832682ee8bc710.lean/declarations/indiscrete--4df9489faefd324b70a48ba4.md) | 168 | `declaration-track:4df9489faefd324b70a48ba42b45e68f7bcf172fd2c7aadb365943c95d719b2d` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variantdf7f5e594119eb7bcd6cc30843f00619d9e32ab61a0880593f832682ee8bc710.lean/declarations/instance--cd89b93e0a120ca8ef5a6fc6.md) | 170 | `declaration-track:cd89b93e0a120ca8ef5a6fc65925ff00c45c19389594bf7a6d7293a72ed6f787` |
| 15 | `lemma` | [indiscrete_parts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variantdf7f5e594119eb7bcd6cc30843f00619d9e32ab61a0880593f832682ee8bc710.lean/declarations/indiscrete-parts--d92dd35eef5dc063df0bd13b.md) | 173 | `result-track:d92dd35eef5dc063df0bd13b45591f7fb10cf353bfb2f2334f320306d622e651` |
| 16 | `lemma` | [partition_zero_parts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variantdf7f5e594119eb7bcd6cc30843f00619d9e32ab61a0880593f832682ee8bc710.lean/declarations/partition-zero-parts--d1023a5b36f5384df7dce27d.md) | 176 | `result-track:d1023a5b36f5384df7dce27d7186efa481ddee2d7c6ac33d23c0135de820cb4a` |
| 17 | `instance` | [UniquePartitionZero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variantdf7f5e594119eb7bcd6cc30843f00619d9e32ab61a0880593f832682ee8bc710.lean/declarations/uniquepartitionzero--22653e19904f6a3ce9660d25.md) | 179 | `declaration-track:22653e19904f6a3ce9660d2558d406ac3fa04cc330b2d4c8067b3666b5fb9614` |
| 18 | `lemma` | [partition_one_parts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variantdf7f5e594119eb7bcd6cc30843f00619d9e32ab61a0880593f832682ee8bc710.lean/declarations/partition-one-parts--3a094725bf266734ad12b5c8.md) | 182 | `result-track:3a094725bf266734ad12b5c830cc452f2f146bf3db8acd1a8e7bcfbde010655e` |
| 19 | `instance` | [UniquePartitionOne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variantdf7f5e594119eb7bcd6cc30843f00619d9e32ab61a0880593f832682ee8bc710.lean/declarations/uniquepartitionone--d02f5f0248d248bd85c2095b.md) | 188 | `declaration-track:d02f5f0248d248bd85c2095b87a7a629aaf79d979386f83b1288a5cf9c93f6b0` |
| 20 | `lemma` | [ofSym_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variantdf7f5e594119eb7bcd6cc30843f00619d9e32ab61a0880593f832682ee8bc710.lean/declarations/ofsym-one--e7339b826b81d47218723b7c.md) | 191 | `result-track:e7339b826b81d47218723b7c87ac50a57f5a3cd1e9eb63973ed14a33d905d930` |
| 21 | `theorem` | [count_ofSums_of_ne_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variantdf7f5e594119eb7bcd6cc30843f00619d9e32ab61a0880593f832682ee8bc710.lean/declarations/count-ofsums-of-ne-zero--5e232dacd9f7d2b89bdd7602.md) | 199 | `result-track:5e232dacd9f7d2b89bdd760211bd5e2f412d73cda79262001a432db6a7cd05a2` |
| 22 | `theorem` | [count_ofSums_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variantdf7f5e594119eb7bcd6cc30843f00619d9e32ab61a0880593f832682ee8bc710.lean/declarations/count-ofsums-zero--5fbc2f1a9ee380040b0afb2c.md) | 203 | `result-track:5fbc2f1a9ee380040b0afb2cfe0d955c0205e2c00368f51531168da0f4d09f16` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variantdf7f5e594119eb7bcd6cc30843f00619d9e32ab61a0880593f832682ee8bc710.lean/declarations/instance--d918ed8bce0bd0b877afc88c.md) | 210 | `declaration-track:d918ed8bce0bd0b877afc88c93b291ff24429bd81e9243cba09f4df196de7f68` |
| 24 | `def` | [restricted](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variantdf7f5e594119eb7bcd6cc30843f00619d9e32ab61a0880593f832682ee8bc710.lean/declarations/restricted--f8995cf1ebcddbbb8f947aed.md) | 214 | `declaration-track:f8995cf1ebcddbbb8f947aed2d9ab4898852bbef5da4adf62350110f21bb9feb` |
| 25 | `def` | [countRestricted](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variantdf7f5e594119eb7bcd6cc30843f00619d9e32ab61a0880593f832682ee8bc710.lean/declarations/countrestricted--b7b124d4980ecfdd9bf53fc7.md) | 218 | `declaration-track:b7b124d4980ecfdd9bf53fc72a4c7d2d1e7af61002b3f66c03c0ce8d268c9f82` |
| 26 | `def` | [odds](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variantdf7f5e594119eb7bcd6cc30843f00619d9e32ab61a0880593f832682ee8bc710.lean/declarations/odds--5fee778267fa386e24f8f876.md) | 222 | `declaration-track:5fee778267fa386e24f8f8765ddb246f304ab0840c25150ba32415b976d6185a` |
| 27 | `def` | [distincts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variantdf7f5e594119eb7bcd6cc30843f00619d9e32ab61a0880593f832682ee8bc710.lean/declarations/distincts--fc3fcd986caea79d6bbcf6c1.md) | 225 | `declaration-track:fc3fcd986caea79d6bbcf6c1bf88c0b9f74641e39af861e73e96454b9ca30b4d` |
| 28 | `theorem` | [countRestricted_two](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variantdf7f5e594119eb7bcd6cc30843f00619d9e32ab61a0880593f832682ee8bc710.lean/declarations/countrestricted-two--6d04dfeef5ee73b0cf5282ee.md) | 228 | `result-track:6d04dfeef5ee73b0cf5282ee75b5b8db6af8ba8e6dd4330fcfcbeedf1b752a2a` |
| 29 | `def` | [oddDistincts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variantdf7f5e594119eb7bcd6cc30843f00619d9e32ab61a0880593f832682ee8bc710.lean/declarations/odddistincts--6fc3def2e158c29e41e92ff4.md) | 234 | `declaration-track:6fc3def2e158c29e41e92ff4447fafb91a4730f5c88128869d61a99d4679f89f` |
| 30 | `def` | [partitionWithPartEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variantdf7f5e594119eb7bcd6cc30843f00619d9e32ab61a0880593f832682ee8bc710.lean/declarations/partitionwithpartequiv--05cbbd4621da88dba5b2d9a8.md) | 240 | `declaration-track:05cbbd4621da88dba5b2d9a8778b8ef231acf7c0c05ff64d55563096186089da` |
| 31 | `theorem` | [partitionWithPartEquiv_apply_parts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variantdf7f5e594119eb7bcd6cc30843f00619d9e32ab61a0880593f832682ee8bc710.lean/declarations/partitionwithpartequiv-apply-parts--d33299b9d350394f6bf36336.md) | 254 | `result-track:d33299b9d350394f6bf36336eb559bb564a0e4a66a50724b26ec5be41f6fee40` |
| 32 | `theorem` | [partitionWithPartEquiv_symm_apply_parts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variantdf7f5e594119eb7bcd6cc30843f00619d9e32ab61a0880593f832682ee8bc710.lean/declarations/partitionwithpartequiv-symm-apply-parts--e80c9f07622609cf1df6784c.md) | 260 | `result-track:e80c9f07622609cf1df6784cbff9a4a2ca309f1e07542a410c4159d6ab2acaf0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
